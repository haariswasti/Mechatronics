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
SOURCEFILES_QUOTED_IF_SPACED=/Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c /Users/haariswasti/Downloads/ECE118/src/BOARD.c /Users/haariswasti/Downloads/ECE118/src/AD.c /Users/haariswasti/Downloads/ECE118/src/serial.c /Users/haariswasti/Downloads/ECE118/src/roach.c /Users/haariswasti/Downloads/ECE118/src/pwm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/488965018/TemplateES_Main.o ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o ${OBJECTDIR}/_ext/2002000645/ES_Framework.o ${OBJECTDIR}/_ext/488965018/TemplateService.o ${OBJECTDIR}/_ext/2002000645/BOARD.o ${OBJECTDIR}/_ext/2002000645/AD.o ${OBJECTDIR}/_ext/2002000645/serial.o ${OBJECTDIR}/_ext/2002000645/roach.o ${OBJECTDIR}/_ext/2002000645/pwm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d ${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d ${OBJECTDIR}/_ext/488965018/TemplateService.o.d ${OBJECTDIR}/_ext/2002000645/BOARD.o.d ${OBJECTDIR}/_ext/2002000645/AD.o.d ${OBJECTDIR}/_ext/2002000645/serial.o.d ${OBJECTDIR}/_ext/2002000645/roach.o.d ${OBJECTDIR}/_ext/2002000645/pwm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/488965018/TemplateES_Main.o ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o ${OBJECTDIR}/_ext/2002000645/ES_Framework.o ${OBJECTDIR}/_ext/488965018/TemplateService.o ${OBJECTDIR}/_ext/2002000645/BOARD.o ${OBJECTDIR}/_ext/2002000645/AD.o ${OBJECTDIR}/_ext/2002000645/serial.o ${OBJECTDIR}/_ext/2002000645/roach.o ${OBJECTDIR}/_ext/2002000645/pwm.o

# Source Files
SOURCEFILES=/Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c /Users/haariswasti/Downloads/ECE118/src/BOARD.c /Users/haariswasti/Downloads/ECE118/src/AD.c /Users/haariswasti/Downloads/ECE118/src/serial.c /Users/haariswasti/Downloads/ECE118/src/roach.c /Users/haariswasti/Downloads/ECE118/src/pwm.c



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
${OBJECTDIR}/_ext/488965018/TemplateES_Main.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c  .generated_files/flags/default/646d8318dc4bf01ec387c080373d0ce674564927 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o /Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c  .generated_files/flags/default/b7504d76e24231e373bc98c3a8fdeb9e27abd99d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_Framework.o: /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c  .generated_files/flags/default/fa01fd87b29d32bd596aab269e462f1205586e7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_Framework.o /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/488965018/TemplateService.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c  .generated_files/flags/default/200d8721bc504ebc5861ffbe9ec2423ea6aa2768 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateService.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateService.o /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/BOARD.o: /Users/haariswasti/Downloads/ECE118/src/BOARD.c  .generated_files/flags/default/268de10e825567c0a80f5fd1ac89b0f4af132eef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/BOARD.o.d" -o ${OBJECTDIR}/_ext/2002000645/BOARD.o /Users/haariswasti/Downloads/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/AD.o: /Users/haariswasti/Downloads/ECE118/src/AD.c  .generated_files/flags/default/b14ccd97dff0e00ae3e4f257c3fdd8580f869f69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/AD.o.d" -o ${OBJECTDIR}/_ext/2002000645/AD.o /Users/haariswasti/Downloads/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/serial.o: /Users/haariswasti/Downloads/ECE118/src/serial.c  .generated_files/flags/default/e4c6531f496239f15981bc197ff9cfcb85b2f071 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/serial.o.d" -o ${OBJECTDIR}/_ext/2002000645/serial.o /Users/haariswasti/Downloads/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/roach.o: /Users/haariswasti/Downloads/ECE118/src/roach.c  .generated_files/flags/default/c9bfe15c2dbb64ffd29925cb1dcbc234b635017e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/roach.o.d" -o ${OBJECTDIR}/_ext/2002000645/roach.o /Users/haariswasti/Downloads/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/pwm.o: /Users/haariswasti/Downloads/ECE118/src/pwm.c  .generated_files/flags/default/f6d5283c06ecb1ed8d0a240300bc81cd0aa55c9f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/pwm.o.d" -o ${OBJECTDIR}/_ext/2002000645/pwm.o /Users/haariswasti/Downloads/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/488965018/TemplateES_Main.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c  .generated_files/flags/default/e92a95816bc95d8e3bc88826053401925c8f1b44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateES_Main.o /Users/haariswasti/Downloads/ECE118/templates/TemplateES_Main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c  .generated_files/flags/default/d5d3afa3a124798699d9dc8143a2182142e5bbc6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateEventChecker.o /Users/haariswasti/Downloads/ECE118/templates/TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/ES_Framework.o: /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c  .generated_files/flags/default/76a0dabf643b9416db2a7aef7ec936729f8bfceb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/2002000645/ES_Framework.o /Users/haariswasti/Downloads/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/488965018/TemplateService.o: /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c  .generated_files/flags/default/69dfddbc40ed454b3ac949b7bcd7730465dab7b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/488965018" 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/_ext/488965018/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/488965018/TemplateService.o.d" -o ${OBJECTDIR}/_ext/488965018/TemplateService.o /Users/haariswasti/Downloads/ECE118/templates/TemplateService.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/BOARD.o: /Users/haariswasti/Downloads/ECE118/src/BOARD.c  .generated_files/flags/default/4cfd1eab90f29217ae174765b0ba11b5a40cd12d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/BOARD.o.d" -o ${OBJECTDIR}/_ext/2002000645/BOARD.o /Users/haariswasti/Downloads/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/AD.o: /Users/haariswasti/Downloads/ECE118/src/AD.c  .generated_files/flags/default/83a7ddbc75a16865c03e782c616aff8dc3712662 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/AD.o.d" -o ${OBJECTDIR}/_ext/2002000645/AD.o /Users/haariswasti/Downloads/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/serial.o: /Users/haariswasti/Downloads/ECE118/src/serial.c  .generated_files/flags/default/a472fdb5629e188c93f247f44c3292e6c7f2684b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/serial.o.d" -o ${OBJECTDIR}/_ext/2002000645/serial.o /Users/haariswasti/Downloads/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/roach.o: /Users/haariswasti/Downloads/ECE118/src/roach.c  .generated_files/flags/default/1dd5d875b12235d9116d2baa6fab8f6bdfbcf4d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/roach.o.d" -o ${OBJECTDIR}/_ext/2002000645/roach.o /Users/haariswasti/Downloads/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/pwm.o: /Users/haariswasti/Downloads/ECE118/src/pwm.c  .generated_files/flags/default/f2add20c8304ce8d2074605bcb1d469ac24fd87c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/pwm.o.d" -o ${OBJECTDIR}/_ext/2002000645/pwm.o /Users/haariswasti/Downloads/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
