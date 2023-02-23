import logging
import pickle
import time
import datetime
import re
from os import walk
from os import path

SAVED_FILE_PATH = 'file-paths-dictionary.pkl'
file_paths_dict = {}
error = False


def logAction(txtFile, message):
    global error
    try:
        with open(txtFile, "a") as f:
            f.write(message)
    except Exception as e:
        log_event(print_message='Exception writing to ' + txtFile + '!\n\t' + str(e),
                  log_error='Exception writing to ' + txtFile + '!\n\t' + str(e))
        error = True


def log_event(print_message='', log_info='', log_warning='', log_error=''):
    # Used for logging events

    if print_message != '':
        print(print_message)
    if log_info != '':
        logging.info(log_info)
    if log_warning != '':
        logging.warning(log_warning)
    if log_error != '':
        logging.error(log_error)


def dump_dict():
    global error
    log_event(print_message='Attempting to save file paths from dictionary from "' + SAVED_FILE_PATH + '"\n',
                  log_info='Attempting to save file paths from dictionary from "' + SAVED_FILE_PATH + '"')
    try:
        with open(SAVED_FILE_PATH, 'wb') as f:
            pickle.dump(file_paths_dict, f)
        log_event(print_message='Saved file paths dictionary to "' + SAVED_FILE_PATH + '"',
                  log_info='Saved file paths dictionary to "' + SAVED_FILE_PATH + '"')

    except Exception as e:
        log_event(
            print_message='Couldn\'t save file paths to file!\n\tCaught Exception in dump_dict()\n\t' + str(e),
            log_warning='Couldn\'t save file paths to file ' + SAVED_FILE_PATH + '!',
            log_error='Exception in dump_dict: \n\t' + str(e))
        error = True


def load_dict():
    try:
        global file_paths_dict, error

        log_event(print_message='Attempting to load file paths from dictionary from "' + SAVED_FILE_PATH + '"\n',
                  log_info='Attempting to load file paths from dictionary from "' + SAVED_FILE_PATH + '"')
        
        with open(SAVED_FILE_PATH, 'rb') as f:
            file_paths_dict = pickle.load(f)

        log_event(print_message='Loaded file paths to dictionary from "' + SAVED_FILE_PATH + '"',
                  log_info='Loaded file paths to dictionary from "' + SAVED_FILE_PATH + '"')
        return True
    except Exception as e:
        log_event(
            print_message='Couldn\'t load in call history from file ' + SAVED_FILE_PATH +
                          '!\n\t Exception in load_dict()\n\t' + str(e),
            log_warning='Couldn\'t load in call history from file ' + SAVED_FILE_PATH + '!',
            log_error='Exception in load_dict():\n\t' + str(e))
        error = True
        return False


def copy_files(sourceDirectory, destinationDirectory):
    files_moved_success = 0
    files_not_moved = 0
    files_not_found = 0
    global error
    try:
        for root, directory, files in walk(sourceDirectory):
            for file_name in files:
                # Check if it exists, if so, copy it
                try:
                    if file_name in file_paths_dict:
                        #copy file
                        files_moved_success += 1
                    else:
                        # add to unknown folder
                        # log-action No-Path-Found.txt
                        #try copy file to No-Path-Found folder
                        files_not_found += 1
                except Exception as e:
                    log_event(print_message='Exception in saving file paths! : \n\t' + str(e),
                              log_error='Exception in saving file paths! : \n\t' + str(e))
                    #log-action errors.txt
                    error = True
                    files_not_moved += 1
                

        message = '\nComplete!\n' + \
                  'Total files moved successfully: ' + str(files_moved_success)
                  
        if files_not_found > 0:
               message = message + '\nTotal files with-out a path saved (see No-Path-Found.txt) : ' + str(files_not_found)
        
        if files_not_moved > 0:
               message = message + '\nTotal files not moved due to error (see errors.txt for errors): ' + str(files_not_moved)
               
        log_event(print_message=message,
                  log_info=message)
        

    except Exception as e:
        log_event(
            print_message='Exception in saving file paths! : \n\t' + str(e),
            log_error='Exception in saving file paths! : \n\t' + str(e))
        error = True


def show_examples(parentDirectory):
    print('These are some examples of where it will copy files to with their full paths: ')
    print(parentDirectory + file_paths_dict[get_nth_key(file_paths_dict, 1)])
    print(parentDirectory + file_paths_dict[get_nth_key(file_paths_dict, 2)])
    print(parentDirectory + file_paths_dict[get_nth_key(file_paths_dict, 9)])
    print(parentDirectory + file_paths_dict[get_nth_key(file_paths_dict, 15)])
    print(parentDirectory + file_paths_dict[get_nth_key(file_paths_dict, 20)])


def get_nth_key(dictionary, n=0):
    if n < 0:
        n += len(dictionary)
    for i, key in enumerate(dictionary.keys()):
        if i == n:
            return key
    raise IndexError("dictionary index out of range")


def save_file_paths(full_path):
    files_found = 0
    global error
    try:
        for root, directory, files in walk(full_path):
            for file_name in files:
                # Check if it exists, if so, log it as a duplicate.
                if file_name in file_paths_dict:
                    logAction('Duplicate-Files.txt',
                              file_paths_dict[file_name] + ' is saved already.\n' +
                              full_path + path.join(root.replace(full_path, ''), file_name) + ' was found.\n')
                    log_event(print_message='A duplicate file was found! logging to Duplicate-Files.txt',
                              log_warning='A duplicate file was found! logging to Duplicate-Files.txt')
                    files_found += 1
                else:
                    # add to dictionary
                    new_file_path = path.join(root.replace(full_path, ''), file_name)
                    file_paths_dict[file_name] = new_file_path
                    log_event(print_message=file_name + ' : ' + new_file_path,
                              log_info=file_name + ' : ' + new_file_path)
                    files_found += 1

        dump_dict()

        message = '\nComplete!\n' + \
                  'Total files found: ' + str(files_found) + \
                  '\nTotal file paths saved : ' + str(len(file_paths_dict))
        log_event(print_message=message,
                  log_info=message)
        
        if files_found > len(file_paths_dict):
            log_event(print_message='\nDuplicate files can not be saved with this process. See Duplicate-Files.txt',
                      log_info='\nDuplicate files can not be saved with this process. See Duplicate-Files.txt')

    except Exception as e:
        log_event(
            print_message='Exception in saving file paths! : \n\t' + str(e),
            log_error='Exception in saving file paths! : \n\t' + str(e))
        error = True


def choose_mode():
    try:

        mode = input('[1] Save the locations of these files?\n'
                     '[2] Restructure and copy these files based on saved data?\n'
                     'Enter 1 or 2. : ')
        #Copy files mode
        if '2' in mode:
            sourceDirectory = input("Enter the parent directory of the files to copy to new locations : ")
            newDirectory = input("Enter the new base directory to copy the files to : ")
            if load_dict:
                print('\nDestination Directory path: ' + newDirectory +
                      ', all files will be copied here with any appending path.\n')
                print('Source Directory path: ' + sourceDirectory +
                      ', all files in this path will be copied to the new locations saved.\n')
                show_examples(newDirectory)
                if input('\nAre these the correct paths? (Y/N) - Y will begin the process. : ').lower == 'y':
                    copy_files(sourceDirectory, newDirectory)
                else:
                    print('User Canceled.')
                    choose_mode()
            else:
                choose_mode()
        #Save locations
        elif '1' in mode:
            parentDirectory = input("Enter the source directory to save file locations: ")
            print('\nFull search path is: ' + parentDirectory +
                  ', all files and sub-folders will be searched in this directory.\n')

            if input('Is this the correct path? (Y/N) - Y will begin the process. : ').lower().strip() == 'y':
                print('Files with-out a saved path can be found in ' + parentDirectory + '\\No-Path-Found')
                save_file_paths(parentDirectory)
            else:
                print('User Canceled.')
                choose_mode()

    except Exception as e:
        log_event(print_message='Exception in choose_mode()!\n\t' + str(e),
                  log_error='Exception in choose_mode()!\n\t' + str(e))
        choose_mode()


def main():
    # Sets up log file
    logging.basicConfig(filename='SaveFileLocations-ThenCopyFiles.log', level=logging.INFO)
    log_event(log_info='Started', print_message='Started')

    print(
        'The original use-case was to organize a projects large library of files into better organized sections and save that structure,\n'
        'then once we were ready to go live, it would auto-organize the files to the saved locations.\n\n')

    print(
        'The reason this was needed was because the project needed to be set up with the new structure format before-hand,\n'
        'by the time that was done, all the files were out of date. This let us design the structure, then move the live library when ready.\n\n')

    print(
        'In the "save mode" This will save the base-path of all files (searching sub-directories) of the parent directory you give it.\n'
        'In a dictionary format, the key will be the filename (WITH a file extension, .py for example), the value will be the path with the filename.\n'
        'This will be saved using the pickle package to the directory of the executable.\n\n')

    print(
        'In the "copy mode" This will load in the dictionary from the pickle file, then search all files in all sub-directories of the parent directory you give it.\n'
        'It checks for a path found in the dictionary for each file, if its found it will copy the file, creating the directory, preserving as much data as possible from the original file properties(like time stamps).\n'
        'It will log any errors, and copy any files it does not have a path saved for into a "No-Path-Found" folder.\n\n')
    while True:
        try:
            choose_mode()
        except Exception as e:
            log_event(print_message='Exception in main()!\n\t' + str(e),
                      log_error='Exception in main()!\n\t' + str(e))
    if error:
        print('1 or more errors occurred. Please check the log for more information.')

    logging.info('End of main()')


if __name__ == '__main__':
    main()
