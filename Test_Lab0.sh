pushd ~/ComputerArchitecture2-Labs/build; make Simulator; popd
cd build
./Simulator ../riscv-elf/test_float.riscv -v
cd ..