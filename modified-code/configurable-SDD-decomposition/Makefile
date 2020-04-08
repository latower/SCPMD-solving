CC=g++
CPP_FILES := $(wildcard src/*.cpp)
DEP_FILES := $(addprefix obj/, $(notdir $(CPP_FILES:.cpp=.dep)))

OBJ_FILES = cpsdd.o \
	    cpsolve.o

OBJ_LIST = $(addprefix obj/, $(OBJ_FILES))

CFLAGS+= -O3 -g -Wall -Wno-deprecated-declarations -I./include

ifdef GECODE_HOME
    CFLAGS+= -I $(GECODE_HOME)
	LDFLAGS+= -L $(GECODE_HOME)
endif

LDFLAGS+= -lgecodesearch -lgecodekernel -lgecodesupport -lgecodeint -lgecodefloat -lgecodeminimodel -lgecodegist -lpthread

.PHONY: all clean test

all: bin/main

bin/main: obj/main.o ${OBJ_LIST}
	g++ ${CFLAGS} -o bin/main $^ ${LDFLAGS}

obj/%.o:src/%.cpp
	g++ ${CFLAGS} -o $@ -c $<

clean:
	@rm -f obj/* bin/* src/*~ *~ core 

test: bin/main
	@bin/main

include ${DEP_FILES}

obj/%.dep:src/%.cpp
	@set -e; rm -f $@; \
	gcc -MM $(CFLAGS) $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@;\
	rm -f $@.$$$$
 
