CC=gcc
CFLAGS=-g -Wall -Wextra -Iinclude -fsanitize=address
LIBS=
TARGET=main

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
