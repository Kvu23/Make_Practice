# Sample makefile here

EXE = Sample
CC = gcc

SRC_DIR = src
OBJ_DIR = obj
INC_DIR = include 

CFLAGS = -g -Wall -std=c99
CPPFLAGS = -I$(INC_DIR)
LDFLAGS = -Llib
LDLIBS = -lm

SRC = ${wildcard ${SRC_DIR}/*.c}
OBJ = $(SRC:${SRC_DIR}/%.c=${OBJ_DIR}/%.o)

.PHONY: all clean

all: $(EXE)

$(EXE): $(OBJ)
	$(CC) $(LDFLAGS) $(LDLIBS) $^ -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ) $(EXE)

