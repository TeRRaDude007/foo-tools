#
# Site specific configuration
#


COMPILER= gcc
WALL= 
VERSION= "0.1 ALPHA 1"
INST_DIR= /usr/local/nk
CC_ONLY_FLAGS= -I$(TOP)/src

#
# Database Library information
#

DB_INC_DIR= /usr/local/msql3/include
DB_LIB_DIR= /usr/local/msql3/lib    
DB_LIB_NAME= -lmsql



#
# Things below here shouldn't need to be changed
#
CC= $(COMPILER) $(WALL) $(CC_ONLY_FLAGS)
LINK= $(COMPILER) $(LINK_ONLY_FLAGS)
RANLIB= ranlib
AR= ar
LN_S= ln -s
BASE_SOURCE_DIR= $(TOP)/src

TARGET= @TARGET@

# Extra libraries if required
EXTRA_LIBS= 

EMBER_LIB= 

# Any other CFlags required
EXTRA_CFLAGS= 

# 
EMBER_INST_DIR= 

CFLAGS= -g -I$(TOP)/ -I/usr/local/include $(EXTRA_CFLAGS) -D$(OS_TYPE) -I$(EMBER_INST_DIR)/include
LDLIBS= -L/usr/local/lib -L$(TOP)/lib -lnsl  $(EXTRA_LIBS)
