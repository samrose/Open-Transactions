#
# The PROGRAM macro defines the name of the program or project.  It
# allows the program name to be changed by editing in only one
# location
#

PROGRAM = libOTLib.a 
DEBUG_PROGRAM = libOTLibd.a 


# Find out what platform we're on.
UNAME := $(shell uname -s)

OT_PLATFORM := UNKNOWN_PLATFORM


# ---------------------------------------------------------------------

ifeq ($(FELLOW_TRAVELER), 1)
FT_FLAGS = -DFELLOW_TRAVELER
else
FT_FLAGS = #empty
endif

# ---------------------------------------------------------------------

ifeq ($(DSP), 1)
FT_FLAGS += -DDSP
endif

# ---------------------------------------------------------------------


# I allow the user the option to force-override the build platform.
# Using make PLATFORM=darwin, for example, you will build in darwin mode
# even if you are on a linux box.
#

ifeq ($(PLATFORM), darwin)
UNAME := Darwin
endif

ifeq ($(PLATFORM), linux)
UNAME := Linux
endif

ifeq ($(PLATFORM), freebsd)
UNAME := FreeBSD
endif

ifeq ($(UNAME), Darwin)
OT_PLATFORM := darwin
endif

ifeq ($(UNAME), Linux)
OT_PLATFORM := linux
endif

ifeq ($(UNAME), FreeBSD)
OT_PLATFORM := freebsd
endif



OT_INCLUDEDIRS = \
	-I./irrxml \
	-I./Lucre \
	-I./


OT_LIBDIRS = \
	-L./


PLATFORM_INCLUDEDIRS = # empty
PLATFORM_LIBDIRS = # empty


# -----------------------------------------

LINUX_LIBDIR = lib
LBITS := $(shell getconf LONG_BIT)
ifeq ($(LBITS),64)
LINUX_LIBDIR = lib64
endif

# -----------------------------------------

# SSL Folders!
# For Darwin I use /opt instead of /usr, since OpenSSL 1.0.0a is
# installed to that location by MacPorts.
#
ifeq ($(OT_PLATFORM), darwin)
SSL_INCLUDEDIRS = -I/opt/local/include
SSL_LIBDIRS = -L/opt/local/lib
endif

ifeq ($(OT_PLATFORM), linux)
SSL_INCLUDEDIRS = -I/usr/local/ssl/include
SSL_LIBDIRS = -L/usr/local/ssl/$(LINUX_LIBDIR)
endif

ifeq ($(OT_PLATFORM), freebsd)
SSL_INCLUDEDIRS = -I/usr/local/include
SSL_LIBDIRS = -L/usr/local/lib
#SSL_LIBDIRS = -L/usr/ports/security/openssl/work/openssl-1.0.0c
endif


# -----------------------------------------


ifeq ($(DSP), 1)
SSL_INCLUDEDIRS = -I../openssl/include
SSL_LIBDIRS = -L../openssl
endif

# -----------------------------------------


INCLUDEDIRS = $(PLATFORM_INCLUDEDIRS) $(SSL_INCLUDEDIRS) $(OT_INCLUDEDIRS)
LIBDIRS = $(PLATFORM_LIBDIRS)  $(SSL_LIBDIRS) $(OT_LIBDIRS)


LIBS = -lssl -lcrypto
DEBUG_LIBS = -lssl -lcrypto

#
# The CXXSOURCES macro contains a list of source files.
#
# The CXXOBJECTS macro converts the CXXSOURCES macro into a list
# of object files.
#
# The CXXFLAGS macro contains a list of options to be passed to
# the compiler.  Adding "-g" to this line will cause the compiler
# to add debugging information to the executable.
#
# The CXX macro defines the C++ compiler.
#
# The LDFLAGS macro contains all of the library and library
# directory information to be passed to the linker.
#

LUCRESOURCES = Lucre/bankimp.cpp

IRRXMLSOURCES = irrxml/irrXML.cpp      

CSOURCES = easyzlib.c mkcert.c

CXXSOURCES = $(LUCRESOURCES) $(IRRXMLSOURCES) \
			 OTData.cpp \
			 OTString.cpp \
			 OTStringXML.cpp \
			 OTASCIIArmor.cpp \
			 OTContract.cpp \
			 OTWallet.cpp \
			 OTSignedFile.cpp \
			 OTPseudonym.cpp \
			 OTMint.cpp \
			 OTInstrument.cpp \
			 OTCheque.cpp \
			 OTPurse.cpp \
			 OTLog.cpp \
			 OTToken.cpp \
			 OTTransactionType.cpp \
			 OTItem.cpp \
			 OTBasket.cpp \
			 OTTransaction.cpp \
			 OTLedger.cpp \
			 OTAccount.cpp \
			 OTEnvelope.cpp \
			 OTAssetContract.cpp \
			 OTServerContract.cpp \
			 OTOffer.cpp \
			 OTAgreement.cpp \
			 OTTrackable.cpp \
			 OTCron.cpp \
			 OTCronItem.cpp \
			 OTTrade.cpp \
			 OTPaymentPlan.cpp \
			 OTMarket.cpp \
			 OTPayload.cpp \
			 OTMessage.cpp \
			 OTMessageBuffer.cpp \
			 OTIdentifier.cpp \
			 OTAsymmetricKey.cpp \
			 OTSignature.cpp \
			 OTDataCheck.cpp

CXXOBJECTS = $(CXXSOURCES:.cpp=.o)  # expands to list of object files
COBJECTS   = $(CSOURCES:.c=.o)
#CXXFLAGS   = $(INCLUDEDIRS) -Wall -Werror
#CFLAGS     = $(INCLUDEDIRS) -Wall -Werror
DEBUG_FLAGS = -g
CXX = g++
CC = gcc
LDFLAGS = $(LIBDIRS) $(LIBS)
DEBUG_LDFLAGS = $(LIBDIRS) $(DEBUG_LIBS)

CXXFLAGS   := _____FLAGS_NOT_SET____
CFLAGS     := _____FLAGS_NOT_SET____ 

ifeq ($(DYNAMIC_OTLIB), 1)
CXXFLAGS   = $(INCLUDEDIRS) $(FT_FLAGS) -Wall -fPIC
CFLAGS     = $(INCLUDEDIRS) $(FT_FLAGS) -Wall -fPIC 
else
CXXFLAGS   = $(INCLUDEDIRS) $(FT_FLAGS) -Wall
CFLAGS     = $(INCLUDEDIRS) $(FT_FLAGS) -Wall
endif

#
# Default target: the first target is the default target.
# Just type "make" to build it.
#

all: $(PROGRAM)

debug: CXXFLAGS += $(DEBUG_FLAGS)
debug: LIBS = $(DEBUG_LIBS)
debug: LDFLAGS = $(DEBUG_LDFLAGS)
debug: $(CXXOBJECTS) $(COBJECTS) 
	ar rc $(DEBUG_PROGRAM) $(CXXOBJECTS) $(COBJECTS)

#
# Link target: automatically builds its object dependencies before
# executing its link command.
#

$(PROGRAM): $(CXXOBJECTS) $(COBJECTS) 
	ar rc $(PROGRAM) $(CXXOBJECTS) $(COBJECTS)

#
# Object targets: rules that define objects, their dependencies, and
# a list of commands for compilation.
#

easyzlib.o: easyzlib.c easyzlib.h
	$(CC) $(CFLAGS) -c -o easyzlib.o easyzlib.c 

irrxml/irrXML.o: irrxml/irrXML.cpp irrxml/irrXML.h
	$(CXX) $(CXXFLAGS) -c -o irrxml/irrXML.o irrxml/irrXML.cpp

Lucre/bankimp.o: Lucre/bankimp.cpp Lucre/bank.h
	$(CXX) $(CXXFLAGS) -c -o Lucre/bankimp.o Lucre/bankimp.cpp

OTData.o: OTData.cpp OTData.h
	$(CXX) $(CXXFLAGS) -c -o OTData.o OTData.cpp
OTString.o: OTString.cpp OTString.h
	$(CXX) $(CXXFLAGS) -c -o OTString.o OTString.cpp
OTStringXML.o: OTStringXML.cpp OTStringXML.h
	$(CXX) $(CXXFLAGS) -c -o OTStringXML.o OTStringXML.cpp
OTIdentifier.o: OTIdentifier.cpp OTIdentifier.h
	$(CXX) $(CXXFLAGS) -c -o OTIdentifier.o OTIdentifier.cpp
OTASCIIArmor.o: OTASCIIArmor.cpp OTASCIIArmor.h
	$(CXX) $(CXXFLAGS) -c -o OTASCIIArmor.o OTASCIIArmor.cpp
OTSignature.o: OTSignature.cpp OTSignature.h
	$(CXX) $(CXXFLAGS) -c -o OTSignature.o OTSignature.cpp
OTLog.o: OTLog.cpp OTLog.h
	$(CXX) $(CXXFLAGS) -c -o OTLog.o OTLog.cpp
OTPseudonym.o: OTPseudonym.cpp OTPseudonym.h
	$(CXX) $(CXXFLAGS) -c -o OTPseudonym.o OTPseudonym.cpp
OTContract.o: OTContract.cpp OTContract.h
	$(CXX) $(CXXFLAGS) -c -o OTContract.o OTContract.cpp
OTWallet.o: OTWallet.cpp OTWallet.h 
	$(CXX) $(CXXFLAGS) -c -o OTWallet.o OTWallet.cpp
OTSignedFile.o: OTSignedFile.cpp OTSignedFile.h
	$(CXX) $(CXXFLAGS) -c -o OTSignedFile.o OTSignedFile.cpp
OTInstrument.o: OTInstrument.cpp OTInstrument.h
	$(CXX) $(CXXFLAGS) -c -o OTInstrument.o OTInstrument.cpp
OTCheque.o: OTCheque.cpp OTCheque.h
	$(CXX) $(CXXFLAGS) -c -o OTCheque.o OTCheque.cpp
OTToken.o: OTToken.cpp OTToken.h
	$(CXX) $(CXXFLAGS) -c -o OTToken.o OTToken.cpp
OTPurse.o: OTPurse.cpp OTPurse.h
	$(CXX) $(CXXFLAGS) -c -o OTPurse.o OTPurse.cpp
OTMint.o: OTMint.cpp OTMint.h
	$(CXX) $(CXXFLAGS) -c -o OTMint.o OTMint.cpp
OTTransactionType.o: OTTransactionType.cpp OTTransactionType.h
	$(CXX) $(CXXFLAGS) -c -o OTTransactionType.o OTTransactionType.cpp
OTItem.o: OTItem.cpp OTItem.h
	$(CXX) $(CXXFLAGS) -c -o OTItem.o OTItem.cpp
OTBasket.o: OTBasket.cpp OTBasket.h
	$(CXX) $(CXXFLAGS) -c -o OTBasket.o OTBasket.cpp
OTTransaction.o: OTTransaction.cpp OTTransaction.h
	$(CXX) $(CXXFLAGS) -c -o OTTransaction.o OTTransaction.cpp
OTLedger.o: OTLedger.cpp OTLedger.h
	$(CXX) $(CXXFLAGS) -c -o OTLedger.o OTLedger.cpp
OTAccount.o: OTAccount.cpp OTAccount.h
	$(CXX) $(CXXFLAGS) -c -o OTAccount.o OTAccount.cpp
OTEnvelope.o: OTEnvelope.cpp OTEnvelope.h
	$(CXX) $(CXXFLAGS) -c -o OTEnvelope.o OTEnvelope.cpp
OTAssetContract.o: OTAssetContract.cpp OTAssetContract.h
	$(CXX) $(CXXFLAGS) -c -o OTAssetContract.o OTAssetContract.cpp
OTServerContract.o: OTServerContract.cpp OTServerContract.h
	$(CXX) $(CXXFLAGS) -c -o OTServerContract.o OTServerContract.cpp
OTPayload.o: OTPayload.cpp OTPayload.h
	$(CXX) $(CXXFLAGS) -c -o OTPayload.o OTPayload.cpp
OTMessage.o: OTMessage.cpp OTMessage.h
	$(CXX) $(CXXFLAGS) -c -o OTMessage.o OTMessage.cpp
OTMessageBuffer.o: OTMessageBuffer.cpp OTMessageBuffer.h
	$(CXX) $(CXXFLAGS) -c -o OTMessageBuffer.o OTMessageBuffer.cpp
OTAsymmetricKey.o: OTAsymmetricKey.cpp OTAsymmetricKey.h
	$(CXX) $(CXXFLAGS) -c -o OTAsymmetricKey.o OTAsymmetricKey.cpp
OTDataCheck.o: OTDataCheck.cpp OTDataCheck.h
	$(CXX) $(CXXFLAGS) -c -o OTDataCheck.o OTDataCheck.cpp
OTAgreement.o: OTAgreement.cpp OTAgreement.h
	$(CXX) $(CXXFLAGS) -c -o OTAgreement.o OTAgreement.cpp
OTTrackable.o: OTTrackable.cpp OTTrackable.h
	$(CXX) $(CXXFLAGS) -c -o OTTrackable.o OTTrackable.cpp
OTCron.o: OTCron.cpp OTCron.h
	$(CXX) $(CXXFLAGS) -c -o OTCron.o OTCron.cpp
OTCronItem.o: OTCronItem.cpp OTCronItem.h
	$(CXX) $(CXXFLAGS) -c -o OTCronItem.o OTCronItem.cpp
OTMarket.o: OTMarket.cpp OTMarket.h
	$(CXX) $(CXXFLAGS) -c -o OTMarket.o OTMarket.cpp
OTOffer.o: OTOffer.cpp OTOffer.h
	$(CXX) $(CXXFLAGS) -c -o OTOffer.o OTOffer.cpp
OTTrade.o: OTTrade.cpp OTTrade.h
	$(CXX) $(CXXFLAGS) -c -o OTTrade.o OTTrade.cpp
OTPaymentPlan.o: OTPaymentPlan.cpp OTPaymentPlan.h
	$(CXX) $(CXXFLAGS) -c -o OTPaymentPlan.o OTPaymentPlan.cpp

#
# Clean target: "make -f Makefile.Linux clean" to remove unwanted objects and executables.
#
RM=rm

clean:
	$(RM) -f $(CXXOBJECTS) $(COBJECTS) $(PROGRAM) $(DEBUG_PROGRAM)

#
# Run target: "make -f Makefile.Linux run" to execute the application
#             You will need to add $(VARIABLE_NAME) for any command line parameters 
#             that you defined earlier in this file.
# 

run:
	./$(PROGRAM) 


