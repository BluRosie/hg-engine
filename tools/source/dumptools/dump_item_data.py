import pandas as pd
import numpy as np
from pprint import pprint

DEFAULT_ITEM_VALUES = {
    'Price': 0,
    'EquipEffect': 0,
    'EquipPower': 0,
    'PluckEffect': 0,
    'ThrowEffect': 0,
    'ThrowPower': 0,
    'NaturalGiftPower': 0,
    'NaturalGiftType': 'TYPE_NORMAL',
    'prevent_toss': 0,
    'selectable': 0,
    'FieldPocket': 'POCKET_ITEMS',
    'battlePocket': 'BATTLE_POCKET_NONE',
    'fieldUseFunc': 0,
    'battleUseFunc': 0,
    'partyUse': 0,
    'WorkRecvSleep': 0,
    'WorkRecvPoison': 0,
    'WorkRecvBurn': 0,
    'WorkRecvFreeze': 0,
    'WorkRecvParalyze': 0,
    'WorkRecvConfuse': 0,
    'inf_heal': 0,
    'guard_spec': 0,
    'revive': 0,
    'revive_all': 0,
    'WorkLevel': 0,
    'evolve': 0,
    'WorkAttack': 0,
    'WorkDefense': 0,
    'WorkSpAttack': 0,
    'spdef_stages': 0,
    'WorkSpeed': 0,
    'WorkAccuracy': 0,
    'WorkCritical': 0,
    'WorkPpUp': 0,
    'WorkPpRcv': 0,
    'hp_restore': 0,
    'hp_ev_up': 0,
    'atk_ev_up': 0,
    'def_ev_up': 0,
    'speed_ev_up': 0,
    'spatk_ev_up': 0,
    'spdef_ev_up': 0,
    'friendship_mod_lo': 0,
    'friendship_mod_med': 0,
    'friendship_mod_hi': 0,
    'WorkStatusHp': 0,
    'WorkStatusAtk': 0,
    'WorkStatusDef': 0,
    'WorkStatusSpd': 0,
    'WorkStatusSAtk': 0,
    'WorkStatusSDef': 0,
    'hp_restore_param': 0,
    'pp_restore_param': 0,
    'friendship_mod_lo_param': 0,
    'friendship_mod_med_param': 0,
    'friendship_mod_hi_param': 0
}


def fill_and_update_ids(df, id_column='Id', value_dict=None):
    """
    Fill missing IDs and update existing rows using dictionary data, including new columns.
    
    Args:
        df (pd.DataFrame): Input DataFrame
        id_column (str): Name of the ID column
        value_dict (dict): Dictionary containing updates for existing IDs and new values
        
    Returns:
        pd.DataFrame: Updated DataFrame with filled missing IDs and updated values
    """
    # Get current min and max IDs
    min_id = 0
    
    # Read item definitions
    lines = []
    with open('include/constants/item.h', 'r') as file:
        lines = [line.split()[1].strip() for line in file if '#define ITEM_' in line and len(line.split()) >= 3 and 'ITEM_' in line.split()[1].strip()]
    
    max_id = max(df[id_column].max(), len(lines) - 1)
    # pprint(lines)
    
    # Create full range of expected IDs
    complete_ids = np.arange(min_id, max_id + 1)
    
    # Create mask of missing IDs
    missing_ids = ~np.isin(complete_ids, df[id_column])
    
    # Create new rows for missing IDs
    if np.any(missing_ids):
        new_rows_list = []

        for missing_id in complete_ids[missing_ids]:
            # Start with default values for all known fields
            new_row_data = DEFAULT_ITEM_VALUES.copy()

            # Overwrite with specific values from itemdata.c if available
            if value_dict:
                item_name = lines[missing_id] if missing_id < len(lines) else None
                if item_name and item_name in value_dict:
                    new_row_data.update(value_dict[item_name])

            # Add ID and leave other columns untouched (filled from DEFAULT_ITEM_VALUES)
            new_row_data[id_column] = missing_id
            new_row_data['ItemName'] = lines[missing_id] if missing_id < len(lines) else f'ITEM_{missing_id}'

            new_rows_list.append(new_row_data)

    # Create DataFrame from new rows and concatenate
        if new_rows_list:
            new_df = pd.DataFrame(new_rows_list)
            df = pd.concat([df, new_df], ignore_index=True)
    
    # Sort in order to insert item definitions correctly
    df = df.sort_values(id_column)
        
    # Add item definitions to dataframe
    df['ItemName'] = lines[:len(df)]
    
    # Process updates for existing IDs
    if value_dict:
        # Find IDs that exist in both dataframe and dict
        existing_updates = {item_name_: data for item_name_, data in value_dict.items() 
                          if item_name_ in df['ItemName'].values}
        
        # Apply updates to existing rows
        for item_name_, updates in existing_updates.items():
            sv_price = df.loc[df['ItemName'] == item_name_, 'Price'].values[0]
            df.loc[df['ItemName'] == item_name_, list(updates.keys())] = list(updates.values())
            if sv_price != '0':
                df.loc[df['ItemName'] == item_name_, 'Price'] = sv_price
    
    # Add new columns from dictionary
    if value_dict:
        all_columns = set()
        for updates in value_dict.values():
            all_columns.update(updates.keys())
        
        # Add any new columns that aren't in the DataFrame
        for col in all_columns:
            if col not in df.columns and col != id_column:
                df[col] = None
    
    # Sort by Id
    return df.sort_values(id_column)

def load_itemdata_to_dict():
    # Open the C array file
    with open('data/itemdata/itemdata.c', 'r') as file:
        lines = file.readlines()
        
    item_data = []
    data_dict = {}

    # Process each line
    for line in lines:
        stripped_line = line.strip()
        
        if stripped_line.startswith('.partyUseParam = {'):
            continue
        
        # New item
        if stripped_line.startswith('['):
            if len(data_dict.get('ItemName', '')):
                item_data.append(data_dict)
            data_dict = {}
            data_dict['ItemName'] = stripped_line[1:].split(']')[0]
            continue
        
        # Values
        if stripped_line.startswith('.'):
            key, value = stripped_line[1:].split('=')
            key = key.strip()  # Remove whitespace
            value = value.strip().rstrip(',').rstrip(';')  # Remove whitespace and semicolon
            match key:
                case 'price':
                    data_dict['Price'] = value
                case 'holdEffect':
                    data_dict['EquipEffect'] = value
                case 'holdEffectParam':
                    data_dict['EquipPower'] = value
                case 'pluckEffect':
                    data_dict['PluckEffect'] = value
                case 'flingEffect':
                    data_dict['ThrowEffect'] = value
                case 'flingPower':
                    data_dict['ThrowPower'] = value
                case 'naturalGiftPower':
                    data_dict['NaturalGiftPower'] = value
                case 'naturalGiftType':
                    data_dict['NaturalGiftType'] = value
                case 'prevent_toss':
                    data_dict['prevent_toss'] = value
                case 'selectable':
                    data_dict['selectable'] = value
                case 'fieldPocket':
                    data_dict['FieldPocket'] = value
                case 'battlePocket':
                    data_dict['battlePocket'] = value
                case 'fieldUseFunc':
                    data_dict['fieldUseFunc'] = value
                case 'battleUseFunc':
                    data_dict['battleUseFunc'] = value
                case 'partyUse':
                    data_dict['partyUse'] = value
                case 'slp_heal':
                    data_dict['WorkRecvSleep'] = value
                case 'psn_heal':
                    data_dict['WorkRecvPoison'] = value
                case 'brn_heal':
                    data_dict['WorkRecvBurn'] = value
                case 'frz_heal':
                    data_dict['WorkRecvFreeze'] = value
                case 'prz_heal':
                    data_dict['WorkRecvParalyze'] = value
                case 'cfs_heal':
                    data_dict['WorkRecvConfuse'] = value
                case 'inf_heal':
                    data_dict['inf_heal'] = value
                case 'guard_spec':
                    data_dict['guard_spec'] = value
                case 'revive':
                    data_dict['revive'] = value
                case 'revive_all':
                    data_dict['revive_all'] = value
                case 'evolve':
                    data_dict['evolve'] = value
                case 'atk_stages':
                    data_dict['WorkAttack'] = value
                case 'def_stages':
                    data_dict['WorkDefense'] = value
                case 'spatk_stages':
                    data_dict['WorkSpAttack'] = value
                case 'spdef_stages':
                    data_dict['spdef_stages'] = value
                case 'speed_stages':
                    data_dict['WorkSpeed'] = value
                case 'accuracy_stages':
                    data_dict['WorkAccuracy'] = value
                case 'critrate_stages':
                    data_dict['WorkCritical'] = value
                case 'pp_up':
                    data_dict['WorkPpUp'] = 1 if value == 'TRUE' else 0
                case 'pp_max':
                    data_dict['WorkPpUp'] = 2 if value == 'TRUE' else 0
                case 'pp_restore':
                    data_dict['WorkPpRcv'] = 10 if value == 'TRUE' else 0
                case 'pp_restore_all':
                    data_dict['WorkPpRcv'] = 127 if value == 'TRUE' else 0
                case 'hp_restore':
                    data_dict['hp_restore'] = value
                case 'hp_ev_up':
                    data_dict['hp_ev_up'] = value
                case 'atk_ev_up':
                    data_dict['atk_ev_up'] = value
                case 'def_ev_up':
                    data_dict['def_ev_up'] = value
                case 'speed_ev_up':
                    data_dict['speed_ev_up'] = value
                case 'spatk_ev_up':
                    data_dict['spatk_ev_up'] = value
                case 'spdef_ev_up':
                    data_dict['spdef_ev_up'] = value
                case 'friendship_mod_lo':
                    data_dict['friendship_mod_lo'] = value
                case 'friendship_mod_med':
                    data_dict['friendship_mod_med'] = value
                case 'friendship_mod_hi':
                    data_dict['friendship_mod_hi'] = value
                case 'hp_ev_up_param':
                    data_dict['WorkStatusHp'] = value
                case 'atk_ev_up_param':
                    data_dict['WorkStatusAtk'] = value
                case 'def_ev_up_param':
                    data_dict['WorkStatusDef'] = value
                case 'speed_ev_up_param':
                    data_dict['WorkStatusSpd'] = value
                case 'spatk_ev_up_param':
                    data_dict['WorkStatusSAtk'] = value
                case 'spdef_ev_up_param':
                    data_dict['WorkStatusSDef'] = value
                case 'hp_restore_param':
                    data_dict['hp_restore_param'] = value
                case 'pp_restore_param':
                    data_dict['pp_restore_param'] = value
                case 'friendship_mod_lo_param':
                    data_dict['friendship_mod_lo_param'] = value
                case 'friendship_mod_med_param':
                    data_dict['friendship_mod_med_param'] = value
                case 'friendship_mod_hi_param':
                    data_dict['friendship_mod_hi_param'] = value
                case 'level_up':
                    data_dict['WorkLevel'] = value
                case _:
                    print(f"Unknown key: {key} with value: {value}")


    # Now data_dict contains the parsed data
    # pprint(item_data[:2])
    dict = {}
    for item in item_data:
        dict[item['ItemName']] = item
    
    print("success")
    return dict

def process_csv(input_file, output_file='data/itemdata/itemdata.csv'):
    """
    Process a CSV file to fill missing IDs and save the result.
    
    Args:
        input_file (str): Path to input CSV file
        output_file (str): Optional path to output CSV file
    """
    try:
        # Read the input CSV
        df = pd.read_csv(input_file)
        df.columns = df.columns.str.replace(' ', '')
        
        # We don't care about types
        df = df.astype(str)
        
        df['Id'] = df['Id'].astype(int)
        
        # Ensure 'Id' column exists
        if 'Id' not in df.columns:
            raise ValueError("Input CSV must contain an 'Id' column")
            
        # Fill missing IDs and sort
        completed_df = fill_and_update_ids(df, 'Id', load_itemdata_to_dict())
        
        cols = ['Id', 'ItemName']
        completed_df = completed_df[cols + [c for c in completed_df.columns if c not in cols]]
        
        # Save the result
        completed_df.to_csv(output_file, index=False)
        
        # Hacky workaround
        full_file_text = ""
        
        with open(output_file, "r") as read_file:
            full_file_text = read_file.read()
            full_file_text = full_file_text.replace('False', 'FALSE').replace('True', 'TRUE').replace('nan', 'FALSE')
            
        with open(output_file, "w") as write_file:
            write_file.write(full_file_text)
            
        print(f"Processing complete. Saved to '{output_file}'")
        
    except FileNotFoundError:
        print(f"Error: Could not find input file '{input_file}'")

if __name__ == '__main__':
    process_csv('data/itemdata/dumped_itemdata.csv', 'data/itemdata/itemdata.csv')