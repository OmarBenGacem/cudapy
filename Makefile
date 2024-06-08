# Compiler and flags
IDIR =./include
CXX = g++
NVCC = nvcc
_DEPS = $(wildcard $(IDIR)/*.h)
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

# Source and target
TARGET = test.so
SRC = test.cu

# Rules
all: $(TARGET)
	@echo "make all"

$(TARGET): $(SRC)
	$(NVCC) -I$(IDIR) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET) *.o

run: all
	@echo "runnin"
	./$(TARGET)

.PHONY: all clean run