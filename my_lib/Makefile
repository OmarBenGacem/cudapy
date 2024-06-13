IDIR = ./include
CXX = g++
_DEPS = $(wildcard $(IDIR)/*.h)
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))


SRC = bindings.cpp
FUNC = function.cpp
TRGT = lib.so
ODIR = obj

all: $(TARGET)
	@echo "making test lib"
	$(CXX) -I$(IDIR) -fPIC -shared -o ./$(ODIR)/$(TRGT) $(SRC) $(FUNC) 

clean:
	rm -f ./$(ODIR)/$(TRGT) *.so
