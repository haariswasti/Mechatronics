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
FINAL_IMAGE=${DISTDIR}/118Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/118Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mainXC16.c /Users/haariswasti/Downloads/ECE118/src/BOARD.c /Users/haariswasti/Downloads/ECE118/src/AD.c /Users/haariswasti/Downloads/ECE118/src/serial.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mainXC16.o ${OBJECTDIR}/_ext/2002000645/BOARD.o ${OBJECTDIR}/_ext/2002000645/AD.o ${OBJECTDIR}/_ext/2002000645/serial.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mainXC16.o.d ${OBJECTDIR}/_ext/2002000645/BOARD.o.d ${OBJECTDIR}/_ext/2002000645/AD.o.d ${OBJECTDIR}/_ext/2002000645/serial.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mainXC16.o ${OBJECTDIR}/_ext/2002000645/BOARD.o ${OBJECTDIR}/_ext/2002000645/AD.o ${OBJECTDIR}/_ext/2002000645/serial.o

# Source Files
SOURCEFILES=mainXC16.c /Users/haariswasti/Downloads/ECE118/src/BOARD.c /Users/haariswasti/Downloads/ECE118/src/AD.c /Users/haariswasti/Downloads/ECE118/src/serial.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/118Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/mainXC16.o: mainXC16.c  .generated_files/flags/default/1e94c519a4debb550a807a0094b5b578b5ca7e6a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mainXC16.o.d 
	@${RM} ${OBJECTDIR}/mainXC16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/mainXC16.o.d" -o ${OBJECTDIR}/mainXC16.o mainXC16.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	
${OBJECTDIR}/_ext/2002000645/serial.o: /Users/haariswasti/Downloads/ECE118/src/serial.c  .generated_files/flags/default/6cbd9d0751c82a89d94693e5486f93e18a7a348 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/serial.o.d" -o ${OBJECTDIR}/_ext/2002000645/serial.o /Users/haariswasti/Downloads/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/mainXC16.o: mainXC16.c  .generated_files/flags/default/1c56f7aa393ab68bd7e306f4655a1a1e29431dd5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mainXC16.o.d 
	@${RM} ${OBJECTDIR}/mainXC16.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/mainXC16.o.d" -o ${OBJECTDIR}/mainXC16.o mainXC16.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	
${OBJECTDIR}/_ext/2002000645/serial.o: /Users/haariswasti/Downloads/ECE118/src/serial.c  .generated_files/flags/default/e0c8b4b64da0f14731de0ad7a228014678e037b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2002000645" 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/2002000645/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../Downloads/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/2002000645/serial.o.d" -o ${OBJECTDIR}/_ext/2002000645/serial.o /Users/haariswasti/Downloads/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/118Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    /Users/haariswasti/Downloads/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/118Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/118Lab0.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   /Users/haariswasti/Downloads/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/118Lab0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/118Lab0.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
