CC=gcc
CFLAGS=-Wall -Wextra -Iinclude
DCFLAGS=-g -fsanitize=address
LIBS=
TARGET=main

ifeq (${DEBUG}, 1)
    CFLAGS += $(DCFLAGS)
endif

SRC = src
OBJ = build
INC = include

_DEPS =
_OBJS = main.o

DEPS = $(patsubst %,$(INC)/%,$(_DEPS))
OBJS = $(patsubst %,$(OBJ)/%,$(_OBJS))

$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $(OBJS) $(LIBS) $(CFLAGS)

$(OBJ)/%.o: $(SRC)/%.c $(DEPS) | $(OBJ)
	$(CC) -c -o $@ $< $(CFLAGS)

$(OBJ):
	mkdir $(OBJ)

.PHONY: clean
clean:
	$(RM) $(TARGET) $(OBJS) 
