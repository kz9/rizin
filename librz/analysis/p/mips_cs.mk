OBJ_MIPS_CS=analysis_mips_cs.o

include $(CURDIR)capstone.mk

STATIC_OBJ+=$(OBJ_MIPS_CS)
TARGET_MIPS_CS=analysis_mips_cs.${EXT_SO}

ALL_TARGETS+=${TARGET_MIPS_CS}

${TARGET_MIPS_CS}: ${OBJ_MIPS_CS}
	${CC} ${CFLAGS} $(call libname,analysis_mips_cs) $(CS_CFLAGS) \
		-o analysis_mips_cs.${EXT_SO} ${OBJ_MIPS_CS} $(CS_LDFLAGS)
