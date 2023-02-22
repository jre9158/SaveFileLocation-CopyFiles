import logging
import pickle
import time
import datetime
import re

SAVED_FILE_PATH = 'file-paths-dictionary.pkl'
file_paths_dict = {}
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

def load_dict():
    file_name = SAVED_FILE_PATH
    try:
        global file_paths_dict

        with open(SAVED_FILE_PATH, 'rb') as f:
            file_paths_dict = pickle.load(f)

        return log_event(print_message='Loaded call history to dictionary from "' + CALLS_HISTORY_FILE + '"',
                         log_info='Loaded call history to dictionary from "' + CALLS_HISTORY_FILE + '"')
    except Exception as e:
        return log_event(
            print_message='Couldn\'t load in call history from file ' + file_name +
                          '!\n\t Exception in load_calls_dict()\n\t' + str(e),
            log_warning='Couldn\'t load in call history from file ' + file_name + '!',
            log_error='Exception in load_calls_dict():\n\t' + str(e))

def main():
    # Sets up log file
    logging.basicConfig(filename='SaveFileLocations-ThenCopyFiles.log', level=logging.INFO)
    log_event(log_info='Started', print_message='Started')

    print('This script has 2 modes.\n\n'
          '1. Saving File locations in a directory as json format.\n\n'
          '2. Moving all files in a directory to the saved location from step 1.\n\n')

    print('The original use-case was to organize a projects large library of files into better organized sections and save that structure,\n'
          'then once we were ready to go live, it would auto-organize the files to the saved locations.\n\n')

    print('The reason this was needed was because the project needed to be set up with the new structure format,\n'
          'by the time that was done, all the files were out of date. This let us design the structure, then move the live library when ready.\n\n')

    print('In the "save mode" This will save the full path of all files in all sub-directories of the parent directory you give it.\n'
          'In a dictionary format, the key will be the filename (WITH-OUT a file extension, .py for example), the value will be the path, without the filename.\n'
          'This will be saved using the pickle package to the directory of the executable.\n\n')

    print('In the "copy mode" This will load in the dictionary from the pickle file, then search all files in all sub-directories of the parent directory you give it.\n'
          'It checks for a path found in the dictionary for each file, if its found it will copy the file, creating the directory, preserving as much data as possible from the original file properties(like time stamps).\n'
          'It will log any errors, and copy any files it does not have a path saved for into a UNKNOWN folder.\n\n')

    # Initializes Slack Client
    try:
        parentDirectory = input("Enter the parent directory: ")

        mode = input('[1] Save the locations of these files?\n'
                     '[2] Restructure these files based on saved data?\n'
                     'Enter 1 or 2.')
        if '2' in mode:


    except Exception as e:
        log_event(print_message='Exception in main() initializing step!\n\t' + str(e),
                  log_error='Exception in main() initializing step!\n\t' + str(e),
                  log_warning='Couldn\'t connect to Slack API!')


    logging.info('End of main()')


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    main()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/