# Makefile to assemble and compile the Assembly exercises
# For further information on how this Makefile works, please refer to the helloWorld exercise README and Makefile

PROGRAM_NAME = readFromStdin
SOURCE_DIR = src
BUILD_DIR = build
COMPILER_FLAGS = -nostdlib -no-pie -g

$(BUILD_DIR)/$(PROGRAM_NAME): $(BUILD_DIR)/$(PROGRAM_NAME).o
	@echo "=> Linking the binary \"$<\":"
	gcc -o $(BUILD_DIR)/$(PROGRAM_NAME) -m32 $< $(COMPILER_FLAGS)
	@echo ""

$(BUILD_DIR)/$(PROGRAM_NAME).o: $(SOURCE_DIR)/$(PROGRAM_NAME).asm
	@mkdir $(BUILD_DIR)
	@echo "=> Assembling the file \"$<\":"
	as $< --32 -o $(BUILD_DIR)/$(PROGRAM_NAME).o
	@echo ""

clean:
	@echo "=> Cleaning up..."
	@rm -rf $(BUILD_DIR)
	@echo ""
