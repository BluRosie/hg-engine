import pandas as pd
import re
import os
import datetime

def setup_logging():
    timestamp = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = f'pokemon_data_update_{timestamp}.txt'
    global log_fp
    log_fp = open(log_file, 'w', encoding='utf-8')
    print(f"日志文件已创建: {log_file}")
    log_message(f"开始执行时间: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")

def log_message(message):
    print(message)
    log_fp.write(message + '\n')
    log_fp.flush()

def read_excel_to_dict(excel_file_path, sheet_name):
    try:
        log_message(f"正在读取Excel文件: {excel_file_path}")
        df = pd.read_excel(excel_file_path, sheet_name=sheet_name)
        df = df[['游戏内名称', 'HP', 'ATK', 'DEF', 'SPA.ATK', 'SPA.DEF', 'SPE', 
                '特性1', '特性2', 'type1', 'type2', 
                'item1', 'item2', '捕获率', '基础友好度']]
        
        mon_data_dict = {}
        for index, row in df.iterrows():
            mon_data_dict[row['游戏内名称']] = {
                'HP': row['HP'],
                'ATK': row['ATK'],
                'DEF': row['DEF'],
                'SPA.ATK': row['SPA.ATK'],
                'SPA.DEF': row['SPA.DEF'],
                'SPE': row['SPE'],
                'ability1': row['特性1'],
                'ability2': row['特性2'],
                'type1': row['type1'],
                'type2': row['type2'],
                'item1': row['item1'],
                'item2': row['item2'],
                'catchrate': row['捕获率'],
                'basefriendship': row['基础友好度']
            }
            #log_message(f"读取数据: {row['游戏内名称']} -> {mon_data_dict[row['游戏内名称']]}")
        
        log_message(f"成功读取Excel数据，共{len(mon_data_dict)}条记录")
        return mon_data_dict
    except Exception as e:
        log_message(f"读取Excel文件时发生错误: {e}")
        exit()

def get_pokemon_data_block(lines, start_index):
    """
    获取完整的宝可梦数据块并返回数据块内容和长度
    """
    data_block = [lines[start_index]]  # 包含mondata行
    current_index = start_index + 1
    
    while current_index < len(lines):
        line = lines[current_index].strip()
        if line.startswith('mondata '):
            break
        data_block.append(lines[current_index])
        current_index += 1
    
    return data_block, len(data_block)

def replace_stats_and_abilities_in_c_file(mondata_file_path, mondata_out_file_path, mon_data_dict):
    try:
        log_message(f"开始处理文件: {mondata_file_path}")
        with open(mondata_file_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()
            
        #log_message("\n=== 原始文件内容 ===")
        #log_message(''.join(lines))
        #log_message("=== 原始文件内容结束 ===\n")

        modified_count = 0
        i = 0
        with open(mondata_out_file_path, 'w', encoding='utf-8') as file:
            while i < len(lines):
                line = lines[i]
                match = re.match(r'mondata (SPECIES_\w+), "([^"]+)"', line)
                
                if match:
                    species_code, game_name = match.groups()
                    data_block, data_length = get_pokemon_data_block(lines, i)
                    
                    log_message(f"\n=== 处理宝可梦: {species_code} ===")
                    log_message("原始数据块:")
                    log_message(''.join(data_block))
                    log_message(f"数据块行数: {data_length}\n")
                    
                    if species_code in mon_data_dict:
                        mon_data = mon_data_dict[species_code]
                        log_message(f"找到对应Excel数据: {mon_data}")
                        modified_count += 1
                        
                        file.write(line)
                        
                        for j in range(1, data_length):
                            next_line = data_block[j]
                            original_line = next_line
                            
                            # 使用更灵活的正则表达式匹配
                            if 'abilities' in next_line:
                                log_message(f"处理abilities行: {next_line.strip()}")
                                # 匹配abilities后跟任意数量的空格，然后是单词和逗号，再跟任意数量的空格和另一个单词
                                matches = re.search(r'abilities\s+(\w+),\s+(\w+)', next_line)
                                if matches:
                                    # 保持原始行的缩进
                                    indent = re.match(r'\s*', next_line).group()
                                    next_line = f"{indent}abilities {mon_data['ability1']}, {mon_data['ability2']}\n"
                                else:
                                    log_message(f"Warning: abilities行格式不匹配: {next_line.strip()}")
                            elif 'basestats' in next_line:
                                matches = re.search(r'basestats\s+(\d+),\s*(\d+),\s*(\d+),\s*(\d+),\s*(\d+),\s*(\d+)', next_line)
                                if matches:
                                    indent = re.match(r'\s*', next_line).group()
                                    next_line = f"{indent}basestats {mon_data['HP']}, {mon_data['ATK']}, {mon_data['DEF']}, {mon_data['SPE']}, {mon_data['SPA.ATK']}, {mon_data['SPA.DEF']}\n"
                            elif 'types' in next_line:
                                matches = re.search(r'types\s+(\w+),\s*(\w+)', next_line)
                                if matches:
                                    indent = re.match(r'\s*', next_line).group()
                                    next_line = f"{indent}types {mon_data['type1']}, {mon_data['type2']}\n"
                            elif 'items' in next_line:
                                matches = re.search(r'items\s+(\w+),\s*(\w+)', next_line)
                                if matches:
                                    indent = re.match(r'\s*', next_line).group()
                                    next_line = f"{indent}items {mon_data['item1']}, {mon_data['item2']}\n"
                            elif 'catchrate' in next_line:
                                matches = re.search(r'catchrate\s+(\d+)', next_line)
                                if matches:
                                    indent = re.match(r'\s*', next_line).group()
                                    next_line = f"{indent}catchrate {mon_data['catchrate']}\n"
                            elif 'basefriendship' in next_line:
                                matches = re.search(r'basefriendship\s+(\d+)', next_line)
                                if matches:
                                    indent = re.match(r'\s*', next_line).group()
                                    next_line = f"{indent}basefriendship {mon_data['basefriendship']}\n"
                            
                            if next_line != original_line:
                                log_message(f"修改行: \n原始: {original_line.strip()}\n更新: {next_line.strip()}\n")
                            
                            file.write(next_line)
                        
                        i += data_length - 1
                    else:
                        log_message(f"未找到对应Excel数据，保持原样")
                        for line in data_block:
                            file.write(line)
                        i += data_length - 1
                else:
                    file.write(line)
                
                i += 1

        log_message(f"\n处理完成，共修改了{modified_count}个宝可梦的数据")

    except FileNotFoundError:
        log_message("文件未找到，请检查文件路径。")
        exit()
    except UnicodeDecodeError:
        log_message("文件编码错误，请检查文件编码。")
        exit()
    except Exception as e:
        log_message(f"处理文件时发生错误: {e}")
        log_message(f"错误详情: {str(e)}")
        import traceback
        log_message(traceback.format_exc())
        exit()

def main():
    setup_logging()
    
    excel_file_path = 'armips/data/基础数据表.xlsx'
    mondata_file_path = 'armips/data/mondata.s'
    mondata_out_file_path = 'armips/data/mondata.s'
    backup_path = 'armips/data/mondata_bak.s'

    if os.path.exists(mondata_file_path):
        try:
            log_message("正在创建备份文件...")
            if os.path.exists(backup_path):
                os.remove(backup_path)
                log_message("删除已存在的备份文件")
            os.rename(mondata_file_path, backup_path)
            log_message(f"成功创建备份文件: {backup_path}")
        except Exception as e:
            log_message(f"创建备份文件时发生错误: {e}")
            exit()

    mon_data_dict = read_excel_to_dict(excel_file_path, 'Poke表')
    replace_stats_and_abilities_in_c_file(backup_path, mondata_out_file_path, mon_data_dict)

    log_message("\n特性、基础属性、属性类型、携带道具、捕获率和基础友好度已修改并保存至mondata.s")
    log_message(f"结束执行时间: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    
    log_fp.close()
    
    input("按下任意键退出...")

if __name__ == "__main__":
    main()
