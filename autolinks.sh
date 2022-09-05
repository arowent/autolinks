#!/usr/bin/env python

import argparse
import os
from os import listdir
from os.path import isdir

def main(args):
    if args.source and args.receiver:
        for file in listdir(args.source):
            file_path = args.source + '\\' + file
            if isdir(file_path):
                try:
                    os.symlink(file_path, args.receiver + '\\' + file)
                    print('Created symlink from folder {}'.format(file))
                except FileExistsError:
                    os.rmdir(args.receiver + '\\' + file)
                    os.symlink(file_path, args.receiver + '\\' + file)
                    print('Overwrite symlink from folder {}'.format(file))
    else:
        print('Specify the paths for the program to work.')
        


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Command Line Autolinks')
    parser.add_argument('-s', '--source', help='The directory from where we copy the folders.')
    parser.add_argument('-r', '--receiver', help='The directory that accepts files.')
    args = parser.parse_args()
    main(args)