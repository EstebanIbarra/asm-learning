# ASM Learning Repo

This Repository is meant to be used for learning Assembly in x86 architecture for Linux using Intel syntax

## Pre-requisites

Note: A Debian-based distribution was used for this exercises and instructions, if you prefer a non-Debian-based distribution, you should adapt the commands accordingly.

### Vagrant Environment (Prefered for MacOS users)

1. Install Homebrew (Recommended, MacOS only)
    - Instructions can be found in the [Homebrew](https://brew.sh/) page
2. Install VirtualBox v^7. For Windows instructions please refer to the official [Virtualbox](https://www.virtualbox.org/) website
    - Open a terminal
    - Run `brew install virtualbox` (MacOS only)
3. Install Vagrant. For Windows instructions please refer to the official [Vagrant](https://www.vagrantup.com/) website
    - Open a terminal (if not already)
    - Run `brew install vagrant` (MacOS only)

### WSL Environment (Prefered for Windows users)

1. Install WSL
2. Install a Linux distribution of your choice
3. Inside WSL run the following commands:

    ```bash
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install libc6-dev-i386
    ```

### Linux Environment (Native)

1. Open a terminal
2. Run the following commands:

    ```bash
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install libc6-dev-i386
    ```

## Environment Setup

### Vagrant Environment

1. Open a terminal (if not already)
2. Clone the repo in a desired location
3. Run `vagrant up` inside any directory of the project
4. SSH into the Vagrant VM by running `vagrant ssh`

### WSL Environment

1. Clone the repo in a desired location inside WSL

### Linux Environment

1. Open a terminal (if not already)
2. Clone the repo in a desired location

## Notes

- The repo is divided by 32 or 64 bit architectures, the same exercises will be present in both.
- For each excercise a README containing a resume and the minimal theory needed to understand the exercise.
- For each excercise a Makefile will be provided to simplify the build process. Be sure to read the Makefile as it contains the instructions to follow in case you want to build the exercises manually.
- The code will be commented for any new directives and instructions present in the exercise.

## Exercise Index

1. Hello World
    - [32 bits](./32bit/helloWorld/)
2. Writing strings to stack
3. Pushing strings to stack
