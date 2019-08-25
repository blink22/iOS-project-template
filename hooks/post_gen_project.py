#!/usr/bin/env python3
import os

PROJECT_DIRECTORY = os.path.realpath(os.path.curdir)


def go_to_relative_dir(dir_path):
    absolute_path = os.path.join(PROJECT_DIRECTORY, dir_path)
    os.chdir(absolute_path)


def go_to_project_dir():
    os.chdir(PROJECT_DIRECTORY)


def install_cocoapods():
    go_to_project_dir()
    os.system("pod install")


def git_init():
    go_to_project_dir()
    os.system("git init >/dev/null")
    os.system("git add -A . >/dev/null")
    os.system("git commit -m \"Initial Commit\" >/dev/null")
    os.system("xed . >/dev/null")


if __name__ == "__main__":
    print("> Installing Cocoapods")
    install_cocoapods()

    print("> Initializing git repository")
    git_init()

    exit(0)
