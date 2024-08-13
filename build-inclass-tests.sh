# Build 6 risc-v programs for running in class tests

echo "Building RISC-V ELFs..."
cd test-inclass
/opt/riscv/bin/riscv64-unknown-elf-gcc -march=rv64i add.c -o add.riscv
/opt/riscv/bin/riscv64-unknown-elf-gcc -march=rv64i double-float.c -o double-float.riscv
/opt/riscv/bin/riscv64-unknown-elf-gcc -march=rv64i mul-div.c -o mul-div.riscv
/opt/riscv/bin/riscv64-unknown-elf-gcc -march=rv64i n!.c -o n!.riscv
/opt/riscv/bin/riscv64-unknown-elf-gcc -march=rv64i qsort.c -o qsort.riscv
/opt/riscv/bin/riscv64-unknown-elf-gcc -march=rv64i simple-function.c -o simple-function.riscv
echo "Automatically dumping ELFs for reference"
/opt/riscv/bin/riscv64-unknown-elf-objdump -D add.riscv > add.s
/opt/riscv/bin/riscv64-unknown-elf-objdump -D double-float.riscv > double-float.s
/opt/riscv/bin/riscv64-unknown-elf-objdump -D mul-div.riscv > mul-div.s
/opt/riscv/bin/riscv64-unknown-elf-objdump -D n!.riscv > n!.s
/opt/riscv/bin/riscv64-unknown-elf-objdump -D qsort.riscv > qsort.s
/opt/riscv/bin/riscv64-unknown-elf-objdump -D simple-function.riscv > simple-function.s
cd ..

