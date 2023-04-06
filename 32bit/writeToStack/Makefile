# Makefile to assemble and compile the Assembly exercises

# This line defines the variable PROGRAM_NAME
PROGRAM_NAME = writeToStack

# This lines define the SOURCE_DIR and BUILD_DIR
SOURCE_DIR = src
BUILD_DIR = build

# This line defines the compiler flags
COMPILER_FLAGS = -nostdlib -no-pie

# $< will point to the first file in the dependency chain
# $@ will point to the last file in the dependency chain

# This procedure compiles and builds the executable using gcc
$(BUILD_DIR)/$(PROGRAM_NAME): $(BUILD_DIR)/$(PROGRAM_NAME).o
# Appending @ to a command prevents it from displaying in the stdout
	@echo "=> Linking the binary \"$<\":"
	gcc -o $(BUILD_DIR)/$(PROGRAM_NAME) -m32 $< $(COMPILER_FLAGS)
	@echo ""

# This procedure creates the build directory and assembles our Assembly code
$(BUILD_DIR)/$(PROGRAM_NAME).o: $(SOURCE_DIR)/$(PROGRAM_NAME).asm
	@mkdir $(BUILD_DIR)
	@echo "=> Assembling the file \"$<\":"
	as $< --32 -o $(BUILD_DIR)/$(PROGRAM_NAME).o
	@echo ""

# This procedure removes the existing build directory and all it's contents
clean:
	@echo "=> Cleaning up..."
	@rm -rf $(BUILD_DIR)
	@echo ""