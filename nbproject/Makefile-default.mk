#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32_framework.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32_framework.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/framework/hal/adc.c src/framework/hal/can.c src/framework/hal/eep.c src/framework/hal/ic.c src/framework/hal/int.c src/framework/hal/port.c src/framework/hal/pwm.c src/framework/hal/tmr.c src/framework/hal/uart.c src/framework/sal/dio/inch.c src/framework/sal/dio/outch.c src/framework/sal/rtos/rtos.c src/framework/sal/rtos/rtos_cfg.c src/framework/sal/sys/exc.c src/framework/sal/sys/main.c src/demo_app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/framework/hal/adc.o ${OBJECTDIR}/src/framework/hal/can.o ${OBJECTDIR}/src/framework/hal/eep.o ${OBJECTDIR}/src/framework/hal/ic.o ${OBJECTDIR}/src/framework/hal/int.o ${OBJECTDIR}/src/framework/hal/port.o ${OBJECTDIR}/src/framework/hal/pwm.o ${OBJECTDIR}/src/framework/hal/tmr.o ${OBJECTDIR}/src/framework/hal/uart.o ${OBJECTDIR}/src/framework/sal/dio/inch.o ${OBJECTDIR}/src/framework/sal/dio/outch.o ${OBJECTDIR}/src/framework/sal/rtos/rtos.o ${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o ${OBJECTDIR}/src/framework/sal/sys/exc.o ${OBJECTDIR}/src/framework/sal/sys/main.o ${OBJECTDIR}/src/demo_app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/framework/hal/adc.o.d ${OBJECTDIR}/src/framework/hal/can.o.d ${OBJECTDIR}/src/framework/hal/eep.o.d ${OBJECTDIR}/src/framework/hal/ic.o.d ${OBJECTDIR}/src/framework/hal/int.o.d ${OBJECTDIR}/src/framework/hal/port.o.d ${OBJECTDIR}/src/framework/hal/pwm.o.d ${OBJECTDIR}/src/framework/hal/tmr.o.d ${OBJECTDIR}/src/framework/hal/uart.o.d ${OBJECTDIR}/src/framework/sal/dio/inch.o.d ${OBJECTDIR}/src/framework/sal/dio/outch.o.d ${OBJECTDIR}/src/framework/sal/rtos/rtos.o.d ${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o.d ${OBJECTDIR}/src/framework/sal/sys/exc.o.d ${OBJECTDIR}/src/framework/sal/sys/main.o.d ${OBJECTDIR}/src/demo_app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/framework/hal/adc.o ${OBJECTDIR}/src/framework/hal/can.o ${OBJECTDIR}/src/framework/hal/eep.o ${OBJECTDIR}/src/framework/hal/ic.o ${OBJECTDIR}/src/framework/hal/int.o ${OBJECTDIR}/src/framework/hal/port.o ${OBJECTDIR}/src/framework/hal/pwm.o ${OBJECTDIR}/src/framework/hal/tmr.o ${OBJECTDIR}/src/framework/hal/uart.o ${OBJECTDIR}/src/framework/sal/dio/inch.o ${OBJECTDIR}/src/framework/sal/dio/outch.o ${OBJECTDIR}/src/framework/sal/rtos/rtos.o ${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o ${OBJECTDIR}/src/framework/sal/sys/exc.o ${OBJECTDIR}/src/framework/sal/sys/main.o ${OBJECTDIR}/src/demo_app.o

# Source Files
SOURCEFILES=src/framework/hal/adc.c src/framework/hal/can.c src/framework/hal/eep.c src/framework/hal/ic.c src/framework/hal/int.c src/framework/hal/port.c src/framework/hal/pwm.c src/framework/hal/tmr.c src/framework/hal/uart.c src/framework/sal/dio/inch.c src/framework/sal/dio/outch.c src/framework/sal/rtos/rtos.c src/framework/sal/rtos/rtos_cfg.c src/framework/sal/sys/exc.c src/framework/sal/sys/main.c src/demo_app.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic32_framework.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/framework/hal/adc.o: src/framework/hal/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/adc.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/adc.o.d" -o ${OBJECTDIR}/src/framework/hal/adc.o src/framework/hal/adc.c   
	
${OBJECTDIR}/src/framework/hal/can.o: src/framework/hal/can.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/can.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/can.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/can.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/can.o.d" -o ${OBJECTDIR}/src/framework/hal/can.o src/framework/hal/can.c   
	
${OBJECTDIR}/src/framework/hal/eep.o: src/framework/hal/eep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/eep.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/eep.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/eep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/eep.o.d" -o ${OBJECTDIR}/src/framework/hal/eep.o src/framework/hal/eep.c   
	
${OBJECTDIR}/src/framework/hal/ic.o: src/framework/hal/ic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/ic.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/ic.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/ic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/ic.o.d" -o ${OBJECTDIR}/src/framework/hal/ic.o src/framework/hal/ic.c   
	
${OBJECTDIR}/src/framework/hal/int.o: src/framework/hal/int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/int.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/int.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/int.o.d" -o ${OBJECTDIR}/src/framework/hal/int.o src/framework/hal/int.c   
	
${OBJECTDIR}/src/framework/hal/port.o: src/framework/hal/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/port.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/port.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/port.o.d" -o ${OBJECTDIR}/src/framework/hal/port.o src/framework/hal/port.c   
	
${OBJECTDIR}/src/framework/hal/pwm.o: src/framework/hal/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/pwm.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/pwm.o.d" -o ${OBJECTDIR}/src/framework/hal/pwm.o src/framework/hal/pwm.c   
	
${OBJECTDIR}/src/framework/hal/tmr.o: src/framework/hal/tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/tmr.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/tmr.o.d" -o ${OBJECTDIR}/src/framework/hal/tmr.o src/framework/hal/tmr.c   
	
${OBJECTDIR}/src/framework/hal/uart.o: src/framework/hal/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/uart.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/uart.o.d" -o ${OBJECTDIR}/src/framework/hal/uart.o src/framework/hal/uart.c   
	
${OBJECTDIR}/src/framework/sal/dio/inch.o: src/framework/sal/dio/inch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/dio 
	@${RM} ${OBJECTDIR}/src/framework/sal/dio/inch.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/dio/inch.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/dio/inch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/dio/inch.o.d" -o ${OBJECTDIR}/src/framework/sal/dio/inch.o src/framework/sal/dio/inch.c   
	
${OBJECTDIR}/src/framework/sal/dio/outch.o: src/framework/sal/dio/outch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/dio 
	@${RM} ${OBJECTDIR}/src/framework/sal/dio/outch.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/dio/outch.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/dio/outch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/dio/outch.o.d" -o ${OBJECTDIR}/src/framework/sal/dio/outch.o src/framework/sal/dio/outch.c   
	
${OBJECTDIR}/src/framework/sal/rtos/rtos.o: src/framework/sal/rtos/rtos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/rtos 
	@${RM} ${OBJECTDIR}/src/framework/sal/rtos/rtos.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/rtos/rtos.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/rtos/rtos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/rtos/rtos.o.d" -o ${OBJECTDIR}/src/framework/sal/rtos/rtos.o src/framework/sal/rtos/rtos.c   
	
${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o: src/framework/sal/rtos/rtos_cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/rtos 
	@${RM} ${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o.d" -o ${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o src/framework/sal/rtos/rtos_cfg.c   
	
${OBJECTDIR}/src/framework/sal/sys/exc.o: src/framework/sal/sys/exc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/sys 
	@${RM} ${OBJECTDIR}/src/framework/sal/sys/exc.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/sys/exc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/sys/exc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/sys/exc.o.d" -o ${OBJECTDIR}/src/framework/sal/sys/exc.o src/framework/sal/sys/exc.c   
	
${OBJECTDIR}/src/framework/sal/sys/main.o: src/framework/sal/sys/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/sys 
	@${RM} ${OBJECTDIR}/src/framework/sal/sys/main.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/sys/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/sys/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/sys/main.o.d" -o ${OBJECTDIR}/src/framework/sal/sys/main.o src/framework/sal/sys/main.c   
	
${OBJECTDIR}/src/demo_app.o: src/demo_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/demo_app.o.d 
	@${RM} ${OBJECTDIR}/src/demo_app.o 
	@${FIXDEPS} "${OBJECTDIR}/src/demo_app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/demo_app.o.d" -o ${OBJECTDIR}/src/demo_app.o src/demo_app.c   
	
else
${OBJECTDIR}/src/framework/hal/adc.o: src/framework/hal/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/adc.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/adc.o.d" -o ${OBJECTDIR}/src/framework/hal/adc.o src/framework/hal/adc.c   
	
${OBJECTDIR}/src/framework/hal/can.o: src/framework/hal/can.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/can.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/can.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/can.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/can.o.d" -o ${OBJECTDIR}/src/framework/hal/can.o src/framework/hal/can.c   
	
${OBJECTDIR}/src/framework/hal/eep.o: src/framework/hal/eep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/eep.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/eep.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/eep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/eep.o.d" -o ${OBJECTDIR}/src/framework/hal/eep.o src/framework/hal/eep.c   
	
${OBJECTDIR}/src/framework/hal/ic.o: src/framework/hal/ic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/ic.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/ic.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/ic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/ic.o.d" -o ${OBJECTDIR}/src/framework/hal/ic.o src/framework/hal/ic.c   
	
${OBJECTDIR}/src/framework/hal/int.o: src/framework/hal/int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/int.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/int.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/int.o.d" -o ${OBJECTDIR}/src/framework/hal/int.o src/framework/hal/int.c   
	
${OBJECTDIR}/src/framework/hal/port.o: src/framework/hal/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/port.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/port.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/port.o.d" -o ${OBJECTDIR}/src/framework/hal/port.o src/framework/hal/port.c   
	
${OBJECTDIR}/src/framework/hal/pwm.o: src/framework/hal/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/pwm.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/pwm.o.d" -o ${OBJECTDIR}/src/framework/hal/pwm.o src/framework/hal/pwm.c   
	
${OBJECTDIR}/src/framework/hal/tmr.o: src/framework/hal/tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/tmr.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/tmr.o.d" -o ${OBJECTDIR}/src/framework/hal/tmr.o src/framework/hal/tmr.c   
	
${OBJECTDIR}/src/framework/hal/uart.o: src/framework/hal/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/hal 
	@${RM} ${OBJECTDIR}/src/framework/hal/uart.o.d 
	@${RM} ${OBJECTDIR}/src/framework/hal/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/hal/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/hal/uart.o.d" -o ${OBJECTDIR}/src/framework/hal/uart.o src/framework/hal/uart.c   
	
${OBJECTDIR}/src/framework/sal/dio/inch.o: src/framework/sal/dio/inch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/dio 
	@${RM} ${OBJECTDIR}/src/framework/sal/dio/inch.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/dio/inch.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/dio/inch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/dio/inch.o.d" -o ${OBJECTDIR}/src/framework/sal/dio/inch.o src/framework/sal/dio/inch.c   
	
${OBJECTDIR}/src/framework/sal/dio/outch.o: src/framework/sal/dio/outch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/dio 
	@${RM} ${OBJECTDIR}/src/framework/sal/dio/outch.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/dio/outch.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/dio/outch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/dio/outch.o.d" -o ${OBJECTDIR}/src/framework/sal/dio/outch.o src/framework/sal/dio/outch.c   
	
${OBJECTDIR}/src/framework/sal/rtos/rtos.o: src/framework/sal/rtos/rtos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/rtos 
	@${RM} ${OBJECTDIR}/src/framework/sal/rtos/rtos.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/rtos/rtos.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/rtos/rtos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/rtos/rtos.o.d" -o ${OBJECTDIR}/src/framework/sal/rtos/rtos.o src/framework/sal/rtos/rtos.c   
	
${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o: src/framework/sal/rtos/rtos_cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/rtos 
	@${RM} ${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o.d" -o ${OBJECTDIR}/src/framework/sal/rtos/rtos_cfg.o src/framework/sal/rtos/rtos_cfg.c   
	
${OBJECTDIR}/src/framework/sal/sys/exc.o: src/framework/sal/sys/exc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/sys 
	@${RM} ${OBJECTDIR}/src/framework/sal/sys/exc.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/sys/exc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/sys/exc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/sys/exc.o.d" -o ${OBJECTDIR}/src/framework/sal/sys/exc.o src/framework/sal/sys/exc.c   
	
${OBJECTDIR}/src/framework/sal/sys/main.o: src/framework/sal/sys/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src/framework/sal/sys 
	@${RM} ${OBJECTDIR}/src/framework/sal/sys/main.o.d 
	@${RM} ${OBJECTDIR}/src/framework/sal/sys/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/framework/sal/sys/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/framework/sal/sys/main.o.d" -o ${OBJECTDIR}/src/framework/sal/sys/main.o src/framework/sal/sys/main.c   
	
${OBJECTDIR}/src/demo_app.o: src/demo_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/src 
	@${RM} ${OBJECTDIR}/src/demo_app.o.d 
	@${RM} ${OBJECTDIR}/src/demo_app.o 
	@${FIXDEPS} "${OBJECTDIR}/src/demo_app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"src" -MMD -MF "${OBJECTDIR}/src/demo_app.o.d" -o ${OBJECTDIR}/src/demo_app.o src/demo_app.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic32_framework.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32_framework.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}              -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic32_framework.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32_framework.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic32_framework.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
