extern int D_800A9688;
extern int D_800A9DE8;
extern int func_800004B4;

void bootproc(void) {
    func_8005069C();
    func_80050950(0x2710);
    func_80050AA0(&D_800A9688, 0xA, &func_800004B4, 0, &D_800A9DE8, 0xA);
    func_80050BF0(&D_800A9688);
}
