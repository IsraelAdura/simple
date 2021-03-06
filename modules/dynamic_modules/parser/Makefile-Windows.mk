#Build simple `Dynamic Modules` for WINDOWS 
# PARSER
#
#Tools Needed
#	MINGWN 
#
#Or any ANSI C development tool that support building with
#a custome make file. The below command is for a typical 
#make in the MINGW Toolchain
#
#cd to the modules/dynamic_modules/parser/  folder. 
#
#This is to ensure That the output generated are in 
#appropriate `dist` folder in modules folder. 
#Execute the below command in your command prompt of bash
#
#modules/dynamic_modules/parser/ $ make -f Makefile-Windows.mk

# Environment
MKDIR=mkdir
GREP=grep
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++

# Flags
CFLAGS=-g -MMD -MP -w -MF "$@.d"
CCFLAGS=
CXXFLAGS=

# Macros
CND_PLATFORM=
CND_DLIB_EXT=dll
CND_BUILDDIR=build
CND_DISTDIR=../dist

# Object Directory
OBJECTDIR=${CND_DISTDIR}/${CND_BUILDDIR}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/includes/arraylist.o \
	${OBJECTDIR}/includes/debug.o \
	${OBJECTDIR}/includes/json_object.o \
	${OBJECTDIR}/includes/json_tokener.o \
	${OBJECTDIR}/includes/json_util.o \
	${OBJECTDIR}/includes/linkhash.o \
	${OBJECTDIR}/includes/printbuf.o \
	${OBJECTDIR}/parser.o
	
# Link Libraries and Options
LDLIBSOPTIONS=../../../simple/dist/simple.dll

${CND_DISTDIR}/${CND_PLATFORM}/parser.${CND_DLIB_EXT}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_PLATFORM}
	${LINK.c} $(ARC_FLAG) -o ${CND_DISTDIR}/${CND_PLATFORM}/parser.${CND_DLIB_EXT} ${OBJECTFILES} ${LDLIBSOPTIONS} -shared

${OBJECTDIR}/parser.o: parser.c
	${MKDIR} -p ${OBJECTDIR}
	${RM} ${OBJECTDIR}/*d
	$(COMPILE.c) $(CFLAGS) $(ARC_FLAG) -o ${OBJECTDIR}/parser.o parser.c
	
${OBJECTDIR}/includes/arraylist.o: includes/arraylist.c
	${MKDIR} -p ${OBJECTDIR}/includes
	${RM} "$@.d"
	$(COMPILE.c) $(CFLAGS) $(ARC_FLAG) -o ${OBJECTDIR}/includes/arraylist.o includes/arraylist.c

${OBJECTDIR}/includes/debug.o: includes/debug.c
	${MKDIR} -p ${OBJECTDIR}/includes
	${RM} "$@.d"
	$(COMPILE.c) $(CFLAGS) $(ARC_FLAG) -o ${OBJECTDIR}/includes/debug.o includes/debug.c

${OBJECTDIR}/includes/json_object.o: includes/json_object.c
	${MKDIR} -p ${OBJECTDIR}/includes
	${RM} "$@.d"
	$(COMPILE.c) $(CFLAGS) $(ARC_FLAG) -o ${OBJECTDIR}/includes/json_object.o includes/json_object.c

${OBJECTDIR}/includes/json_tokener.o: includes/json_tokener.c
	${MKDIR} -p ${OBJECTDIR}/includes
	${RM} "$@.d"
	$(COMPILE.c) $(CFLAGS) $(ARC_FLAG) -o ${OBJECTDIR}/includes/json_tokener.o includes/json_tokener.c

${OBJECTDIR}/includes/json_util.o: includes/json_util.c
	${MKDIR} -p ${OBJECTDIR}/includes
	${RM} "$@.d"
	$(COMPILE.c) $(CFLAGS) $(ARC_FLAG) -o ${OBJECTDIR}/includes/json_util.o includes/json_util.c

${OBJECTDIR}/includes/linkhash.o: includes/linkhash.c
	${MKDIR} -p ${OBJECTDIR}/includes
	${RM} "$@.d"
	$(COMPILE.c) $(CFLAGS) $(ARC_FLAG) -o ${OBJECTDIR}/includes/linkhash.o includes/linkhash.c

${OBJECTDIR}/includes/printbuf.o: includes/printbuf.c
	${MKDIR} -p ${OBJECTDIR}/includes
	${RM} "$@.d"
	$(COMPILE.c) $(CFLAGS) $(ARC_FLAG) -o ${OBJECTDIR}/includes/printbuf.o includes/printbuf.c


#This Makefile-Windows.mk was written in adaptation to the MINGW
#description using the Netbeans IDE Makefiles as Guide.
#
#If this make file does not work on your Windows PC or you use 
#alternative compiler e.g Visual Studio, Cygwin e.t.c feel free to 
#write your own Makefile and send us a pull request at 
#https://github.com/simple-lang/modules . Your make file must follow 
#the below format for request to be accepted
#
#File-Name : Makefile-Windows-{Compiler}-{WindowsVersion}.mk
#
#e.g Makefile-Windows-cygwin-Windows8.mk
#
#looking forward to your contribution
#Thank You

