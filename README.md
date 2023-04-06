# ASM Learning Repo

This Repository is meant to be used for learning Assembly in x86 architecture for Linux using Intel syntax

## Pre-requisites

Note: A Debian-based distribution was used for this exercises and instructions, if you prefer a non-Debian-based distribution, you should adapt the commands accordingly.

### Vagrant Environment (Prefered for MacOS users)

1. Install Homebrew (Recommended, MacOS only)
    - Instructions can be found in <https://brew.sh/>
2. Install VirtualBox v^7. For Windows instructions please refer to: <https://www.virtualbox.org/>
    - Open a terminal
    - Run "brew install virtualbox" (MacOS only)
3. Install Vagrant. For Windows instructions please refer to: <https://www.vagrantup.com/>
    - Open a terminal (if not already)
    - Run "brew install vagrant" (MacOS only)

### WSL Environment (Prefered for Windows users)

1. Install WSL
2. Install a Linux distribution of your choice
3. Inside WSL run the following commands:
    - sudo apt-get update
    - sudo apt-get upgrade
    - sudo apt-get install libc6-dev-i386

### Linux Environment (Native)

1. Open a terminal
2. Run the following commands:
    - sudo apt-get update
    - sudo apt-get upgrade
    - sudo apt-get install libc6-dev-i386

## Environment Setup

### Vagrant Environment

1. Open a terminal (if not already)
2. Clone the repo in a desired location
3. Run "vagrant up" inside any directory of the project
4. SSH into the Vagrant VM by running "vagrant ssh"

### WSL Environment

1. Clone the repo in a desired location inside WSL

### Linux Environment

1. Open a terminal (if not already)
2. Clone the repo in a desired location

## Notes

- The repo is divided by 32 or 64 bit architectures, the same exercises will be present in both.
- For each excercise a README containing a resume and the minimal theory needed to understand the exercise.
- For each excercise a build sccript will be provided to simplify the build process. Be sure to read the script as it contains the instructions to follow in case you want to build the exercises manually.
- The code will be commented for any new directives and instructions present in the exercise.

## Exercise Index

1. Hello World exercise
2. String input/output
