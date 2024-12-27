import os
import shutil

# 定义源路径和目标路径
source_path = '/home/hussein/git/hg-engine'
backup_path = '/home/hussein/git/hg_engine_cfg_bak'

# 定义需要备份的文件和目录
files_and_dirs_to_backup = [
    'armips/',
    'data/itemdata/itemdata.c',
    'data/graphics/overworlds',
    'include/battle.h',
    'include/config.h',
    'include/battle_controller_player.h',
    'include/constants/battle_message_constants.h',
    'hooks',
    'Makefile',
    'src/',
    'data/SpeciesToOWGfx.c',
    'rom.ld'
]

# 用户输入选项
operation = input("请选择要进行的操作：\n1：备份\n2：还原\n请输入：")

def backup_restore(operation, source_path, backup_path, files_and_dirs_to_backup):
    if operation == '1':
        print("正在执行备份操作...")
        for item in files_and_dirs_to_backup:
            src = os.path.join(source_path, item)
            dest = os.path.join(backup_path, item)
            if not os.path.exists(src):
                print(f"文件或目录未找到：{src}")
                continue
            try:
                print(f"正在备份：{src} -> {dest}")
                if os.path.isdir(src):
                    shutil.copytree(src, dest, dirs_exist_ok=True)
                else:
                    os.makedirs(os.path.dirname(dest), exist_ok=True)
                    shutil.copy(src, dest)
            except Exception as e:
                print(f"备份时发生错误：{e}")
        print("所有文件和目录已成功备份。")
    elif operation == '2':
        print("正在执行还原操作...")
        for item in files_and_dirs_to_backup:
            src = os.path.join(backup_path, item)
            dest = os.path.join(source_path, item)
            if not os.path.exists(src):
                print(f"备份文件或目录未找到：{src}")
                continue
            try:
                if os.path.isdir(src):
                    print(f"正在还原目录：{dest}")
                    for root, dirs, files in os.walk(src, topdown=False):
                        dest_dir = os.path.join(dest, os.path.relpath(root, src))
                        if not os.path.exists(dest_dir):
                            os.makedirs(dest_dir, exist_ok=True)
                        for name in files:
                            src_file = os.path.join(root, name)
                            dest_file = os.path.join(dest_dir, name)
                            shutil.copy2(src_file, dest_file)
                        for name in dirs:
                            src_dir = os.path.join(root, name)
                            dest_dir = os.path.join(dest_dir, name)
                            if not os.path.exists(dest_dir):
                                os.makedirs(dest_dir, exist_ok=True)
                else:
                    print(f"正在还原文件：{dest}")
                    os.makedirs(os.path.dirname(dest), exist_ok=True)
                    shutil.copy2(src, dest)
            except Exception as e:
                print(f"还原时发生错误：{e}")
        print("所有文件和目录已成功还原。")

if operation in ['1', '2']:
    backup_restore(operation, source_path, backup_path, files_and_dirs_to_backup)
    input("按任意键退出...")
else:
    print("无效的输入，请输入1或2。")
