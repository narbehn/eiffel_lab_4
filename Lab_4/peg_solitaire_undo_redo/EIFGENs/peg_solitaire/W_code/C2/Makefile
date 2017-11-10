INCLUDE_PATH =  -I"$(ISE_LIBRARY)/library/time/spec/include"
SHELL = /bin/sh
CC = gcc
CPP = g++
CFLAGS = -O0 -pipe -fPIC -D_GNU_SOURCE -m64  -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"/cs/local/packages/Eiffel17.05/studio/spec/linux-x86-64/include" -I. $(INCLUDE_PATH)
CPPFLAGS = -O0 -pipe -fPIC -D_GNU_SOURCE -m64  -DWORKBENCH -I"/cs/local/packages/Eiffel17.05/studio/spec/linux-x86-64/include" -I. $(INCLUDE_PATH)
LDFLAGS = -m elf_x86_64
CCLDFLAGS = -m64  
LDSHAREDFLAGS =  -m elf_x86_64 -shared -o
EIFLIB = "/cs/local/packages/Eiffel17.05/studio/spec/linux-x86-64/lib/libwkbench.a"
EIFTEMPLATES = /cs/local/packages/Eiffel17.05/studio/config/linux-x86-64/templates
LIBS = -lm
MAKE = make
AR = ar
LD = ld
MKDEP = \$(EIFFEL_SRC)/C/mkdep $(DPFLAGS) --
MV = /bin/mv
CP = /bin/cp
RANLIB = :
RM = /bin/rm -f
FILE_EXIST = 
RMDIR = 
X2C = "/cs/local/packages/Eiffel17.05/studio/spec/linux-x86-64/bin/x2c"
SHAREDLINK = ld
SHAREDLIBS = -lm
SHARED_SUFFIX = .so
COMMAND_MAKEFILE = 
START_TEST = if [ ! -f finished ] ; then 
END_TEST = ; fi 
CREATE_TEST = touch finished 
SYSTEM_IN_DYNAMIC_LIB = peg_solitaire.so 

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = big_file_C2_c.o 

OLDOBJECTS =  ty1015.o ty1015d.o ty1016.o ty1016d.o ty1017.o ty1017d.o ar1018.o \
	ar1018d.o sl990.o sl990d.o un994.o un994d.o oc993.o oc993d.o un991.o \
	un991d.o es997.o es997d.o es995.o es995d.o es996.o es996d.o av992.o \
	av992d.o ti1010.o ti1010d.o da1008.o da1008d.o da1006.o da1006d.o \
	ti1001.o ti1001d.o ab1002.o ab1002d.o ti1009.o ti1009d.o da1000.o \
	da1000d.o da1013.o da1013d.o da1004.o da1004d.o da1007.o da1007d.o \
	da1003.o da1003d.o da1012.o da1012d.o fi1005.o fi1005d.o du998.o \
	du998d.o in1014.o in1014d.o da999.o da999d.o da1011.o da1011d.o 

all: Cobj2.o

Cobj2.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj2.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

