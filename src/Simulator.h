/*
 * Main Body for the RISCV Simulator
 *
 * Created by He, Hao at 2019-3-11
 */

#ifndef SIMULATOR_H
#define SIMULATOR_H

#include <cstdarg>
#include <cstdint>
#include <string>
#include <vector>

#include "BranchPredictor.h"
#include "MemoryManager.h"

namespace RISCV {

	const int REGNUM = 32;
	const int FREGNUM = 32;
	extern const char* REGNAME[32];
	typedef uint32_t RegId;
	enum Reg {
		REG_ZERO = 0,
		REG_RA = 1,
		REG_SP = 2,
		REG_GP = 3,
		REG_TP = 4,
		REG_T0 = 5,
		REG_T1 = 6,
		REG_T2 = 7,
		REG_S0 = 8,
		REG_S1 = 9,
		REG_A0 = 10,
		REG_A1 = 11,
		REG_A2 = 12,
		REG_A3 = 13,
		REG_A4 = 14,
		REG_A5 = 15,
		REG_A6 = 16,
		REG_A7 = 17,
		REG_S2 = 18,
		REG_S3 = 19,
		REG_S4 = 20,
		REG_S5 = 21,
		REG_S6 = 22,
		REG_S7 = 23,
		REG_S8 = 24,
		REG_S9 = 25,
		REG_S10 = 26,
		REG_S11 = 27,
		REG_T3 = 28,
		REG_T4 = 29,
		REG_T5 = 30,
		REG_T6 = 31,
	};

	enum InstType {
		R_TYPE,
		I_TYPE,
		S_TYPE,
		SB_TYPE,
		U_TYPE,
		UJ_TYPE,
	};
	enum Inst {
		LUI = 0,
		AUIPC = 1,
		JAL = 2,
		JALR = 3,
		BEQ = 4,
		BNE = 5,
		BLT = 6,
		BGE = 7,
		BLTU = 8,
		BGEU = 9,
		LB = 10,
		LH = 11,
		LW = 12,
		LD = 13,
		LBU = 14,
		LHU = 15,
		SB = 16,
		SH = 17,
		SW = 18,
		SD = 19,
		ADDI = 20,
		SLTI = 21,
		SLTIU = 22,
		XORI = 23,
		ORI = 24,
		ANDI = 25,
		SLLI = 26,
		SRLI = 27,
		SRAI = 28,
		ADD = 29,
		SUB = 30,
		SLL = 31,
		SLT = 32,
		SLTU = 33,
		XOR = 34,
		SRL = 35,
		SRA = 36,
		OR = 37,
		AND = 38,
		ECALL = 39,
		ADDIW = 40,
		MUL = 41,
		MULH = 42,
		DIV = 43,
		REM = 44,
		LWU = 45,
		SLLIW = 46,
		SRLIW = 47,
		SRAIW = 48,
		ADDW = 49,
		SUBW = 50,
		SLLW = 51,
		SRLW = 52,
		SRAW = 53,
		// Add new instructions here
		FLW = 54,
		FSW = 55,
		FADD_S = 56,
		FSUB_S = 57,
		FMUL_S = 58,
		FDIV_S = 59,
		FSQRT_S = 60,
		FMV_X_W = 61,
		FMV_W_X = 62,
		UNKNOWN = -1,
	};
	extern const char* INSTNAME[];

	// Opcode field
	const int OP_REG = 0x33; // 0110011, R-type
	const int OP_IMM = 0x13; // 0010011, I-type
	const int OP_LUI = 0x37; // 0110111, U-type
	const int OP_BRANCH = 0x63; // 1100011, SB-type
	const int OP_STORE = 0x23; // 0100011, S-type
	const int OP_LOAD = 0x03; // 0000011, I-type
	const int OP_SYSTEM = 0x73; 
	const int OP_AUIPC = 0x17;
	const int OP_JAL = 0x6F;
	const int OP_JALR = 0x67;
	const int OP_IMM32 = 0x1B;
	const int OP_32 = 0x3B;
	// Add more instructions here
	const int OP_FLOAD = 0x07; // 0000111, FLW
	const int OP_FSTORE = 0x27; // 0100111, FSW
	const int OP_FARITH = 0x53; // 1010011, FADD_S, FSUB_S, FMUL_S, FDIV_S, FSQRT_S

	inline bool isBranch(Inst inst) {
		if (inst == BEQ || inst == BNE || inst == BLT || inst == BGE ||
			inst == BLTU || inst == BGEU) {
			return true;
		}
		return false;
	}

	inline bool isJump(Inst inst) {
		if (inst == JAL || inst == JALR) {
			return true;
		}
		return false;
	}

	inline bool isReadMem(Inst inst) {
		if (inst == LB || inst == LH || inst == LW || inst == LD || inst == LBU ||
			inst == LHU || inst == LWU) {
			return true;
		}
		return false;
	}

	inline bool isWriteToFPInst(Inst inst) {
		if (inst == FADD_S || inst == FSUB_S || inst == FMUL_S || inst == FDIV_S ||
			inst == FSQRT_S || inst == FMV_W_X) {
			return true;
		}
		return false;
	}

} // namespace RISCV

class Simulator {
public:
	bool isSingleStep;
	bool verbose;
	bool shouldDumpHistory;
	uint64_t pc;
	uint64_t predictedPC; // for branch prediction module, predicted PC destination
	uint64_t anotherPC; // // another possible prediction destination
	uint64_t reg[RISCV::REGNUM];
	// Floating point registers
	float fpreg[RISCV::FREGNUM];
	uint32_t stackBase;
	uint32_t maximumStackSize;
	MemoryManager* memory;
	BranchPredictor* branchPredictor;

	Simulator(MemoryManager* memory, BranchPredictor* predictor);
	~Simulator();

	void initStack(uint32_t baseaddr, uint32_t maxSize);

	void simulate();

	void dumpHistory();

	void printInfo();

	void printStatistics();

private:
	struct FReg {
		// Control Signals
		bool bubble;
		uint32_t stall;

		uint64_t pc;
		uint32_t inst;
		uint32_t len;
	} fReg, fRegNew; // Instruction Fetch Register
	struct DReg {
		// Control Signals
		bool bubble;
		uint32_t stall;
		RISCV::RegId rs1, rs2;

		uint64_t pc;
		RISCV::Inst inst;
		int64_t op1;
		int64_t op2;
		RISCV::RegId dest;
		int64_t offset;
		bool predictedBranch;
	} dReg, dRegNew; // Instruction Decode Register
	struct EReg {
		// Control Signals
		bool bubble;
		uint32_t stall;

		uint64_t pc;
		RISCV::Inst inst;
		int64_t op1;
		int64_t op2;
		bool writeReg;
		RISCV::RegId destReg;
		int64_t out;
		bool writeMem;
		bool readMem;
		bool readSignExt;
		uint32_t memLen;
		bool branch;
	} eReg, eRegNew; // Execute Register
	struct MReg {
		// Control Signals
		bool bubble;
		uint32_t stall;

		uint64_t pc;
		RISCV::Inst inst;
		int64_t op1;
		int64_t op2;
		int64_t out;
		bool writeReg;
		RISCV::RegId destReg;
	} mReg, mRegNew; // Memory Access Register

	// Pipeline Related Variables
	// To avoid older values(in MEM) overriding newer values(in EX)
	bool executeWriteBack;
	RISCV::RegId executeWBReg;
	bool memoryWriteBack;
	RISCV::RegId memoryWBReg;

	// Components in the execute stage
	// Reference:
	// https://docs.boom-core.org/en/latest/sections/intro-overview/boom-pipeline.html
	enum executeComponent {
		ALU,
		memCalc,
		dataMem,
		branchALU,
		iMul,
		iDiv,
		int2FP,
		fp2Int,
		fpDiv,
		fmaAdd, /* fused multiply-add unit for fp */
		fmaMul, /* fused multiply-add unit for fp */
		number_of_component,
		unknown = ALU,
	};

	// The lowest cycle of an datamem access
	const uint32_t datamem_lat_lower_bound = 1;
	// The lock cast on the stage where the next stage is busy across multiple cycles
	const uint32_t datamem_stall_lock = UINT32_MAX;

	const uint32_t latency[number_of_component] = {
		/* ALU */       0,
		/* memCalc */   1,
		/* dataMem */   datamem_stall_lock,
		/* branchALU */ 0,
		/* iMul */      2,
		/* iDiv */      6,
		/* int2FP */    0,
		/* fpDiv */     24,
		/* fmaAdd */    3,
		/* fmaMul */    6,
	};

	inline executeComponent getComponentUsed(RISCV::Inst inst) {
		{ // start of using namespace, to reduce code duplication
			using namespace RISCV;
			switch (inst)
			{
				/* When using the instructions below,
				   general ALU is used */
			case ADDI: case ADD: case ADDIW: case ADDW:
			case SUB:  case SUBW:
			case SLTI: case SLT: case SLTIU: case SLTU:
			case XORI: case XOR:
			case ORI:  case OR:
			case ANDI: case AND:
			case SLLI: case SLL: case SLLIW: case SLLW:
			case SRLI: case SRL: case SRLIW: case SRLW:
			case SRAI: case SRA: case SRAW:  case SRAIW:
			// Add new instructions here
			case FADD_S: case FSUB_S:
				return ALU; break;
				/* When using the instructions below,
				   ALU for memory address calculation is used */
			case SB:   case SH:  case SW:    case SD:
			// Add new instructions here
			case FSW:
				return memCalc; break;
				/* When using the instructions below,
				   datamem is used */
			case LB:   case LH:  case LW:    case LD:
			case LBU:  case LHU: case LWU:
			// Add new instructions here
			case FLW:
				return dataMem; break;
				/* When using the instructions below,
				   ALU for branch offset calculation is used */
			case LUI:  case AUIPC: case JAL:  case JALR:
			case BEQ:  case BNE:   case BLT:  case BGE:
			case BLTU: case BGEU:
				return branchALU; break;
				/* When using the instructions below,
				   integer multiplier is used */
			case MUL:
			// Add new instructions here	
			case FMUL_S:
				return iMul; break;
				/* When using the instructions below,
				   integer divider is used */
			case DIV:
			// Add new instructions here
			case FDIV_S:
				return iDiv; break;
				// YOUR CODE HERE
				// case INST:
				// ...
				// return COMPONENT_TYPE; break;
			default:
				return unknown; break;
			}
		} // end of using namespace RISCV;

		return unknown;
	}

	struct History {
		uint32_t instCount;
		uint32_t cycleCount;
		uint32_t stalledCycleCount;

		uint32_t predictedBranch; // Number of branch that is predicted successfully
		uint32_t unpredictedBranch; // Number of branch that is not predicted
		// successfully

		uint32_t dataHazardCount;
		uint32_t controlHazardCount;
		uint32_t memoryHazardCount;

		std::vector<std::string> instRecord;
		std::vector<std::string> regRecord;

		std::string memoryDump;
	} history;

	void fetch();
	void decode();
	void excecute();
	void memoryAccess();
	void writeBack();

	int64_t handleSystemCall(int64_t op1, int64_t op2);

	std::string getRegInfoStr();
	void panic(const char* format, ...);
};

#endif
