AS ?= spasm
SIGN ?= rabbitsign
SFLAGS = -t 8xk -K 0104 -g -p -r 
TARGET = Hatchet.8xu
UNSIGNED = unsigned.8xu
SRC = main.asm
DELETE ?= rm

all: $(TARGET)

$(TARGET): $(UNSIGNED)
    $(SIGN) $(SFLAGS) $(UNSIGNED) -o $(TARGET)
    $(DELETE) $(UNSIGNED)
    

$(UNSIGNED):
    $(AS) $(SRC) $(UNSIGNED)