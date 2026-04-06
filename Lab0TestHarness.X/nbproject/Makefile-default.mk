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
FINAL_IMAGE=${DISTDIR}/Lab0TestHarness.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab0TestHarness.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=/Users/haariswasti/Downloads/ECE118/src/BOARD.c /Users/haariswasti/Downloads/ECE118/src/AD.c /Users/haariswasti/Downloads/ECE118/src/roach.c /Users/haariswasti/Downloads/ECE118/src/serial.c /Users/haariswasti/Mechatronics/Lab0TestHarness.X/newmainXC16.c /Users/haariswasti/Downloads/ECE118/src/pwm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2002000645/BOARD.o ${OBJECTDIR}/_ext/2002000645/AD.o ${OBJECTDIR}/_ext/2002000645/roach.o ${OBJECTDIR}/_ext/2002000645/serial.o ${OBJECTDIR}/_ext/1543345783/newmainXC16.o ${OBJECTDIR}/_ext/2002000645/pwm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2002000645/BOARD.o.d ${OBJECTDIR}/_ext/2002000645/AD.o.d ${OBJECTDIR}/_ext/2002000645/roach.o.d ${OBJECTDIR}/_ext/2002000645/serial.o.d ${OBJECTDIR}/_ext/1543345783/newmainXC16.o.d ${OBJECTDIR}/_ext/2002000645/pwm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2002000645/BOARD.o ${OBJECTDIR}/_ext/2002000645/AD.o ${OBJECTDIR}/_ext/2002000645/roach.o ${OBJECTDIR}/_ext/2002000645/serial.o ${OBJECTDIR}/_ext/1543345783/newmainXC16.o ${OBJECTDIR}/_ext/2002000645/pwm.o

# Source Files
SOURCEFILES=/Users/haariswasti/Downloads/ECE118/src/BOARD.c /Users/haariswasti/Downloads/ECE118/src/AD.c /Users/haariswasti/Downloads/ECE118/src/roach.c /Users/haariswasti/Downloads/ECE118/src/serial.c /Users/haariswasti/Mechatronics/Lab0TestHarness.X/newmainXC16.c /Users/haariswasti/Downloads/ECE118/src/pwm.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab0TestHarness.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/2002000645/BOARD.o: /Users/haariswasti/Downloads/ECE118/src/BOARD.c  .generated_files/flags/default/d0dca0db445524a31c8af99457dec351adf26026 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/BOARD.o.d" -o ${OBJECTDIR}/_ext/2002000645/BOARD.o /Users/haariswasti/Downloads/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/AD.o: /Users/haariswasti/Downloads/ECE118/src/AD.c  .generated_files/flags/default/c0fffb2bb4576922ac59855ebbec6b9ba0042ed7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/AD.o.d" -o ${OBJECTDIR}/_ext/2002000645/AD.o /Users/haariswasti/Downloads/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/roach.o: /Users/haariswasti/Downloads/ECE118/src/roach.c  .generated_files/flags/default/ddab28345cda1e68e8b4fa291bf1eecab2e7510f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/roach.o.d" -o ${OBJECTDIR}/_ext/2002000645/roach.o /Users/haariswasti/Downloads/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/serial.o: /Users/haariswasti/Downloads/ECE118/src/serial.c  .generated_files/flags/default/6cbd9d0751c82a89d94693e5486f93e18a7a348 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/serial.o.d" -o ${OBJECTDIR}/_ext/2002000645/serial.o /Users/haariswasti/Downloads/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1543345783/newmainXC16.o: /Users/haariswasti/Mechatronics/Lab0TestHarness.X/newmainXC16.c  .generated_files/flags/default/2649424b5973dbe74ab57ac8e3838abc2f1ba722 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1543345783" 
	@${RM} ${OBJECTDIR}/_ext/1543345783/newmainXC16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1543345783/newmainXC16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1543345783/newmainXC16.o.d" -o ${OBJECTDIR}/_ext/1543345783/newmainXC16.o /Users/haariswasti/Mechatronics/Lab0TestHarness.X/newmainXC16.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/pwm.o: /Users/haariswasti/Downloads/ECE118/src/pwm.c  .generated_files/flags/default/b79d4f6739a6ff38c39f45a3d6c8ab8de4353b89 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/pwm.o.d" -o ${OBJECTDIR}/_ext/2002000645/pwm.o /Users/haariswasti/Downloads/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/2002000645/BOARD.o: /Users/haariswasti/Downloads/ECE118/src/BOARD.c  .generated_files/flags/default/1cf7a376f58c4b7c4e84ce3a761e3ab5a97785a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/BOARD.o.d" -o ${OBJECTDIR}/_ext/2002000645/BOARD.o /Users/haariswasti/Downloads/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/AD.o: /Users/haariswasti/Downloads/ECE118/src/AD.c  .generated_files/flags/default/e56e56cd46f799f403ecbcce151be5c13c84d68f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/AD.o.d" -o ${OBJECTDIR}/_ext/2002000645/AD.o /Users/haariswasti/Downloads/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/roach.o: /Users/haariswasti/Downloads/ECE118/src/roach.c  .generated_files/flags/default/787e621582aa80c8d7be29e6c26ebc6d86f92e13 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/roach.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/roach.o.d" -o ${OBJECTDIR}/_ext/2002000645/roach.o /Users/haariswasti/Downloads/ECE118/src/roach.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/serial.o: /Users/haariswasti/Downloads/ECE118/src/serial.c  .generated_files/flags/default/e0c8b4b64da0f14731de0ad7a228014678e037b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/serial.o.d" -o ${OBJECTDIR}/_ext/2002000645/serial.o /Users/haariswasti/Downloads/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1543345783/newmainXC16.o: /Users/haariswasti/Mechatronics/Lab0TestHarness.X/newmainXC16.c  .generated_files/flags/default/3e6fc1647924c8ef3ea9b80717f1c9c39c5f8fd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1543345783" 
	@${RM} ${OBJECTDIR}/_ext/1543345783/newmainXC16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1543345783/newmainXC16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1543345783/newmainXC16.o.d" -o ${OBJECTDIR}/_ext/1543345783/newmainXC16.o /Users/haariswasti/Mechatronics/Lab0TestHarness.X/newmainXC16.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2002000645/pwm.o: /Users/haariswasti/Downloads/ECE118/src/pwm.c  .generated_files/flags/default/497f7376cd68e315d8073273fabbfeb47142498e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/pwm.o.d" -o ${OBJECTDIR}/_ext/2002000645/pwm.o /Users/haariswasti/Downloads/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab0TestHarness.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    /Users/haariswasti/Downloads/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0TestHarness.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab0TestHarness.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   /Users/haariswasti/Downloads/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab0TestHarness.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/Lab0TestHarness.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
