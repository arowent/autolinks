import argparse
import os
import shutil
from os import listdir
from os.path import isdir


class CreateSymlink:
    def __init__(self, arguments):
        self.args = arguments
        self.run()

    def run(self):
        if self.args.source and self.args.receiver:
            for file in listdir(self.args.source):
                file_path = os.sep.join([self.args.source, file])
                if isdir(file_path):
                    try:
                        os.symlink(file_path, os.sep.join([self.args.receiver, file]))
                        print(f'{file_path} -> success')
                    except FileExistsError:
                        if os.path.islink(os.sep.join([self.args.receiver, file])):
                            os.unlink(os.sep.join([self.args.receiver, file]))
                            os.symlink(file_path, os.sep.join([self.args.receiver, file]))
                            print('Overwrite symlink from folder \'{}\''.format(file))
                        else:
                            shutil.rmtree(os.sep.join([self.args.receiver, file]))
                            os.symlink(file_path, os.sep.join([self.args.receiver, file]))
                            print(f'{file_path} -> success')
                    except OSError:
                        print('Please run the script with administrator rights')
                        break
        else:
            print('Specify the paths for the program to work')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Command Line Autolinks')
    parser.add_argument('-s', '--source', help='The directory from where we copy the folders')
    parser.add_argument('-r', '--receiver', help='The directory that accepts files')
    args = parser.parse_args()
    CreateSymlink(args)
