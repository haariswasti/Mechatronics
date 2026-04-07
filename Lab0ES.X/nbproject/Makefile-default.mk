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
FINAL_IMAGE=${DISTDIR}/Lab0ES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0ES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=/Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c /Users/haariswasti/Downloads/ECE118/src/BOARD.c /Users/haariswasti/Downloads/ECE118/src/AD.c /Users/haariswasti/Downloads/ECE118/src/serial.c /Users/haariswasti/Downloads/ECE118/src/roach.c /Users/haariswasti/Downloads/ECE118/src/pwm.c /Users/haariswasti/Downloads/ECE118/src/ES_KeyboardInput.c /Users/haariswasti/Downloads/ECE118/src/ES_PostList.c /Users/haariswasti/Downloads/ECE118/src/ES_Queue.c /Users/haariswasti/Downloads/ECE118/src/ES_CheckEvents.c /Users/haariswasti/Downloads/ECE118/src/ES_Timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/488965018/TemplateES_Main.o ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o ${OBJECTDIR}/_ext/2002000645/ES_Framework.o ${OBJECTDIR}/_ext/488965018/TemplateService.o ${OBJECTDIR}/_ext/2002000645/BOARD.o ${OBJECTDIR}/_ext/2002000645/AD.o ${OBJECTDIR}/_ext/2002000645/serial.o ${OBJECTDIR}/_ext/2002000645/roach.o ${OBJECTDIR}/_ext/2002000645/pwm.o ${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o ${OBJECTDIR}/_ext/2002000645/ES_PostList.o ${OBJECTDIR}/_ext/2002000645/ES_Queue.o ${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o ${OBJECTDIR}/_ext/2002000645/ES_Timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d ${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d ${OBJECTDIR}/_ext/488965018/TemplateService.o.d ${OBJECTDIR}/_ext/2002000645/BOARD.o.d ${OBJECTDIR}/_ext/2002000645/AD.o.d ${OBJECTDIR}/_ext/2002000645/serial.o.d ${OBJECTDIR}/_ext/2002000645/roach.o.d ${OBJECTDIR}/_ext/2002000645/pwm.o.d ${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/2002000645/ES_PostList.o.d ${OBJECTDIR}/_ext/2002000645/ES_Queue.o.d ${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/2002000645/ES_Timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/488965018/TemplateES_Main.o ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o ${OBJECTDIR}/_ext/2002000645/ES_Framework.o ${OBJECTDIR}/_ext/488965018/TemplateService.o ${OBJECTDIR}/_ext/2002000645/BOARD.o ${OBJECTDIR}/_ext/2002000645/AD.o ${OBJECTDIR}/_ext/2002000645/serial.o ${OBJECTDIR}/_ext/2002000645/roach.o ${OBJECTDIR}/_ext/2002000645/pwm.o ${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o ${OBJECTDIR}/_ext/2002000645/ES_PostList.o ${OBJECTDIR}/_ext/2002000645/ES_Queue.o ${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o ${OBJECTDIR}/_ext/2002000645/ES_Timers.o

# Source Files
SOURCEFILES=/Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c /Users/haariswasti/Downloads/ECE118/src/BOARD.c /Users/haariswasti/Downloads/ECE118/src/AD.c /Users/haariswasti/Downloads/ECE118/src/serial.c /Users/haariswasti/Downloads/ECE118/src/roach.c /Users/haariswasti/Downloads/ECE118/src/pwm.c /Users/haariswasti/Downloads/ECE118/src/ES_KeyboardInput.c /Users/haariswasti/Downloads/ECE118/src/ES_PostList.c /Users/haariswasti/Downloads/ECE118/src/ES_Queue.c /Users/haariswasti/Downloads/ECE118/src/ES_CheckEvents.c /Users/haariswasti/Downloads/ECE118/src/ES_Timers.c



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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab0ES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="/Users/haariswasti/Downloads/ECE118/bootloader320.ld"
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
${OBJECTDIR}/_ext/488965018/TemplateES_Main.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c  .generated_files/flags/default/8b9f3bc93e69ab32760832789e047d130f09fcbb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o /Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c  .generated_files/flags/default/989c76aa97c127e9af8733ceb9abca2d0c045274 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_Framework.o: /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c  .generated_files/flags/default/955f7c5ad054f5d900e3cb6a091a1fb562733783 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_Framework.o /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/488965018/TemplateService.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c  .generated_files/flags/default/4fb99f9bf0f4737ec53429b2a14f5fdf5282e9f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateService.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateService.o /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/BOARD.o: /Users/haariswasti/Downloads/ECE118/src/BOARD.c  .generated_files/flags/default/3a22a32a9534f6916125c05d51b38d42bfe1f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/BOARD.o.d" -o ${OBJECTDIR}/_ext/2002000645/BOARD.o /Users/haariswasti/Downloads/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/AD.o: /Users/haariswasti/Downloads/ECE118/src/AD.c  .generated_files/flags/default/af4eeb356e3622e0f31ba97ced3d79f13e9b9e1a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/AD.o.d" -o ${OBJECTDIR}/_ext/2002000645/AD.o /Users/haariswasti/Downloads/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/serial.o: /Users/haariswasti/Downloads/ECE118/src/serial.c  .generated_files/flags/default/97a8a4c6893dcc48af15e8bf2d8b5ba6190c9347 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/serial.o.d" -o ${OBJECTDIR}/_ext/2002000645/serial.o /Users/haariswasti/Downloads/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/roach.o: /Users/haariswasti/Downloads/ECE118/src/roach.c  .generated_files/flags/default/1cfa742676226f0828e51046ff27cdaa27057163 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/roach.o.d" -o ${OBJECTDIR}/_ext/2002000645/roach.o /Users/haariswasti/Downloads/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/pwm.o: /Users/haariswasti/Downloads/ECE118/src/pwm.c  .generated_files/flags/default/ec01a64e975aabf747dc6eb5bc4e2bf9df8bba3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/pwm.o.d" -o ${OBJECTDIR}/_ext/2002000645/pwm.o /Users/haariswasti/Downloads/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o: /Users/haariswasti/Downloads/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/1d027b91fb045c55beed02c481d20433be49c1d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o /Users/haariswasti/Downloads/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_PostList.o: /Users/haariswasti/Downloads/ECE118/src/ES_PostList.c  .generated_files/flags/default/eedabd5b7861c433636ad70f78f7f65025c11705 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_PostList.o /Users/haariswasti/Downloads/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_Queue.o: /Users/haariswasti/Downloads/ECE118/src/ES_Queue.c  .generated_files/flags/default/8598d9aad56bbb69e95e4d28e4170c2943826e71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_Queue.o /Users/haariswasti/Downloads/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o: /Users/haariswasti/Downloads/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/a8999ba79bd9d1b8cc7f5c20470a6f6548dcf078 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o /Users/haariswasti/Downloads/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_Timers.o: /Users/haariswasti/Downloads/ECE118/src/ES_Timers.c  .generated_files/flags/default/c47e0b55d7bcbd8db49bea20a956264984a8f6e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_Timers.o /Users/haariswasti/Downloads/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/488965018/TemplateES_Main.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c  .generated_files/flags/default/c08c51f968efae905bc386b1ce1dd97c2bac3036 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o /Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c  .generated_files/flags/default/4a54fb427bf3c29d3269247a15eafd30579d64f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_Framework.o: /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c  .generated_files/flags/default/3073d61bed7787a3a4614dd5f43cf063eb9153cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_Framework.o /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/488965018/TemplateService.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c  .generated_files/flags/default/be6ed503ad49151b653db2798b67999f316c372c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateService.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateService.o /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/BOARD.o: /Users/haariswasti/Downloads/ECE118/src/BOARD.c  .generated_files/flags/default/50285f7a2d8daedf7e10fe6909d89b930ad52162 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/BOARD.o.d" -o ${OBJECTDIR}/_ext/2002000645/BOARD.o /Users/haariswasti/Downloads/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/AD.o: /Users/haariswasti/Downloads/ECE118/src/AD.c  .generated_files/flags/default/62a907b34be16022b2639a81d329d0a5efe0b40b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/AD.o.d" -o ${OBJECTDIR}/_ext/2002000645/AD.o /Users/haariswasti/Downloads/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/serial.o: /Users/haariswasti/Downloads/ECE118/src/serial.c  .generated_files/flags/default/8665c9ed5cc60de73d97b77681d6ca76e7e37a41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/serial.o.d" -o ${OBJECTDIR}/_ext/2002000645/serial.o /Users/haariswasti/Downloads/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/roach.o: /Users/haariswasti/Downloads/ECE118/src/roach.c  .generated_files/flags/default/f437483fab3c4c5335a79b9ba59a057679c5c843 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/roach.o.d" -o ${OBJECTDIR}/_ext/2002000645/roach.o /Users/haariswasti/Downloads/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/pwm.o: /Users/haariswasti/Downloads/ECE118/src/pwm.c  .generated_files/flags/default/ba45a6f64595f2f9b6ce9665d145e7ca04231b96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/pwm.o.d" -o ${OBJECTDIR}/_ext/2002000645/pwm.o /Users/haariswasti/Downloads/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o: /Users/haariswasti/Downloads/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/5d15fb4149ebc7e14f1bedb7f4a9fefc8db2467 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_KeyboardInput.o /Users/haariswasti/Downloads/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_PostList.o: /Users/haariswasti/Downloads/ECE118/src/ES_PostList.c  .generated_files/flags/default/dd6244462d92d957b67a5ffe81e5a94268a0c53d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_PostList.o /Users/haariswasti/Downloads/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_Queue.o: /Users/haariswasti/Downloads/ECE118/src/ES_Queue.c  .generated_files/flags/default/2dd82826d823e664c8958c75e74309865fa3e53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_Queue.o /Users/haariswasti/Downloads/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o: /Users/haariswasti/Downloads/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/f7e569aa3f58aa794c0051472bbac88764211002 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_CheckEvents.o /Users/haariswasti/Downloads/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_Timers.o: /Users/haariswasti/Downloads/ECE118/src/ES_Timers.c  .generated_files/flags/default/28147b53e500cfb73cd8d5f660e17b0b8be57f36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../Downloads/ECE118/include" -I"../../Downloads/ECE118/templates" -Werror -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_Timers.o /Users/haariswasti/Downloads/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab0ES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    /Users/haariswasti/Downloads/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0ES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0ES.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   /Users/haariswasti/Downloads/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0ES.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/Lab0ES.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
