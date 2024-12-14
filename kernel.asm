
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	05813103          	ld	sp,88(sp) # 8000a058 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4ad050ef          	jal	ra,80005cc8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function

_ZN5Riscv14supervisorTrapEv:
    j supervisorTrap
    80001100:	0280006f          	j	80001128 <supervisorTrap>
    j timerTrap
    80001104:	1240006f          	j	80001228 <timerTrap>
	...
    .skip 28 #osatvlja prazno 7 ulaza u IVT
    j consoleTrap
    80001124:	2100006f          	j	80001334 <consoleTrap>

0000000080001128 <supervisorTrap>:
    supervisorTrap:
        addi sp, sp, -256
    80001128:	f0010113          	addi	sp,sp,-256
        .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        sd x\index, \index*8(sp)
        .endr
    8000112c:	00113423          	sd	ra,8(sp)
    80001130:	00213823          	sd	sp,16(sp)
    80001134:	00313c23          	sd	gp,24(sp)
    80001138:	02413023          	sd	tp,32(sp)
    8000113c:	02513423          	sd	t0,40(sp)
    80001140:	02613823          	sd	t1,48(sp)
    80001144:	02713c23          	sd	t2,56(sp)
    80001148:	04813023          	sd	s0,64(sp)
    8000114c:	04913423          	sd	s1,72(sp)
    80001150:	04b13c23          	sd	a1,88(sp)
    80001154:	06c13023          	sd	a2,96(sp)
    80001158:	06d13423          	sd	a3,104(sp)
    8000115c:	06e13823          	sd	a4,112(sp)
    80001160:	06f13c23          	sd	a5,120(sp)
    80001164:	09013023          	sd	a6,128(sp)
    80001168:	09113423          	sd	a7,136(sp)
    8000116c:	09213823          	sd	s2,144(sp)
    80001170:	09313c23          	sd	s3,152(sp)
    80001174:	0b413023          	sd	s4,160(sp)
    80001178:	0b513423          	sd	s5,168(sp)
    8000117c:	0b613823          	sd	s6,176(sp)
    80001180:	0b713c23          	sd	s7,184(sp)
    80001184:	0d813023          	sd	s8,192(sp)
    80001188:	0d913423          	sd	s9,200(sp)
    8000118c:	0da13823          	sd	s10,208(sp)
    80001190:	0db13c23          	sd	s11,216(sp)
    80001194:	0fc13023          	sd	t3,224(sp)
    80001198:	0fd13423          	sd	t4,232(sp)
    8000119c:	0fe13823          	sd	t5,240(sp)
    800011a0:	0ff13c23          	sd	t6,248(sp)
        call _ZN5Riscv21supervisorTrapHandlerEv
    800011a4:	581000ef          	jal	ra,80001f24 <_ZN5Riscv21supervisorTrapHandlerEv>

        .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index*8(sp)
        .endr
    800011a8:	00813083          	ld	ra,8(sp)
    800011ac:	01013103          	ld	sp,16(sp)
    800011b0:	01813183          	ld	gp,24(sp)
    800011b4:	02013203          	ld	tp,32(sp)
    800011b8:	02813283          	ld	t0,40(sp)
    800011bc:	03013303          	ld	t1,48(sp)
    800011c0:	03813383          	ld	t2,56(sp)
    800011c4:	04013403          	ld	s0,64(sp)
    800011c8:	04813483          	ld	s1,72(sp)
    800011cc:	05813583          	ld	a1,88(sp)
    800011d0:	06013603          	ld	a2,96(sp)
    800011d4:	06813683          	ld	a3,104(sp)
    800011d8:	07013703          	ld	a4,112(sp)
    800011dc:	07813783          	ld	a5,120(sp)
    800011e0:	08013803          	ld	a6,128(sp)
    800011e4:	08813883          	ld	a7,136(sp)
    800011e8:	09013903          	ld	s2,144(sp)
    800011ec:	09813983          	ld	s3,152(sp)
    800011f0:	0a013a03          	ld	s4,160(sp)
    800011f4:	0a813a83          	ld	s5,168(sp)
    800011f8:	0b013b03          	ld	s6,176(sp)
    800011fc:	0b813b83          	ld	s7,184(sp)
    80001200:	0c013c03          	ld	s8,192(sp)
    80001204:	0c813c83          	ld	s9,200(sp)
    80001208:	0d013d03          	ld	s10,208(sp)
    8000120c:	0d813d83          	ld	s11,216(sp)
    80001210:	0e013e03          	ld	t3,224(sp)
    80001214:	0e813e83          	ld	t4,232(sp)
    80001218:	0f013f03          	ld	t5,240(sp)
    8000121c:	0f813f83          	ld	t6,248(sp)
        addi sp, sp, 256
    80001220:	10010113          	addi	sp,sp,256

        sret
    80001224:	10200073          	sret

0000000080001228 <timerTrap>:
        timerTrap:
        addi sp, sp, -256
    80001228:	f0010113          	addi	sp,sp,-256
                .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
                sd x\index, \index * 8(sp)
                .endr
    8000122c:	00013023          	sd	zero,0(sp)
    80001230:	00113423          	sd	ra,8(sp)
    80001234:	00213823          	sd	sp,16(sp)
    80001238:	00313c23          	sd	gp,24(sp)
    8000123c:	02413023          	sd	tp,32(sp)
    80001240:	02513423          	sd	t0,40(sp)
    80001244:	02613823          	sd	t1,48(sp)
    80001248:	02713c23          	sd	t2,56(sp)
    8000124c:	04813023          	sd	s0,64(sp)
    80001250:	04913423          	sd	s1,72(sp)
    80001254:	04a13823          	sd	a0,80(sp)
    80001258:	04b13c23          	sd	a1,88(sp)
    8000125c:	06c13023          	sd	a2,96(sp)
    80001260:	06d13423          	sd	a3,104(sp)
    80001264:	06e13823          	sd	a4,112(sp)
    80001268:	06f13c23          	sd	a5,120(sp)
    8000126c:	09013023          	sd	a6,128(sp)
    80001270:	09113423          	sd	a7,136(sp)
    80001274:	09213823          	sd	s2,144(sp)
    80001278:	09313c23          	sd	s3,152(sp)
    8000127c:	0b413023          	sd	s4,160(sp)
    80001280:	0b513423          	sd	s5,168(sp)
    80001284:	0b613823          	sd	s6,176(sp)
    80001288:	0b713c23          	sd	s7,184(sp)
    8000128c:	0d813023          	sd	s8,192(sp)
    80001290:	0d913423          	sd	s9,200(sp)
    80001294:	0da13823          	sd	s10,208(sp)
    80001298:	0db13c23          	sd	s11,216(sp)
    8000129c:	0fc13023          	sd	t3,224(sp)
    800012a0:	0fd13423          	sd	t4,232(sp)
    800012a4:	0fe13823          	sd	t5,240(sp)
    800012a8:	0ff13c23          	sd	t6,248(sp)


                call _ZN5Riscv28handleSupervisorTimerHandlerEv
    800012ac:	130010ef          	jal	ra,800023dc <_ZN5Riscv28handleSupervisorTimerHandlerEv>


                .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
                ld x\index, \index * 8(sp)
                .endr
    800012b0:	00013003          	ld	zero,0(sp)
    800012b4:	00813083          	ld	ra,8(sp)
    800012b8:	01013103          	ld	sp,16(sp)
    800012bc:	01813183          	ld	gp,24(sp)
    800012c0:	02013203          	ld	tp,32(sp)
    800012c4:	02813283          	ld	t0,40(sp)
    800012c8:	03013303          	ld	t1,48(sp)
    800012cc:	03813383          	ld	t2,56(sp)
    800012d0:	04013403          	ld	s0,64(sp)
    800012d4:	04813483          	ld	s1,72(sp)
    800012d8:	05813583          	ld	a1,88(sp)
    800012dc:	06013603          	ld	a2,96(sp)
    800012e0:	06813683          	ld	a3,104(sp)
    800012e4:	07013703          	ld	a4,112(sp)
    800012e8:	07813783          	ld	a5,120(sp)
    800012ec:	08013803          	ld	a6,128(sp)
    800012f0:	08813883          	ld	a7,136(sp)
    800012f4:	09013903          	ld	s2,144(sp)
    800012f8:	09813983          	ld	s3,152(sp)
    800012fc:	0a013a03          	ld	s4,160(sp)
    80001300:	0a813a83          	ld	s5,168(sp)
    80001304:	0b013b03          	ld	s6,176(sp)
    80001308:	0b813b83          	ld	s7,184(sp)
    8000130c:	0c013c03          	ld	s8,192(sp)
    80001310:	0c813c83          	ld	s9,200(sp)
    80001314:	0d013d03          	ld	s10,208(sp)
    80001318:	0d813d83          	ld	s11,216(sp)
    8000131c:	0e013e03          	ld	t3,224(sp)
    80001320:	0e813e83          	ld	t4,232(sp)
    80001324:	0f013f03          	ld	t5,240(sp)
    80001328:	0f813f83          	ld	t6,248(sp)
                addi sp, sp, 256
    8000132c:	10010113          	addi	sp,sp,256

                sret
    80001330:	10200073          	sret

0000000080001334 <consoleTrap>:
    consoleTrap:
            addi sp, sp, -256
    80001334:	f0010113          	addi	sp,sp,-256
            .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
            sd x\index, \index * 8(sp)
            .endr
    80001338:	00113423          	sd	ra,8(sp)
    8000133c:	00213823          	sd	sp,16(sp)
    80001340:	00313c23          	sd	gp,24(sp)
    80001344:	02413023          	sd	tp,32(sp)
    80001348:	02513423          	sd	t0,40(sp)
    8000134c:	02613823          	sd	t1,48(sp)
    80001350:	02713c23          	sd	t2,56(sp)
    80001354:	04813023          	sd	s0,64(sp)
    80001358:	04913423          	sd	s1,72(sp)
    8000135c:	04a13823          	sd	a0,80(sp)
    80001360:	04b13c23          	sd	a1,88(sp)
    80001364:	06c13023          	sd	a2,96(sp)
    80001368:	06d13423          	sd	a3,104(sp)
    8000136c:	06e13823          	sd	a4,112(sp)
    80001370:	06f13c23          	sd	a5,120(sp)
    80001374:	09013023          	sd	a6,128(sp)
    80001378:	09113423          	sd	a7,136(sp)
    8000137c:	09213823          	sd	s2,144(sp)
    80001380:	09313c23          	sd	s3,152(sp)
    80001384:	0b413023          	sd	s4,160(sp)
    80001388:	0b513423          	sd	s5,168(sp)
    8000138c:	0b613823          	sd	s6,176(sp)
    80001390:	0b713c23          	sd	s7,184(sp)
    80001394:	0d813023          	sd	s8,192(sp)
    80001398:	0d913423          	sd	s9,200(sp)
    8000139c:	0da13823          	sd	s10,208(sp)
    800013a0:	0db13c23          	sd	s11,216(sp)
    800013a4:	0fc13023          	sd	t3,224(sp)
    800013a8:	0fd13423          	sd	t4,232(sp)
    800013ac:	0fe13823          	sd	t5,240(sp)
    800013b0:	0ff13c23          	sd	t6,248(sp)

            call _ZN5Riscv27handleSupervisorTrapConsoleEv
    800013b4:	000010ef          	jal	ra,800023b4 <_ZN5Riscv27handleSupervisorTrapConsoleEv>

            .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
            ld x\index, \index * 8(sp)
            .endr
    800013b8:	00813083          	ld	ra,8(sp)
    800013bc:	01013103          	ld	sp,16(sp)
    800013c0:	01813183          	ld	gp,24(sp)
    800013c4:	02013203          	ld	tp,32(sp)
    800013c8:	02813283          	ld	t0,40(sp)
    800013cc:	03013303          	ld	t1,48(sp)
    800013d0:	03813383          	ld	t2,56(sp)
    800013d4:	04013403          	ld	s0,64(sp)
    800013d8:	04813483          	ld	s1,72(sp)
    800013dc:	05013503          	ld	a0,80(sp)
    800013e0:	05813583          	ld	a1,88(sp)
    800013e4:	06013603          	ld	a2,96(sp)
    800013e8:	06813683          	ld	a3,104(sp)
    800013ec:	07013703          	ld	a4,112(sp)
    800013f0:	07813783          	ld	a5,120(sp)
    800013f4:	08013803          	ld	a6,128(sp)
    800013f8:	08813883          	ld	a7,136(sp)
    800013fc:	09013903          	ld	s2,144(sp)
    80001400:	09813983          	ld	s3,152(sp)
    80001404:	0a013a03          	ld	s4,160(sp)
    80001408:	0a813a83          	ld	s5,168(sp)
    8000140c:	0b013b03          	ld	s6,176(sp)
    80001410:	0b813b83          	ld	s7,184(sp)
    80001414:	0c013c03          	ld	s8,192(sp)
    80001418:	0c813c83          	ld	s9,200(sp)
    8000141c:	0d013d03          	ld	s10,208(sp)
    80001420:	0d813d83          	ld	s11,216(sp)
    80001424:	0e013e03          	ld	t3,224(sp)
    80001428:	0e813e83          	ld	t4,232(sp)
    8000142c:	0f013f03          	ld	t5,240(sp)
    80001430:	0f813f83          	ld	t6,248(sp)
            addi sp, sp, 256
    80001434:	10010113          	addi	sp,sp,256
            sret
    80001438:	10200073          	sret
	...

0000000080001448 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001448:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000144c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001450:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001454:	0085b103          	ld	sp,8(a1)

    80001458:	00008067          	ret

000000008000145c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000145c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001460:	00b29a63          	bne	t0,a1,80001474 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001464:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001468:	fe029ae3          	bnez	t0,8000145c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000146c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001470:	00008067          	ret

0000000080001474 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001474:	00100513          	li	a0,1
    80001478:	00008067          	ret

000000008000147c <_Z5uModev>:

#include "../h/syscall_c.hpp"

#include "../test/printing.hpp"

void uMode() {
    8000147c:	ff010113          	addi	sp,sp,-16
    80001480:	00813423          	sd	s0,8(sp)
    80001484:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x43));
    80001488:	04300793          	li	a5,67
    8000148c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001490:	00000073          	ecall
}
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_Z5sModev>:

void sMode() {
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x44));
    800014ac:	04400793          	li	a5,68
    800014b0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014b4:	00000073          	ecall
}
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00813423          	sd	s0,8(sp)
    800014cc:	01010413          	addi	s0,sp,16
    if (size == 0) return nullptr;
    800014d0:	02050e63          	beqz	a0,8000150c <_Z9mem_allocm+0x48>
    uint64 blocks = (size % MEM_BLOCK_SIZE) ? (size / MEM_BLOCK_SIZE + 1) : size / MEM_BLOCK_SIZE;
    800014d4:	03f57793          	andi	a5,a0,63
    800014d8:	02078663          	beqz	a5,80001504 <_Z9mem_allocm+0x40>
    800014dc:	00655513          	srli	a0,a0,0x6
    800014e0:	00150513          	addi	a0,a0,1
    __asm__ volatile("mv a1, %0" :: "r" (blocks));
    800014e4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (0x01));
    800014e8:	00100793          	li	a5,1
    800014ec:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014f0:	00000073          	ecall
    void *ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014f4:	00050513          	mv	a0,a0
    return ret;
}
    800014f8:	00813403          	ld	s0,8(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret
    uint64 blocks = (size % MEM_BLOCK_SIZE) ? (size / MEM_BLOCK_SIZE + 1) : size / MEM_BLOCK_SIZE;
    80001504:	00655513          	srli	a0,a0,0x6
    80001508:	fddff06f          	j	800014e4 <_Z9mem_allocm+0x20>
    if (size == 0) return nullptr;
    8000150c:	00000513          	li	a0,0
    80001510:	fe9ff06f          	j	800014f8 <_Z9mem_allocm+0x34>

0000000080001514 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00813423          	sd	s0,8(sp)
    8000151c:	01010413          	addi	s0,sp,16
    if (ptr == nullptr)
    80001520:	02050463          	beqz	a0,80001548 <_Z8mem_freePv+0x34>
        return 0;

    asm volatile("mv a1, %0" :: "r" (ptr));
    80001524:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :: "r" (0x02));
    80001528:	00200793          	li	a5,2
    8000152c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001530:	00000073          	ecall
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001534:	00050513          	mv	a0,a0
    80001538:	0005051b          	sext.w	a0,a0
    return ret;
}
    8000153c:	00813403          	ld	s0,8(sp)
    80001540:	01010113          	addi	sp,sp,16
    80001544:	00008067          	ret
        return 0;
    80001548:	00000513          	li	a0,0
    8000154c:	ff1ff06f          	j	8000153c <_Z8mem_freePv+0x28>

0000000080001550 <_Z13thread_createPP3PCBPFvPvES2_>:


int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    80001550:	fd010113          	addi	sp,sp,-48
    80001554:	02113423          	sd	ra,40(sp)
    80001558:	02813023          	sd	s0,32(sp)
    8000155c:	00913c23          	sd	s1,24(sp)
    80001560:	01213823          	sd	s2,16(sp)
    80001564:	01313423          	sd	s3,8(sp)
    80001568:	03010413          	addi	s0,sp,48
    8000156c:	00050913          	mv	s2,a0
    80001570:	00058493          	mv	s1,a1
    80001574:	00060993          	mv	s3,a2
    uint64 *stack = nullptr;
    if (start_routine != nullptr) stack = (uint64 *) mem_alloc(DEFAULT_STACK_SIZE);
    80001578:	04058863          	beqz	a1,800015c8 <_Z13thread_createPP3PCBPFvPvES2_+0x78>
    8000157c:	00001537          	lui	a0,0x1
    80001580:	00000097          	auipc	ra,0x0
    80001584:	f44080e7          	jalr	-188(ra) # 800014c4 <_Z9mem_allocm>

    __asm__ volatile("mv a4, %0" : : "r" (stack));
    80001588:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    8000158c:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    80001590:	00048613          	mv	a2,s1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001594:	00090593          	mv	a1,s2
    __asm__ volatile("mv a0, %0" :: "r" (0x11));
    80001598:	01100793          	li	a5,17
    8000159c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015a0:	00000073          	ecall
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800015a4:	00050513          	mv	a0,a0
    return ret;
}
    800015a8:	0005051b          	sext.w	a0,a0
    800015ac:	02813083          	ld	ra,40(sp)
    800015b0:	02013403          	ld	s0,32(sp)
    800015b4:	01813483          	ld	s1,24(sp)
    800015b8:	01013903          	ld	s2,16(sp)
    800015bc:	00813983          	ld	s3,8(sp)
    800015c0:	03010113          	addi	sp,sp,48
    800015c4:	00008067          	ret
    uint64 *stack = nullptr;
    800015c8:	00000513          	li	a0,0
    800015cc:	fbdff06f          	j	80001588 <_Z13thread_createPP3PCBPFvPvES2_+0x38>

00000000800015d0 <_Z11thread_exitv>:

int thread_exit() {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00813423          	sd	s0,8(sp)
    800015d8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" :: "r" (0x12));
    800015dc:	01200793          	li	a5,18
    800015e0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015e4:	00000073          	ecall
    int ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800015e8:	00050513          	mv	a0,a0
    return ret;
}
    800015ec:	0005051b          	sext.w	a0,a0
    800015f0:	00813403          	ld	s0,8(sp)
    800015f4:	01010113          	addi	sp,sp,16
    800015f8:	00008067          	ret

00000000800015fc <_Z15thread_dispatchv>:

void thread_dispatch() {
    800015fc:	ff010113          	addi	sp,sp,-16
    80001600:	00813423          	sd	s0,8(sp)
    80001604:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" :: "r" (0x13));
    80001608:	01300793          	li	a5,19
    8000160c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001610:	00000073          	ecall
}
    80001614:	00813403          	ld	s0,8(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned init) {
    80001620:	ff010113          	addi	sp,sp,-16
    80001624:	00813423          	sd	s0,8(sp)
    80001628:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" : : "r" (init));
    8000162c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001630:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(0x21));
    80001634:	02100793          	li	a5,33
    80001638:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000163c:	00000073          	ecall
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    80001640:	00050513          	mv	a0,a0
    return res;
}
    80001644:	0005051b          	sext.w	a0,a0
    80001648:	00813403          	ld	s0,8(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0": : "r"(handle));
    80001660:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(0x22));
    80001664:	02200793          	li	a5,34
    80001668:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000166c:	00000073          	ecall
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    80001670:	00050513          	mv	a0,a0
    return res;
}
    80001674:	0005051b          	sext.w	a0,a0
    80001678:	00813403          	ld	s0,8(sp)
    8000167c:	01010113          	addi	sp,sp,16
    80001680:	00008067          	ret

0000000080001684 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00813423          	sd	s0,8(sp)
    8000168c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0": : "r"(id));
    80001690:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(0x23));
    80001694:	02300793          	li	a5,35
    80001698:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000169c:	00000073          	ecall
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    800016a0:	00050513          	mv	a0,a0
    return res;
}
    800016a4:	0005051b          	sext.w	a0,a0
    800016a8:	00813403          	ld	s0,8(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00813423          	sd	s0,8(sp)
    800016bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0": : "r"(id));
    800016c0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(0x24));
    800016c4:	02400793          	li	a5,36
    800016c8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016cc:	00000073          	ecall
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    800016d0:	00050513          	mv	a0,a0
    return res;
}
    800016d4:	0005051b          	sext.w	a0,a0
    800016d8:	00813403          	ld	s0,8(sp)
    800016dc:	01010113          	addi	sp,sp,16
    800016e0:	00008067          	ret

00000000800016e4 <_Z11sem_trywaitP4_sem>:

int sem_trywait(sem_t id) {
    800016e4:	ff010113          	addi	sp,sp,-16
    800016e8:	00813423          	sd	s0,8(sp)
    800016ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0": : "r"(id));
    800016f0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(0x26));
    800016f4:	02600793          	li	a5,38
    800016f8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800016fc:	00000073          	ecall
    int res;
    __asm__ volatile ("mv %0, a0" : "=r"(res));
    80001700:	00050513          	mv	a0,a0
    return res;
}
    80001704:	0005051b          	sext.w	a0,a0
    80001708:	00813403          	ld	s0,8(sp)
    8000170c:	01010113          	addi	sp,sp,16
    80001710:	00008067          	ret

0000000080001714 <_Z4getcv>:

char getc() {
    80001714:	ff010113          	addi	sp,sp,-16
    80001718:	00813423          	sd	s0,8(sp)
    8000171c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(0x41));
    80001720:	04100793          	li	a5,65
    80001724:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001728:	00000073          	ecall
    char ret;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    8000172c:	00050513          	mv	a0,a0
    return ret;
}
    80001730:	0ff57513          	andi	a0,a0,255
    80001734:	00813403          	ld	s0,8(sp)
    80001738:	01010113          	addi	sp,sp,16
    8000173c:	00008067          	ret

0000000080001740 <_Z4putcc>:

void putc(char c) {
    80001740:	ff010113          	addi	sp,sp,-16
    80001744:	00813423          	sd	s0,8(sp)
    80001748:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0": : "r"(c));
    8000174c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(0x42));
    80001750:	04200793          	li	a5,66
    80001754:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001758:	00000073          	ecall
}
    8000175c:	00813403          	ld	s0,8(sp)
    80001760:	01010113          	addi	sp,sp,16
    80001764:	00008067          	ret

0000000080001768 <_ZN3PCB13threadWrapperEv>:
        contextSwitch(&old->context, &running->context);
        Riscv::popRegisters();
    }
}

void PCB::threadWrapper() {
    80001768:	fe010113          	addi	sp,sp,-32
    8000176c:	00113c23          	sd	ra,24(sp)
    80001770:	00813823          	sd	s0,16(sp)
    80001774:	00913423          	sd	s1,8(sp)
    80001778:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	788080e7          	jalr	1928(ra) # 80001f04 <_ZN5Riscv10popSppSpieEv>
    // if (running->body == nullptr)sMode();
    // else uMode();
    running->body(running->arg);
    80001784:	00009497          	auipc	s1,0x9
    80001788:	93c48493          	addi	s1,s1,-1732 # 8000a0c0 <_ZN3PCB7runningE>
    8000178c:	0004b783          	ld	a5,0(s1)
    80001790:	0007b703          	ld	a4,0(a5)
    80001794:	0087b503          	ld	a0,8(a5)
    80001798:	000700e7          	jalr	a4
    running->state = FINISHED;
    8000179c:	0004b783          	ld	a5,0(s1)
    800017a0:	00500713          	li	a4,5
    800017a4:	02e7a823          	sw	a4,48(a5)
    thread_dispatch();
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	e54080e7          	jalr	-428(ra) # 800015fc <_Z15thread_dispatchv>
}
    800017b0:	01813083          	ld	ra,24(sp)
    800017b4:	01013403          	ld	s0,16(sp)
    800017b8:	00813483          	ld	s1,8(sp)
    800017bc:	02010113          	addi	sp,sp,32
    800017c0:	00008067          	ret

00000000800017c4 <_ZN3PCB13create_threadEPFvPvES0_Pm>:
thread_t PCB::create_thread(Body body, void *arg, uint64 *stack_space) {
    800017c4:	fd010113          	addi	sp,sp,-48
    800017c8:	02113423          	sd	ra,40(sp)
    800017cc:	02813023          	sd	s0,32(sp)
    800017d0:	00913c23          	sd	s1,24(sp)
    800017d4:	01213823          	sd	s2,16(sp)
    800017d8:	01313423          	sd	s3,8(sp)
    800017dc:	01413023          	sd	s4,0(sp)
    800017e0:	03010413          	addi	s0,sp,48
    800017e4:	00050993          	mv	s3,a0
    800017e8:	00058a13          	mv	s4,a1
    800017ec:	00060913          	mv	s2,a2
    thread_t handle = (thread_t) MemoryAllocator::mem_alloc(sizeof(PCB));
    800017f0:	04800513          	li	a0,72
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	07c080e7          	jalr	124(ra) # 80002870 <_ZN15MemoryAllocator9mem_allocEm>
    800017fc:	00050493          	mv	s1,a0
    handle->body = body;
    80001800:	01353023          	sd	s3,0(a0) # 1000 <_entry-0x7ffff000>
    handle->arg = arg;
    80001804:	01453423          	sd	s4,8(a0)
    handle->stack = stack_space;
    80001808:	01253c23          	sd	s2,24(a0)
    if (body != nullptr)handle->context.ra = (uint64) &threadWrapper;
    8000180c:	04098c63          	beqz	s3,80001864 <_ZN3PCB13create_threadEPFvPvES0_Pm+0xa0>
    80001810:	00000797          	auipc	a5,0x0
    80001814:	f5878793          	addi	a5,a5,-168 # 80001768 <_ZN3PCB13threadWrapperEv>
    80001818:	02f53023          	sd	a5,32(a0)
    if (stack_space != nullptr)handle->context.sp = (uint64) &stack_space[STACK_SIZE];
    8000181c:	04090863          	beqz	s2,8000186c <_ZN3PCB13create_threadEPFvPvES0_Pm+0xa8>
    80001820:	00008637          	lui	a2,0x8
    80001824:	00c90933          	add	s2,s2,a2
    80001828:	0324b423          	sd	s2,40(s1)
    handle->state = CREATED;
    8000182c:	0204a823          	sw	zero,48(s1)
    if (body != nullptr) { Scheduler::put(handle); }
    80001830:	00098863          	beqz	s3,80001840 <_ZN3PCB13create_threadEPFvPvES0_Pm+0x7c>
    80001834:	00048513          	mv	a0,s1
    80001838:	00001097          	auipc	ra,0x1
    8000183c:	ee0080e7          	jalr	-288(ra) # 80002718 <_ZN9Scheduler3putEP3PCB>
}
    80001840:	00048513          	mv	a0,s1
    80001844:	02813083          	ld	ra,40(sp)
    80001848:	02013403          	ld	s0,32(sp)
    8000184c:	01813483          	ld	s1,24(sp)
    80001850:	01013903          	ld	s2,16(sp)
    80001854:	00813983          	ld	s3,8(sp)
    80001858:	00013a03          	ld	s4,0(sp)
    8000185c:	03010113          	addi	sp,sp,48
    80001860:	00008067          	ret
    else handle->context.ra = 0;
    80001864:	02053023          	sd	zero,32(a0)
    80001868:	fb5ff06f          	j	8000181c <_ZN3PCB13create_threadEPFvPvES0_Pm+0x58>
    else handle->context.sp = 0;
    8000186c:	0204b423          	sd	zero,40(s1)
    80001870:	fbdff06f          	j	8000182c <_ZN3PCB13create_threadEPFvPvES0_Pm+0x68>

0000000080001874 <_ZN3PCB11thread_exitEv>:
    if (running->state != FINISHED) {
    80001874:	00009797          	auipc	a5,0x9
    80001878:	84c7b783          	ld	a5,-1972(a5) # 8000a0c0 <_ZN3PCB7runningE>
    8000187c:	0307a683          	lw	a3,48(a5)
    80001880:	00500713          	li	a4,5
    80001884:	02e68a63          	beq	a3,a4,800018b8 <_ZN3PCB11thread_exitEv+0x44>
int PCB::thread_exit() {
    80001888:	ff010113          	addi	sp,sp,-16
    8000188c:	00113423          	sd	ra,8(sp)
    80001890:	00813023          	sd	s0,0(sp)
    80001894:	01010413          	addi	s0,sp,16

    static void dispatch();

    threadState getState() const { return state; }

    void setState(threadState st) { state = st; }
    80001898:	02e7a823          	sw	a4,48(a5)
        thread_dispatch();
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	d60080e7          	jalr	-672(ra) # 800015fc <_Z15thread_dispatchv>
        return 0;
    800018a4:	00000513          	li	a0,0
}
    800018a8:	00813083          	ld	ra,8(sp)
    800018ac:	00013403          	ld	s0,0(sp)
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret
    } else return -1;
    800018b8:	fff00513          	li	a0,-1
}
    800018bc:	00008067          	ret

00000000800018c0 <_ZN3PCB5yieldEv>:
void PCB::yield() {
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00813423          	sd	s0,8(sp)
    800018c8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0,%0"::"r"(code));
    800018cc:	01300793          	li	a5,19
    800018d0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800018d4:	00000073          	ecall
}
    800018d8:	00813403          	ld	s0,8(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret

00000000800018e4 <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    800018e4:	fe010113          	addi	sp,sp,-32
    800018e8:	00113c23          	sd	ra,24(sp)
    800018ec:	00813823          	sd	s0,16(sp)
    800018f0:	00913423          	sd	s1,8(sp)
    800018f4:	02010413          	addi	s0,sp,32
    PCB *old = running;
    800018f8:	00008497          	auipc	s1,0x8
    800018fc:	7c84b483          	ld	s1,1992(s1) # 8000a0c0 <_ZN3PCB7runningE>
    if (old && old->state != FINISHED && old->state != BLOCKED) { Scheduler::put(old); }
    80001900:	00048c63          	beqz	s1,80001918 <_ZN3PCB8dispatchEv+0x34>
    80001904:	0304a783          	lw	a5,48(s1)
    80001908:	00500713          	li	a4,5
    8000190c:	00e78663          	beq	a5,a4,80001918 <_ZN3PCB8dispatchEv+0x34>
    80001910:	00400713          	li	a4,4
    80001914:	04e79c63          	bne	a5,a4,8000196c <_ZN3PCB8dispatchEv+0x88>
    running = Scheduler::get();
    80001918:	00001097          	auipc	ra,0x1
    8000191c:	d98080e7          	jalr	-616(ra) # 800026b0 <_ZN9Scheduler3getEv>
    80001920:	00008797          	auipc	a5,0x8
    80001924:	7aa7b023          	sd	a0,1952(a5) # 8000a0c0 <_ZN3PCB7runningE>
    if (old != running && running != nullptr) {
    80001928:	02a48863          	beq	s1,a0,80001958 <_ZN3PCB8dispatchEv+0x74>
    8000192c:	02050663          	beqz	a0,80001958 <_ZN3PCB8dispatchEv+0x74>
        Riscv::pushRegisters();
    80001930:	fffff097          	auipc	ra,0xfffff
    80001934:	6d0080e7          	jalr	1744(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
        contextSwitch(&old->context, &running->context);
    80001938:	00008597          	auipc	a1,0x8
    8000193c:	7885b583          	ld	a1,1928(a1) # 8000a0c0 <_ZN3PCB7runningE>
    80001940:	02058593          	addi	a1,a1,32
    80001944:	02048513          	addi	a0,s1,32
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	b00080e7          	jalr	-1280(ra) # 80001448 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
        Riscv::popRegisters();
    80001950:	fffff097          	auipc	ra,0xfffff
    80001954:	72c080e7          	jalr	1836(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001958:	01813083          	ld	ra,24(sp)
    8000195c:	01013403          	ld	s0,16(sp)
    80001960:	00813483          	ld	s1,8(sp)
    80001964:	02010113          	addi	sp,sp,32
    80001968:	00008067          	ret
    if (old && old->state != FINISHED && old->state != BLOCKED) { Scheduler::put(old); }
    8000196c:	00048513          	mv	a0,s1
    80001970:	00001097          	auipc	ra,0x1
    80001974:	da8080e7          	jalr	-600(ra) # 80002718 <_ZN9Scheduler3putEP3PCB>
    80001978:	fa1ff06f          	j	80001918 <_ZN3PCB8dispatchEv+0x34>

000000008000197c <_ZN11waitSemList3getEv>:

#include "../h/_sem.hpp"
#include "../h/waitSemList.hpp"
#include "../h/syscall_c.hpp"

PCB *waitSemList::get() {
    8000197c:	fe010113          	addi	sp,sp,-32
    80001980:	00113c23          	sd	ra,24(sp)
    80001984:	00813823          	sd	s0,16(sp)
    80001988:	00913423          	sd	s1,8(sp)
    8000198c:	02010413          	addi	s0,sp,32
    80001990:	00050793          	mv	a5,a0
        waitSemElem *next;
    };

    waitSemElem *head;
    waitSemElem *tail;
    bool empty() { return head == nullptr; }
    80001994:	00053503          	ld	a0,0(a0)
    if (empty()) return nullptr;
    80001998:	02050e63          	beqz	a0,800019d4 <_ZN11waitSemList3getEv+0x58>
    PCB *first = head->thread;
    8000199c:	00053483          	ld	s1,0(a0)
    waitSemElem *p = head;
    head = head->next;
    800019a0:	00853703          	ld	a4,8(a0)
    800019a4:	00e7b023          	sd	a4,0(a5)
    if (empty())tail = nullptr;
    800019a8:	02070263          	beqz	a4,800019cc <_ZN11waitSemList3getEv+0x50>
    mem_free(p);
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	b68080e7          	jalr	-1176(ra) # 80001514 <_Z8mem_freePv>
    return first;
}
    800019b4:	00048513          	mv	a0,s1
    800019b8:	01813083          	ld	ra,24(sp)
    800019bc:	01013403          	ld	s0,16(sp)
    800019c0:	00813483          	ld	s1,8(sp)
    800019c4:	02010113          	addi	sp,sp,32
    800019c8:	00008067          	ret
    if (empty())tail = nullptr;
    800019cc:	0007b423          	sd	zero,8(a5)
    800019d0:	fddff06f          	j	800019ac <_ZN11waitSemList3getEv+0x30>
    if (empty()) return nullptr;
    800019d4:	00050493          	mv	s1,a0
    800019d8:	fddff06f          	j	800019b4 <_ZN11waitSemList3getEv+0x38>

00000000800019dc <_ZN11waitSemList3addEP3PCB>:

void waitSemList::add(PCB *thread) {
    800019dc:	fe010113          	addi	sp,sp,-32
    800019e0:	00113c23          	sd	ra,24(sp)
    800019e4:	00813823          	sd	s0,16(sp)
    800019e8:	00913423          	sd	s1,8(sp)
    800019ec:	01213023          	sd	s2,0(sp)
    800019f0:	02010413          	addi	s0,sp,32
    800019f4:	00050493          	mv	s1,a0
    800019f8:	00058913          	mv	s2,a1
    waitSemElem *elem = (waitSemElem *) mem_alloc(sizeof(waitSemElem));
    800019fc:	01000513          	li	a0,16
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	ac4080e7          	jalr	-1340(ra) # 800014c4 <_Z9mem_allocm>
    elem->thread = thread;
    80001a08:	01253023          	sd	s2,0(a0)
    elem->next = nullptr;
    80001a0c:	00053423          	sd	zero,8(a0)
    if (tail) {
    80001a10:	0084b783          	ld	a5,8(s1)
    80001a14:	02078263          	beqz	a5,80001a38 <_ZN11waitSemList3addEP3PCB+0x5c>
        tail->next = elem;
    80001a18:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    80001a1c:	00a4b423          	sd	a0,8(s1)
    } else {
        head = elem;
        tail = head;
    }
}
    80001a20:	01813083          	ld	ra,24(sp)
    80001a24:	01013403          	ld	s0,16(sp)
    80001a28:	00813483          	ld	s1,8(sp)
    80001a2c:	00013903          	ld	s2,0(sp)
    80001a30:	02010113          	addi	sp,sp,32
    80001a34:	00008067          	ret
        head = elem;
    80001a38:	00a4b023          	sd	a0,0(s1)
        tail = head;
    80001a3c:	00a4b423          	sd	a0,8(s1)
}
    80001a40:	fe1ff06f          	j	80001a20 <_ZN11waitSemList3addEP3PCB+0x44>

0000000080001a44 <_Z7wrapperPv>:

extern void userMain();

int finished = 0;

void wrapper(void *arg) {
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00113423          	sd	ra,8(sp)
    80001a4c:	00813023          	sd	s0,0(sp)
    80001a50:	01010413          	addi	s0,sp,16
    userMain();
    80001a54:	00004097          	auipc	ra,0x4
    80001a58:	824080e7          	jalr	-2012(ra) # 80005278 <_Z8userMainv>
    finished = 1;
    80001a5c:	00100793          	li	a5,1
    80001a60:	00008717          	auipc	a4,0x8
    80001a64:	66f72423          	sw	a5,1640(a4) # 8000a0c8 <finished>
}
    80001a68:	00813083          	ld	ra,8(sp)
    80001a6c:	00013403          	ld	s0,0(sp)
    80001a70:	01010113          	addi	sp,sp,16
    80001a74:	00008067          	ret

0000000080001a78 <_Z30test_basic_allocation_and_freev>:
void test_basic_allocation_and_free() {
    80001a78:	fe010113          	addi	sp,sp,-32
    80001a7c:	00113c23          	sd	ra,24(sp)
    80001a80:	00813823          	sd	s0,16(sp)
    80001a84:	00913423          	sd	s1,8(sp)
    80001a88:	02010413          	addi	s0,sp,32
    MemoryAllocator::mem_init();
    80001a8c:	00001097          	auipc	ra,0x1
    80001a90:	d78080e7          	jalr	-648(ra) # 80002804 <_ZN15MemoryAllocator8mem_initEv>
    void *ptr = mem_alloc(128);
    80001a94:	08000513          	li	a0,128
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	a2c080e7          	jalr	-1492(ra) # 800014c4 <_Z9mem_allocm>
    80001aa0:	00050493          	mv	s1,a0
    if (ptr == nullptr) printInt(91);
    80001aa4:	02050e63          	beqz	a0,80001ae0 <_Z30test_basic_allocation_and_freev+0x68>
    int free_result = mem_free(ptr);
    80001aa8:	00048513          	mv	a0,s1
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	a68080e7          	jalr	-1432(ra) # 80001514 <_Z8mem_freePv>
    if (free_result != 0) printInt(92); // Proverava da li je memorija uspešno oslobođena
    80001ab4:	04051263          	bnez	a0,80001af8 <_Z30test_basic_allocation_and_freev+0x80>
    printInt(1);
    80001ab8:	00000613          	li	a2,0
    80001abc:	00a00593          	li	a1,10
    80001ac0:	00100513          	li	a0,1
    80001ac4:	00003097          	auipc	ra,0x3
    80001ac8:	1fc080e7          	jalr	508(ra) # 80004cc0 <_Z8printIntiii>
}
    80001acc:	01813083          	ld	ra,24(sp)
    80001ad0:	01013403          	ld	s0,16(sp)
    80001ad4:	00813483          	ld	s1,8(sp)
    80001ad8:	02010113          	addi	sp,sp,32
    80001adc:	00008067          	ret
    if (ptr == nullptr) printInt(91);
    80001ae0:	00000613          	li	a2,0
    80001ae4:	00a00593          	li	a1,10
    80001ae8:	05b00513          	li	a0,91
    80001aec:	00003097          	auipc	ra,0x3
    80001af0:	1d4080e7          	jalr	468(ra) # 80004cc0 <_Z8printIntiii>
    80001af4:	fb5ff06f          	j	80001aa8 <_Z30test_basic_allocation_and_freev+0x30>
    if (free_result != 0) printInt(92); // Proverava da li je memorija uspešno oslobođena
    80001af8:	00000613          	li	a2,0
    80001afc:	00a00593          	li	a1,10
    80001b00:	05c00513          	li	a0,92
    80001b04:	00003097          	auipc	ra,0x3
    80001b08:	1bc080e7          	jalr	444(ra) # 80004cc0 <_Z8printIntiii>
    80001b0c:	fadff06f          	j	80001ab8 <_Z30test_basic_allocation_and_freev+0x40>

0000000080001b10 <_Z25test_multiple_allocationsv>:
void test_multiple_allocations() {
    80001b10:	f9010113          	addi	sp,sp,-112
    80001b14:	06113423          	sd	ra,104(sp)
    80001b18:	06813023          	sd	s0,96(sp)
    80001b1c:	04913c23          	sd	s1,88(sp)
    80001b20:	07010413          	addi	s0,sp,112
    MemoryAllocator::mem_init();
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	ce0080e7          	jalr	-800(ra) # 80002804 <_ZN15MemoryAllocator8mem_initEv>
    for (int i = 0; i < 10; i++) {
    80001b2c:	00000493          	li	s1,0
    80001b30:	0080006f          	j	80001b38 <_Z25test_multiple_allocationsv+0x28>
    80001b34:	0014849b          	addiw	s1,s1,1
    80001b38:	00900793          	li	a5,9
    80001b3c:	0297ce63          	blt	a5,s1,80001b78 <_Z25test_multiple_allocationsv+0x68>
        pointers[i] = mem_alloc(64);
    80001b40:	04000513          	li	a0,64
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	980080e7          	jalr	-1664(ra) # 800014c4 <_Z9mem_allocm>
    80001b4c:	00349793          	slli	a5,s1,0x3
    80001b50:	fe040713          	addi	a4,s0,-32
    80001b54:	00f707b3          	add	a5,a4,a5
    80001b58:	faa7b823          	sd	a0,-80(a5)
        if (pointers[i] == nullptr) printInt(93); // Checks if each block was successfully allocated
    80001b5c:	fc051ce3          	bnez	a0,80001b34 <_Z25test_multiple_allocationsv+0x24>
    80001b60:	00000613          	li	a2,0
    80001b64:	00a00593          	li	a1,10
    80001b68:	05d00513          	li	a0,93
    80001b6c:	00003097          	auipc	ra,0x3
    80001b70:	154080e7          	jalr	340(ra) # 80004cc0 <_Z8printIntiii>
    80001b74:	fc1ff06f          	j	80001b34 <_Z25test_multiple_allocationsv+0x24>
    for (int i = 0; i < 10; i++) {
    80001b78:	00000493          	li	s1,0
    80001b7c:	00900793          	li	a5,9
    80001b80:	0297c263          	blt	a5,s1,80001ba4 <_Z25test_multiple_allocationsv+0x94>
        mem_free(pointers[i]);
    80001b84:	00349793          	slli	a5,s1,0x3
    80001b88:	fe040713          	addi	a4,s0,-32
    80001b8c:	00f707b3          	add	a5,a4,a5
    80001b90:	fb07b503          	ld	a0,-80(a5)
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	980080e7          	jalr	-1664(ra) # 80001514 <_Z8mem_freePv>
    for (int i = 0; i < 10; i++) {
    80001b9c:	0014849b          	addiw	s1,s1,1
    80001ba0:	fddff06f          	j	80001b7c <_Z25test_multiple_allocationsv+0x6c>
    printInt(2);
    80001ba4:	00000613          	li	a2,0
    80001ba8:	00a00593          	li	a1,10
    80001bac:	00200513          	li	a0,2
    80001bb0:	00003097          	auipc	ra,0x3
    80001bb4:	110080e7          	jalr	272(ra) # 80004cc0 <_Z8printIntiii>
}
    80001bb8:	06813083          	ld	ra,104(sp)
    80001bbc:	06013403          	ld	s0,96(sp)
    80001bc0:	05813483          	ld	s1,88(sp)
    80001bc4:	07010113          	addi	sp,sp,112
    80001bc8:	00008067          	ret

0000000080001bcc <_Z22test_free_and_coalescev>:
void test_free_and_coalesce() {
    80001bcc:	fe010113          	addi	sp,sp,-32
    80001bd0:	00113c23          	sd	ra,24(sp)
    80001bd4:	00813823          	sd	s0,16(sp)
    80001bd8:	00913423          	sd	s1,8(sp)
    80001bdc:	01213023          	sd	s2,0(sp)
    80001be0:	02010413          	addi	s0,sp,32
    MemoryAllocator::mem_init();
    80001be4:	00001097          	auipc	ra,0x1
    80001be8:	c20080e7          	jalr	-992(ra) # 80002804 <_ZN15MemoryAllocator8mem_initEv>
    void *ptr1 = mem_alloc(64);
    80001bec:	04000513          	li	a0,64
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	8d4080e7          	jalr	-1836(ra) # 800014c4 <_Z9mem_allocm>
    80001bf8:	00050913          	mv	s2,a0
    void *ptr2 = mem_alloc(64);
    80001bfc:	04000513          	li	a0,64
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	8c4080e7          	jalr	-1852(ra) # 800014c4 <_Z9mem_allocm>
    80001c08:	00050493          	mv	s1,a0
    mem_free(ptr1);
    80001c0c:	00090513          	mv	a0,s2
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	904080e7          	jalr	-1788(ra) # 80001514 <_Z8mem_freePv>
    mem_free(ptr2);
    80001c18:	00048513          	mv	a0,s1
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	8f8080e7          	jalr	-1800(ra) # 80001514 <_Z8mem_freePv>
    void *ptr3 = mem_alloc(128);
    80001c24:	08000513          	li	a0,128
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	89c080e7          	jalr	-1892(ra) # 800014c4 <_Z9mem_allocm>
    if (ptr3 == nullptr) printInt(94); // Proverava da li je spajanje uspelo
    80001c30:	02050863          	beqz	a0,80001c60 <_Z22test_free_and_coalescev+0x94>
    printInt(3);
    80001c34:	00000613          	li	a2,0
    80001c38:	00a00593          	li	a1,10
    80001c3c:	00300513          	li	a0,3
    80001c40:	00003097          	auipc	ra,0x3
    80001c44:	080080e7          	jalr	128(ra) # 80004cc0 <_Z8printIntiii>
}
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	00013903          	ld	s2,0(sp)
    80001c58:	02010113          	addi	sp,sp,32
    80001c5c:	00008067          	ret
    if (ptr3 == nullptr) printInt(94); // Proverava da li je spajanje uspelo
    80001c60:	00000613          	li	a2,0
    80001c64:	00a00593          	li	a1,10
    80001c68:	05e00513          	li	a0,94
    80001c6c:	00003097          	auipc	ra,0x3
    80001c70:	054080e7          	jalr	84(ra) # 80004cc0 <_Z8printIntiii>
    80001c74:	fc1ff06f          	j	80001c34 <_Z22test_free_and_coalescev+0x68>

0000000080001c78 <_Z15test_edge_casesv>:
void test_edge_cases() {
    80001c78:	ff010113          	addi	sp,sp,-16
    80001c7c:	00113423          	sd	ra,8(sp)
    80001c80:	00813023          	sd	s0,0(sp)
    80001c84:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_init();
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	b7c080e7          	jalr	-1156(ra) # 80002804 <_ZN15MemoryAllocator8mem_initEv>
    void *ptr = mem_alloc(0);
    80001c90:	00000513          	li	a0,0
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	830080e7          	jalr	-2000(ra) # 800014c4 <_Z9mem_allocm>
    if (ptr == nullptr) printInt(95); // Provera alokacije nulte veličine
    80001c9c:	02050c63          	beqz	a0,80001cd4 <_Z15test_edge_casesv+0x5c>
    ptr = mem_alloc(91);
    80001ca0:	05b00513          	li	a0,91
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	820080e7          	jalr	-2016(ra) # 800014c4 <_Z9mem_allocm>
    if (ptr == nullptr) printInt(96); // Provera alokacije sa negativnom veličinom
    80001cac:	04050063          	beqz	a0,80001cec <_Z15test_edge_casesv+0x74>
    printInt(4);
    80001cb0:	00000613          	li	a2,0
    80001cb4:	00a00593          	li	a1,10
    80001cb8:	00400513          	li	a0,4
    80001cbc:	00003097          	auipc	ra,0x3
    80001cc0:	004080e7          	jalr	4(ra) # 80004cc0 <_Z8printIntiii>
}
    80001cc4:	00813083          	ld	ra,8(sp)
    80001cc8:	00013403          	ld	s0,0(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret
    if (ptr == nullptr) printInt(95); // Provera alokacije nulte veličine
    80001cd4:	00000613          	li	a2,0
    80001cd8:	00a00593          	li	a1,10
    80001cdc:	05f00513          	li	a0,95
    80001ce0:	00003097          	auipc	ra,0x3
    80001ce4:	fe0080e7          	jalr	-32(ra) # 80004cc0 <_Z8printIntiii>
    80001ce8:	fb9ff06f          	j	80001ca0 <_Z15test_edge_casesv+0x28>
    if (ptr == nullptr) printInt(96); // Provera alokacije sa negativnom veličinom
    80001cec:	00000613          	li	a2,0
    80001cf0:	00a00593          	li	a1,10
    80001cf4:	06000513          	li	a0,96
    80001cf8:	00003097          	auipc	ra,0x3
    80001cfc:	fc8080e7          	jalr	-56(ra) # 80004cc0 <_Z8printIntiii>
    80001d00:	fb1ff06f          	j	80001cb0 <_Z15test_edge_casesv+0x38>

0000000080001d04 <main>:


int main() {
    80001d04:	fd010113          	addi	sp,sp,-48
    80001d08:	02113423          	sd	ra,40(sp)
    80001d0c:	02813023          	sd	s0,32(sp)
    80001d10:	00913c23          	sd	s1,24(sp)
    80001d14:	03010413          	addi	s0,sp,48
    MemoryAllocator::mem_init();
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	aec080e7          	jalr	-1300(ra) # 80002804 <_ZN15MemoryAllocator8mem_initEv>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap | 1);
    80001d20:	00008797          	auipc	a5,0x8
    80001d24:	3307b783          	ld	a5,816(a5) # 8000a050 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d28:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001d2c:	10579073          	csrw	stvec,a5
    thread_t thread;
    thread_create(&thread, nullptr, nullptr);
    80001d30:	00000613          	li	a2,0
    80001d34:	00000593          	li	a1,0
    80001d38:	fd840513          	addi	a0,s0,-40
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	814080e7          	jalr	-2028(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    PCB::running = thread;
    80001d44:	00008797          	auipc	a5,0x8
    80001d48:	31c7b783          	ld	a5,796(a5) # 8000a060 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d4c:	fd843703          	ld	a4,-40(s0)
    80001d50:	00e7b023          	sd	a4,0(a5)
    uMode();
    80001d54:	fffff097          	auipc	ra,0xfffff
    80001d58:	728080e7          	jalr	1832(ra) # 8000147c <_Z5uModev>
    thread_t u;
    thread_create(&u, wrapper, nullptr);
    80001d5c:	00000613          	li	a2,0
    80001d60:	00000597          	auipc	a1,0x0
    80001d64:	ce458593          	addi	a1,a1,-796 # 80001a44 <_Z7wrapperPv>
    80001d68:	fd040513          	addi	a0,s0,-48
    80001d6c:	fffff097          	auipc	ra,0xfffff
    80001d70:	7e4080e7          	jalr	2020(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    while (!finished) {
    80001d74:	00008797          	auipc	a5,0x8
    80001d78:	3547a783          	lw	a5,852(a5) # 8000a0c8 <finished>
    80001d7c:	00079863          	bnez	a5,80001d8c <main+0x88>
        thread_dispatch();
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	87c080e7          	jalr	-1924(ra) # 800015fc <_Z15thread_dispatchv>
    80001d88:	fedff06f          	j	80001d74 <main+0x70>
    }
    printString("Vracen iz thread_dispatch\n");
    80001d8c:	00006517          	auipc	a0,0x6
    80001d90:	29450513          	addi	a0,a0,660 # 80008020 <CONSOLE_STATUS+0x10>
    80001d94:	00003097          	auipc	ra,0x3
    80001d98:	d7c080e7          	jalr	-644(ra) # 80004b10 <_Z11printStringPKc>
    sMode();
    80001d9c:	fffff097          	auipc	ra,0xfffff
    80001da0:	704080e7          	jalr	1796(ra) # 800014a0 <_Z5sModev>
    delete u;
    80001da4:	fd043483          	ld	s1,-48(s0)
    80001da8:	02048063          	beqz	s1,80001dc8 <main+0xc4>
    ~PCB() { delete[] stack; }
    80001dac:	0184b503          	ld	a0,24(s1)
    80001db0:	00050663          	beqz	a0,80001dbc <main+0xb8>
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	0d8080e7          	jalr	216(ra) # 80001e8c <_ZdaPv>
    80001dbc:	00048513          	mv	a0,s1
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	07c080e7          	jalr	124(ra) # 80001e3c <_ZdlPv>
    delete thread;
    80001dc8:	fd843483          	ld	s1,-40(s0)
    80001dcc:	02048063          	beqz	s1,80001dec <main+0xe8>
    80001dd0:	0184b503          	ld	a0,24(s1)
    80001dd4:	00050663          	beqz	a0,80001de0 <main+0xdc>
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	0b4080e7          	jalr	180(ra) # 80001e8c <_ZdaPv>
    80001de0:	00048513          	mv	a0,s1
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	058080e7          	jalr	88(ra) # 80001e3c <_ZdlPv>
    printString("MAIN FINISHED\n");
    80001dec:	00006517          	auipc	a0,0x6
    80001df0:	25450513          	addi	a0,a0,596 # 80008040 <CONSOLE_STATUS+0x30>
    80001df4:	00003097          	auipc	ra,0x3
    80001df8:	d1c080e7          	jalr	-740(ra) # 80004b10 <_Z11printStringPKc>
    return 0;
}
    80001dfc:	00000513          	li	a0,0
    80001e00:	02813083          	ld	ra,40(sp)
    80001e04:	02013403          	ld	s0,32(sp)
    80001e08:	01813483          	ld	s1,24(sp)
    80001e0c:	03010113          	addi	sp,sp,48
    80001e10:	00008067          	ret

0000000080001e14 <_Znwm>:
// #include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
using size_t = decltype(sizeof(0));

void *operator new(size_t size) {
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00113423          	sd	ra,8(sp)
    80001e1c:	00813023          	sd	s0,0(sp)
    80001e20:	01010413          	addi	s0,sp,16
    // return MemoryAllocator::mem_alloc(size);
    return mem_alloc(size);
    80001e24:	fffff097          	auipc	ra,0xfffff
    80001e28:	6a0080e7          	jalr	1696(ra) # 800014c4 <_Z9mem_allocm>
}
    80001e2c:	00813083          	ld	ra,8(sp)
    80001e30:	00013403          	ld	s0,0(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <_ZdlPv>:

void operator delete(void *ptr) {
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    // MemoryAllocator::mem_free(ptr);
    mem_free(ptr);
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	6c8080e7          	jalr	1736(ra) # 80001514 <_Z8mem_freePv>
}
    80001e54:	00813083          	ld	ra,8(sp)
    80001e58:	00013403          	ld	s0,0(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <_Znam>:

void *operator new[](size_t size) {
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00113423          	sd	ra,8(sp)
    80001e6c:	00813023          	sd	s0,0(sp)
    80001e70:	01010413          	addi	s0,sp,16
    // return MemoryAllocator::mem_alloc(size);
    return mem_alloc(size);
    80001e74:	fffff097          	auipc	ra,0xfffff
    80001e78:	650080e7          	jalr	1616(ra) # 800014c4 <_Z9mem_allocm>
}
    80001e7c:	00813083          	ld	ra,8(sp)
    80001e80:	00013403          	ld	s0,0(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret

0000000080001e8c <_ZdaPv>:

void operator delete[](void *ptr) {
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00113423          	sd	ra,8(sp)
    80001e94:	00813023          	sd	s0,0(sp)
    80001e98:	01010413          	addi	s0,sp,16
    // MemoryAllocator::mem_free(ptr);
    mem_free(ptr);
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	678080e7          	jalr	1656(ra) # 80001514 <_Z8mem_freePv>
}
    80001ea4:	00813083          	ld	ra,8(sp)
    80001ea8:	00013403          	ld	s0,0(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZN7Console4getcEv>:
//
// Created by os on 5/8/23.
//
#include "../h/syscall_cpp.hpp"

char Console::getc() {
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    return __getc();
    80001ec4:	00006097          	auipc	ra,0x6
    80001ec8:	f04080e7          	jalr	-252(ra) # 80007dc8 <__getc>
}
    80001ecc:	00813083          	ld	ra,8(sp)
    80001ed0:	00013403          	ld	s0,0(sp)
    80001ed4:	01010113          	addi	sp,sp,16
    80001ed8:	00008067          	ret

0000000080001edc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001edc:	ff010113          	addi	sp,sp,-16
    80001ee0:	00113423          	sd	ra,8(sp)
    80001ee4:	00813023          	sd	s0,0(sp)
    80001ee8:	01010413          	addi	s0,sp,16
    __putc(c);
    80001eec:	00006097          	auipc	ra,0x6
    80001ef0:	ea0080e7          	jalr	-352(ra) # 80007d8c <__putc>
}
    80001ef4:	00813083          	ld	ra,8(sp)
    80001ef8:	00013403          	ld	s0,0(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <_ZN5Riscv10popSppSpieEv>:
#include "../h/PCB.hpp"
#include "../h/_sem.hpp"

extern "C" void handle_interrupt();

void Riscv::popSppSpie() {
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813423          	sd	s0,8(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001f10:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001f14:	10200073          	sret
}
    80001f18:	00813403          	ld	s0,8(sp)
    80001f1c:	01010113          	addi	sp,sp,16
    80001f20:	00008067          	ret

0000000080001f24 <_ZN5Riscv21supervisorTrapHandlerEv>:

void Riscv::supervisorTrapHandler() {
    80001f24:	f7010113          	addi	sp,sp,-144
    80001f28:	08113423          	sd	ra,136(sp)
    80001f2c:	08813023          	sd	s0,128(sp)
    80001f30:	06913c23          	sd	s1,120(sp)
    80001f34:	07213823          	sd	s2,112(sp)
    80001f38:	07313423          	sd	s3,104(sp)
    80001f3c:	07413023          	sd	s4,96(sp)
    80001f40:	09010413          	addi	s0,sp,144
    uint64 volatile a1, a2, a3, a4;
    __asm__ volatile ("mv %0, a4" : "=r"(a4));
    80001f44:	00070793          	mv	a5,a4
    80001f48:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001f4c:	142027f3          	csrr	a5,scause
    80001f50:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80001f54:	f8843903          	ld	s2,-120(s0)
    uint64 scause = r_scause();
    uint64 code;
    __asm__ volatile ("mv %0, a0" : "=r" (code));
    80001f58:	00050493          	mv	s1,a0
    __asm__ volatile ("mv %0, a1" : "=r"(a1));
    80001f5c:	00058793          	mv	a5,a1
    80001f60:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("mv %0, a2" : "=r"(a2));
    80001f64:	00060793          	mv	a5,a2
    80001f68:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("mv %0, a3" : "=r"(a3));
    80001f6c:	00068793          	mv	a5,a3
    80001f70:	faf43c23          	sd	a5,-72(s0)

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001f74:	ff890713          	addi	a4,s2,-8
    80001f78:	00100793          	li	a5,1
    80001f7c:	04e7fe63          	bgeu	a5,a4,80001fd8 <_ZN5Riscv21supervisorTrapHandlerEv+0xb4>

        if (code != 0x43 && code != 0x44) {
            w_sstatus(sstatus);
        }
        w_sepc(sepc);
    } else if (scause == 0x0000000000000002UL) {
    80001f80:	00200793          	li	a5,2
    80001f84:	22f90e63          	beq	s2,a5,800021c0 <_ZN5Riscv21supervisorTrapHandlerEv+0x29c>
        __putc('\n');
        printString("ILEGALNA INSTRUKCIJA");
        printString("\n");
        while (1);
        PCB::dispatch();
    } else if (scause == 0x0000000000000005UL) {
    80001f88:	00500793          	li	a5,5
    80001f8c:	28f90263          	beq	s2,a5,80002210 <_ZN5Riscv21supervisorTrapHandlerEv+0x2ec>
        printInt(Riscv::r_scause());
        printString(" ");
        printInt(Riscv::r_stval());
        printString("\n");
        while (1);
    } else if (scause == 0x0000000000000007UL) {
    80001f90:	00700793          	li	a5,7
    80001f94:	32f90863          	beq	s2,a5,800022c4 <_ZN5Riscv21supervisorTrapHandlerEv+0x3a0>
        printInt(Riscv::r_scause());
        printString(" ");
        printInt(Riscv::r_stval());
        printString("\n");
        while (1);
    } else if (scause == 0x8000000000000009UL) {
    80001f98:	fff00793          	li	a5,-1
    80001f9c:	03f79793          	slli	a5,a5,0x3f
    80001fa0:	00978793          	addi	a5,a5,9
    80001fa4:	3cf90a63          	beq	s2,a5,80002378 <_ZN5Riscv21supervisorTrapHandlerEv+0x454>
        uint64 volatile sstatus = r_sstatus();
        console_handler();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else {
        printString("greska! SCAUSE: ");
    80001fa8:	00006517          	auipc	a0,0x6
    80001fac:	0a850513          	addi	a0,a0,168 # 80008050 <CONSOLE_STATUS+0x40>
    80001fb0:	00003097          	auipc	ra,0x3
    80001fb4:	b60080e7          	jalr	-1184(ra) # 80004b10 <_Z11printStringPKc>
        __putc(scause + '0');
    80001fb8:	0309051b          	addiw	a0,s2,48
    80001fbc:	0ff57513          	andi	a0,a0,255
    80001fc0:	00006097          	auipc	ra,0x6
    80001fc4:	dcc080e7          	jalr	-564(ra) # 80007d8c <__putc>
        __putc('\n');
    80001fc8:	00a00513          	li	a0,10
    80001fcc:	00006097          	auipc	ra,0x6
    80001fd0:	dc0080e7          	jalr	-576(ra) # 80007d8c <__putc>
        while (true);
    80001fd4:	0000006f          	j	80001fd4 <_ZN5Riscv21supervisorTrapHandlerEv+0xb0>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001fd8:	100027f3          	csrr	a5,sstatus
    80001fdc:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    80001fe0:	f9843a03          	ld	s4,-104(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001fe4:	141027f3          	csrr	a5,sepc
    80001fe8:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    80001fec:	f9043983          	ld	s3,-112(s0)
        uint64 sepc = r_sepc() + 4;
    80001ff0:	00498993          	addi	s3,s3,4
        if (code == 0x01) {
    80001ff4:	00100793          	li	a5,1
    80001ff8:	06f48c63          	beq	s1,a5,80002070 <_ZN5Riscv21supervisorTrapHandlerEv+0x14c>
        } else if (code == 0x02) {
    80001ffc:	00200793          	li	a5,2
    80002000:	0af48c63          	beq	s1,a5,800020b8 <_ZN5Riscv21supervisorTrapHandlerEv+0x194>
        } else if (code == 0x11) {
    80002004:	01100793          	li	a5,17
    80002008:	0cf48263          	beq	s1,a5,800020cc <_ZN5Riscv21supervisorTrapHandlerEv+0x1a8>
        } else if (code == 0x12) {
    8000200c:	01200793          	li	a5,18
    80002010:	0ef48263          	beq	s1,a5,800020f4 <_ZN5Riscv21supervisorTrapHandlerEv+0x1d0>
        } else if (code == 0x13) {
    80002014:	01300793          	li	a5,19
    80002018:	0ef48663          	beq	s1,a5,80002104 <_ZN5Riscv21supervisorTrapHandlerEv+0x1e0>
        } else if (code == 0x21) {
    8000201c:	02100793          	li	a5,33
    80002020:	0ef48863          	beq	s1,a5,80002110 <_ZN5Riscv21supervisorTrapHandlerEv+0x1ec>
        } else if (code == 0x22) {
    80002024:	02200793          	li	a5,34
    80002028:	10f48c63          	beq	s1,a5,80002140 <_ZN5Riscv21supervisorTrapHandlerEv+0x21c>
        } else if (code == 0x23) {
    8000202c:	02300793          	li	a5,35
    80002030:	12f48263          	beq	s1,a5,80002154 <_ZN5Riscv21supervisorTrapHandlerEv+0x230>
        } else if (code == 0x24) {
    80002034:	02400793          	li	a5,36
    80002038:	12f48863          	beq	s1,a5,80002168 <_ZN5Riscv21supervisorTrapHandlerEv+0x244>
        } else if (code == 0x26) {
    8000203c:	02600793          	li	a5,38
    80002040:	12f48e63          	beq	s1,a5,8000217c <_ZN5Riscv21supervisorTrapHandlerEv+0x258>
        } else if (code == 0x41) {
    80002044:	04100793          	li	a5,65
    80002048:	14f48463          	beq	s1,a5,80002190 <_ZN5Riscv21supervisorTrapHandlerEv+0x26c>
        } else if (code == 0x42) {
    8000204c:	04200793          	li	a5,66
    80002050:	14f48863          	beq	s1,a5,800021a0 <_ZN5Riscv21supervisorTrapHandlerEv+0x27c>
        } else if (code == 0x43) {
    80002054:	04300793          	li	a5,67
    80002058:	14f48e63          	beq	s1,a5,800021b4 <_ZN5Riscv21supervisorTrapHandlerEv+0x290>
        } else if (code == 0x44) {
    8000205c:	04400793          	li	a5,68
    80002060:	02f49263          	bne	s1,a5,80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002064:	10000793          	li	a5,256
    80002068:	1007a073          	csrs	sstatus,a5
}
    8000206c:	0180006f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            size_t size = (size_t) a1 * MEM_BLOCK_SIZE;
    80002070:	fc843503          	ld	a0,-56(s0)
            void *allocated = MemoryAllocator::mem_alloc(size);
    80002074:	00651513          	slli	a0,a0,0x6
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	7f8080e7          	jalr	2040(ra) # 80002870 <_ZN15MemoryAllocator9mem_allocEm>
            __asm__ volatile("mv a0, %0" : : "r"(allocated));
    80002080:	00050513          	mv	a0,a0
        if (code != 0x43 && code != 0x44) {
    80002084:	fbd48493          	addi	s1,s1,-67
    80002088:	00100793          	li	a5,1
    8000208c:	0097f463          	bgeu	a5,s1,80002094 <_ZN5Riscv21supervisorTrapHandlerEv+0x170>
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002090:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002094:	14199073          	csrw	sepc,s3
    }
}
    80002098:	08813083          	ld	ra,136(sp)
    8000209c:	08013403          	ld	s0,128(sp)
    800020a0:	07813483          	ld	s1,120(sp)
    800020a4:	07013903          	ld	s2,112(sp)
    800020a8:	06813983          	ld	s3,104(sp)
    800020ac:	06013a03          	ld	s4,96(sp)
    800020b0:	09010113          	addi	sp,sp,144
    800020b4:	00008067          	ret
            void *ptr = (void *) a1;
    800020b8:	fc843503          	ld	a0,-56(s0)
            int res = MemoryAllocator::mem_free(ptr);
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	888080e7          	jalr	-1912(ra) # 80002944 <_ZN15MemoryAllocator8mem_freeEPv>
            __asm__ volatile("mv a0, %0" : : "r"(res));
    800020c4:	00050513          	mv	a0,a0
    800020c8:	fbdff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            thread_t *handle = (thread_t *) a1;
    800020cc:	fc843903          	ld	s2,-56(s0)
            PCB::Body body = (PCB::Body) a2;
    800020d0:	fc043503          	ld	a0,-64(s0)
            void *arg = (void *) a3;
    800020d4:	fb843583          	ld	a1,-72(s0)
            uint64 *stack_space = (uint64 *) a4;
    800020d8:	fb043603          	ld	a2,-80(s0)
            *handle = PCB::create_thread(body, arg, stack_space);
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	6e8080e7          	jalr	1768(ra) # 800017c4 <_ZN3PCB13create_threadEPFvPvES0_Pm>
    800020e4:	00a93023          	sd	a0,0(s2)
            __asm__ volatile("mv a0, %0" : : "r"(res));
    800020e8:	00100793          	li	a5,1
    800020ec:	00078513          	mv	a0,a5
    800020f0:	f95ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            int res = PCB::thread_exit();
    800020f4:	fffff097          	auipc	ra,0xfffff
    800020f8:	780080e7          	jalr	1920(ra) # 80001874 <_ZN3PCB11thread_exitEv>
            __asm__ volatile("mv a0, %0" : : "r"(res));
    800020fc:	00050513          	mv	a0,a0
    80002100:	f85ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            PCB::dispatch();
    80002104:	fffff097          	auipc	ra,0xfffff
    80002108:	7e0080e7          	jalr	2016(ra) # 800018e4 <_ZN3PCB8dispatchEv>
    8000210c:	f79ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            sem_t *handle = (sem_t *) a1;
    80002110:	fc843903          	ld	s2,-56(s0)
            unsigned int init = (unsigned int) a2;
    80002114:	fc043503          	ld	a0,-64(s0)
            *handle = _sem::open(init);
    80002118:	0005051b          	sext.w	a0,a0
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	2e0080e7          	jalr	736(ra) # 800023fc <_ZN4_sem4openEj>
    80002124:	00a93023          	sd	a0,0(s2)
            int res = handle != nullptr ? 0 : -1;
    80002128:	00090863          	beqz	s2,80002138 <_ZN5Riscv21supervisorTrapHandlerEv+0x214>
    8000212c:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0" : : "r"(res));
    80002130:	00078513          	mv	a0,a5
    80002134:	f51ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            int res = handle != nullptr ? 0 : -1;
    80002138:	fff00793          	li	a5,-1
    8000213c:	ff5ff06f          	j	80002130 <_ZN5Riscv21supervisorTrapHandlerEv+0x20c>
            sem_t handle = (sem_t) a1;
    80002140:	fc843503          	ld	a0,-56(s0)
            int res = _sem::close(handle);
    80002144:	00000097          	auipc	ra,0x0
    80002148:	490080e7          	jalr	1168(ra) # 800025d4 <_ZN4_sem5closeEPS_>
            __asm__ volatile("mv a0, %0" : : "r"(res));
    8000214c:	00050513          	mv	a0,a0
    80002150:	f35ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            sem_t handle = (sem_t) a1;
    80002154:	fc843503          	ld	a0,-56(s0)
            int res = _sem::wait(handle);
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	314080e7          	jalr	788(ra) # 8000246c <_ZN4_sem4waitEPS_>
            __asm__ volatile("mv a0, %0" : : "r"(res));
    80002160:	00050513          	mv	a0,a0
    80002164:	f21ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            sem_t handle = (sem_t) a1;
    80002168:	fc843503          	ld	a0,-56(s0)
            int res = _sem::signal(handle);
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	3f0080e7          	jalr	1008(ra) # 8000255c <_ZN4_sem6signalEPS_>
            __asm__ volatile("mv a0, %0" : : "r"(res));
    80002174:	00050513          	mv	a0,a0
    80002178:	f0dff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            sem_t handle = (sem_t) a1;
    8000217c:	fc843503          	ld	a0,-56(s0)
            int res = _sem::trywait(handle);
    80002180:	00000097          	auipc	ra,0x0
    80002184:	388080e7          	jalr	904(ra) # 80002508 <_ZN4_sem7trywaitEPS_>
            __asm__ volatile("mv a0, %0" : : "r"(res));
    80002188:	00050513          	mv	a0,a0
    8000218c:	ef9ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            char c = __getc();
    80002190:	00006097          	auipc	ra,0x6
    80002194:	c38080e7          	jalr	-968(ra) # 80007dc8 <__getc>
            __asm__ volatile ("mv a0,%0": : "r"(c));
    80002198:	00050513          	mv	a0,a0
    8000219c:	ee9ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
            char c = (char) a1;
    800021a0:	fc843503          	ld	a0,-56(s0)
            __putc(c);
    800021a4:	0ff57513          	andi	a0,a0,255
    800021a8:	00006097          	auipc	ra,0x6
    800021ac:	be4080e7          	jalr	-1052(ra) # 80007d8c <__putc>
    800021b0:	ed5ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800021b4:	10000793          	li	a5,256
    800021b8:	1007b073          	csrc	sstatus,a5
}
    800021bc:	ec9ff06f          	j	80002084 <_ZN5Riscv21supervisorTrapHandlerEv+0x160>
        printString("greska! SCAUSE: ");
    800021c0:	00006517          	auipc	a0,0x6
    800021c4:	e9050513          	addi	a0,a0,-368 # 80008050 <CONSOLE_STATUS+0x40>
    800021c8:	00003097          	auipc	ra,0x3
    800021cc:	948080e7          	jalr	-1720(ra) # 80004b10 <_Z11printStringPKc>
        __putc(scause + '0');
    800021d0:	0309051b          	addiw	a0,s2,48
    800021d4:	0ff57513          	andi	a0,a0,255
    800021d8:	00006097          	auipc	ra,0x6
    800021dc:	bb4080e7          	jalr	-1100(ra) # 80007d8c <__putc>
        __putc('\n');
    800021e0:	00a00513          	li	a0,10
    800021e4:	00006097          	auipc	ra,0x6
    800021e8:	ba8080e7          	jalr	-1112(ra) # 80007d8c <__putc>
        printString("ILEGALNA INSTRUKCIJA");
    800021ec:	00006517          	auipc	a0,0x6
    800021f0:	e7c50513          	addi	a0,a0,-388 # 80008068 <CONSOLE_STATUS+0x58>
    800021f4:	00003097          	auipc	ra,0x3
    800021f8:	91c080e7          	jalr	-1764(ra) # 80004b10 <_Z11printStringPKc>
        printString("\n");
    800021fc:	00006517          	auipc	a0,0x6
    80002200:	23c50513          	addi	a0,a0,572 # 80008438 <CONSOLE_STATUS+0x428>
    80002204:	00003097          	auipc	ra,0x3
    80002208:	90c080e7          	jalr	-1780(ra) # 80004b10 <_Z11printStringPKc>
        while (1);
    8000220c:	0000006f          	j	8000220c <_ZN5Riscv21supervisorTrapHandlerEv+0x2e8>
        printString("NEDOZVOLJENA ADRESA CITANJA");
    80002210:	00006517          	auipc	a0,0x6
    80002214:	e7050513          	addi	a0,a0,-400 # 80008080 <CONSOLE_STATUS+0x70>
    80002218:	00003097          	auipc	ra,0x3
    8000221c:	8f8080e7          	jalr	-1800(ra) # 80004b10 <_Z11printStringPKc>
        printString(" ");
    80002220:	00006517          	auipc	a0,0x6
    80002224:	e8050513          	addi	a0,a0,-384 # 800080a0 <CONSOLE_STATUS+0x90>
    80002228:	00003097          	auipc	ra,0x3
    8000222c:	8e8080e7          	jalr	-1816(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002230:	141027f3          	csrr	a5,sepc
    80002234:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002238:	fa843503          	ld	a0,-88(s0)
        printInt(Riscv::r_sepc());
    8000223c:	00000613          	li	a2,0
    80002240:	00a00593          	li	a1,10
    80002244:	0005051b          	sext.w	a0,a0
    80002248:	00003097          	auipc	ra,0x3
    8000224c:	a78080e7          	jalr	-1416(ra) # 80004cc0 <_Z8printIntiii>
        printString("  ");
    80002250:	00006517          	auipc	a0,0x6
    80002254:	e5850513          	addi	a0,a0,-424 # 800080a8 <CONSOLE_STATUS+0x98>
    80002258:	00003097          	auipc	ra,0x3
    8000225c:	8b8080e7          	jalr	-1864(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002260:	142027f3          	csrr	a5,scause
    80002264:	faf43023          	sd	a5,-96(s0)
    return scause;
    80002268:	fa043503          	ld	a0,-96(s0)
        printInt(Riscv::r_scause());
    8000226c:	00000613          	li	a2,0
    80002270:	00a00593          	li	a1,10
    80002274:	0005051b          	sext.w	a0,a0
    80002278:	00003097          	auipc	ra,0x3
    8000227c:	a48080e7          	jalr	-1464(ra) # 80004cc0 <_Z8printIntiii>
        printString(" ");
    80002280:	00006517          	auipc	a0,0x6
    80002284:	e2050513          	addi	a0,a0,-480 # 800080a0 <CONSOLE_STATUS+0x90>
    80002288:	00003097          	auipc	ra,0x3
    8000228c:	888080e7          	jalr	-1912(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002290:	143027f3          	csrr	a5,stval
    80002294:	f8f43c23          	sd	a5,-104(s0)
    return stval;
    80002298:	f9843503          	ld	a0,-104(s0)
        printInt(Riscv::r_stval());
    8000229c:	00000613          	li	a2,0
    800022a0:	00a00593          	li	a1,10
    800022a4:	0005051b          	sext.w	a0,a0
    800022a8:	00003097          	auipc	ra,0x3
    800022ac:	a18080e7          	jalr	-1512(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    800022b0:	00006517          	auipc	a0,0x6
    800022b4:	18850513          	addi	a0,a0,392 # 80008438 <CONSOLE_STATUS+0x428>
    800022b8:	00003097          	auipc	ra,0x3
    800022bc:	858080e7          	jalr	-1960(ra) # 80004b10 <_Z11printStringPKc>
        while (1);
    800022c0:	0000006f          	j	800022c0 <_ZN5Riscv21supervisorTrapHandlerEv+0x39c>
        printString("NEDOZVOLJENA ADRESA UPISA");
    800022c4:	00006517          	auipc	a0,0x6
    800022c8:	dec50513          	addi	a0,a0,-532 # 800080b0 <CONSOLE_STATUS+0xa0>
    800022cc:	00003097          	auipc	ra,0x3
    800022d0:	844080e7          	jalr	-1980(ra) # 80004b10 <_Z11printStringPKc>
        printString(" ");
    800022d4:	00006517          	auipc	a0,0x6
    800022d8:	dcc50513          	addi	a0,a0,-564 # 800080a0 <CONSOLE_STATUS+0x90>
    800022dc:	00003097          	auipc	ra,0x3
    800022e0:	834080e7          	jalr	-1996(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800022e4:	141027f3          	csrr	a5,sepc
    800022e8:	faf43423          	sd	a5,-88(s0)
    return sepc;
    800022ec:	fa843503          	ld	a0,-88(s0)
        printInt(Riscv::r_sepc());
    800022f0:	00000613          	li	a2,0
    800022f4:	00a00593          	li	a1,10
    800022f8:	0005051b          	sext.w	a0,a0
    800022fc:	00003097          	auipc	ra,0x3
    80002300:	9c4080e7          	jalr	-1596(ra) # 80004cc0 <_Z8printIntiii>
        printString(" ");
    80002304:	00006517          	auipc	a0,0x6
    80002308:	d9c50513          	addi	a0,a0,-612 # 800080a0 <CONSOLE_STATUS+0x90>
    8000230c:	00003097          	auipc	ra,0x3
    80002310:	804080e7          	jalr	-2044(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002314:	142027f3          	csrr	a5,scause
    80002318:	faf43023          	sd	a5,-96(s0)
    return scause;
    8000231c:	fa043503          	ld	a0,-96(s0)
        printInt(Riscv::r_scause());
    80002320:	00000613          	li	a2,0
    80002324:	00a00593          	li	a1,10
    80002328:	0005051b          	sext.w	a0,a0
    8000232c:	00003097          	auipc	ra,0x3
    80002330:	994080e7          	jalr	-1644(ra) # 80004cc0 <_Z8printIntiii>
        printString(" ");
    80002334:	00006517          	auipc	a0,0x6
    80002338:	d6c50513          	addi	a0,a0,-660 # 800080a0 <CONSOLE_STATUS+0x90>
    8000233c:	00002097          	auipc	ra,0x2
    80002340:	7d4080e7          	jalr	2004(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80002344:	143027f3          	csrr	a5,stval
    80002348:	f8f43c23          	sd	a5,-104(s0)
    return stval;
    8000234c:	f9843503          	ld	a0,-104(s0)
        printInt(Riscv::r_stval());
    80002350:	00000613          	li	a2,0
    80002354:	00a00593          	li	a1,10
    80002358:	0005051b          	sext.w	a0,a0
    8000235c:	00003097          	auipc	ra,0x3
    80002360:	964080e7          	jalr	-1692(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80002364:	00006517          	auipc	a0,0x6
    80002368:	0d450513          	addi	a0,a0,212 # 80008438 <CONSOLE_STATUS+0x428>
    8000236c:	00002097          	auipc	ra,0x2
    80002370:	7a4080e7          	jalr	1956(ra) # 80004b10 <_Z11printStringPKc>
        while (1);
    80002374:	0000006f          	j	80002374 <_ZN5Riscv21supervisorTrapHandlerEv+0x450>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002378:	141027f3          	csrr	a5,sepc
    8000237c:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002380:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sepc = r_sepc();
    80002384:	f6f43c23          	sd	a5,-136(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002388:	100027f3          	csrr	a5,sstatus
    8000238c:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002390:	fa043783          	ld	a5,-96(s0)
        uint64 volatile sstatus = r_sstatus();
    80002394:	f8f43023          	sd	a5,-128(s0)
        console_handler();
    80002398:	00006097          	auipc	ra,0x6
    8000239c:	a68080e7          	jalr	-1432(ra) # 80007e00 <console_handler>
        w_sstatus(sstatus);
    800023a0:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023a4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800023a8:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023ac:	14179073          	csrw	sepc,a5
}
    800023b0:	ce9ff06f          	j	80002098 <_ZN5Riscv21supervisorTrapHandlerEv+0x174>

00000000800023b4 <_ZN5Riscv27handleSupervisorTrapConsoleEv>:

void Riscv::handleSupervisorTrapConsole() {
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00113423          	sd	ra,8(sp)
    800023bc:	00813023          	sd	s0,0(sp)
    800023c0:	01010413          	addi	s0,sp,16
    console_handler();
    800023c4:	00006097          	auipc	ra,0x6
    800023c8:	a3c080e7          	jalr	-1476(ra) # 80007e00 <console_handler>
}
    800023cc:	00813083          	ld	ra,8(sp)
    800023d0:	00013403          	ld	s0,0(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_ZN5Riscv28handleSupervisorTimerHandlerEv>:

void Riscv::handleSupervisorTimerHandler() { mc_sip(SIP_SSIE); }
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00813423          	sd	s0,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800023e8:	00200793          	li	a5,2
    800023ec:	1447b073          	csrc	sip,a5
    800023f0:	00813403          	ld	s0,8(sp)
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00008067          	ret

00000000800023fc <_ZN4_sem4openEj>:
// Created by os on 6/4/24.
//

#include "../h/_sem.hpp"

sem_t _sem::open(unsigned init) {
    800023fc:	fe010113          	addi	sp,sp,-32
    80002400:	00113c23          	sd	ra,24(sp)
    80002404:	00813823          	sd	s0,16(sp)
    80002408:	00913423          	sd	s1,8(sp)
    8000240c:	01213023          	sd	s2,0(sp)
    80002410:	02010413          	addi	s0,sp,32
    80002414:	00050913          	mv	s2,a0
    sem_t sem = (sem_t) mem_alloc(sizeof(_sem));
    80002418:	01800513          	li	a0,24
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	0a8080e7          	jalr	168(ra) # 800014c4 <_Z9mem_allocm>
    80002424:	00050493          	mv	s1,a0
    if (!sem) return nullptr;
    80002428:	02050463          	beqz	a0,80002450 <_ZN4_sem4openEj+0x54>
    sem->value = init;
    8000242c:	01252023          	sw	s2,0(a0)
    sem->opened = true;
    80002430:	00100793          	li	a5,1
    80002434:	00f50823          	sb	a5,16(a0)
    sem->waitlist = new waitSemList();
    80002438:	01000513          	li	a0,16
    8000243c:	00000097          	auipc	ra,0x0
    80002440:	9d8080e7          	jalr	-1576(ra) # 80001e14 <_Znwm>
    waitSemList():head(nullptr), tail(nullptr){}
    80002444:	00053023          	sd	zero,0(a0)
    80002448:	00053423          	sd	zero,8(a0)
    8000244c:	00a4b423          	sd	a0,8(s1)
    return sem;
}
    80002450:	00048513          	mv	a0,s1
    80002454:	01813083          	ld	ra,24(sp)
    80002458:	01013403          	ld	s0,16(sp)
    8000245c:	00813483          	ld	s1,8(sp)
    80002460:	00013903          	ld	s2,0(sp)
    80002464:	02010113          	addi	sp,sp,32
    80002468:	00008067          	ret

000000008000246c <_ZN4_sem4waitEPS_>:

int _sem::wait(sem_t id) {
    if (!id)return -1;
    8000246c:	08050263          	beqz	a0,800024f0 <_ZN4_sem4waitEPS_+0x84>
int _sem::wait(sem_t id) {
    80002470:	fe010113          	addi	sp,sp,-32
    80002474:	00113c23          	sd	ra,24(sp)
    80002478:	00813823          	sd	s0,16(sp)
    8000247c:	00913423          	sd	s1,8(sp)
    80002480:	02010413          	addi	s0,sp,32
    80002484:	00050493          	mv	s1,a0
    if (!id->opened) { return -1; }
    80002488:	01054783          	lbu	a5,16(a0)
    8000248c:	06078663          	beqz	a5,800024f8 <_ZN4_sem4waitEPS_+0x8c>
    if (--id->value < 0) {
    80002490:	00052783          	lw	a5,0(a0)
    80002494:	fff7879b          	addiw	a5,a5,-1
    80002498:	00f52023          	sw	a5,0(a0)
    8000249c:	02079713          	slli	a4,a5,0x20
    800024a0:	02074263          	bltz	a4,800024c4 <_ZN4_sem4waitEPS_+0x58>
        PCB::running->setState(PCB::BLOCKED);
        id->waitlist->add(PCB::running);
        PCB::dispatch();
    }
    return id->opened ? 0 : -1;
    800024a4:	0104c783          	lbu	a5,16(s1)
    800024a8:	04078c63          	beqz	a5,80002500 <_ZN4_sem4waitEPS_+0x94>
    800024ac:	00000513          	li	a0,0
}
    800024b0:	01813083          	ld	ra,24(sp)
    800024b4:	01013403          	ld	s0,16(sp)
    800024b8:	00813483          	ld	s1,8(sp)
    800024bc:	02010113          	addi	sp,sp,32
    800024c0:	00008067          	ret
        PCB::running->setState(PCB::BLOCKED);
    800024c4:	00008797          	auipc	a5,0x8
    800024c8:	b9c7b783          	ld	a5,-1124(a5) # 8000a060 <_GLOBAL_OFFSET_TABLE_+0x20>
    800024cc:	0007b583          	ld	a1,0(a5)
    void setState(threadState st) { state = st; }
    800024d0:	00400793          	li	a5,4
    800024d4:	02f5a823          	sw	a5,48(a1)
        id->waitlist->add(PCB::running);
    800024d8:	00853503          	ld	a0,8(a0)
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	500080e7          	jalr	1280(ra) # 800019dc <_ZN11waitSemList3addEP3PCB>
        PCB::dispatch();
    800024e4:	fffff097          	auipc	ra,0xfffff
    800024e8:	400080e7          	jalr	1024(ra) # 800018e4 <_ZN3PCB8dispatchEv>
    800024ec:	fb9ff06f          	j	800024a4 <_ZN4_sem4waitEPS_+0x38>
    if (!id)return -1;
    800024f0:	fff00513          	li	a0,-1
}
    800024f4:	00008067          	ret
    if (!id->opened) { return -1; }
    800024f8:	fff00513          	li	a0,-1
    800024fc:	fb5ff06f          	j	800024b0 <_ZN4_sem4waitEPS_+0x44>
    return id->opened ? 0 : -1;
    80002500:	fff00513          	li	a0,-1
    80002504:	fadff06f          	j	800024b0 <_ZN4_sem4waitEPS_+0x44>

0000000080002508 <_ZN4_sem7trywaitEPS_>:

int _sem::trywait(sem_t id) {
    80002508:	ff010113          	addi	sp,sp,-16
    8000250c:	00813423          	sd	s0,8(sp)
    80002510:	01010413          	addi	s0,sp,16
    if (!id)return -1;
    80002514:	02050863          	beqz	a0,80002544 <_ZN4_sem7trywaitEPS_+0x3c>
    if (!id->opened) {
    80002518:	01054783          	lbu	a5,16(a0)
    8000251c:	02078863          	beqz	a5,8000254c <_ZN4_sem7trywaitEPS_+0x44>
        return -1;
    }
    if (--id->value >= 0) {
    80002520:	00052783          	lw	a5,0(a0)
    80002524:	fff7879b          	addiw	a5,a5,-1
    80002528:	00f52023          	sw	a5,0(a0)
    8000252c:	02079713          	slli	a4,a5,0x20
    80002530:	02075263          	bgez	a4,80002554 <_ZN4_sem7trywaitEPS_+0x4c>
        return 1;
    }
    return 0;
    80002534:	00000513          	li	a0,0
}
    80002538:	00813403          	ld	s0,8(sp)
    8000253c:	01010113          	addi	sp,sp,16
    80002540:	00008067          	ret
    if (!id)return -1;
    80002544:	fff00513          	li	a0,-1
    80002548:	ff1ff06f          	j	80002538 <_ZN4_sem7trywaitEPS_+0x30>
        return -1;
    8000254c:	fff00513          	li	a0,-1
    80002550:	fe9ff06f          	j	80002538 <_ZN4_sem7trywaitEPS_+0x30>
        return 1;
    80002554:	00100513          	li	a0,1
    80002558:	fe1ff06f          	j	80002538 <_ZN4_sem7trywaitEPS_+0x30>

000000008000255c <_ZN4_sem6signalEPS_>:

int _sem::signal(sem_t id) {
    if (!id) return -1;
    8000255c:	06050463          	beqz	a0,800025c4 <_ZN4_sem6signalEPS_+0x68>
    if (!id->opened) { return -1; }
    80002560:	01054783          	lbu	a5,16(a0)
    80002564:	06078463          	beqz	a5,800025cc <_ZN4_sem6signalEPS_+0x70>
    if (++id->value <= 0) {
    80002568:	00052783          	lw	a5,0(a0)
    8000256c:	0017879b          	addiw	a5,a5,1
    80002570:	0007871b          	sext.w	a4,a5
    80002574:	00f52023          	sw	a5,0(a0)
    80002578:	00e05663          	blez	a4,80002584 <_ZN4_sem6signalEPS_+0x28>
        PCB *thread = id->waitlist->get();
        thread->setState(PCB::READY);
        Scheduler::put(thread);
    }
    return 0;
    8000257c:	00000513          	li	a0,0
}
    80002580:	00008067          	ret
int _sem::signal(sem_t id) {
    80002584:	ff010113          	addi	sp,sp,-16
    80002588:	00113423          	sd	ra,8(sp)
    8000258c:	00813023          	sd	s0,0(sp)
    80002590:	01010413          	addi	s0,sp,16
        PCB *thread = id->waitlist->get();
    80002594:	00853503          	ld	a0,8(a0)
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	3e4080e7          	jalr	996(ra) # 8000197c <_ZN11waitSemList3getEv>
    800025a0:	00100793          	li	a5,1
    800025a4:	02f52823          	sw	a5,48(a0)
        Scheduler::put(thread);
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	170080e7          	jalr	368(ra) # 80002718 <_ZN9Scheduler3putEP3PCB>
    return 0;
    800025b0:	00000513          	li	a0,0
}
    800025b4:	00813083          	ld	ra,8(sp)
    800025b8:	00013403          	ld	s0,0(sp)
    800025bc:	01010113          	addi	sp,sp,16
    800025c0:	00008067          	ret
    if (!id) return -1;
    800025c4:	fff00513          	li	a0,-1
    800025c8:	00008067          	ret
    if (!id->opened) { return -1; }
    800025cc:	fff00513          	li	a0,-1
    800025d0:	00008067          	ret

00000000800025d4 <_ZN4_sem5closeEPS_>:

int _sem::close(sem_t handler) {
    if (!handler) { return -1; }
    800025d4:	08050663          	beqz	a0,80002660 <_ZN4_sem5closeEPS_+0x8c>
int _sem::close(sem_t handler) {
    800025d8:	fe010113          	addi	sp,sp,-32
    800025dc:	00113c23          	sd	ra,24(sp)
    800025e0:	00813823          	sd	s0,16(sp)
    800025e4:	00913423          	sd	s1,8(sp)
    800025e8:	02010413          	addi	s0,sp,32
    800025ec:	00050493          	mv	s1,a0
    if (!handler->opened) { return -1; }
    800025f0:	01054783          	lbu	a5,16(a0)
    800025f4:	06078a63          	beqz	a5,80002668 <_ZN4_sem5closeEPS_+0x94>
    handler->opened = false;
    800025f8:	00050823          	sb	zero,16(a0)
    handler->value = 0;
    800025fc:	00052023          	sw	zero,0(a0)

    while (!handler->waitlist->empty() && handler->waitlist->head->thread) {
    80002600:	0084b503          	ld	a0,8(s1)
    bool empty() { return head == nullptr; }
    80002604:	00053783          	ld	a5,0(a0)
    80002608:	02078463          	beqz	a5,80002630 <_ZN4_sem5closeEPS_+0x5c>
    8000260c:	0007b783          	ld	a5,0(a5)
    80002610:	02078063          	beqz	a5,80002630 <_ZN4_sem5closeEPS_+0x5c>
        PCB *thread = handler->waitlist->get();
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	368080e7          	jalr	872(ra) # 8000197c <_ZN11waitSemList3getEv>
    8000261c:	00100793          	li	a5,1
    80002620:	02f52823          	sw	a5,48(a0)
        thread->setState(PCB::READY);
        Scheduler::put(thread);
    80002624:	00000097          	auipc	ra,0x0
    80002628:	0f4080e7          	jalr	244(ra) # 80002718 <_ZN9Scheduler3putEP3PCB>
    while (!handler->waitlist->empty() && handler->waitlist->head->thread) {
    8000262c:	fd5ff06f          	j	80002600 <_ZN4_sem5closeEPS_+0x2c>
    }
    delete handler->waitlist;
    80002630:	00050663          	beqz	a0,8000263c <_ZN4_sem5closeEPS_+0x68>
    80002634:	00000097          	auipc	ra,0x0
    80002638:	808080e7          	jalr	-2040(ra) # 80001e3c <_ZdlPv>
    mem_free(handler);
    8000263c:	00048513          	mv	a0,s1
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	ed4080e7          	jalr	-300(ra) # 80001514 <_Z8mem_freePv>
    return 0;
    80002648:	00000513          	li	a0,0
}
    8000264c:	01813083          	ld	ra,24(sp)
    80002650:	01013403          	ld	s0,16(sp)
    80002654:	00813483          	ld	s1,8(sp)
    80002658:	02010113          	addi	sp,sp,32
    8000265c:	00008067          	ret
    if (!handler) { return -1; }
    80002660:	fff00513          	li	a0,-1
}
    80002664:	00008067          	ret
    if (!handler->opened) { return -1; }
    80002668:	fff00513          	li	a0,-1
    8000266c:	fe1ff06f          	j	8000264c <_ZN4_sem5closeEPS_+0x78>

0000000080002670 <_Z41__static_initialization_and_destruction_0ii>:
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(PCB *ccb) {
    readyCoroutineQueue.addLast(ccb);
}
    80002670:	ff010113          	addi	sp,sp,-16
    80002674:	00813423          	sd	s0,8(sp)
    80002678:	01010413          	addi	s0,sp,16
    8000267c:	00100793          	li	a5,1
    80002680:	00f50863          	beq	a0,a5,80002690 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret
    80002690:	000107b7          	lui	a5,0x10
    80002694:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002698:	fef596e3          	bne	a1,a5,80002684 <_Z41__static_initialization_and_destruction_0ii+0x14>

public:
    friend class _sem;
    friend class PCB;
    friend class Riscv;
    List() : head(0), tail(0) {}
    8000269c:	00008797          	auipc	a5,0x8
    800026a0:	a3478793          	addi	a5,a5,-1484 # 8000a0d0 <_ZN9Scheduler19readyCoroutineQueueE>
    800026a4:	0007b023          	sd	zero,0(a5)
    800026a8:	0007b423          	sd	zero,8(a5)
    800026ac:	fd9ff06f          	j	80002684 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800026b0 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800026b0:	fe010113          	addi	sp,sp,-32
    800026b4:	00113c23          	sd	ra,24(sp)
    800026b8:	00813823          	sd	s0,16(sp)
    800026bc:	00913423          	sd	s1,8(sp)
    800026c0:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800026c4:	00008517          	auipc	a0,0x8
    800026c8:	a0c53503          	ld	a0,-1524(a0) # 8000a0d0 <_ZN9Scheduler19readyCoroutineQueueE>
    800026cc:	04050263          	beqz	a0,80002710 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800026d0:	00853783          	ld	a5,8(a0)
    800026d4:	00008717          	auipc	a4,0x8
    800026d8:	9ef73e23          	sd	a5,-1540(a4) # 8000a0d0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800026dc:	02078463          	beqz	a5,80002704 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800026e0:	00053483          	ld	s1,0(a0)
        delete elem;
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	758080e7          	jalr	1880(ra) # 80001e3c <_ZdlPv>
}
    800026ec:	00048513          	mv	a0,s1
    800026f0:	01813083          	ld	ra,24(sp)
    800026f4:	01013403          	ld	s0,16(sp)
    800026f8:	00813483          	ld	s1,8(sp)
    800026fc:	02010113          	addi	sp,sp,32
    80002700:	00008067          	ret
        if (!head) { tail = 0; }
    80002704:	00008797          	auipc	a5,0x8
    80002708:	9c07ba23          	sd	zero,-1580(a5) # 8000a0d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000270c:	fd5ff06f          	j	800026e0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002710:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002714:	fd9ff06f          	j	800026ec <_ZN9Scheduler3getEv+0x3c>

0000000080002718 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *ccb) {
    80002718:	fe010113          	addi	sp,sp,-32
    8000271c:	00113c23          	sd	ra,24(sp)
    80002720:	00813823          	sd	s0,16(sp)
    80002724:	00913423          	sd	s1,8(sp)
    80002728:	02010413          	addi	s0,sp,32
    8000272c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002730:	01000513          	li	a0,16
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	6e0080e7          	jalr	1760(ra) # 80001e14 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000273c:	00953023          	sd	s1,0(a0)
    80002740:	00053423          	sd	zero,8(a0)
        if (tail)
    80002744:	00008797          	auipc	a5,0x8
    80002748:	9947b783          	ld	a5,-1644(a5) # 8000a0d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000274c:	02078263          	beqz	a5,80002770 <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next = elem;
    80002750:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002754:	00008797          	auipc	a5,0x8
    80002758:	98a7b223          	sd	a0,-1660(a5) # 8000a0d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
}
    8000275c:	01813083          	ld	ra,24(sp)
    80002760:	01013403          	ld	s0,16(sp)
    80002764:	00813483          	ld	s1,8(sp)
    80002768:	02010113          	addi	sp,sp,32
    8000276c:	00008067          	ret
            head = tail = elem;
    80002770:	00008797          	auipc	a5,0x8
    80002774:	96078793          	addi	a5,a5,-1696 # 8000a0d0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002778:	00a7b423          	sd	a0,8(a5)
    8000277c:	00a7b023          	sd	a0,0(a5)
    80002780:	fddff06f          	j	8000275c <_ZN9Scheduler3putEP3PCB+0x44>

0000000080002784 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    80002794:	000105b7          	lui	a1,0x10
    80002798:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000279c:	00100513          	li	a0,1
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	ed0080e7          	jalr	-304(ra) # 80002670 <_Z41__static_initialization_and_destruction_0ii>
    800027a8:	00813083          	ld	ra,8(sp)
    800027ac:	00013403          	ld	s0,0(sp)
    800027b0:	01010113          	addi	sp,sp,16
    800027b4:	00008067          	ret

00000000800027b8 <_ZN15MemoryAllocator9tryToJoinEP9MemStruct>:

#include "../h/MemoryAllocator.hpp"

MemStruct *MemoryAllocator::freeMemHead = nullptr;

void MemoryAllocator::tryToJoin(MemStruct *curr) {
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00813423          	sd	s0,8(sp)
    800027c0:	01010413          	addi	s0,sp,16
    //ovo nece moci bas ovako, nacrtaj pa otkucaj
    //znaci nemoj da zuris sa kodom!!
    if (curr && curr->next && (char *) curr + curr->size >= (char *) curr->next) {
    800027c4:	02050a63          	beqz	a0,800027f8 <_ZN15MemoryAllocator9tryToJoinEP9MemStruct+0x40>
    800027c8:	00853783          	ld	a5,8(a0)
    800027cc:	02078663          	beqz	a5,800027f8 <_ZN15MemoryAllocator9tryToJoinEP9MemStruct+0x40>
    800027d0:	01053703          	ld	a4,16(a0)
    800027d4:	00e506b3          	add	a3,a0,a4
    800027d8:	02f6e063          	bltu	a3,a5,800027f8 <_ZN15MemoryAllocator9tryToJoinEP9MemStruct+0x40>
        //a sta ako je >?
        curr->size += curr->next->size;
    800027dc:	0107b683          	ld	a3,16(a5)
    800027e0:	00d70733          	add	a4,a4,a3
    800027e4:	00e53823          	sd	a4,16(a0)
        curr->next = curr->next->next;
    800027e8:	0087b783          	ld	a5,8(a5)
    800027ec:	00f53423          	sd	a5,8(a0)
        if (curr->next) curr->next->prev = curr;
    800027f0:	00078463          	beqz	a5,800027f8 <_ZN15MemoryAllocator9tryToJoinEP9MemStruct+0x40>
    800027f4:	00a7b023          	sd	a0,0(a5)
    }
}
    800027f8:	00813403          	ld	s0,8(sp)
    800027fc:	01010113          	addi	sp,sp,16
    80002800:	00008067          	ret

0000000080002804 <_ZN15MemoryAllocator8mem_initEv>:

void MemoryAllocator::mem_init() {
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00813423          	sd	s0,8(sp)
    8000280c:	01010413          	addi	s0,sp,16
    if (!freeMemHead) {
    80002810:	00008797          	auipc	a5,0x8
    80002814:	8d07b783          	ld	a5,-1840(a5) # 8000a0e0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002818:	00078863          	beqz	a5,80002828 <_ZN15MemoryAllocator8mem_initEv+0x24>
        freeMemHead->next = freeMemHead->prev = nullptr;
        freeMemHead->allocated = false;
        freeMemHead->size = (char *) HEAP_END_ADDR - (char *) HEAP_START_ADDR - sizeof(MemStruct);
    }
    //MEM_BLOCK_SIZE jedan za zaglavlje!
}
    8000281c:	00813403          	ld	s0,8(sp)
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret
        freeMemHead = (MemStruct *) HEAP_START_ADDR;
    80002828:	00008697          	auipc	a3,0x8
    8000282c:	8206b683          	ld	a3,-2016(a3) # 8000a048 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002830:	0006b703          	ld	a4,0(a3)
    80002834:	00008797          	auipc	a5,0x8
    80002838:	8ac78793          	addi	a5,a5,-1876 # 8000a0e0 <_ZN15MemoryAllocator11freeMemHeadE>
    8000283c:	00e7b023          	sd	a4,0(a5)
        freeMemHead->next = freeMemHead->prev = nullptr;
    80002840:	00073023          	sd	zero,0(a4)
    80002844:	0007b703          	ld	a4,0(a5)
    80002848:	00073423          	sd	zero,8(a4)
        freeMemHead->allocated = false;
    8000284c:	00070c23          	sb	zero,24(a4)
        freeMemHead->size = (char *) HEAP_END_ADDR - (char *) HEAP_START_ADDR - sizeof(MemStruct);
    80002850:	00008797          	auipc	a5,0x8
    80002854:	8187b783          	ld	a5,-2024(a5) # 8000a068 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002858:	0007b783          	ld	a5,0(a5)
    8000285c:	0006b683          	ld	a3,0(a3)
    80002860:	40d787b3          	sub	a5,a5,a3
    80002864:	fe078793          	addi	a5,a5,-32
    80002868:	00f73823          	sd	a5,16(a4)
}
    8000286c:	fb1ff06f          	j	8000281c <_ZN15MemoryAllocator8mem_initEv+0x18>

0000000080002870 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size) {
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00813423          	sd	s0,8(sp)
    80002878:	01010413          	addi	s0,sp,16
    if (size <= 0) return nullptr;
    8000287c:	0c050063          	beqz	a0,8000293c <_ZN15MemoryAllocator9mem_allocEm+0xcc>
    80002880:	00050793          	mv	a5,a0


    for (MemStruct *curr = freeMemHead; curr != nullptr; curr = curr->next) {
    80002884:	00008517          	auipc	a0,0x8
    80002888:	85c53503          	ld	a0,-1956(a0) # 8000a0e0 <_ZN15MemoryAllocator11freeMemHeadE>
    8000288c:	04050e63          	beqz	a0,800028e8 <_ZN15MemoryAllocator9mem_allocEm+0x78>
        if (curr->size < size) continue; //nema dovoljno prostora, trazim dalje
    80002890:	01053703          	ld	a4,16(a0)
    80002894:	06f76063          	bltu	a4,a5,800028f4 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        //nasao:
        //sta treba da spakujem tu, nista samo alociram prostor
        if (curr->size == size) {
    80002898:	06f70263          	beq	a4,a5,800028fc <_ZN15MemoryAllocator9mem_allocEm+0x8c>
            else freeMemHead = curr->next;
            if (curr->next) curr->next->prev = curr->prev;
            // curr->size += curr->size - size;
            //saljem ceo curr->size
        } else {
            MemStruct *newFragment = (MemStruct *) ((char *) curr + size);
    8000289c:	00f50733          	add	a4,a0,a5
            if (curr->prev) curr->prev->next = newFragment;
    800028a0:	00053683          	ld	a3,0(a0)
    800028a4:	08068663          	beqz	a3,80002930 <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800028a8:	00e6b423          	sd	a4,8(a3)
            else freeMemHead = newFragment;
            if (curr->next) curr->next->prev = newFragment;
    800028ac:	00853683          	ld	a3,8(a0)
    800028b0:	00068463          	beqz	a3,800028b8 <_ZN15MemoryAllocator9mem_allocEm+0x48>
    800028b4:	00e6b023          	sd	a4,0(a3)
            newFragment->prev = curr->prev;
    800028b8:	00053683          	ld	a3,0(a0)
    800028bc:	00d73023          	sd	a3,0(a4)
            newFragment->next = curr->next;
    800028c0:	00853683          	ld	a3,8(a0)
    800028c4:	00d73423          	sd	a3,8(a4)
            newFragment->size = curr->size - size;
    800028c8:	01053683          	ld	a3,16(a0)
    800028cc:	40f686b3          	sub	a3,a3,a5
    800028d0:	00d73823          	sd	a3,16(a4)
            curr->size = size;
    800028d4:	00f53823          	sd	a5,16(a0)
        }
        curr->next = curr->prev = nullptr;
    800028d8:	00053023          	sd	zero,0(a0)
    800028dc:	00053423          	sd	zero,8(a0)
        curr->allocated = true;
    800028e0:	00100793          	li	a5,1
    800028e4:	00f50c23          	sb	a5,24(a0)
        return curr;
    }
    return nullptr;
}
    800028e8:	00813403          	ld	s0,8(sp)
    800028ec:	01010113          	addi	sp,sp,16
    800028f0:	00008067          	ret
    for (MemStruct *curr = freeMemHead; curr != nullptr; curr = curr->next) {
    800028f4:	00853503          	ld	a0,8(a0)
    800028f8:	f95ff06f          	j	8000288c <_ZN15MemoryAllocator9mem_allocEm+0x1c>
            if (curr->prev) curr->prev->next = curr->next;
    800028fc:	00053783          	ld	a5,0(a0)
    80002900:	02078063          	beqz	a5,80002920 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    80002904:	00853703          	ld	a4,8(a0)
    80002908:	00e7b423          	sd	a4,8(a5)
            if (curr->next) curr->next->prev = curr->prev;
    8000290c:	00853783          	ld	a5,8(a0)
    80002910:	fc0784e3          	beqz	a5,800028d8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
    80002914:	00053703          	ld	a4,0(a0)
    80002918:	00e7b023          	sd	a4,0(a5)
    8000291c:	fbdff06f          	j	800028d8 <_ZN15MemoryAllocator9mem_allocEm+0x68>
            else freeMemHead = curr->next;
    80002920:	00853783          	ld	a5,8(a0)
    80002924:	00007717          	auipc	a4,0x7
    80002928:	7af73e23          	sd	a5,1980(a4) # 8000a0e0 <_ZN15MemoryAllocator11freeMemHeadE>
    8000292c:	fe1ff06f          	j	8000290c <_ZN15MemoryAllocator9mem_allocEm+0x9c>
            else freeMemHead = newFragment;
    80002930:	00007697          	auipc	a3,0x7
    80002934:	7ae6b823          	sd	a4,1968(a3) # 8000a0e0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002938:	f75ff06f          	j	800028ac <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if (size <= 0) return nullptr;
    8000293c:	00000513          	li	a0,0
    80002940:	fa9ff06f          	j	800028e8 <_ZN15MemoryAllocator9mem_allocEm+0x78>

0000000080002944 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void *p) {
    if (p == nullptr || freeMemHead == nullptr) return -1;
    80002944:	0c050663          	beqz	a0,80002a10 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
int MemoryAllocator::mem_free(void *p) {
    80002948:	fe010113          	addi	sp,sp,-32
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	01213023          	sd	s2,0(sp)
    8000295c:	02010413          	addi	s0,sp,32
    80002960:	00050913          	mv	s2,a0
    if (p == nullptr || freeMemHead == nullptr) return -1;
    80002964:	00007497          	auipc	s1,0x7
    80002968:	77c4b483          	ld	s1,1916(s1) # 8000a0e0 <_ZN15MemoryAllocator11freeMemHeadE>
    8000296c:	0a048663          	beqz	s1,80002a18 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    MemStruct *toRelease = (MemStruct *) (char *) p;
    if (!toRelease->allocated) return -2;
    80002970:	01854783          	lbu	a5,24(a0)
    80002974:	0a078663          	beqz	a5,80002a20 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    toRelease->allocated = false;
    80002978:	00050c23          	sb	zero,24(a0)
    //gde se nalazi cvor?

    if (toRelease < freeMemHead) {
    8000297c:	08957063          	bgeu	a0,s1,800029fc <_ZN15MemoryAllocator8mem_freeEPv+0xb8>
        //ubacujem pre glave:
        toRelease->next = freeMemHead;
    80002980:	00953423          	sd	s1,8(a0)
        toRelease->prev = nullptr;
    80002984:	00053023          	sd	zero,0(a0)
        freeMemHead->prev = toRelease;
    80002988:	00007797          	auipc	a5,0x7
    8000298c:	75878793          	addi	a5,a5,1880 # 8000a0e0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002990:	0007b703          	ld	a4,0(a5)
    80002994:	00a73023          	sd	a0,0(a4)
        freeMemHead = toRelease;
    80002998:	00a7b023          	sd	a0,0(a5)
        tryToJoin(toRelease);
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	e1c080e7          	jalr	-484(ra) # 800027b8 <_ZN15MemoryAllocator9tryToJoinEP9MemStruct>
                tryToJoin(toRelease);
                tryToJoin(toRelease->prev);
            }
        }
    }
    return 0;
    800029a4:	00000513          	li	a0,0
    800029a8:	0840006f          	j	80002a2c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
            if (curr->next == nullptr && toRelease > curr) {
    800029ac:	0524fe63          	bgeu	s1,s2,80002a08 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
                toRelease->next = curr->next;
    800029b0:	00f93423          	sd	a5,8(s2)
                toRelease->prev = curr;
    800029b4:	00993023          	sd	s1,0(s2)
                curr->next = toRelease;
    800029b8:	0124b423          	sd	s2,8(s1)
                tryToJoin(curr);
    800029bc:	00048513          	mv	a0,s1
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	df8080e7          	jalr	-520(ra) # 800027b8 <_ZN15MemoryAllocator9tryToJoinEP9MemStruct>
    800029c8:	0300006f          	j	800029f8 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
                toRelease->next = curr;
    800029cc:	00993423          	sd	s1,8(s2)
                toRelease->prev = curr->prev;
    800029d0:	0004b783          	ld	a5,0(s1)
    800029d4:	00f93023          	sd	a5,0(s2)
                curr->prev->next = toRelease;
    800029d8:	0127b423          	sd	s2,8(a5)
                curr->prev = toRelease;
    800029dc:	0124b023          	sd	s2,0(s1)
                tryToJoin(toRelease);
    800029e0:	00090513          	mv	a0,s2
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	dd4080e7          	jalr	-556(ra) # 800027b8 <_ZN15MemoryAllocator9tryToJoinEP9MemStruct>
                tryToJoin(toRelease->prev);
    800029ec:	00093503          	ld	a0,0(s2)
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	dc8080e7          	jalr	-568(ra) # 800027b8 <_ZN15MemoryAllocator9tryToJoinEP9MemStruct>
        for (MemStruct *curr = freeMemHead; curr != nullptr; curr = curr->next) {
    800029f8:	0084b483          	ld	s1,8(s1)
    800029fc:	02048663          	beqz	s1,80002a28 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
            if (curr->next == nullptr && toRelease > curr) {
    80002a00:	0084b783          	ld	a5,8(s1)
    80002a04:	fa0784e3          	beqz	a5,800029ac <_ZN15MemoryAllocator8mem_freeEPv+0x68>
            } else if (toRelease < curr) {
    80002a08:	fe9978e3          	bgeu	s2,s1,800029f8 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80002a0c:	fc1ff06f          	j	800029cc <_ZN15MemoryAllocator8mem_freeEPv+0x88>
    if (p == nullptr || freeMemHead == nullptr) return -1;
    80002a10:	fff00513          	li	a0,-1
}
    80002a14:	00008067          	ret
    if (p == nullptr || freeMemHead == nullptr) return -1;
    80002a18:	fff00513          	li	a0,-1
    80002a1c:	0100006f          	j	80002a2c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    if (!toRelease->allocated) return -2;
    80002a20:	ffe00513          	li	a0,-2
    80002a24:	0080006f          	j	80002a2c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    return 0;
    80002a28:	00000513          	li	a0,0
}
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	01013403          	ld	s0,16(sp)
    80002a34:	00813483          	ld	s1,8(sp)
    80002a38:	00013903          	ld	s2,0(sp)
    80002a3c:	02010113          	addi	sp,sp,32
    80002a40:	00008067          	ret

0000000080002a44 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002a44:	fe010113          	addi	sp,sp,-32
    80002a48:	00113c23          	sd	ra,24(sp)
    80002a4c:	00813823          	sd	s0,16(sp)
    80002a50:	00913423          	sd	s1,8(sp)
    80002a54:	01213023          	sd	s2,0(sp)
    80002a58:	02010413          	addi	s0,sp,32
    80002a5c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002a60:	00000913          	li	s2,0
    80002a64:	00c0006f          	j	80002a70 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 97) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	b94080e7          	jalr	-1132(ra) # 800015fc <_Z15thread_dispatchv>
    while ((key = getc()) != 97) {
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	ca4080e7          	jalr	-860(ra) # 80001714 <_Z4getcv>
    80002a78:	0005059b          	sext.w	a1,a0
    80002a7c:	06100793          	li	a5,97
    80002a80:	02f58a63          	beq	a1,a5,80002ab4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002a84:	0084b503          	ld	a0,8(s1)
    80002a88:	00003097          	auipc	ra,0x3
    80002a8c:	fbc080e7          	jalr	-68(ra) # 80005a44 <_ZN6Buffer3putEi>
        i++;
    80002a90:	0019071b          	addiw	a4,s2,1
    80002a94:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002a98:	0004a683          	lw	a3,0(s1)
    80002a9c:	0026979b          	slliw	a5,a3,0x2
    80002aa0:	00d787bb          	addw	a5,a5,a3
    80002aa4:	0017979b          	slliw	a5,a5,0x1
    80002aa8:	02f767bb          	remw	a5,a4,a5
    80002aac:	fc0792e3          	bnez	a5,80002a70 <_ZL16producerKeyboardPv+0x2c>
    80002ab0:	fb9ff06f          	j	80002a68 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002ab4:	00100793          	li	a5,1
    80002ab8:	00007717          	auipc	a4,0x7
    80002abc:	62f72823          	sw	a5,1584(a4) # 8000a0e8 <_ZL9threadEnd>
    data->buffer->put('!');
    80002ac0:	02100593          	li	a1,33
    80002ac4:	0084b503          	ld	a0,8(s1)
    80002ac8:	00003097          	auipc	ra,0x3
    80002acc:	f7c080e7          	jalr	-132(ra) # 80005a44 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002ad0:	0104b503          	ld	a0,16(s1)
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	be0080e7          	jalr	-1056(ra) # 800016b4 <_Z10sem_signalP4_sem>
}
    80002adc:	01813083          	ld	ra,24(sp)
    80002ae0:	01013403          	ld	s0,16(sp)
    80002ae4:	00813483          	ld	s1,8(sp)
    80002ae8:	00013903          	ld	s2,0(sp)
    80002aec:	02010113          	addi	sp,sp,32
    80002af0:	00008067          	ret

0000000080002af4 <_ZL8producerPv>:

static void producer(void *arg) {
    80002af4:	fe010113          	addi	sp,sp,-32
    80002af8:	00113c23          	sd	ra,24(sp)
    80002afc:	00813823          	sd	s0,16(sp)
    80002b00:	00913423          	sd	s1,8(sp)
    80002b04:	01213023          	sd	s2,0(sp)
    80002b08:	02010413          	addi	s0,sp,32
    80002b0c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002b10:	00000913          	li	s2,0
    80002b14:	00c0006f          	j	80002b20 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	ae4080e7          	jalr	-1308(ra) # 800015fc <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002b20:	00007797          	auipc	a5,0x7
    80002b24:	5c87a783          	lw	a5,1480(a5) # 8000a0e8 <_ZL9threadEnd>
    80002b28:	02079e63          	bnez	a5,80002b64 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002b2c:	0004a583          	lw	a1,0(s1)
    80002b30:	0305859b          	addiw	a1,a1,48
    80002b34:	0084b503          	ld	a0,8(s1)
    80002b38:	00003097          	auipc	ra,0x3
    80002b3c:	f0c080e7          	jalr	-244(ra) # 80005a44 <_ZN6Buffer3putEi>
        i++;
    80002b40:	0019071b          	addiw	a4,s2,1
    80002b44:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002b48:	0004a683          	lw	a3,0(s1)
    80002b4c:	0026979b          	slliw	a5,a3,0x2
    80002b50:	00d787bb          	addw	a5,a5,a3
    80002b54:	0017979b          	slliw	a5,a5,0x1
    80002b58:	02f767bb          	remw	a5,a4,a5
    80002b5c:	fc0792e3          	bnez	a5,80002b20 <_ZL8producerPv+0x2c>
    80002b60:	fb9ff06f          	j	80002b18 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002b64:	0104b503          	ld	a0,16(s1)
    80002b68:	fffff097          	auipc	ra,0xfffff
    80002b6c:	b4c080e7          	jalr	-1204(ra) # 800016b4 <_Z10sem_signalP4_sem>
}
    80002b70:	01813083          	ld	ra,24(sp)
    80002b74:	01013403          	ld	s0,16(sp)
    80002b78:	00813483          	ld	s1,8(sp)
    80002b7c:	00013903          	ld	s2,0(sp)
    80002b80:	02010113          	addi	sp,sp,32
    80002b84:	00008067          	ret

0000000080002b88 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002b88:	fd010113          	addi	sp,sp,-48
    80002b8c:	02113423          	sd	ra,40(sp)
    80002b90:	02813023          	sd	s0,32(sp)
    80002b94:	00913c23          	sd	s1,24(sp)
    80002b98:	01213823          	sd	s2,16(sp)
    80002b9c:	01313423          	sd	s3,8(sp)
    80002ba0:	03010413          	addi	s0,sp,48
    80002ba4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ba8:	00000993          	li	s3,0
    80002bac:	01c0006f          	j	80002bc8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002bb0:	fffff097          	auipc	ra,0xfffff
    80002bb4:	a4c080e7          	jalr	-1460(ra) # 800015fc <_Z15thread_dispatchv>
    80002bb8:	0500006f          	j	80002c08 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002bbc:	00a00513          	li	a0,10
    80002bc0:	fffff097          	auipc	ra,0xfffff
    80002bc4:	b80080e7          	jalr	-1152(ra) # 80001740 <_Z4putcc>
    while (!threadEnd) {
    80002bc8:	00007797          	auipc	a5,0x7
    80002bcc:	5207a783          	lw	a5,1312(a5) # 8000a0e8 <_ZL9threadEnd>
    80002bd0:	06079063          	bnez	a5,80002c30 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002bd4:	00893503          	ld	a0,8(s2)
    80002bd8:	00003097          	auipc	ra,0x3
    80002bdc:	efc080e7          	jalr	-260(ra) # 80005ad4 <_ZN6Buffer3getEv>
        i++;
    80002be0:	0019849b          	addiw	s1,s3,1
    80002be4:	0004899b          	sext.w	s3,s1
        putc(key);
    80002be8:	0ff57513          	andi	a0,a0,255
    80002bec:	fffff097          	auipc	ra,0xfffff
    80002bf0:	b54080e7          	jalr	-1196(ra) # 80001740 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002bf4:	00092703          	lw	a4,0(s2)
    80002bf8:	0027179b          	slliw	a5,a4,0x2
    80002bfc:	00e787bb          	addw	a5,a5,a4
    80002c00:	02f4e7bb          	remw	a5,s1,a5
    80002c04:	fa0786e3          	beqz	a5,80002bb0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002c08:	05000793          	li	a5,80
    80002c0c:	02f4e4bb          	remw	s1,s1,a5
    80002c10:	fa049ce3          	bnez	s1,80002bc8 <_ZL8consumerPv+0x40>
    80002c14:	fa9ff06f          	j	80002bbc <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002c18:	00893503          	ld	a0,8(s2)
    80002c1c:	00003097          	auipc	ra,0x3
    80002c20:	eb8080e7          	jalr	-328(ra) # 80005ad4 <_ZN6Buffer3getEv>
        putc(key);
    80002c24:	0ff57513          	andi	a0,a0,255
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	b18080e7          	jalr	-1256(ra) # 80001740 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002c30:	00893503          	ld	a0,8(s2)
    80002c34:	00003097          	auipc	ra,0x3
    80002c38:	f2c080e7          	jalr	-212(ra) # 80005b60 <_ZN6Buffer6getCntEv>
    80002c3c:	fca04ee3          	bgtz	a0,80002c18 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002c40:	01093503          	ld	a0,16(s2)
    80002c44:	fffff097          	auipc	ra,0xfffff
    80002c48:	a70080e7          	jalr	-1424(ra) # 800016b4 <_Z10sem_signalP4_sem>
}
    80002c4c:	02813083          	ld	ra,40(sp)
    80002c50:	02013403          	ld	s0,32(sp)
    80002c54:	01813483          	ld	s1,24(sp)
    80002c58:	01013903          	ld	s2,16(sp)
    80002c5c:	00813983          	ld	s3,8(sp)
    80002c60:	03010113          	addi	sp,sp,48
    80002c64:	00008067          	ret

0000000080002c68 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002c68:	f9010113          	addi	sp,sp,-112
    80002c6c:	06113423          	sd	ra,104(sp)
    80002c70:	06813023          	sd	s0,96(sp)
    80002c74:	04913c23          	sd	s1,88(sp)
    80002c78:	05213823          	sd	s2,80(sp)
    80002c7c:	05313423          	sd	s3,72(sp)
    80002c80:	05413023          	sd	s4,64(sp)
    80002c84:	03513c23          	sd	s5,56(sp)
    80002c88:	03613823          	sd	s6,48(sp)
    80002c8c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002c90:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002c94:	00005517          	auipc	a0,0x5
    80002c98:	43c50513          	addi	a0,a0,1084 # 800080d0 <CONSOLE_STATUS+0xc0>
    80002c9c:	00002097          	auipc	ra,0x2
    80002ca0:	e74080e7          	jalr	-396(ra) # 80004b10 <_Z11printStringPKc>
    getString(input, 30);
    80002ca4:	01e00593          	li	a1,30
    80002ca8:	fa040493          	addi	s1,s0,-96
    80002cac:	00048513          	mv	a0,s1
    80002cb0:	00002097          	auipc	ra,0x2
    80002cb4:	ee8080e7          	jalr	-280(ra) # 80004b98 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002cb8:	00048513          	mv	a0,s1
    80002cbc:	00002097          	auipc	ra,0x2
    80002cc0:	fb4080e7          	jalr	-76(ra) # 80004c70 <_Z11stringToIntPKc>
    80002cc4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002cc8:	00005517          	auipc	a0,0x5
    80002ccc:	42850513          	addi	a0,a0,1064 # 800080f0 <CONSOLE_STATUS+0xe0>
    80002cd0:	00002097          	auipc	ra,0x2
    80002cd4:	e40080e7          	jalr	-448(ra) # 80004b10 <_Z11printStringPKc>
    getString(input, 30);
    80002cd8:	01e00593          	li	a1,30
    80002cdc:	00048513          	mv	a0,s1
    80002ce0:	00002097          	auipc	ra,0x2
    80002ce4:	eb8080e7          	jalr	-328(ra) # 80004b98 <_Z9getStringPci>
    n = stringToInt(input);
    80002ce8:	00048513          	mv	a0,s1
    80002cec:	00002097          	auipc	ra,0x2
    80002cf0:	f84080e7          	jalr	-124(ra) # 80004c70 <_Z11stringToIntPKc>
    80002cf4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80002cf8:	00005517          	auipc	a0,0x5
    80002cfc:	41850513          	addi	a0,a0,1048 # 80008110 <CONSOLE_STATUS+0x100>
    80002d00:	00002097          	auipc	ra,0x2
    80002d04:	e10080e7          	jalr	-496(ra) # 80004b10 <_Z11printStringPKc>
    printInt(threadNum);
    80002d08:	00000613          	li	a2,0
    80002d0c:	00a00593          	li	a1,10
    80002d10:	00090513          	mv	a0,s2
    80002d14:	00002097          	auipc	ra,0x2
    80002d18:	fac080e7          	jalr	-84(ra) # 80004cc0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80002d1c:	00005517          	auipc	a0,0x5
    80002d20:	40c50513          	addi	a0,a0,1036 # 80008128 <CONSOLE_STATUS+0x118>
    80002d24:	00002097          	auipc	ra,0x2
    80002d28:	dec080e7          	jalr	-532(ra) # 80004b10 <_Z11printStringPKc>
    printInt(n);
    80002d2c:	00000613          	li	a2,0
    80002d30:	00a00593          	li	a1,10
    80002d34:	00048513          	mv	a0,s1
    80002d38:	00002097          	auipc	ra,0x2
    80002d3c:	f88080e7          	jalr	-120(ra) # 80004cc0 <_Z8printIntiii>
    printString(".\n");
    80002d40:	00005517          	auipc	a0,0x5
    80002d44:	40050513          	addi	a0,a0,1024 # 80008140 <CONSOLE_STATUS+0x130>
    80002d48:	00002097          	auipc	ra,0x2
    80002d4c:	dc8080e7          	jalr	-568(ra) # 80004b10 <_Z11printStringPKc>
    if (threadNum > n) {
    80002d50:	0324c463          	blt	s1,s2,80002d78 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002d54:	03205c63          	blez	s2,80002d8c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002d58:	03800513          	li	a0,56
    80002d5c:	fffff097          	auipc	ra,0xfffff
    80002d60:	0b8080e7          	jalr	184(ra) # 80001e14 <_Znwm>
    80002d64:	00050a13          	mv	s4,a0
    80002d68:	00048593          	mv	a1,s1
    80002d6c:	00003097          	auipc	ra,0x3
    80002d70:	c3c080e7          	jalr	-964(ra) # 800059a8 <_ZN6BufferC1Ei>
    80002d74:	0300006f          	j	80002da4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002d78:	00005517          	auipc	a0,0x5
    80002d7c:	3d050513          	addi	a0,a0,976 # 80008148 <CONSOLE_STATUS+0x138>
    80002d80:	00002097          	auipc	ra,0x2
    80002d84:	d90080e7          	jalr	-624(ra) # 80004b10 <_Z11printStringPKc>
        return;
    80002d88:	0140006f          	j	80002d9c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002d8c:	00005517          	auipc	a0,0x5
    80002d90:	3fc50513          	addi	a0,a0,1020 # 80008188 <CONSOLE_STATUS+0x178>
    80002d94:	00002097          	auipc	ra,0x2
    80002d98:	d7c080e7          	jalr	-644(ra) # 80004b10 <_Z11printStringPKc>
        return;
    80002d9c:	000b0113          	mv	sp,s6
    80002da0:	1500006f          	j	80002ef0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002da4:	00000593          	li	a1,0
    80002da8:	00007517          	auipc	a0,0x7
    80002dac:	34850513          	addi	a0,a0,840 # 8000a0f0 <_ZL10waitForAll>
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	870080e7          	jalr	-1936(ra) # 80001620 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80002db8:	00391793          	slli	a5,s2,0x3
    80002dbc:	00f78793          	addi	a5,a5,15
    80002dc0:	ff07f793          	andi	a5,a5,-16
    80002dc4:	40f10133          	sub	sp,sp,a5
    80002dc8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002dcc:	0019071b          	addiw	a4,s2,1
    80002dd0:	00171793          	slli	a5,a4,0x1
    80002dd4:	00e787b3          	add	a5,a5,a4
    80002dd8:	00379793          	slli	a5,a5,0x3
    80002ddc:	00f78793          	addi	a5,a5,15
    80002de0:	ff07f793          	andi	a5,a5,-16
    80002de4:	40f10133          	sub	sp,sp,a5
    80002de8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002dec:	00191613          	slli	a2,s2,0x1
    80002df0:	012607b3          	add	a5,a2,s2
    80002df4:	00379793          	slli	a5,a5,0x3
    80002df8:	00f987b3          	add	a5,s3,a5
    80002dfc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002e00:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002e04:	00007717          	auipc	a4,0x7
    80002e08:	2ec73703          	ld	a4,748(a4) # 8000a0f0 <_ZL10waitForAll>
    80002e0c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002e10:	00078613          	mv	a2,a5
    80002e14:	00000597          	auipc	a1,0x0
    80002e18:	d7458593          	addi	a1,a1,-652 # 80002b88 <_ZL8consumerPv>
    80002e1c:	f9840513          	addi	a0,s0,-104
    80002e20:	ffffe097          	auipc	ra,0xffffe
    80002e24:	730080e7          	jalr	1840(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002e28:	00000493          	li	s1,0
    80002e2c:	0280006f          	j	80002e54 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002e30:	00000597          	auipc	a1,0x0
    80002e34:	c1458593          	addi	a1,a1,-1004 # 80002a44 <_ZL16producerKeyboardPv>
                      data + i);
    80002e38:	00179613          	slli	a2,a5,0x1
    80002e3c:	00f60633          	add	a2,a2,a5
    80002e40:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002e44:	00c98633          	add	a2,s3,a2
    80002e48:	ffffe097          	auipc	ra,0xffffe
    80002e4c:	708080e7          	jalr	1800(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002e50:	0014849b          	addiw	s1,s1,1
    80002e54:	0524d263          	bge	s1,s2,80002e98 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002e58:	00149793          	slli	a5,s1,0x1
    80002e5c:	009787b3          	add	a5,a5,s1
    80002e60:	00379793          	slli	a5,a5,0x3
    80002e64:	00f987b3          	add	a5,s3,a5
    80002e68:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002e6c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002e70:	00007717          	auipc	a4,0x7
    80002e74:	28073703          	ld	a4,640(a4) # 8000a0f0 <_ZL10waitForAll>
    80002e78:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002e7c:	00048793          	mv	a5,s1
    80002e80:	00349513          	slli	a0,s1,0x3
    80002e84:	00aa8533          	add	a0,s5,a0
    80002e88:	fa9054e3          	blez	s1,80002e30 <_Z22producerConsumer_C_APIv+0x1c8>
    80002e8c:	00000597          	auipc	a1,0x0
    80002e90:	c6858593          	addi	a1,a1,-920 # 80002af4 <_ZL8producerPv>
    80002e94:	fa5ff06f          	j	80002e38 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002e98:	ffffe097          	auipc	ra,0xffffe
    80002e9c:	764080e7          	jalr	1892(ra) # 800015fc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002ea0:	00000493          	li	s1,0
    80002ea4:	00994e63          	blt	s2,s1,80002ec0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002ea8:	00007517          	auipc	a0,0x7
    80002eac:	24853503          	ld	a0,584(a0) # 8000a0f0 <_ZL10waitForAll>
    80002eb0:	ffffe097          	auipc	ra,0xffffe
    80002eb4:	7d4080e7          	jalr	2004(ra) # 80001684 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80002eb8:	0014849b          	addiw	s1,s1,1
    80002ebc:	fe9ff06f          	j	80002ea4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002ec0:	00007517          	auipc	a0,0x7
    80002ec4:	23053503          	ld	a0,560(a0) # 8000a0f0 <_ZL10waitForAll>
    80002ec8:	ffffe097          	auipc	ra,0xffffe
    80002ecc:	78c080e7          	jalr	1932(ra) # 80001654 <_Z9sem_closeP4_sem>
    delete buffer;
    80002ed0:	000a0e63          	beqz	s4,80002eec <_Z22producerConsumer_C_APIv+0x284>
    80002ed4:	000a0513          	mv	a0,s4
    80002ed8:	00003097          	auipc	ra,0x3
    80002edc:	d10080e7          	jalr	-752(ra) # 80005be8 <_ZN6BufferD1Ev>
    80002ee0:	000a0513          	mv	a0,s4
    80002ee4:	fffff097          	auipc	ra,0xfffff
    80002ee8:	f58080e7          	jalr	-168(ra) # 80001e3c <_ZdlPv>
    80002eec:	000b0113          	mv	sp,s6
}
    80002ef0:	f9040113          	addi	sp,s0,-112
    80002ef4:	06813083          	ld	ra,104(sp)
    80002ef8:	06013403          	ld	s0,96(sp)
    80002efc:	05813483          	ld	s1,88(sp)
    80002f00:	05013903          	ld	s2,80(sp)
    80002f04:	04813983          	ld	s3,72(sp)
    80002f08:	04013a03          	ld	s4,64(sp)
    80002f0c:	03813a83          	ld	s5,56(sp)
    80002f10:	03013b03          	ld	s6,48(sp)
    80002f14:	07010113          	addi	sp,sp,112
    80002f18:	00008067          	ret
    80002f1c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002f20:	000a0513          	mv	a0,s4
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	f18080e7          	jalr	-232(ra) # 80001e3c <_ZdlPv>
    80002f2c:	00048513          	mv	a0,s1
    80002f30:	00008097          	auipc	ra,0x8
    80002f34:	2b8080e7          	jalr	696(ra) # 8000b1e8 <_Unwind_Resume>

0000000080002f38 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002f38:	fe010113          	addi	sp,sp,-32
    80002f3c:	00113c23          	sd	ra,24(sp)
    80002f40:	00813823          	sd	s0,16(sp)
    80002f44:	00913423          	sd	s1,8(sp)
    80002f48:	01213023          	sd	s2,0(sp)
    80002f4c:	02010413          	addi	s0,sp,32
    80002f50:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002f54:	00100793          	li	a5,1
    80002f58:	02a7f863          	bgeu	a5,a0,80002f88 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002f5c:	00a00793          	li	a5,10
    80002f60:	02f577b3          	remu	a5,a0,a5
    80002f64:	02078e63          	beqz	a5,80002fa0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002f68:	fff48513          	addi	a0,s1,-1
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	fcc080e7          	jalr	-52(ra) # 80002f38 <_ZL9fibonaccim>
    80002f74:	00050913          	mv	s2,a0
    80002f78:	ffe48513          	addi	a0,s1,-2
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	fbc080e7          	jalr	-68(ra) # 80002f38 <_ZL9fibonaccim>
    80002f84:	00a90533          	add	a0,s2,a0
}
    80002f88:	01813083          	ld	ra,24(sp)
    80002f8c:	01013403          	ld	s0,16(sp)
    80002f90:	00813483          	ld	s1,8(sp)
    80002f94:	00013903          	ld	s2,0(sp)
    80002f98:	02010113          	addi	sp,sp,32
    80002f9c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002fa0:	ffffe097          	auipc	ra,0xffffe
    80002fa4:	65c080e7          	jalr	1628(ra) # 800015fc <_Z15thread_dispatchv>
    80002fa8:	fc1ff06f          	j	80002f68 <_ZL9fibonaccim+0x30>

0000000080002fac <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002fac:	fe010113          	addi	sp,sp,-32
    80002fb0:	00113c23          	sd	ra,24(sp)
    80002fb4:	00813823          	sd	s0,16(sp)
    80002fb8:	00913423          	sd	s1,8(sp)
    80002fbc:	01213023          	sd	s2,0(sp)
    80002fc0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002fc4:	00000913          	li	s2,0
    80002fc8:	0380006f          	j	80003000 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) {
            }
            thread_dispatch();
    80002fcc:	ffffe097          	auipc	ra,0xffffe
    80002fd0:	630080e7          	jalr	1584(ra) # 800015fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002fd4:	00148493          	addi	s1,s1,1
    80002fd8:	000027b7          	lui	a5,0x2
    80002fdc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002fe0:	0097ee63          	bltu	a5,s1,80002ffc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) {
    80002fe4:	00000713          	li	a4,0
    80002fe8:	000077b7          	lui	a5,0x7
    80002fec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ff0:	fce7eee3          	bltu	a5,a4,80002fcc <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002ff4:	00170713          	addi	a4,a4,1
    80002ff8:	ff1ff06f          	j	80002fe8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002ffc:	00190913          	addi	s2,s2,1
    80003000:	00900793          	li	a5,9
    80003004:	0527e063          	bltu	a5,s2,80003044 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i=");
    80003008:	00005517          	auipc	a0,0x5
    8000300c:	1b050513          	addi	a0,a0,432 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80003010:	00002097          	auipc	ra,0x2
    80003014:	b00080e7          	jalr	-1280(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    80003018:	00000613          	li	a2,0
    8000301c:	00a00593          	li	a1,10
    80003020:	0009051b          	sext.w	a0,s2
    80003024:	00002097          	auipc	ra,0x2
    80003028:	c9c080e7          	jalr	-868(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    8000302c:	00005517          	auipc	a0,0x5
    80003030:	40c50513          	addi	a0,a0,1036 # 80008438 <CONSOLE_STATUS+0x428>
    80003034:	00002097          	auipc	ra,0x2
    80003038:	adc080e7          	jalr	-1316(ra) # 80004b10 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000303c:	00000493          	li	s1,0
    80003040:	f99ff06f          	j	80002fd8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003044:	00005517          	auipc	a0,0x5
    80003048:	17c50513          	addi	a0,a0,380 # 800081c0 <CONSOLE_STATUS+0x1b0>
    8000304c:	00002097          	auipc	ra,0x2
    80003050:	ac4080e7          	jalr	-1340(ra) # 80004b10 <_Z11printStringPKc>
    finishedA = true;
    80003054:	00100793          	li	a5,1
    80003058:	00007717          	auipc	a4,0x7
    8000305c:	0af70023          	sb	a5,160(a4) # 8000a0f8 <_ZL9finishedA>
}
    80003060:	01813083          	ld	ra,24(sp)
    80003064:	01013403          	ld	s0,16(sp)
    80003068:	00813483          	ld	s1,8(sp)
    8000306c:	00013903          	ld	s2,0(sp)
    80003070:	02010113          	addi	sp,sp,32
    80003074:	00008067          	ret

0000000080003078 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003078:	fe010113          	addi	sp,sp,-32
    8000307c:	00113c23          	sd	ra,24(sp)
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	01213023          	sd	s2,0(sp)
    8000308c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003090:	00000913          	li	s2,0
    80003094:	0380006f          	j	800030cc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) {
            }
            thread_dispatch();
    80003098:	ffffe097          	auipc	ra,0xffffe
    8000309c:	564080e7          	jalr	1380(ra) # 800015fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800030a0:	00148493          	addi	s1,s1,1
    800030a4:	000027b7          	lui	a5,0x2
    800030a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800030ac:	0097ee63          	bltu	a5,s1,800030c8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) {
    800030b0:	00000713          	li	a4,0
    800030b4:	000077b7          	lui	a5,0x7
    800030b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800030bc:	fce7eee3          	bltu	a5,a4,80003098 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800030c0:	00170713          	addi	a4,a4,1
    800030c4:	ff1ff06f          	j	800030b4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800030c8:	00190913          	addi	s2,s2,1
    800030cc:	00f00793          	li	a5,15
    800030d0:	0527e063          	bltu	a5,s2,80003110 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i=");
    800030d4:	00005517          	auipc	a0,0x5
    800030d8:	0fc50513          	addi	a0,a0,252 # 800081d0 <CONSOLE_STATUS+0x1c0>
    800030dc:	00002097          	auipc	ra,0x2
    800030e0:	a34080e7          	jalr	-1484(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    800030e4:	00000613          	li	a2,0
    800030e8:	00a00593          	li	a1,10
    800030ec:	0009051b          	sext.w	a0,s2
    800030f0:	00002097          	auipc	ra,0x2
    800030f4:	bd0080e7          	jalr	-1072(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    800030f8:	00005517          	auipc	a0,0x5
    800030fc:	34050513          	addi	a0,a0,832 # 80008438 <CONSOLE_STATUS+0x428>
    80003100:	00002097          	auipc	ra,0x2
    80003104:	a10080e7          	jalr	-1520(ra) # 80004b10 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003108:	00000493          	li	s1,0
    8000310c:	f99ff06f          	j	800030a4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003110:	00005517          	auipc	a0,0x5
    80003114:	0c850513          	addi	a0,a0,200 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80003118:	00002097          	auipc	ra,0x2
    8000311c:	9f8080e7          	jalr	-1544(ra) # 80004b10 <_Z11printStringPKc>
    finishedB = true;
    80003120:	00100793          	li	a5,1
    80003124:	00007717          	auipc	a4,0x7
    80003128:	fcf70aa3          	sb	a5,-43(a4) # 8000a0f9 <_ZL9finishedB>
    thread_dispatch();
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	4d0080e7          	jalr	1232(ra) # 800015fc <_Z15thread_dispatchv>
}
    80003134:	01813083          	ld	ra,24(sp)
    80003138:	01013403          	ld	s0,16(sp)
    8000313c:	00813483          	ld	s1,8(sp)
    80003140:	00013903          	ld	s2,0(sp)
    80003144:	02010113          	addi	sp,sp,32
    80003148:	00008067          	ret

000000008000314c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000314c:	fe010113          	addi	sp,sp,-32
    80003150:	00113c23          	sd	ra,24(sp)
    80003154:	00813823          	sd	s0,16(sp)
    80003158:	00913423          	sd	s1,8(sp)
    8000315c:	01213023          	sd	s2,0(sp)
    80003160:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003164:	00000493          	li	s1,0
    80003168:	0400006f          	j	800031a8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i=");
    8000316c:	00005517          	auipc	a0,0x5
    80003170:	07c50513          	addi	a0,a0,124 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80003174:	00002097          	auipc	ra,0x2
    80003178:	99c080e7          	jalr	-1636(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    8000317c:	00000613          	li	a2,0
    80003180:	00a00593          	li	a1,10
    80003184:	00048513          	mv	a0,s1
    80003188:	00002097          	auipc	ra,0x2
    8000318c:	b38080e7          	jalr	-1224(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80003190:	00005517          	auipc	a0,0x5
    80003194:	2a850513          	addi	a0,a0,680 # 80008438 <CONSOLE_STATUS+0x428>
    80003198:	00002097          	auipc	ra,0x2
    8000319c:	978080e7          	jalr	-1672(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800031a0:	0014849b          	addiw	s1,s1,1
    800031a4:	0ff4f493          	andi	s1,s1,255
    800031a8:	00200793          	li	a5,2
    800031ac:	fc97f0e3          	bgeu	a5,s1,8000316c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800031b0:	00005517          	auipc	a0,0x5
    800031b4:	04050513          	addi	a0,a0,64 # 800081f0 <CONSOLE_STATUS+0x1e0>
    800031b8:	00002097          	auipc	ra,0x2
    800031bc:	958080e7          	jalr	-1704(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800031c0:	00700313          	li	t1,7
    thread_dispatch();
    800031c4:	ffffe097          	auipc	ra,0xffffe
    800031c8:	438080e7          	jalr	1080(ra) # 800015fc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800031cc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800031d0:	00005517          	auipc	a0,0x5
    800031d4:	03050513          	addi	a0,a0,48 # 80008200 <CONSOLE_STATUS+0x1f0>
    800031d8:	00002097          	auipc	ra,0x2
    800031dc:	938080e7          	jalr	-1736(ra) # 80004b10 <_Z11printStringPKc>
    printInt(t1);
    800031e0:	00000613          	li	a2,0
    800031e4:	00a00593          	li	a1,10
    800031e8:	0009051b          	sext.w	a0,s2
    800031ec:	00002097          	auipc	ra,0x2
    800031f0:	ad4080e7          	jalr	-1324(ra) # 80004cc0 <_Z8printIntiii>
    printString("\n");
    800031f4:	00005517          	auipc	a0,0x5
    800031f8:	24450513          	addi	a0,a0,580 # 80008438 <CONSOLE_STATUS+0x428>
    800031fc:	00002097          	auipc	ra,0x2
    80003200:	914080e7          	jalr	-1772(ra) # 80004b10 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003204:	00c00513          	li	a0,12
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	d30080e7          	jalr	-720(ra) # 80002f38 <_ZL9fibonaccim>
    80003210:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80003214:	00005517          	auipc	a0,0x5
    80003218:	ff450513          	addi	a0,a0,-12 # 80008208 <CONSOLE_STATUS+0x1f8>
    8000321c:	00002097          	auipc	ra,0x2
    80003220:	8f4080e7          	jalr	-1804(ra) # 80004b10 <_Z11printStringPKc>
    printInt(result);
    80003224:	00000613          	li	a2,0
    80003228:	00a00593          	li	a1,10
    8000322c:	0009051b          	sext.w	a0,s2
    80003230:	00002097          	auipc	ra,0x2
    80003234:	a90080e7          	jalr	-1392(ra) # 80004cc0 <_Z8printIntiii>
    printString("\n");
    80003238:	00005517          	auipc	a0,0x5
    8000323c:	20050513          	addi	a0,a0,512 # 80008438 <CONSOLE_STATUS+0x428>
    80003240:	00002097          	auipc	ra,0x2
    80003244:	8d0080e7          	jalr	-1840(ra) # 80004b10 <_Z11printStringPKc>
    80003248:	0400006f          	j	80003288 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i=");
    8000324c:	00005517          	auipc	a0,0x5
    80003250:	f9c50513          	addi	a0,a0,-100 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80003254:	00002097          	auipc	ra,0x2
    80003258:	8bc080e7          	jalr	-1860(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    8000325c:	00000613          	li	a2,0
    80003260:	00a00593          	li	a1,10
    80003264:	00048513          	mv	a0,s1
    80003268:	00002097          	auipc	ra,0x2
    8000326c:	a58080e7          	jalr	-1448(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80003270:	00005517          	auipc	a0,0x5
    80003274:	1c850513          	addi	a0,a0,456 # 80008438 <CONSOLE_STATUS+0x428>
    80003278:	00002097          	auipc	ra,0x2
    8000327c:	898080e7          	jalr	-1896(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003280:	0014849b          	addiw	s1,s1,1
    80003284:	0ff4f493          	andi	s1,s1,255
    80003288:	00500793          	li	a5,5
    8000328c:	fc97f0e3          	bgeu	a5,s1,8000324c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003290:	00005517          	auipc	a0,0x5
    80003294:	f3050513          	addi	a0,a0,-208 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80003298:	00002097          	auipc	ra,0x2
    8000329c:	878080e7          	jalr	-1928(ra) # 80004b10 <_Z11printStringPKc>
    finishedC = true;
    800032a0:	00100793          	li	a5,1
    800032a4:	00007717          	auipc	a4,0x7
    800032a8:	e4f70b23          	sb	a5,-426(a4) # 8000a0fa <_ZL9finishedC>
    thread_dispatch();
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	350080e7          	jalr	848(ra) # 800015fc <_Z15thread_dispatchv>
}
    800032b4:	01813083          	ld	ra,24(sp)
    800032b8:	01013403          	ld	s0,16(sp)
    800032bc:	00813483          	ld	s1,8(sp)
    800032c0:	00013903          	ld	s2,0(sp)
    800032c4:	02010113          	addi	sp,sp,32
    800032c8:	00008067          	ret

00000000800032cc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void *arg) {
    800032cc:	fe010113          	addi	sp,sp,-32
    800032d0:	00113c23          	sd	ra,24(sp)
    800032d4:	00813823          	sd	s0,16(sp)
    800032d8:	00913423          	sd	s1,8(sp)
    800032dc:	01213023          	sd	s2,0(sp)
    800032e0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800032e4:	00a00493          	li	s1,10
    800032e8:	0400006f          	j	80003328 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i=");
    800032ec:	00005517          	auipc	a0,0x5
    800032f0:	f2c50513          	addi	a0,a0,-212 # 80008218 <CONSOLE_STATUS+0x208>
    800032f4:	00002097          	auipc	ra,0x2
    800032f8:	81c080e7          	jalr	-2020(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    800032fc:	00000613          	li	a2,0
    80003300:	00a00593          	li	a1,10
    80003304:	00048513          	mv	a0,s1
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	9b8080e7          	jalr	-1608(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80003310:	00005517          	auipc	a0,0x5
    80003314:	12850513          	addi	a0,a0,296 # 80008438 <CONSOLE_STATUS+0x428>
    80003318:	00001097          	auipc	ra,0x1
    8000331c:	7f8080e7          	jalr	2040(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003320:	0014849b          	addiw	s1,s1,1
    80003324:	0ff4f493          	andi	s1,s1,255
    80003328:	00c00793          	li	a5,12
    8000332c:	fc97f0e3          	bgeu	a5,s1,800032ec <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003330:	00005517          	auipc	a0,0x5
    80003334:	ef050513          	addi	a0,a0,-272 # 80008220 <CONSOLE_STATUS+0x210>
    80003338:	00001097          	auipc	ra,0x1
    8000333c:	7d8080e7          	jalr	2008(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003340:	00500313          	li	t1,5
    thread_dispatch();
    80003344:	ffffe097          	auipc	ra,0xffffe
    80003348:	2b8080e7          	jalr	696(ra) # 800015fc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000334c:	01000513          	li	a0,16
    80003350:	00000097          	auipc	ra,0x0
    80003354:	be8080e7          	jalr	-1048(ra) # 80002f38 <_ZL9fibonaccim>
    80003358:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000335c:	00005517          	auipc	a0,0x5
    80003360:	ed450513          	addi	a0,a0,-300 # 80008230 <CONSOLE_STATUS+0x220>
    80003364:	00001097          	auipc	ra,0x1
    80003368:	7ac080e7          	jalr	1964(ra) # 80004b10 <_Z11printStringPKc>
    printInt(result);
    8000336c:	00000613          	li	a2,0
    80003370:	00a00593          	li	a1,10
    80003374:	0009051b          	sext.w	a0,s2
    80003378:	00002097          	auipc	ra,0x2
    8000337c:	948080e7          	jalr	-1720(ra) # 80004cc0 <_Z8printIntiii>
    printString("\n");
    80003380:	00005517          	auipc	a0,0x5
    80003384:	0b850513          	addi	a0,a0,184 # 80008438 <CONSOLE_STATUS+0x428>
    80003388:	00001097          	auipc	ra,0x1
    8000338c:	788080e7          	jalr	1928(ra) # 80004b10 <_Z11printStringPKc>
    80003390:	0400006f          	j	800033d0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i=");
    80003394:	00005517          	auipc	a0,0x5
    80003398:	e8450513          	addi	a0,a0,-380 # 80008218 <CONSOLE_STATUS+0x208>
    8000339c:	00001097          	auipc	ra,0x1
    800033a0:	774080e7          	jalr	1908(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    800033a4:	00000613          	li	a2,0
    800033a8:	00a00593          	li	a1,10
    800033ac:	00048513          	mv	a0,s1
    800033b0:	00002097          	auipc	ra,0x2
    800033b4:	910080e7          	jalr	-1776(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    800033b8:	00005517          	auipc	a0,0x5
    800033bc:	08050513          	addi	a0,a0,128 # 80008438 <CONSOLE_STATUS+0x428>
    800033c0:	00001097          	auipc	ra,0x1
    800033c4:	750080e7          	jalr	1872(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800033c8:	0014849b          	addiw	s1,s1,1
    800033cc:	0ff4f493          	andi	s1,s1,255
    800033d0:	00f00793          	li	a5,15
    800033d4:	fc97f0e3          	bgeu	a5,s1,80003394 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800033d8:	00005517          	auipc	a0,0x5
    800033dc:	e6850513          	addi	a0,a0,-408 # 80008240 <CONSOLE_STATUS+0x230>
    800033e0:	00001097          	auipc	ra,0x1
    800033e4:	730080e7          	jalr	1840(ra) # 80004b10 <_Z11printStringPKc>
    finishedD = true;
    800033e8:	00100793          	li	a5,1
    800033ec:	00007717          	auipc	a4,0x7
    800033f0:	d0f707a3          	sb	a5,-753(a4) # 8000a0fb <_ZL9finishedD>
    thread_dispatch();
    800033f4:	ffffe097          	auipc	ra,0xffffe
    800033f8:	208080e7          	jalr	520(ra) # 800015fc <_Z15thread_dispatchv>
}
    800033fc:	01813083          	ld	ra,24(sp)
    80003400:	01013403          	ld	s0,16(sp)
    80003404:	00813483          	ld	s1,8(sp)
    80003408:	00013903          	ld	s2,0(sp)
    8000340c:	02010113          	addi	sp,sp,32
    80003410:	00008067          	ret

0000000080003414 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003414:	fc010113          	addi	sp,sp,-64
    80003418:	02113c23          	sd	ra,56(sp)
    8000341c:	02813823          	sd	s0,48(sp)
    80003420:	02913423          	sd	s1,40(sp)
    80003424:	04010413          	addi	s0,sp,64
    Thread *threads[4];

    threads[0] = new WorkerA();
    80003428:	02000513          	li	a0,32
    8000342c:	fffff097          	auipc	ra,0xfffff
    80003430:	9e8080e7          	jalr	-1560(ra) # 80001e14 <_Znwm>

    static int sleep(time_t);

protected:
    Thread() {
        this->body = thread_wrapper;
    80003434:	00000497          	auipc	s1,0x0
    80003438:	19448493          	addi	s1,s1,404 # 800035c8 <_ZN6Thread14thread_wrapperEPv>
    8000343c:	00953823          	sd	s1,16(a0)
        this->arg = this;
    80003440:	00a53c23          	sd	a0,24(a0)
    WorkerA(): Thread() {
    80003444:	00007797          	auipc	a5,0x7
    80003448:	abc78793          	addi	a5,a5,-1348 # 80009f00 <_ZTV7WorkerA+0x10>
    8000344c:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    80003450:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80003454:	00005517          	auipc	a0,0x5
    80003458:	dfc50513          	addi	a0,a0,-516 # 80008250 <CONSOLE_STATUS+0x240>
    8000345c:	00001097          	auipc	ra,0x1
    80003460:	6b4080e7          	jalr	1716(ra) # 80004b10 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003464:	02000513          	li	a0,32
    80003468:	fffff097          	auipc	ra,0xfffff
    8000346c:	9ac080e7          	jalr	-1620(ra) # 80001e14 <_Znwm>
        this->body = thread_wrapper;
    80003470:	00953823          	sd	s1,16(a0)
        this->arg = this;
    80003474:	00a53c23          	sd	a0,24(a0)
    WorkerB(): Thread() {
    80003478:	00007797          	auipc	a5,0x7
    8000347c:	ab078793          	addi	a5,a5,-1360 # 80009f28 <_ZTV7WorkerB+0x10>
    80003480:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    80003484:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80003488:	00005517          	auipc	a0,0x5
    8000348c:	de050513          	addi	a0,a0,-544 # 80008268 <CONSOLE_STATUS+0x258>
    80003490:	00001097          	auipc	ra,0x1
    80003494:	680080e7          	jalr	1664(ra) # 80004b10 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003498:	02000513          	li	a0,32
    8000349c:	fffff097          	auipc	ra,0xfffff
    800034a0:	978080e7          	jalr	-1672(ra) # 80001e14 <_Znwm>
        this->body = thread_wrapper;
    800034a4:	00953823          	sd	s1,16(a0)
        this->arg = this;
    800034a8:	00a53c23          	sd	a0,24(a0)
    WorkerC(): Thread() {
    800034ac:	00007797          	auipc	a5,0x7
    800034b0:	aa478793          	addi	a5,a5,-1372 # 80009f50 <_ZTV7WorkerC+0x10>
    800034b4:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    800034b8:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800034bc:	00005517          	auipc	a0,0x5
    800034c0:	dc450513          	addi	a0,a0,-572 # 80008280 <CONSOLE_STATUS+0x270>
    800034c4:	00001097          	auipc	ra,0x1
    800034c8:	64c080e7          	jalr	1612(ra) # 80004b10 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800034cc:	02000513          	li	a0,32
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	944080e7          	jalr	-1724(ra) # 80001e14 <_Znwm>
        this->body = thread_wrapper;
    800034d8:	00953823          	sd	s1,16(a0)
        this->arg = this;
    800034dc:	00a53c23          	sd	a0,24(a0)
    WorkerD(): Thread() {
    800034e0:	00007797          	auipc	a5,0x7
    800034e4:	a9878793          	addi	a5,a5,-1384 # 80009f78 <_ZTV7WorkerD+0x10>
    800034e8:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    800034ec:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800034f0:	00005517          	auipc	a0,0x5
    800034f4:	da850513          	addi	a0,a0,-600 # 80008298 <CONSOLE_STATUS+0x288>
    800034f8:	00001097          	auipc	ra,0x1
    800034fc:	618080e7          	jalr	1560(ra) # 80004b10 <_Z11printStringPKc>

    for (int i = 0; i < 4; i++) {
    80003500:	00000493          	li	s1,0
    80003504:	00300793          	li	a5,3
    80003508:	0297cc63          	blt	a5,s1,80003540 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000350c:	00349793          	slli	a5,s1,0x3
    80003510:	fe040713          	addi	a4,s0,-32
    80003514:	00f707b3          	add	a5,a4,a5
    80003518:	fe07b503          	ld	a0,-32(a5)
        thread_create(&this->myHandle, body, arg);
    8000351c:	01853603          	ld	a2,24(a0)
    80003520:	01053583          	ld	a1,16(a0)
    80003524:	00850513          	addi	a0,a0,8
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	028080e7          	jalr	40(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    for (int i = 0; i < 4; i++) {
    80003530:	0014849b          	addiw	s1,s1,1
    80003534:	fd1ff06f          	j	80003504 <_Z20Threads_CPP_API_testv+0xf0>
        thread_dispatch();
    80003538:	ffffe097          	auipc	ra,0xffffe
    8000353c:	0c4080e7          	jalr	196(ra) # 800015fc <_Z15thread_dispatchv>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003540:	00007797          	auipc	a5,0x7
    80003544:	bb87c783          	lbu	a5,-1096(a5) # 8000a0f8 <_ZL9finishedA>
    80003548:	fe0788e3          	beqz	a5,80003538 <_Z20Threads_CPP_API_testv+0x124>
    8000354c:	00007797          	auipc	a5,0x7
    80003550:	bad7c783          	lbu	a5,-1107(a5) # 8000a0f9 <_ZL9finishedB>
    80003554:	fe0782e3          	beqz	a5,80003538 <_Z20Threads_CPP_API_testv+0x124>
    80003558:	00007797          	auipc	a5,0x7
    8000355c:	ba27c783          	lbu	a5,-1118(a5) # 8000a0fa <_ZL9finishedC>
    80003560:	fc078ce3          	beqz	a5,80003538 <_Z20Threads_CPP_API_testv+0x124>
    80003564:	00007797          	auipc	a5,0x7
    80003568:	b977c783          	lbu	a5,-1129(a5) # 8000a0fb <_ZL9finishedD>
    8000356c:	fc0786e3          	beqz	a5,80003538 <_Z20Threads_CPP_API_testv+0x124>
    80003570:	fc040493          	addi	s1,s0,-64
    80003574:	0080006f          	j	8000357c <_Z20Threads_CPP_API_testv+0x168>
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    80003578:	00848493          	addi	s1,s1,8
    8000357c:	fe040793          	addi	a5,s0,-32
    80003580:	00f48e63          	beq	s1,a5,8000359c <_Z20Threads_CPP_API_testv+0x188>
    80003584:	0004b503          	ld	a0,0(s1)
    80003588:	fe0508e3          	beqz	a0,80003578 <_Z20Threads_CPP_API_testv+0x164>
    8000358c:	00053783          	ld	a5,0(a0)
    80003590:	0087b783          	ld	a5,8(a5)
    80003594:	000780e7          	jalr	a5
    80003598:	fe1ff06f          	j	80003578 <_Z20Threads_CPP_API_testv+0x164>
}
    8000359c:	03813083          	ld	ra,56(sp)
    800035a0:	03013403          	ld	s0,48(sp)
    800035a4:	02813483          	ld	s1,40(sp)
    800035a8:	04010113          	addi	sp,sp,64
    800035ac:	00008067          	ret

00000000800035b0 <_ZN6Thread3runEv>:
    }

    virtual void run() {
    800035b0:	ff010113          	addi	sp,sp,-16
    800035b4:	00813423          	sd	s0,8(sp)
    800035b8:	01010413          	addi	s0,sp,16
    }
    800035bc:	00813403          	ld	s0,8(sp)
    800035c0:	01010113          	addi	sp,sp,16
    800035c4:	00008067          	ret

00000000800035c8 <_ZN6Thread14thread_wrapperEPv>:
private:
    thread_t myHandle;

    void (*body)(void *);

    static void thread_wrapper(void *t) {
    800035c8:	ff010113          	addi	sp,sp,-16
    800035cc:	00113423          	sd	ra,8(sp)
    800035d0:	00813023          	sd	s0,0(sp)
    800035d4:	01010413          	addi	s0,sp,16
        ((Thread *) t)->run();
    800035d8:	00053783          	ld	a5,0(a0)
    800035dc:	0107b783          	ld	a5,16(a5)
    800035e0:	000780e7          	jalr	a5
    }
    800035e4:	00813083          	ld	ra,8(sp)
    800035e8:	00013403          	ld	s0,0(sp)
    800035ec:	01010113          	addi	sp,sp,16
    800035f0:	00008067          	ret

00000000800035f4 <_ZN6ThreadD1Ev>:
    virtual ~Thread() {
    800035f4:	fe010113          	addi	sp,sp,-32
    800035f8:	00113c23          	sd	ra,24(sp)
    800035fc:	00813823          	sd	s0,16(sp)
    80003600:	00913423          	sd	s1,8(sp)
    80003604:	02010413          	addi	s0,sp,32
    80003608:	00007797          	auipc	a5,0x7
    8000360c:	8d078793          	addi	a5,a5,-1840 # 80009ed8 <_ZTV6Thread+0x10>
    80003610:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80003614:	00853783          	ld	a5,8(a0)

    static void dispatch();

    threadState getState() const { return state; }

    void setState(threadState st) { state = st; }
    80003618:	00500713          	li	a4,5
    8000361c:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    80003620:	00853483          	ld	s1,8(a0)
    80003624:	02048063          	beqz	s1,80003644 <_ZN6ThreadD1Ev+0x50>
    ~PCB() { delete[] stack; }
    80003628:	0184b503          	ld	a0,24(s1)
    8000362c:	00050663          	beqz	a0,80003638 <_ZN6ThreadD1Ev+0x44>
    80003630:	fffff097          	auipc	ra,0xfffff
    80003634:	85c080e7          	jalr	-1956(ra) # 80001e8c <_ZdaPv>
    80003638:	00048513          	mv	a0,s1
    8000363c:	fffff097          	auipc	ra,0xfffff
    80003640:	800080e7          	jalr	-2048(ra) # 80001e3c <_ZdlPv>
    }
    80003644:	01813083          	ld	ra,24(sp)
    80003648:	01013403          	ld	s0,16(sp)
    8000364c:	00813483          	ld	s1,8(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret

0000000080003658 <_ZN7WorkerAD1Ev>:
class WorkerA : public Thread {
    80003658:	fe010113          	addi	sp,sp,-32
    8000365c:	00113c23          	sd	ra,24(sp)
    80003660:	00813823          	sd	s0,16(sp)
    80003664:	00913423          	sd	s1,8(sp)
    80003668:	02010413          	addi	s0,sp,32
    virtual ~Thread() {
    8000366c:	00007797          	auipc	a5,0x7
    80003670:	86c78793          	addi	a5,a5,-1940 # 80009ed8 <_ZTV6Thread+0x10>
    80003674:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80003678:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    8000367c:	00500713          	li	a4,5
    80003680:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    80003684:	00853483          	ld	s1,8(a0)
    80003688:	02048063          	beqz	s1,800036a8 <_ZN7WorkerAD1Ev+0x50>
    ~PCB() { delete[] stack; }
    8000368c:	0184b503          	ld	a0,24(s1)
    80003690:	00050663          	beqz	a0,8000369c <_ZN7WorkerAD1Ev+0x44>
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	7f8080e7          	jalr	2040(ra) # 80001e8c <_ZdaPv>
    8000369c:	00048513          	mv	a0,s1
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	79c080e7          	jalr	1948(ra) # 80001e3c <_ZdlPv>
    800036a8:	01813083          	ld	ra,24(sp)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	00813483          	ld	s1,8(sp)
    800036b4:	02010113          	addi	sp,sp,32
    800036b8:	00008067          	ret

00000000800036bc <_ZN7WorkerDD1Ev>:
class WorkerD : public Thread {
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00113c23          	sd	ra,24(sp)
    800036c4:	00813823          	sd	s0,16(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	02010413          	addi	s0,sp,32
    virtual ~Thread() {
    800036d0:	00007797          	auipc	a5,0x7
    800036d4:	80878793          	addi	a5,a5,-2040 # 80009ed8 <_ZTV6Thread+0x10>
    800036d8:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    800036dc:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    800036e0:	00500713          	li	a4,5
    800036e4:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    800036e8:	00853483          	ld	s1,8(a0)
    800036ec:	02048063          	beqz	s1,8000370c <_ZN7WorkerDD1Ev+0x50>
    ~PCB() { delete[] stack; }
    800036f0:	0184b503          	ld	a0,24(s1)
    800036f4:	00050663          	beqz	a0,80003700 <_ZN7WorkerDD1Ev+0x44>
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	794080e7          	jalr	1940(ra) # 80001e8c <_ZdaPv>
    80003700:	00048513          	mv	a0,s1
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	738080e7          	jalr	1848(ra) # 80001e3c <_ZdlPv>
    8000370c:	01813083          	ld	ra,24(sp)
    80003710:	01013403          	ld	s0,16(sp)
    80003714:	00813483          	ld	s1,8(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret

0000000080003720 <_ZN7WorkerCD1Ev>:
class WorkerC : public Thread {
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00113c23          	sd	ra,24(sp)
    80003728:	00813823          	sd	s0,16(sp)
    8000372c:	00913423          	sd	s1,8(sp)
    80003730:	02010413          	addi	s0,sp,32
    virtual ~Thread() {
    80003734:	00006797          	auipc	a5,0x6
    80003738:	7a478793          	addi	a5,a5,1956 # 80009ed8 <_ZTV6Thread+0x10>
    8000373c:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80003740:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    80003744:	00500713          	li	a4,5
    80003748:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    8000374c:	00853483          	ld	s1,8(a0)
    80003750:	02048063          	beqz	s1,80003770 <_ZN7WorkerCD1Ev+0x50>
    ~PCB() { delete[] stack; }
    80003754:	0184b503          	ld	a0,24(s1)
    80003758:	00050663          	beqz	a0,80003764 <_ZN7WorkerCD1Ev+0x44>
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	730080e7          	jalr	1840(ra) # 80001e8c <_ZdaPv>
    80003764:	00048513          	mv	a0,s1
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	6d4080e7          	jalr	1748(ra) # 80001e3c <_ZdlPv>
    80003770:	01813083          	ld	ra,24(sp)
    80003774:	01013403          	ld	s0,16(sp)
    80003778:	00813483          	ld	s1,8(sp)
    8000377c:	02010113          	addi	sp,sp,32
    80003780:	00008067          	ret

0000000080003784 <_ZN7WorkerBD1Ev>:
class WorkerB : public Thread {
    80003784:	fe010113          	addi	sp,sp,-32
    80003788:	00113c23          	sd	ra,24(sp)
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00913423          	sd	s1,8(sp)
    80003794:	02010413          	addi	s0,sp,32
    virtual ~Thread() {
    80003798:	00006797          	auipc	a5,0x6
    8000379c:	74078793          	addi	a5,a5,1856 # 80009ed8 <_ZTV6Thread+0x10>
    800037a0:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    800037a4:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    800037a8:	00500713          	li	a4,5
    800037ac:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    800037b0:	00853483          	ld	s1,8(a0)
    800037b4:	02048063          	beqz	s1,800037d4 <_ZN7WorkerBD1Ev+0x50>
    ~PCB() { delete[] stack; }
    800037b8:	0184b503          	ld	a0,24(s1)
    800037bc:	00050663          	beqz	a0,800037c8 <_ZN7WorkerBD1Ev+0x44>
    800037c0:	ffffe097          	auipc	ra,0xffffe
    800037c4:	6cc080e7          	jalr	1740(ra) # 80001e8c <_ZdaPv>
    800037c8:	00048513          	mv	a0,s1
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	670080e7          	jalr	1648(ra) # 80001e3c <_ZdlPv>
    800037d4:	01813083          	ld	ra,24(sp)
    800037d8:	01013403          	ld	s0,16(sp)
    800037dc:	00813483          	ld	s1,8(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret

00000000800037e8 <_ZN6ThreadD0Ev>:
    virtual ~Thread() {
    800037e8:	fe010113          	addi	sp,sp,-32
    800037ec:	00113c23          	sd	ra,24(sp)
    800037f0:	00813823          	sd	s0,16(sp)
    800037f4:	00913423          	sd	s1,8(sp)
    800037f8:	01213023          	sd	s2,0(sp)
    800037fc:	02010413          	addi	s0,sp,32
    80003800:	00050493          	mv	s1,a0
    80003804:	00006797          	auipc	a5,0x6
    80003808:	6d478793          	addi	a5,a5,1748 # 80009ed8 <_ZTV6Thread+0x10>
    8000380c:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80003810:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    80003814:	00500713          	li	a4,5
    80003818:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    8000381c:	00853903          	ld	s2,8(a0)
    80003820:	02090063          	beqz	s2,80003840 <_ZN6ThreadD0Ev+0x58>
    ~PCB() { delete[] stack; }
    80003824:	01893503          	ld	a0,24(s2)
    80003828:	00050663          	beqz	a0,80003834 <_ZN6ThreadD0Ev+0x4c>
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	660080e7          	jalr	1632(ra) # 80001e8c <_ZdaPv>
    80003834:	00090513          	mv	a0,s2
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	604080e7          	jalr	1540(ra) # 80001e3c <_ZdlPv>
    }
    80003840:	00048513          	mv	a0,s1
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	5f8080e7          	jalr	1528(ra) # 80001e3c <_ZdlPv>
    8000384c:	01813083          	ld	ra,24(sp)
    80003850:	01013403          	ld	s0,16(sp)
    80003854:	00813483          	ld	s1,8(sp)
    80003858:	00013903          	ld	s2,0(sp)
    8000385c:	02010113          	addi	sp,sp,32
    80003860:	00008067          	ret

0000000080003864 <_ZN7WorkerBD0Ev>:
    80003864:	fe010113          	addi	sp,sp,-32
    80003868:	00113c23          	sd	ra,24(sp)
    8000386c:	00813823          	sd	s0,16(sp)
    80003870:	00913423          	sd	s1,8(sp)
    80003874:	01213023          	sd	s2,0(sp)
    80003878:	02010413          	addi	s0,sp,32
    8000387c:	00050493          	mv	s1,a0
    virtual ~Thread() {
    80003880:	00006797          	auipc	a5,0x6
    80003884:	65878793          	addi	a5,a5,1624 # 80009ed8 <_ZTV6Thread+0x10>
    80003888:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    8000388c:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    80003890:	00500713          	li	a4,5
    80003894:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    80003898:	00853903          	ld	s2,8(a0)
    8000389c:	02090063          	beqz	s2,800038bc <_ZN7WorkerBD0Ev+0x58>
    ~PCB() { delete[] stack; }
    800038a0:	01893503          	ld	a0,24(s2)
    800038a4:	00050663          	beqz	a0,800038b0 <_ZN7WorkerBD0Ev+0x4c>
    800038a8:	ffffe097          	auipc	ra,0xffffe
    800038ac:	5e4080e7          	jalr	1508(ra) # 80001e8c <_ZdaPv>
    800038b0:	00090513          	mv	a0,s2
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	588080e7          	jalr	1416(ra) # 80001e3c <_ZdlPv>
    800038bc:	00048513          	mv	a0,s1
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	57c080e7          	jalr	1404(ra) # 80001e3c <_ZdlPv>
    800038c8:	01813083          	ld	ra,24(sp)
    800038cc:	01013403          	ld	s0,16(sp)
    800038d0:	00813483          	ld	s1,8(sp)
    800038d4:	00013903          	ld	s2,0(sp)
    800038d8:	02010113          	addi	sp,sp,32
    800038dc:	00008067          	ret

00000000800038e0 <_ZN7WorkerAD0Ev>:
class WorkerA : public Thread {
    800038e0:	fe010113          	addi	sp,sp,-32
    800038e4:	00113c23          	sd	ra,24(sp)
    800038e8:	00813823          	sd	s0,16(sp)
    800038ec:	00913423          	sd	s1,8(sp)
    800038f0:	01213023          	sd	s2,0(sp)
    800038f4:	02010413          	addi	s0,sp,32
    800038f8:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800038fc:	00006797          	auipc	a5,0x6
    80003900:	5dc78793          	addi	a5,a5,1500 # 80009ed8 <_ZTV6Thread+0x10>
    80003904:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80003908:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    8000390c:	00500713          	li	a4,5
    80003910:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    80003914:	00853903          	ld	s2,8(a0)
    80003918:	02090063          	beqz	s2,80003938 <_ZN7WorkerAD0Ev+0x58>
    ~PCB() { delete[] stack; }
    8000391c:	01893503          	ld	a0,24(s2)
    80003920:	00050663          	beqz	a0,8000392c <_ZN7WorkerAD0Ev+0x4c>
    80003924:	ffffe097          	auipc	ra,0xffffe
    80003928:	568080e7          	jalr	1384(ra) # 80001e8c <_ZdaPv>
    8000392c:	00090513          	mv	a0,s2
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	50c080e7          	jalr	1292(ra) # 80001e3c <_ZdlPv>
    80003938:	00048513          	mv	a0,s1
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	500080e7          	jalr	1280(ra) # 80001e3c <_ZdlPv>
    80003944:	01813083          	ld	ra,24(sp)
    80003948:	01013403          	ld	s0,16(sp)
    8000394c:	00813483          	ld	s1,8(sp)
    80003950:	00013903          	ld	s2,0(sp)
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret

000000008000395c <_ZN7WorkerDD0Ev>:
class WorkerD : public Thread {
    8000395c:	fe010113          	addi	sp,sp,-32
    80003960:	00113c23          	sd	ra,24(sp)
    80003964:	00813823          	sd	s0,16(sp)
    80003968:	00913423          	sd	s1,8(sp)
    8000396c:	01213023          	sd	s2,0(sp)
    80003970:	02010413          	addi	s0,sp,32
    80003974:	00050493          	mv	s1,a0
    virtual ~Thread() {
    80003978:	00006797          	auipc	a5,0x6
    8000397c:	56078793          	addi	a5,a5,1376 # 80009ed8 <_ZTV6Thread+0x10>
    80003980:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80003984:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    80003988:	00500713          	li	a4,5
    8000398c:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    80003990:	00853903          	ld	s2,8(a0)
    80003994:	02090063          	beqz	s2,800039b4 <_ZN7WorkerDD0Ev+0x58>
    ~PCB() { delete[] stack; }
    80003998:	01893503          	ld	a0,24(s2)
    8000399c:	00050663          	beqz	a0,800039a8 <_ZN7WorkerDD0Ev+0x4c>
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	4ec080e7          	jalr	1260(ra) # 80001e8c <_ZdaPv>
    800039a8:	00090513          	mv	a0,s2
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	490080e7          	jalr	1168(ra) # 80001e3c <_ZdlPv>
    800039b4:	00048513          	mv	a0,s1
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	484080e7          	jalr	1156(ra) # 80001e3c <_ZdlPv>
    800039c0:	01813083          	ld	ra,24(sp)
    800039c4:	01013403          	ld	s0,16(sp)
    800039c8:	00813483          	ld	s1,8(sp)
    800039cc:	00013903          	ld	s2,0(sp)
    800039d0:	02010113          	addi	sp,sp,32
    800039d4:	00008067          	ret

00000000800039d8 <_ZN7WorkerCD0Ev>:
class WorkerC : public Thread {
    800039d8:	fe010113          	addi	sp,sp,-32
    800039dc:	00113c23          	sd	ra,24(sp)
    800039e0:	00813823          	sd	s0,16(sp)
    800039e4:	00913423          	sd	s1,8(sp)
    800039e8:	01213023          	sd	s2,0(sp)
    800039ec:	02010413          	addi	s0,sp,32
    800039f0:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800039f4:	00006797          	auipc	a5,0x6
    800039f8:	4e478793          	addi	a5,a5,1252 # 80009ed8 <_ZTV6Thread+0x10>
    800039fc:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80003a00:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    80003a04:	00500713          	li	a4,5
    80003a08:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    80003a0c:	00853903          	ld	s2,8(a0)
    80003a10:	02090063          	beqz	s2,80003a30 <_ZN7WorkerCD0Ev+0x58>
    ~PCB() { delete[] stack; }
    80003a14:	01893503          	ld	a0,24(s2)
    80003a18:	00050663          	beqz	a0,80003a24 <_ZN7WorkerCD0Ev+0x4c>
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	470080e7          	jalr	1136(ra) # 80001e8c <_ZdaPv>
    80003a24:	00090513          	mv	a0,s2
    80003a28:	ffffe097          	auipc	ra,0xffffe
    80003a2c:	414080e7          	jalr	1044(ra) # 80001e3c <_ZdlPv>
    80003a30:	00048513          	mv	a0,s1
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	408080e7          	jalr	1032(ra) # 80001e3c <_ZdlPv>
    80003a3c:	01813083          	ld	ra,24(sp)
    80003a40:	01013403          	ld	s0,16(sp)
    80003a44:	00813483          	ld	s1,8(sp)
    80003a48:	00013903          	ld	s2,0(sp)
    80003a4c:	02010113          	addi	sp,sp,32
    80003a50:	00008067          	ret

0000000080003a54 <_ZN7WorkerA3runEv>:
    void run() override {
    80003a54:	ff010113          	addi	sp,sp,-16
    80003a58:	00113423          	sd	ra,8(sp)
    80003a5c:	00813023          	sd	s0,0(sp)
    80003a60:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003a64:	00000593          	li	a1,0
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	544080e7          	jalr	1348(ra) # 80002fac <_ZN7WorkerA11workerBodyAEPv>
    }
    80003a70:	00813083          	ld	ra,8(sp)
    80003a74:	00013403          	ld	s0,0(sp)
    80003a78:	01010113          	addi	sp,sp,16
    80003a7c:	00008067          	ret

0000000080003a80 <_ZN7WorkerB3runEv>:
    void run() override {
    80003a80:	ff010113          	addi	sp,sp,-16
    80003a84:	00113423          	sd	ra,8(sp)
    80003a88:	00813023          	sd	s0,0(sp)
    80003a8c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003a90:	00000593          	li	a1,0
    80003a94:	fffff097          	auipc	ra,0xfffff
    80003a98:	5e4080e7          	jalr	1508(ra) # 80003078 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003a9c:	00813083          	ld	ra,8(sp)
    80003aa0:	00013403          	ld	s0,0(sp)
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00008067          	ret

0000000080003aac <_ZN7WorkerC3runEv>:
    void run() override {
    80003aac:	ff010113          	addi	sp,sp,-16
    80003ab0:	00113423          	sd	ra,8(sp)
    80003ab4:	00813023          	sd	s0,0(sp)
    80003ab8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003abc:	00000593          	li	a1,0
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	68c080e7          	jalr	1676(ra) # 8000314c <_ZN7WorkerC11workerBodyCEPv>
    }
    80003ac8:	00813083          	ld	ra,8(sp)
    80003acc:	00013403          	ld	s0,0(sp)
    80003ad0:	01010113          	addi	sp,sp,16
    80003ad4:	00008067          	ret

0000000080003ad8 <_ZN7WorkerD3runEv>:
    void run() override {
    80003ad8:	ff010113          	addi	sp,sp,-16
    80003adc:	00113423          	sd	ra,8(sp)
    80003ae0:	00813023          	sd	s0,0(sp)
    80003ae4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003ae8:	00000593          	li	a1,0
    80003aec:	fffff097          	auipc	ra,0xfffff
    80003af0:	7e0080e7          	jalr	2016(ra) # 800032cc <_ZN7WorkerD11workerBodyDEPv>
    }
    80003af4:	00813083          	ld	ra,8(sp)
    80003af8:	00013403          	ld	s0,0(sp)
    80003afc:	01010113          	addi	sp,sp,16
    80003b00:	00008067          	ret

0000000080003b04 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003b04:	fe010113          	addi	sp,sp,-32
    80003b08:	00113c23          	sd	ra,24(sp)
    80003b0c:	00813823          	sd	s0,16(sp)
    80003b10:	00913423          	sd	s1,8(sp)
    80003b14:	01213023          	sd	s2,0(sp)
    80003b18:	02010413          	addi	s0,sp,32
    80003b1c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b20:	00100793          	li	a5,1
    80003b24:	02a7f863          	bgeu	a5,a0,80003b54 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b28:	00a00793          	li	a5,10
    80003b2c:	02f577b3          	remu	a5,a0,a5
    80003b30:	02078e63          	beqz	a5,80003b6c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b34:	fff48513          	addi	a0,s1,-1
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	fcc080e7          	jalr	-52(ra) # 80003b04 <_ZL9fibonaccim>
    80003b40:	00050913          	mv	s2,a0
    80003b44:	ffe48513          	addi	a0,s1,-2
    80003b48:	00000097          	auipc	ra,0x0
    80003b4c:	fbc080e7          	jalr	-68(ra) # 80003b04 <_ZL9fibonaccim>
    80003b50:	00a90533          	add	a0,s2,a0
}
    80003b54:	01813083          	ld	ra,24(sp)
    80003b58:	01013403          	ld	s0,16(sp)
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	00013903          	ld	s2,0(sp)
    80003b64:	02010113          	addi	sp,sp,32
    80003b68:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	a90080e7          	jalr	-1392(ra) # 800015fc <_Z15thread_dispatchv>
    80003b74:	fc1ff06f          	j	80003b34 <_ZL9fibonaccim+0x30>

0000000080003b78 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void *arg) {
    80003b78:	fe010113          	addi	sp,sp,-32
    80003b7c:	00113c23          	sd	ra,24(sp)
    80003b80:	00813823          	sd	s0,16(sp)
    80003b84:	00913423          	sd	s1,8(sp)
    80003b88:	01213023          	sd	s2,0(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003b90:	00a00493          	li	s1,10
    80003b94:	0400006f          	j	80003bd4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i=");
    80003b98:	00004517          	auipc	a0,0x4
    80003b9c:	68050513          	addi	a0,a0,1664 # 80008218 <CONSOLE_STATUS+0x208>
    80003ba0:	00001097          	auipc	ra,0x1
    80003ba4:	f70080e7          	jalr	-144(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    80003ba8:	00000613          	li	a2,0
    80003bac:	00a00593          	li	a1,10
    80003bb0:	00048513          	mv	a0,s1
    80003bb4:	00001097          	auipc	ra,0x1
    80003bb8:	10c080e7          	jalr	268(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80003bbc:	00005517          	auipc	a0,0x5
    80003bc0:	87c50513          	addi	a0,a0,-1924 # 80008438 <CONSOLE_STATUS+0x428>
    80003bc4:	00001097          	auipc	ra,0x1
    80003bc8:	f4c080e7          	jalr	-180(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003bcc:	0014849b          	addiw	s1,s1,1
    80003bd0:	0ff4f493          	andi	s1,s1,255
    80003bd4:	00c00793          	li	a5,12
    80003bd8:	fc97f0e3          	bgeu	a5,s1,80003b98 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003bdc:	00004517          	auipc	a0,0x4
    80003be0:	64450513          	addi	a0,a0,1604 # 80008220 <CONSOLE_STATUS+0x210>
    80003be4:	00001097          	auipc	ra,0x1
    80003be8:	f2c080e7          	jalr	-212(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003bec:	00500313          	li	t1,5
    thread_dispatch();
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	a0c080e7          	jalr	-1524(ra) # 800015fc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003bf8:	01000513          	li	a0,16
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	f08080e7          	jalr	-248(ra) # 80003b04 <_ZL9fibonaccim>
    80003c04:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80003c08:	00004517          	auipc	a0,0x4
    80003c0c:	62850513          	addi	a0,a0,1576 # 80008230 <CONSOLE_STATUS+0x220>
    80003c10:	00001097          	auipc	ra,0x1
    80003c14:	f00080e7          	jalr	-256(ra) # 80004b10 <_Z11printStringPKc>
    printInt(result);
    80003c18:	00000613          	li	a2,0
    80003c1c:	00a00593          	li	a1,10
    80003c20:	0009051b          	sext.w	a0,s2
    80003c24:	00001097          	auipc	ra,0x1
    80003c28:	09c080e7          	jalr	156(ra) # 80004cc0 <_Z8printIntiii>
    printString("\n");
    80003c2c:	00005517          	auipc	a0,0x5
    80003c30:	80c50513          	addi	a0,a0,-2036 # 80008438 <CONSOLE_STATUS+0x428>
    80003c34:	00001097          	auipc	ra,0x1
    80003c38:	edc080e7          	jalr	-292(ra) # 80004b10 <_Z11printStringPKc>
    80003c3c:	0400006f          	j	80003c7c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i=");
    80003c40:	00004517          	auipc	a0,0x4
    80003c44:	5d850513          	addi	a0,a0,1496 # 80008218 <CONSOLE_STATUS+0x208>
    80003c48:	00001097          	auipc	ra,0x1
    80003c4c:	ec8080e7          	jalr	-312(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    80003c50:	00000613          	li	a2,0
    80003c54:	00a00593          	li	a1,10
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00001097          	auipc	ra,0x1
    80003c60:	064080e7          	jalr	100(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80003c64:	00004517          	auipc	a0,0x4
    80003c68:	7d450513          	addi	a0,a0,2004 # 80008438 <CONSOLE_STATUS+0x428>
    80003c6c:	00001097          	auipc	ra,0x1
    80003c70:	ea4080e7          	jalr	-348(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c74:	0014849b          	addiw	s1,s1,1
    80003c78:	0ff4f493          	andi	s1,s1,255
    80003c7c:	00f00793          	li	a5,15
    80003c80:	fc97f0e3          	bgeu	a5,s1,80003c40 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003c84:	00004517          	auipc	a0,0x4
    80003c88:	5bc50513          	addi	a0,a0,1468 # 80008240 <CONSOLE_STATUS+0x230>
    80003c8c:	00001097          	auipc	ra,0x1
    80003c90:	e84080e7          	jalr	-380(ra) # 80004b10 <_Z11printStringPKc>
    finishedD = true;
    80003c94:	00100793          	li	a5,1
    80003c98:	00006717          	auipc	a4,0x6
    80003c9c:	46f70223          	sb	a5,1124(a4) # 8000a0fc <_ZL9finishedD>
    thread_dispatch();
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	95c080e7          	jalr	-1700(ra) # 800015fc <_Z15thread_dispatchv>
}
    80003ca8:	01813083          	ld	ra,24(sp)
    80003cac:	01013403          	ld	s0,16(sp)
    80003cb0:	00813483          	ld	s1,8(sp)
    80003cb4:	00013903          	ld	s2,0(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZL11workerBodyCPv>:
static void workerBodyC(void *arg) {
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00813823          	sd	s0,16(sp)
    80003ccc:	00913423          	sd	s1,8(sp)
    80003cd0:	01213023          	sd	s2,0(sp)
    80003cd4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003cd8:	00000493          	li	s1,0
    80003cdc:	0400006f          	j	80003d1c <_ZL11workerBodyCPv+0x5c>
        printString("C: i=");
    80003ce0:	00004517          	auipc	a0,0x4
    80003ce4:	50850513          	addi	a0,a0,1288 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80003ce8:	00001097          	auipc	ra,0x1
    80003cec:	e28080e7          	jalr	-472(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    80003cf0:	00000613          	li	a2,0
    80003cf4:	00a00593          	li	a1,10
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	fc4080e7          	jalr	-60(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80003d04:	00004517          	auipc	a0,0x4
    80003d08:	73450513          	addi	a0,a0,1844 # 80008438 <CONSOLE_STATUS+0x428>
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	e04080e7          	jalr	-508(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d14:	0014849b          	addiw	s1,s1,1
    80003d18:	0ff4f493          	andi	s1,s1,255
    80003d1c:	00200793          	li	a5,2
    80003d20:	fc97f0e3          	bgeu	a5,s1,80003ce0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003d24:	00004517          	auipc	a0,0x4
    80003d28:	4cc50513          	addi	a0,a0,1228 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	de4080e7          	jalr	-540(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d34:	00700313          	li	t1,7
    thread_dispatch();
    80003d38:	ffffe097          	auipc	ra,0xffffe
    80003d3c:	8c4080e7          	jalr	-1852(ra) # 800015fc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d40:	00030913          	mv	s2,t1
    printString("C: t1=");
    80003d44:	00004517          	auipc	a0,0x4
    80003d48:	4bc50513          	addi	a0,a0,1212 # 80008200 <CONSOLE_STATUS+0x1f0>
    80003d4c:	00001097          	auipc	ra,0x1
    80003d50:	dc4080e7          	jalr	-572(ra) # 80004b10 <_Z11printStringPKc>
    printInt(t1);
    80003d54:	00000613          	li	a2,0
    80003d58:	00a00593          	li	a1,10
    80003d5c:	0009051b          	sext.w	a0,s2
    80003d60:	00001097          	auipc	ra,0x1
    80003d64:	f60080e7          	jalr	-160(ra) # 80004cc0 <_Z8printIntiii>
    printString("\n");
    80003d68:	00004517          	auipc	a0,0x4
    80003d6c:	6d050513          	addi	a0,a0,1744 # 80008438 <CONSOLE_STATUS+0x428>
    80003d70:	00001097          	auipc	ra,0x1
    80003d74:	da0080e7          	jalr	-608(ra) # 80004b10 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003d78:	00c00513          	li	a0,12
    80003d7c:	00000097          	auipc	ra,0x0
    80003d80:	d88080e7          	jalr	-632(ra) # 80003b04 <_ZL9fibonaccim>
    80003d84:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80003d88:	00004517          	auipc	a0,0x4
    80003d8c:	48050513          	addi	a0,a0,1152 # 80008208 <CONSOLE_STATUS+0x1f8>
    80003d90:	00001097          	auipc	ra,0x1
    80003d94:	d80080e7          	jalr	-640(ra) # 80004b10 <_Z11printStringPKc>
    printInt(result);
    80003d98:	00000613          	li	a2,0
    80003d9c:	00a00593          	li	a1,10
    80003da0:	0009051b          	sext.w	a0,s2
    80003da4:	00001097          	auipc	ra,0x1
    80003da8:	f1c080e7          	jalr	-228(ra) # 80004cc0 <_Z8printIntiii>
    printString("\n");
    80003dac:	00004517          	auipc	a0,0x4
    80003db0:	68c50513          	addi	a0,a0,1676 # 80008438 <CONSOLE_STATUS+0x428>
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	d5c080e7          	jalr	-676(ra) # 80004b10 <_Z11printStringPKc>
    80003dbc:	0400006f          	j	80003dfc <_ZL11workerBodyCPv+0x13c>
        printString("C: i=");
    80003dc0:	00004517          	auipc	a0,0x4
    80003dc4:	42850513          	addi	a0,a0,1064 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80003dc8:	00001097          	auipc	ra,0x1
    80003dcc:	d48080e7          	jalr	-696(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    80003dd0:	00000613          	li	a2,0
    80003dd4:	00a00593          	li	a1,10
    80003dd8:	00048513          	mv	a0,s1
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	ee4080e7          	jalr	-284(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80003de4:	00004517          	auipc	a0,0x4
    80003de8:	65450513          	addi	a0,a0,1620 # 80008438 <CONSOLE_STATUS+0x428>
    80003dec:	00001097          	auipc	ra,0x1
    80003df0:	d24080e7          	jalr	-732(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003df4:	0014849b          	addiw	s1,s1,1
    80003df8:	0ff4f493          	andi	s1,s1,255
    80003dfc:	00500793          	li	a5,5
    80003e00:	fc97f0e3          	bgeu	a5,s1,80003dc0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003e04:	00004517          	auipc	a0,0x4
    80003e08:	3bc50513          	addi	a0,a0,956 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80003e0c:	00001097          	auipc	ra,0x1
    80003e10:	d04080e7          	jalr	-764(ra) # 80004b10 <_Z11printStringPKc>
    finishedC = true;
    80003e14:	00100793          	li	a5,1
    80003e18:	00006717          	auipc	a4,0x6
    80003e1c:	2ef702a3          	sb	a5,741(a4) # 8000a0fd <_ZL9finishedC>
    thread_dispatch();
    80003e20:	ffffd097          	auipc	ra,0xffffd
    80003e24:	7dc080e7          	jalr	2012(ra) # 800015fc <_Z15thread_dispatchv>
}
    80003e28:	01813083          	ld	ra,24(sp)
    80003e2c:	01013403          	ld	s0,16(sp)
    80003e30:	00813483          	ld	s1,8(sp)
    80003e34:	00013903          	ld	s2,0(sp)
    80003e38:	02010113          	addi	sp,sp,32
    80003e3c:	00008067          	ret

0000000080003e40 <_ZL11workerBodyBPv>:
static void workerBodyB(void *arg) {
    80003e40:	fe010113          	addi	sp,sp,-32
    80003e44:	00113c23          	sd	ra,24(sp)
    80003e48:	00813823          	sd	s0,16(sp)
    80003e4c:	00913423          	sd	s1,8(sp)
    80003e50:	01213023          	sd	s2,0(sp)
    80003e54:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e58:	00000913          	li	s2,0
    80003e5c:	0380006f          	j	80003e94 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003e60:	ffffd097          	auipc	ra,0xffffd
    80003e64:	79c080e7          	jalr	1948(ra) # 800015fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e68:	00148493          	addi	s1,s1,1
    80003e6c:	000027b7          	lui	a5,0x2
    80003e70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e74:	0097ee63          	bltu	a5,s1,80003e90 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) {
    80003e78:	00000713          	li	a4,0
    80003e7c:	000077b7          	lui	a5,0x7
    80003e80:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e84:	fce7eee3          	bltu	a5,a4,80003e60 <_ZL11workerBodyBPv+0x20>
    80003e88:	00170713          	addi	a4,a4,1
    80003e8c:	ff1ff06f          	j	80003e7c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003e90:	00190913          	addi	s2,s2,1
    80003e94:	00f00793          	li	a5,15
    80003e98:	0527e063          	bltu	a5,s2,80003ed8 <_ZL11workerBodyBPv+0x98>
        printString("B: i=");
    80003e9c:	00004517          	auipc	a0,0x4
    80003ea0:	33450513          	addi	a0,a0,820 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80003ea4:	00001097          	auipc	ra,0x1
    80003ea8:	c6c080e7          	jalr	-916(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    80003eac:	00000613          	li	a2,0
    80003eb0:	00a00593          	li	a1,10
    80003eb4:	0009051b          	sext.w	a0,s2
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	e08080e7          	jalr	-504(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80003ec0:	00004517          	auipc	a0,0x4
    80003ec4:	57850513          	addi	a0,a0,1400 # 80008438 <CONSOLE_STATUS+0x428>
    80003ec8:	00001097          	auipc	ra,0x1
    80003ecc:	c48080e7          	jalr	-952(ra) # 80004b10 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ed0:	00000493          	li	s1,0
    80003ed4:	f99ff06f          	j	80003e6c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003ed8:	00004517          	auipc	a0,0x4
    80003edc:	30050513          	addi	a0,a0,768 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	c30080e7          	jalr	-976(ra) # 80004b10 <_Z11printStringPKc>
    finishedB = true;
    80003ee8:	00100793          	li	a5,1
    80003eec:	00006717          	auipc	a4,0x6
    80003ef0:	20f70923          	sb	a5,530(a4) # 8000a0fe <_ZL9finishedB>
    thread_dispatch();
    80003ef4:	ffffd097          	auipc	ra,0xffffd
    80003ef8:	708080e7          	jalr	1800(ra) # 800015fc <_Z15thread_dispatchv>
}
    80003efc:	01813083          	ld	ra,24(sp)
    80003f00:	01013403          	ld	s0,16(sp)
    80003f04:	00813483          	ld	s1,8(sp)
    80003f08:	00013903          	ld	s2,0(sp)
    80003f0c:	02010113          	addi	sp,sp,32
    80003f10:	00008067          	ret

0000000080003f14 <_ZL11workerBodyAPv>:
static void workerBodyA(void *arg) {
    80003f14:	fe010113          	addi	sp,sp,-32
    80003f18:	00113c23          	sd	ra,24(sp)
    80003f1c:	00813823          	sd	s0,16(sp)
    80003f20:	00913423          	sd	s1,8(sp)
    80003f24:	01213023          	sd	s2,0(sp)
    80003f28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003f2c:	00000913          	li	s2,0
    80003f30:	0380006f          	j	80003f68 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003f34:	ffffd097          	auipc	ra,0xffffd
    80003f38:	6c8080e7          	jalr	1736(ra) # 800015fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f3c:	00148493          	addi	s1,s1,1
    80003f40:	000027b7          	lui	a5,0x2
    80003f44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f48:	0097ee63          	bltu	a5,s1,80003f64 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) {
    80003f4c:	00000713          	li	a4,0
    80003f50:	000077b7          	lui	a5,0x7
    80003f54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f58:	fce7eee3          	bltu	a5,a4,80003f34 <_ZL11workerBodyAPv+0x20>
    80003f5c:	00170713          	addi	a4,a4,1
    80003f60:	ff1ff06f          	j	80003f50 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f64:	00190913          	addi	s2,s2,1
    80003f68:	00900793          	li	a5,9
    80003f6c:	0527e063          	bltu	a5,s2,80003fac <_ZL11workerBodyAPv+0x98>
        printString("A: i=");
    80003f70:	00004517          	auipc	a0,0x4
    80003f74:	24850513          	addi	a0,a0,584 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	b98080e7          	jalr	-1128(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    80003f80:	00000613          	li	a2,0
    80003f84:	00a00593          	li	a1,10
    80003f88:	0009051b          	sext.w	a0,s2
    80003f8c:	00001097          	auipc	ra,0x1
    80003f90:	d34080e7          	jalr	-716(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80003f94:	00004517          	auipc	a0,0x4
    80003f98:	4a450513          	addi	a0,a0,1188 # 80008438 <CONSOLE_STATUS+0x428>
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	b74080e7          	jalr	-1164(ra) # 80004b10 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fa4:	00000493          	li	s1,0
    80003fa8:	f99ff06f          	j	80003f40 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003fac:	00004517          	auipc	a0,0x4
    80003fb0:	21450513          	addi	a0,a0,532 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80003fb4:	00001097          	auipc	ra,0x1
    80003fb8:	b5c080e7          	jalr	-1188(ra) # 80004b10 <_Z11printStringPKc>
    finishedA = true;
    80003fbc:	00100793          	li	a5,1
    80003fc0:	00006717          	auipc	a4,0x6
    80003fc4:	12f70fa3          	sb	a5,319(a4) # 8000a0ff <_ZL9finishedA>
}
    80003fc8:	01813083          	ld	ra,24(sp)
    80003fcc:	01013403          	ld	s0,16(sp)
    80003fd0:	00813483          	ld	s1,8(sp)
    80003fd4:	00013903          	ld	s2,0(sp)
    80003fd8:	02010113          	addi	sp,sp,32
    80003fdc:	00008067          	ret

0000000080003fe0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003fe0:	fd010113          	addi	sp,sp,-48
    80003fe4:	02113423          	sd	ra,40(sp)
    80003fe8:	02813023          	sd	s0,32(sp)
    80003fec:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003ff0:	00000613          	li	a2,0
    80003ff4:	00000597          	auipc	a1,0x0
    80003ff8:	f2058593          	addi	a1,a1,-224 # 80003f14 <_ZL11workerBodyAPv>
    80003ffc:	fd040513          	addi	a0,s0,-48
    80004000:	ffffd097          	auipc	ra,0xffffd
    80004004:	550080e7          	jalr	1360(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadA created\n");
    80004008:	00004517          	auipc	a0,0x4
    8000400c:	24850513          	addi	a0,a0,584 # 80008250 <CONSOLE_STATUS+0x240>
    80004010:	00001097          	auipc	ra,0x1
    80004014:	b00080e7          	jalr	-1280(ra) # 80004b10 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004018:	00000613          	li	a2,0
    8000401c:	00000597          	auipc	a1,0x0
    80004020:	e2458593          	addi	a1,a1,-476 # 80003e40 <_ZL11workerBodyBPv>
    80004024:	fd840513          	addi	a0,s0,-40
    80004028:	ffffd097          	auipc	ra,0xffffd
    8000402c:	528080e7          	jalr	1320(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadB created\n");
    80004030:	00004517          	auipc	a0,0x4
    80004034:	23850513          	addi	a0,a0,568 # 80008268 <CONSOLE_STATUS+0x258>
    80004038:	00001097          	auipc	ra,0x1
    8000403c:	ad8080e7          	jalr	-1320(ra) # 80004b10 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004040:	00000613          	li	a2,0
    80004044:	00000597          	auipc	a1,0x0
    80004048:	c7c58593          	addi	a1,a1,-900 # 80003cc0 <_ZL11workerBodyCPv>
    8000404c:	fe040513          	addi	a0,s0,-32
    80004050:	ffffd097          	auipc	ra,0xffffd
    80004054:	500080e7          	jalr	1280(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadC created\n");
    80004058:	00004517          	auipc	a0,0x4
    8000405c:	22850513          	addi	a0,a0,552 # 80008280 <CONSOLE_STATUS+0x270>
    80004060:	00001097          	auipc	ra,0x1
    80004064:	ab0080e7          	jalr	-1360(ra) # 80004b10 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004068:	00000613          	li	a2,0
    8000406c:	00000597          	auipc	a1,0x0
    80004070:	b0c58593          	addi	a1,a1,-1268 # 80003b78 <_ZL11workerBodyDPv>
    80004074:	fe840513          	addi	a0,s0,-24
    80004078:	ffffd097          	auipc	ra,0xffffd
    8000407c:	4d8080e7          	jalr	1240(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadD created\n");
    80004080:	00004517          	auipc	a0,0x4
    80004084:	21850513          	addi	a0,a0,536 # 80008298 <CONSOLE_STATUS+0x288>
    80004088:	00001097          	auipc	ra,0x1
    8000408c:	a88080e7          	jalr	-1400(ra) # 80004b10 <_Z11printStringPKc>
    80004090:	00c0006f          	j	8000409c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004094:	ffffd097          	auipc	ra,0xffffd
    80004098:	568080e7          	jalr	1384(ra) # 800015fc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000409c:	00006797          	auipc	a5,0x6
    800040a0:	0637c783          	lbu	a5,99(a5) # 8000a0ff <_ZL9finishedA>
    800040a4:	fe0788e3          	beqz	a5,80004094 <_Z18Threads_C_API_testv+0xb4>
    800040a8:	00006797          	auipc	a5,0x6
    800040ac:	0567c783          	lbu	a5,86(a5) # 8000a0fe <_ZL9finishedB>
    800040b0:	fe0782e3          	beqz	a5,80004094 <_Z18Threads_C_API_testv+0xb4>
    800040b4:	00006797          	auipc	a5,0x6
    800040b8:	0497c783          	lbu	a5,73(a5) # 8000a0fd <_ZL9finishedC>
    800040bc:	fc078ce3          	beqz	a5,80004094 <_Z18Threads_C_API_testv+0xb4>
    800040c0:	00006797          	auipc	a5,0x6
    800040c4:	03c7c783          	lbu	a5,60(a5) # 8000a0fc <_ZL9finishedD>
    800040c8:	fc0786e3          	beqz	a5,80004094 <_Z18Threads_C_API_testv+0xb4>
    }
}
    800040cc:	02813083          	ld	ra,40(sp)
    800040d0:	02013403          	ld	s0,32(sp)
    800040d4:	03010113          	addi	sp,sp,48
    800040d8:	00008067          	ret

00000000800040dc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800040dc:	fd010113          	addi	sp,sp,-48
    800040e0:	02113423          	sd	ra,40(sp)
    800040e4:	02813023          	sd	s0,32(sp)
    800040e8:	00913c23          	sd	s1,24(sp)
    800040ec:	01213823          	sd	s2,16(sp)
    800040f0:	01313423          	sd	s3,8(sp)
    800040f4:	03010413          	addi	s0,sp,48
    800040f8:	00050993          	mv	s3,a0
    800040fc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004100:	00000913          	li	s2,0
    80004104:	00c0006f          	j	80004110 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
        thread_dispatch();
    80004108:	ffffd097          	auipc	ra,0xffffd
    8000410c:	4f4080e7          	jalr	1268(ra) # 800015fc <_Z15thread_dispatchv>
    while ((key = getc()) != 97) {
    80004110:	ffffd097          	auipc	ra,0xffffd
    80004114:	604080e7          	jalr	1540(ra) # 80001714 <_Z4getcv>
    80004118:	0005059b          	sext.w	a1,a0
    8000411c:	06100793          	li	a5,97
    80004120:	02f58a63          	beq	a1,a5,80004154 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004124:	0084b503          	ld	a0,8(s1)
    80004128:	00001097          	auipc	ra,0x1
    8000412c:	e4c080e7          	jalr	-436(ra) # 80004f74 <_ZN9BufferCPP3putEi>
        i++;
    80004130:	0019071b          	addiw	a4,s2,1
    80004134:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80004138:	0004a683          	lw	a3,0(s1)
    8000413c:	0026979b          	slliw	a5,a3,0x2
    80004140:	00d787bb          	addw	a5,a5,a3
    80004144:	0017979b          	slliw	a5,a5,0x1
    80004148:	02f767bb          	remw	a5,a4,a5
    8000414c:	fc0792e3          	bnez	a5,80004110 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004150:	fb9ff06f          	j	80004108 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
            Thread::dispatch();
        }
    }

    threadEnd = 1;
    80004154:	00100793          	li	a5,1
    80004158:	00006717          	auipc	a4,0x6
    8000415c:	faf72423          	sw	a5,-88(a4) # 8000a100 <_ZL9threadEnd>
    td->buffer->put('!');
    80004160:	0209b783          	ld	a5,32(s3)
    80004164:	02100593          	li	a1,33
    80004168:	0087b503          	ld	a0,8(a5)
    8000416c:	00001097          	auipc	ra,0x1
    80004170:	e08080e7          	jalr	-504(ra) # 80004f74 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004174:	0104b783          	ld	a5,16(s1)
        }
        return -1;
    }

    int signal() {
        if (myHandle != nullptr) {
    80004178:	0087b503          	ld	a0,8(a5)
    8000417c:	00050663          	beqz	a0,80004188 <_ZN16ProducerKeyboard16producerKeyboardEPv+0xac>
            return sem_signal(myHandle);
    80004180:	ffffd097          	auipc	ra,0xffffd
    80004184:	534080e7          	jalr	1332(ra) # 800016b4 <_Z10sem_signalP4_sem>
}
    80004188:	02813083          	ld	ra,40(sp)
    8000418c:	02013403          	ld	s0,32(sp)
    80004190:	01813483          	ld	s1,24(sp)
    80004194:	01013903          	ld	s2,16(sp)
    80004198:	00813983          	ld	s3,8(sp)
    8000419c:	03010113          	addi	sp,sp,48
    800041a0:	00008067          	ret

00000000800041a4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800041a4:	fe010113          	addi	sp,sp,-32
    800041a8:	00113c23          	sd	ra,24(sp)
    800041ac:	00813823          	sd	s0,16(sp)
    800041b0:	00913423          	sd	s1,8(sp)
    800041b4:	01213023          	sd	s2,0(sp)
    800041b8:	02010413          	addi	s0,sp,32
    800041bc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800041c0:	00000913          	li	s2,0
    800041c4:	00c0006f          	j	800041d0 <_ZN12ProducerSync8producerEPv+0x2c>
        thread_dispatch();
    800041c8:	ffffd097          	auipc	ra,0xffffd
    800041cc:	434080e7          	jalr	1076(ra) # 800015fc <_Z15thread_dispatchv>
    while (!threadEnd) {
    800041d0:	00006797          	auipc	a5,0x6
    800041d4:	f307a783          	lw	a5,-208(a5) # 8000a100 <_ZL9threadEnd>
    800041d8:	02079e63          	bnez	a5,80004214 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800041dc:	0004a583          	lw	a1,0(s1)
    800041e0:	0305859b          	addiw	a1,a1,48
    800041e4:	0084b503          	ld	a0,8(s1)
    800041e8:	00001097          	auipc	ra,0x1
    800041ec:	d8c080e7          	jalr	-628(ra) # 80004f74 <_ZN9BufferCPP3putEi>
        i++;
    800041f0:	0019071b          	addiw	a4,s2,1
    800041f4:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    800041f8:	0004a683          	lw	a3,0(s1)
    800041fc:	0026979b          	slliw	a5,a3,0x2
    80004200:	00d787bb          	addw	a5,a5,a3
    80004204:	0017979b          	slliw	a5,a5,0x1
    80004208:	02f767bb          	remw	a5,a4,a5
    8000420c:	fc0792e3          	bnez	a5,800041d0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004210:	fb9ff06f          	j	800041c8 <_ZN12ProducerSync8producerEPv+0x24>
            Thread::dispatch();
        }
    }

    data->wait->signal();
    80004214:	0104b783          	ld	a5,16(s1)
        if (myHandle != nullptr) {
    80004218:	0087b503          	ld	a0,8(a5)
    8000421c:	00050663          	beqz	a0,80004228 <_ZN12ProducerSync8producerEPv+0x84>
            return sem_signal(myHandle);
    80004220:	ffffd097          	auipc	ra,0xffffd
    80004224:	494080e7          	jalr	1172(ra) # 800016b4 <_Z10sem_signalP4_sem>
}
    80004228:	01813083          	ld	ra,24(sp)
    8000422c:	01013403          	ld	s0,16(sp)
    80004230:	00813483          	ld	s1,8(sp)
    80004234:	00013903          	ld	s2,0(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret

0000000080004240 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004240:	fd010113          	addi	sp,sp,-48
    80004244:	02113423          	sd	ra,40(sp)
    80004248:	02813023          	sd	s0,32(sp)
    8000424c:	00913c23          	sd	s1,24(sp)
    80004250:	01213823          	sd	s2,16(sp)
    80004254:	01313423          	sd	s3,8(sp)
    80004258:	01413023          	sd	s4,0(sp)
    8000425c:	03010413          	addi	s0,sp,48
    80004260:	00050993          	mv	s3,a0
    80004264:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004268:	00000a13          	li	s4,0
    8000426c:	01c0006f          	j	80004288 <_ZN12ConsumerSync8consumerEPv+0x48>
        thread_dispatch();
    80004270:	ffffd097          	auipc	ra,0xffffd
    80004274:	38c080e7          	jalr	908(ra) # 800015fc <_Z15thread_dispatchv>
    }
    80004278:	0500006f          	j	800042c8 <_ZN12ConsumerSync8consumerEPv+0x88>
        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
    8000427c:	00a00513          	li	a0,10
    80004280:	ffffd097          	auipc	ra,0xffffd
    80004284:	4c0080e7          	jalr	1216(ra) # 80001740 <_Z4putcc>
    while (!threadEnd) {
    80004288:	00006797          	auipc	a5,0x6
    8000428c:	e787a783          	lw	a5,-392(a5) # 8000a100 <_ZL9threadEnd>
    80004290:	06079263          	bnez	a5,800042f4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004294:	00893503          	ld	a0,8(s2)
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	d8c080e7          	jalr	-628(ra) # 80005024 <_ZN9BufferCPP3getEv>
        i++;
    800042a0:	001a049b          	addiw	s1,s4,1
    800042a4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800042a8:	0ff57513          	andi	a0,a0,255
    800042ac:	ffffd097          	auipc	ra,0xffffd
    800042b0:	494080e7          	jalr	1172(ra) # 80001740 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800042b4:	00092703          	lw	a4,0(s2)
    800042b8:	0027179b          	slliw	a5,a4,0x2
    800042bc:	00e787bb          	addw	a5,a5,a4
    800042c0:	02f4e7bb          	remw	a5,s1,a5
    800042c4:	fa0786e3          	beqz	a5,80004270 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800042c8:	05000793          	li	a5,80
    800042cc:	02f4e4bb          	remw	s1,s1,a5
    800042d0:	fa049ce3          	bnez	s1,80004288 <_ZN12ConsumerSync8consumerEPv+0x48>
    800042d4:	fa9ff06f          	j	8000427c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800042d8:	0209b783          	ld	a5,32(s3)
    800042dc:	0087b503          	ld	a0,8(a5)
    800042e0:	00001097          	auipc	ra,0x1
    800042e4:	d44080e7          	jalr	-700(ra) # 80005024 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800042e8:	0ff57513          	andi	a0,a0,255
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	bf0080e7          	jalr	-1040(ra) # 80001edc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800042f4:	0209b783          	ld	a5,32(s3)
    800042f8:	0087b503          	ld	a0,8(a5)
    800042fc:	00001097          	auipc	ra,0x1
    80004300:	dd4080e7          	jalr	-556(ra) # 800050d0 <_ZN9BufferCPP6getCntEv>
    80004304:	fca04ae3          	bgtz	a0,800042d8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004308:	01093783          	ld	a5,16(s2)
        if (myHandle != nullptr) {
    8000430c:	0087b503          	ld	a0,8(a5)
    80004310:	00050663          	beqz	a0,8000431c <_ZN12ConsumerSync8consumerEPv+0xdc>
            return sem_signal(myHandle);
    80004314:	ffffd097          	auipc	ra,0xffffd
    80004318:	3a0080e7          	jalr	928(ra) # 800016b4 <_Z10sem_signalP4_sem>
}
    8000431c:	02813083          	ld	ra,40(sp)
    80004320:	02013403          	ld	s0,32(sp)
    80004324:	01813483          	ld	s1,24(sp)
    80004328:	01013903          	ld	s2,16(sp)
    8000432c:	00813983          	ld	s3,8(sp)
    80004330:	00013a03          	ld	s4,0(sp)
    80004334:	03010113          	addi	sp,sp,48
    80004338:	00008067          	ret

000000008000433c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000433c:	f9010113          	addi	sp,sp,-112
    80004340:	06113423          	sd	ra,104(sp)
    80004344:	06813023          	sd	s0,96(sp)
    80004348:	04913c23          	sd	s1,88(sp)
    8000434c:	05213823          	sd	s2,80(sp)
    80004350:	05313423          	sd	s3,72(sp)
    80004354:	05413023          	sd	s4,64(sp)
    80004358:	03513c23          	sd	s5,56(sp)
    8000435c:	03613823          	sd	s6,48(sp)
    80004360:	03713423          	sd	s7,40(sp)
    80004364:	03813023          	sd	s8,32(sp)
    80004368:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000436c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004370:	00004517          	auipc	a0,0x4
    80004374:	d6050513          	addi	a0,a0,-672 # 800080d0 <CONSOLE_STATUS+0xc0>
    80004378:	00000097          	auipc	ra,0x0
    8000437c:	798080e7          	jalr	1944(ra) # 80004b10 <_Z11printStringPKc>
    getString(input, 30);
    80004380:	01e00593          	li	a1,30
    80004384:	f9040493          	addi	s1,s0,-112
    80004388:	00048513          	mv	a0,s1
    8000438c:	00001097          	auipc	ra,0x1
    80004390:	80c080e7          	jalr	-2036(ra) # 80004b98 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004394:	00048513          	mv	a0,s1
    80004398:	00001097          	auipc	ra,0x1
    8000439c:	8d8080e7          	jalr	-1832(ra) # 80004c70 <_Z11stringToIntPKc>
    800043a0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800043a4:	00004517          	auipc	a0,0x4
    800043a8:	d4c50513          	addi	a0,a0,-692 # 800080f0 <CONSOLE_STATUS+0xe0>
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	764080e7          	jalr	1892(ra) # 80004b10 <_Z11printStringPKc>
    getString(input, 30);
    800043b4:	01e00593          	li	a1,30
    800043b8:	00048513          	mv	a0,s1
    800043bc:	00000097          	auipc	ra,0x0
    800043c0:	7dc080e7          	jalr	2012(ra) # 80004b98 <_Z9getStringPci>
    n = stringToInt(input);
    800043c4:	00048513          	mv	a0,s1
    800043c8:	00001097          	auipc	ra,0x1
    800043cc:	8a8080e7          	jalr	-1880(ra) # 80004c70 <_Z11stringToIntPKc>
    800043d0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800043d4:	00004517          	auipc	a0,0x4
    800043d8:	d3c50513          	addi	a0,a0,-708 # 80008110 <CONSOLE_STATUS+0x100>
    800043dc:	00000097          	auipc	ra,0x0
    800043e0:	734080e7          	jalr	1844(ra) # 80004b10 <_Z11printStringPKc>
    printInt(threadNum);
    800043e4:	00000613          	li	a2,0
    800043e8:	00a00593          	li	a1,10
    800043ec:	00090513          	mv	a0,s2
    800043f0:	00001097          	auipc	ra,0x1
    800043f4:	8d0080e7          	jalr	-1840(ra) # 80004cc0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800043f8:	00004517          	auipc	a0,0x4
    800043fc:	d3050513          	addi	a0,a0,-720 # 80008128 <CONSOLE_STATUS+0x118>
    80004400:	00000097          	auipc	ra,0x0
    80004404:	710080e7          	jalr	1808(ra) # 80004b10 <_Z11printStringPKc>
    printInt(n);
    80004408:	00000613          	li	a2,0
    8000440c:	00a00593          	li	a1,10
    80004410:	00048513          	mv	a0,s1
    80004414:	00001097          	auipc	ra,0x1
    80004418:	8ac080e7          	jalr	-1876(ra) # 80004cc0 <_Z8printIntiii>
    printString(".\n");
    8000441c:	00004517          	auipc	a0,0x4
    80004420:	d2450513          	addi	a0,a0,-732 # 80008140 <CONSOLE_STATUS+0x130>
    80004424:	00000097          	auipc	ra,0x0
    80004428:	6ec080e7          	jalr	1772(ra) # 80004b10 <_Z11printStringPKc>
    if (threadNum > n) {
    8000442c:	0324c463          	blt	s1,s2,80004454 <_Z29producerConsumer_CPP_Sync_APIv+0x118>
    } else if (threadNum < 1) {
    80004430:	03205c63          	blez	s2,80004468 <_Z29producerConsumer_CPP_Sync_APIv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80004434:	03800513          	li	a0,56
    80004438:	ffffe097          	auipc	ra,0xffffe
    8000443c:	9dc080e7          	jalr	-1572(ra) # 80001e14 <_Znwm>
    80004440:	00050a93          	mv	s5,a0
    80004444:	00048593          	mv	a1,s1
    80004448:	00001097          	auipc	ra,0x1
    8000444c:	998080e7          	jalr	-1640(ra) # 80004de0 <_ZN9BufferCPPC1Ei>
    80004450:	0300006f          	j	80004480 <_Z29producerConsumer_CPP_Sync_APIv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004454:	00004517          	auipc	a0,0x4
    80004458:	cf450513          	addi	a0,a0,-780 # 80008148 <CONSOLE_STATUS+0x138>
    8000445c:	00000097          	auipc	ra,0x0
    80004460:	6b4080e7          	jalr	1716(ra) # 80004b10 <_Z11printStringPKc>
        return;
    80004464:	0140006f          	j	80004478 <_Z29producerConsumer_CPP_Sync_APIv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004468:	00004517          	auipc	a0,0x4
    8000446c:	d2050513          	addi	a0,a0,-736 # 80008188 <CONSOLE_STATUS+0x178>
    80004470:	00000097          	auipc	ra,0x0
    80004474:	6a0080e7          	jalr	1696(ra) # 80004b10 <_Z11printStringPKc>
        return;
    80004478:	000b8113          	mv	sp,s7
    8000447c:	2700006f          	j	800046ec <_Z29producerConsumer_CPP_Sync_APIv+0x3b0>
    waitForAll = new Semaphore(0);
    80004480:	01000513          	li	a0,16
    80004484:	ffffe097          	auipc	ra,0xffffe
    80004488:	990080e7          	jalr	-1648(ra) # 80001e14 <_Znwm>
    8000448c:	00050493          	mv	s1,a0
    Semaphore(unsigned init = 1) {
    80004490:	00006797          	auipc	a5,0x6
    80004494:	b1078793          	addi	a5,a5,-1264 # 80009fa0 <_ZTV9Semaphore+0x10>
    80004498:	00f53023          	sd	a5,0(a0)
        sem_open(&myHandle, init);
    8000449c:	00000593          	li	a1,0
    800044a0:	00850513          	addi	a0,a0,8
    800044a4:	ffffd097          	auipc	ra,0xffffd
    800044a8:	17c080e7          	jalr	380(ra) # 80001620 <_Z8sem_openPP4_semj>
    800044ac:	00006797          	auipc	a5,0x6
    800044b0:	c497be23          	sd	s1,-932(a5) # 8000a108 <_ZL10waitForAll>
    Thread *threads[threadNum];
    800044b4:	00391793          	slli	a5,s2,0x3
    800044b8:	00f78793          	addi	a5,a5,15
    800044bc:	ff07f793          	andi	a5,a5,-16
    800044c0:	40f10133          	sub	sp,sp,a5
    800044c4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800044c8:	0019071b          	addiw	a4,s2,1
    800044cc:	00171793          	slli	a5,a4,0x1
    800044d0:	00e787b3          	add	a5,a5,a4
    800044d4:	00379793          	slli	a5,a5,0x3
    800044d8:	00f78793          	addi	a5,a5,15
    800044dc:	ff07f793          	andi	a5,a5,-16
    800044e0:	40f10133          	sub	sp,sp,a5
    800044e4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800044e8:	00191c13          	slli	s8,s2,0x1
    800044ec:	012c07b3          	add	a5,s8,s2
    800044f0:	00379793          	slli	a5,a5,0x3
    800044f4:	00fa07b3          	add	a5,s4,a5
    800044f8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800044fc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004500:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data + threadNum);
    80004504:	02800513          	li	a0,40
    80004508:	ffffe097          	auipc	ra,0xffffe
    8000450c:	90c080e7          	jalr	-1780(ra) # 80001e14 <_Znwm>
    80004510:	00050b13          	mv	s6,a0
    80004514:	012c0c33          	add	s8,s8,s2
    80004518:	003c1c13          	slli	s8,s8,0x3
    8000451c:	018a0c33          	add	s8,s4,s8
        this->body = thread_wrapper;
    80004520:	fffff597          	auipc	a1,0xfffff
    80004524:	0a858593          	addi	a1,a1,168 # 800035c8 <_ZN6Thread14thread_wrapperEPv>
    80004528:	00b53823          	sd	a1,16(a0)
        this->arg = this;
    8000452c:	00a53c23          	sd	a0,24(a0)
    ConsumerSync(thread_data *_td): Thread(), td(_td) {
    80004530:	00006797          	auipc	a5,0x6
    80004534:	ae078793          	addi	a5,a5,-1312 # 8000a010 <_ZTV12ConsumerSync+0x10>
    80004538:	00f53023          	sd	a5,0(a0)
    8000453c:	03853023          	sd	s8,32(a0)
        thread_create(&this->myHandle, body, arg);
    80004540:	00050613          	mv	a2,a0
    80004544:	00850513          	addi	a0,a0,8
    80004548:	ffffd097          	auipc	ra,0xffffd
    8000454c:	008080e7          	jalr	8(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80004550:	00000493          	li	s1,0
    80004554:	0700006f          	j	800045c4 <_Z29producerConsumer_CPP_Sync_APIv+0x288>
            threads[i] = new ProducerSync(data + i);
    80004558:	02800513          	li	a0,40
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	8b8080e7          	jalr	-1864(ra) # 80001e14 <_Znwm>
    80004564:	00149793          	slli	a5,s1,0x1
    80004568:	009787b3          	add	a5,a5,s1
    8000456c:	00379793          	slli	a5,a5,0x3
    80004570:	00fa07b3          	add	a5,s4,a5
        this->body = thread_wrapper;
    80004574:	fffff717          	auipc	a4,0xfffff
    80004578:	05470713          	addi	a4,a4,84 # 800035c8 <_ZN6Thread14thread_wrapperEPv>
    8000457c:	00e53823          	sd	a4,16(a0)
        this->arg = this;
    80004580:	00a53c23          	sd	a0,24(a0)
    ProducerSync(thread_data *_td): Thread(), td(_td) {
    80004584:	00006717          	auipc	a4,0x6
    80004588:	a6470713          	addi	a4,a4,-1436 # 80009fe8 <_ZTV12ProducerSync+0x10>
    8000458c:	00e53023          	sd	a4,0(a0)
    80004590:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerSync(data + i);
    80004594:	00349793          	slli	a5,s1,0x3
    80004598:	00f987b3          	add	a5,s3,a5
    8000459c:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    800045a0:	00349793          	slli	a5,s1,0x3
    800045a4:	00f987b3          	add	a5,s3,a5
    800045a8:	0007b503          	ld	a0,0(a5)
        thread_create(&this->myHandle, body, arg);
    800045ac:	01853603          	ld	a2,24(a0)
    800045b0:	01053583          	ld	a1,16(a0)
    800045b4:	00850513          	addi	a0,a0,8
    800045b8:	ffffd097          	auipc	ra,0xffffd
    800045bc:	f98080e7          	jalr	-104(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800045c0:	0014849b          	addiw	s1,s1,1
    800045c4:	0724dc63          	bge	s1,s2,8000463c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        data[i].id = i;
    800045c8:	00149793          	slli	a5,s1,0x1
    800045cc:	009787b3          	add	a5,a5,s1
    800045d0:	00379793          	slli	a5,a5,0x3
    800045d4:	00fa07b3          	add	a5,s4,a5
    800045d8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800045dc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800045e0:	00006717          	auipc	a4,0x6
    800045e4:	b2873703          	ld	a4,-1240(a4) # 8000a108 <_ZL10waitForAll>
    800045e8:	00e7b823          	sd	a4,16(a5)
        if (i > 0) {
    800045ec:	f69046e3          	bgtz	s1,80004558 <_Z29producerConsumer_CPP_Sync_APIv+0x21c>
            threads[i] = new ProducerKeyboard(data + i);
    800045f0:	02800513          	li	a0,40
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	820080e7          	jalr	-2016(ra) # 80001e14 <_Znwm>
    800045fc:	00149793          	slli	a5,s1,0x1
    80004600:	009787b3          	add	a5,a5,s1
    80004604:	00379793          	slli	a5,a5,0x3
    80004608:	00fa07b3          	add	a5,s4,a5
        this->body = thread_wrapper;
    8000460c:	fffff717          	auipc	a4,0xfffff
    80004610:	fbc70713          	addi	a4,a4,-68 # 800035c8 <_ZN6Thread14thread_wrapperEPv>
    80004614:	00e53823          	sd	a4,16(a0)
        this->arg = this;
    80004618:	00a53c23          	sd	a0,24(a0)
    ProducerKeyboard(thread_data *_td): Thread(), td(_td) {
    8000461c:	00006717          	auipc	a4,0x6
    80004620:	9a470713          	addi	a4,a4,-1628 # 80009fc0 <_ZTV16ProducerKeyboard+0x10>
    80004624:	00e53023          	sd	a4,0(a0)
    80004628:	02f53023          	sd	a5,32(a0)
            threads[i] = new ProducerKeyboard(data + i);
    8000462c:	00349793          	slli	a5,s1,0x3
    80004630:	00f987b3          	add	a5,s3,a5
    80004634:	00a7b023          	sd	a0,0(a5)
    80004638:	f69ff06f          	j	800045a0 <_Z29producerConsumer_CPP_Sync_APIv+0x264>
        thread_dispatch();
    8000463c:	ffffd097          	auipc	ra,0xffffd
    80004640:	fc0080e7          	jalr	-64(ra) # 800015fc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80004644:	00000493          	li	s1,0
    }
    80004648:	0080006f          	j	80004650 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    8000464c:	0014849b          	addiw	s1,s1,1
    80004650:	02994063          	blt	s2,s1,80004670 <_Z29producerConsumer_CPP_Sync_APIv+0x334>
        waitForAll->wait();
    80004654:	00006797          	auipc	a5,0x6
    80004658:	ab47b783          	ld	a5,-1356(a5) # 8000a108 <_ZL10waitForAll>
        if (myHandle != nullptr) {
    8000465c:	0087b503          	ld	a0,8(a5)
    80004660:	fe0506e3          	beqz	a0,8000464c <_Z29producerConsumer_CPP_Sync_APIv+0x310>
            return sem_wait(myHandle);
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	020080e7          	jalr	32(ra) # 80001684 <_Z8sem_waitP4_sem>
    8000466c:	fe1ff06f          	j	8000464c <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    for (int i = 0; i < threadNum; i++) {
    80004670:	00000493          	li	s1,0
    80004674:	0080006f          	j	8000467c <_Z29producerConsumer_CPP_Sync_APIv+0x340>
    80004678:	0014849b          	addiw	s1,s1,1
    8000467c:	0324d263          	bge	s1,s2,800046a0 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
        delete threads[i];
    80004680:	00349793          	slli	a5,s1,0x3
    80004684:	00f987b3          	add	a5,s3,a5
    80004688:	0007b503          	ld	a0,0(a5)
    8000468c:	fe0506e3          	beqz	a0,80004678 <_Z29producerConsumer_CPP_Sync_APIv+0x33c>
    80004690:	00053783          	ld	a5,0(a0)
    80004694:	0087b783          	ld	a5,8(a5)
    80004698:	000780e7          	jalr	a5
    8000469c:	fddff06f          	j	80004678 <_Z29producerConsumer_CPP_Sync_APIv+0x33c>
    delete consumerThread;
    800046a0:	000b0a63          	beqz	s6,800046b4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800046a4:	000b3783          	ld	a5,0(s6)
    800046a8:	0087b783          	ld	a5,8(a5)
    800046ac:	000b0513          	mv	a0,s6
    800046b0:	000780e7          	jalr	a5
    delete waitForAll;
    800046b4:	00006517          	auipc	a0,0x6
    800046b8:	a5453503          	ld	a0,-1452(a0) # 8000a108 <_ZL10waitForAll>
    800046bc:	00050863          	beqz	a0,800046cc <_Z29producerConsumer_CPP_Sync_APIv+0x390>
    800046c0:	00053783          	ld	a5,0(a0)
    800046c4:	0087b783          	ld	a5,8(a5)
    800046c8:	000780e7          	jalr	a5
    delete buffer;
    800046cc:	000a8e63          	beqz	s5,800046e8 <_Z29producerConsumer_CPP_Sync_APIv+0x3ac>
    800046d0:	000a8513          	mv	a0,s5
    800046d4:	00001097          	auipc	ra,0x1
    800046d8:	aa4080e7          	jalr	-1372(ra) # 80005178 <_ZN9BufferCPPD1Ev>
    800046dc:	000a8513          	mv	a0,s5
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	75c080e7          	jalr	1884(ra) # 80001e3c <_ZdlPv>
    800046e8:	000b8113          	mv	sp,s7
}
    800046ec:	f9040113          	addi	sp,s0,-112
    800046f0:	06813083          	ld	ra,104(sp)
    800046f4:	06013403          	ld	s0,96(sp)
    800046f8:	05813483          	ld	s1,88(sp)
    800046fc:	05013903          	ld	s2,80(sp)
    80004700:	04813983          	ld	s3,72(sp)
    80004704:	04013a03          	ld	s4,64(sp)
    80004708:	03813a83          	ld	s5,56(sp)
    8000470c:	03013b03          	ld	s6,48(sp)
    80004710:	02813b83          	ld	s7,40(sp)
    80004714:	02013c03          	ld	s8,32(sp)
    80004718:	07010113          	addi	sp,sp,112
    8000471c:	00008067          	ret
    80004720:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004724:	000a8513          	mv	a0,s5
    80004728:	ffffd097          	auipc	ra,0xffffd
    8000472c:	714080e7          	jalr	1812(ra) # 80001e3c <_ZdlPv>
    80004730:	00048513          	mv	a0,s1
    80004734:	00007097          	auipc	ra,0x7
    80004738:	ab4080e7          	jalr	-1356(ra) # 8000b1e8 <_Unwind_Resume>
    8000473c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004740:	00048513          	mv	a0,s1
    80004744:	ffffd097          	auipc	ra,0xffffd
    80004748:	6f8080e7          	jalr	1784(ra) # 80001e3c <_ZdlPv>
    8000474c:	00090513          	mv	a0,s2
    80004750:	00007097          	auipc	ra,0x7
    80004754:	a98080e7          	jalr	-1384(ra) # 8000b1e8 <_Unwind_Resume>

0000000080004758 <_ZN9SemaphoreD1Ev>:
    virtual ~Semaphore() {
    80004758:	00006797          	auipc	a5,0x6
    8000475c:	84878793          	addi	a5,a5,-1976 # 80009fa0 <_ZTV9Semaphore+0x10>
    80004760:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    80004764:	00853503          	ld	a0,8(a0)
    80004768:	02050663          	beqz	a0,80004794 <_ZN9SemaphoreD1Ev+0x3c>
    virtual ~Semaphore() {
    8000476c:	ff010113          	addi	sp,sp,-16
    80004770:	00113423          	sd	ra,8(sp)
    80004774:	00813023          	sd	s0,0(sp)
    80004778:	01010413          	addi	s0,sp,16
            sem_close(myHandle);
    8000477c:	ffffd097          	auipc	ra,0xffffd
    80004780:	ed8080e7          	jalr	-296(ra) # 80001654 <_Z9sem_closeP4_sem>
    }
    80004784:	00813083          	ld	ra,8(sp)
    80004788:	00013403          	ld	s0,0(sp)
    8000478c:	01010113          	addi	sp,sp,16
    80004790:	00008067          	ret
    80004794:	00008067          	ret

0000000080004798 <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore() {
    80004798:	fe010113          	addi	sp,sp,-32
    8000479c:	00113c23          	sd	ra,24(sp)
    800047a0:	00813823          	sd	s0,16(sp)
    800047a4:	00913423          	sd	s1,8(sp)
    800047a8:	02010413          	addi	s0,sp,32
    800047ac:	00050493          	mv	s1,a0
    800047b0:	00005797          	auipc	a5,0x5
    800047b4:	7f078793          	addi	a5,a5,2032 # 80009fa0 <_ZTV9Semaphore+0x10>
    800047b8:	00f53023          	sd	a5,0(a0)
        if (myHandle != nullptr) {
    800047bc:	00853503          	ld	a0,8(a0)
    800047c0:	00050663          	beqz	a0,800047cc <_ZN9SemaphoreD0Ev+0x34>
            sem_close(myHandle);
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	e90080e7          	jalr	-368(ra) # 80001654 <_Z9sem_closeP4_sem>
    }
    800047cc:	00048513          	mv	a0,s1
    800047d0:	ffffd097          	auipc	ra,0xffffd
    800047d4:	66c080e7          	jalr	1644(ra) # 80001e3c <_ZdlPv>
    800047d8:	01813083          	ld	ra,24(sp)
    800047dc:	01013403          	ld	s0,16(sp)
    800047e0:	00813483          	ld	s1,8(sp)
    800047e4:	02010113          	addi	sp,sp,32
    800047e8:	00008067          	ret

00000000800047ec <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard : public Thread {
    800047ec:	fe010113          	addi	sp,sp,-32
    800047f0:	00113c23          	sd	ra,24(sp)
    800047f4:	00813823          	sd	s0,16(sp)
    800047f8:	00913423          	sd	s1,8(sp)
    800047fc:	02010413          	addi	s0,sp,32
    virtual ~Thread() {
    80004800:	00005797          	auipc	a5,0x5
    80004804:	6d878793          	addi	a5,a5,1752 # 80009ed8 <_ZTV6Thread+0x10>
    80004808:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    8000480c:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    80004810:	00500713          	li	a4,5
    80004814:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    80004818:	00853483          	ld	s1,8(a0)
    8000481c:	02048063          	beqz	s1,8000483c <_ZN16ProducerKeyboardD1Ev+0x50>
    ~PCB() { delete[] stack; }
    80004820:	0184b503          	ld	a0,24(s1)
    80004824:	00050663          	beqz	a0,80004830 <_ZN16ProducerKeyboardD1Ev+0x44>
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	664080e7          	jalr	1636(ra) # 80001e8c <_ZdaPv>
    80004830:	00048513          	mv	a0,s1
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	608080e7          	jalr	1544(ra) # 80001e3c <_ZdlPv>
    8000483c:	01813083          	ld	ra,24(sp)
    80004840:	01013403          	ld	s0,16(sp)
    80004844:	00813483          	ld	s1,8(sp)
    80004848:	02010113          	addi	sp,sp,32
    8000484c:	00008067          	ret

0000000080004850 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync : public Thread {
    80004850:	fe010113          	addi	sp,sp,-32
    80004854:	00113c23          	sd	ra,24(sp)
    80004858:	00813823          	sd	s0,16(sp)
    8000485c:	00913423          	sd	s1,8(sp)
    80004860:	02010413          	addi	s0,sp,32
    virtual ~Thread() {
    80004864:	00005797          	auipc	a5,0x5
    80004868:	67478793          	addi	a5,a5,1652 # 80009ed8 <_ZTV6Thread+0x10>
    8000486c:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80004870:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    80004874:	00500713          	li	a4,5
    80004878:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    8000487c:	00853483          	ld	s1,8(a0)
    80004880:	02048063          	beqz	s1,800048a0 <_ZN12ConsumerSyncD1Ev+0x50>
    ~PCB() { delete[] stack; }
    80004884:	0184b503          	ld	a0,24(s1)
    80004888:	00050663          	beqz	a0,80004894 <_ZN12ConsumerSyncD1Ev+0x44>
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	600080e7          	jalr	1536(ra) # 80001e8c <_ZdaPv>
    80004894:	00048513          	mv	a0,s1
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	5a4080e7          	jalr	1444(ra) # 80001e3c <_ZdlPv>
    800048a0:	01813083          	ld	ra,24(sp)
    800048a4:	01013403          	ld	s0,16(sp)
    800048a8:	00813483          	ld	s1,8(sp)
    800048ac:	02010113          	addi	sp,sp,32
    800048b0:	00008067          	ret

00000000800048b4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync : public Thread {
    800048b4:	fe010113          	addi	sp,sp,-32
    800048b8:	00113c23          	sd	ra,24(sp)
    800048bc:	00813823          	sd	s0,16(sp)
    800048c0:	00913423          	sd	s1,8(sp)
    800048c4:	02010413          	addi	s0,sp,32
    virtual ~Thread() {
    800048c8:	00005797          	auipc	a5,0x5
    800048cc:	61078793          	addi	a5,a5,1552 # 80009ed8 <_ZTV6Thread+0x10>
    800048d0:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    800048d4:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    800048d8:	00500713          	li	a4,5
    800048dc:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    800048e0:	00853483          	ld	s1,8(a0)
    800048e4:	02048063          	beqz	s1,80004904 <_ZN12ProducerSyncD1Ev+0x50>
    ~PCB() { delete[] stack; }
    800048e8:	0184b503          	ld	a0,24(s1)
    800048ec:	00050663          	beqz	a0,800048f8 <_ZN12ProducerSyncD1Ev+0x44>
    800048f0:	ffffd097          	auipc	ra,0xffffd
    800048f4:	59c080e7          	jalr	1436(ra) # 80001e8c <_ZdaPv>
    800048f8:	00048513          	mv	a0,s1
    800048fc:	ffffd097          	auipc	ra,0xffffd
    80004900:	540080e7          	jalr	1344(ra) # 80001e3c <_ZdlPv>
    80004904:	01813083          	ld	ra,24(sp)
    80004908:	01013403          	ld	s0,16(sp)
    8000490c:	00813483          	ld	s1,8(sp)
    80004910:	02010113          	addi	sp,sp,32
    80004914:	00008067          	ret

0000000080004918 <_ZN16ProducerKeyboardD0Ev>:
class ProducerKeyboard : public Thread {
    80004918:	fe010113          	addi	sp,sp,-32
    8000491c:	00113c23          	sd	ra,24(sp)
    80004920:	00813823          	sd	s0,16(sp)
    80004924:	00913423          	sd	s1,8(sp)
    80004928:	01213023          	sd	s2,0(sp)
    8000492c:	02010413          	addi	s0,sp,32
    80004930:	00050493          	mv	s1,a0
    virtual ~Thread() {
    80004934:	00005797          	auipc	a5,0x5
    80004938:	5a478793          	addi	a5,a5,1444 # 80009ed8 <_ZTV6Thread+0x10>
    8000493c:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80004940:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    80004944:	00500713          	li	a4,5
    80004948:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    8000494c:	00853903          	ld	s2,8(a0)
    80004950:	02090063          	beqz	s2,80004970 <_ZN16ProducerKeyboardD0Ev+0x58>
    ~PCB() { delete[] stack; }
    80004954:	01893503          	ld	a0,24(s2)
    80004958:	00050663          	beqz	a0,80004964 <_ZN16ProducerKeyboardD0Ev+0x4c>
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	530080e7          	jalr	1328(ra) # 80001e8c <_ZdaPv>
    80004964:	00090513          	mv	a0,s2
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	4d4080e7          	jalr	1236(ra) # 80001e3c <_ZdlPv>
    80004970:	00048513          	mv	a0,s1
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	4c8080e7          	jalr	1224(ra) # 80001e3c <_ZdlPv>
    8000497c:	01813083          	ld	ra,24(sp)
    80004980:	01013403          	ld	s0,16(sp)
    80004984:	00813483          	ld	s1,8(sp)
    80004988:	00013903          	ld	s2,0(sp)
    8000498c:	02010113          	addi	sp,sp,32
    80004990:	00008067          	ret

0000000080004994 <_ZN12ConsumerSyncD0Ev>:
class ConsumerSync : public Thread {
    80004994:	fe010113          	addi	sp,sp,-32
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00813823          	sd	s0,16(sp)
    800049a0:	00913423          	sd	s1,8(sp)
    800049a4:	01213023          	sd	s2,0(sp)
    800049a8:	02010413          	addi	s0,sp,32
    800049ac:	00050493          	mv	s1,a0
    virtual ~Thread() {
    800049b0:	00005797          	auipc	a5,0x5
    800049b4:	52878793          	addi	a5,a5,1320 # 80009ed8 <_ZTV6Thread+0x10>
    800049b8:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    800049bc:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    800049c0:	00500713          	li	a4,5
    800049c4:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    800049c8:	00853903          	ld	s2,8(a0)
    800049cc:	02090063          	beqz	s2,800049ec <_ZN12ConsumerSyncD0Ev+0x58>
    ~PCB() { delete[] stack; }
    800049d0:	01893503          	ld	a0,24(s2)
    800049d4:	00050663          	beqz	a0,800049e0 <_ZN12ConsumerSyncD0Ev+0x4c>
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	4b4080e7          	jalr	1204(ra) # 80001e8c <_ZdaPv>
    800049e0:	00090513          	mv	a0,s2
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	458080e7          	jalr	1112(ra) # 80001e3c <_ZdlPv>
    800049ec:	00048513          	mv	a0,s1
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	44c080e7          	jalr	1100(ra) # 80001e3c <_ZdlPv>
    800049f8:	01813083          	ld	ra,24(sp)
    800049fc:	01013403          	ld	s0,16(sp)
    80004a00:	00813483          	ld	s1,8(sp)
    80004a04:	00013903          	ld	s2,0(sp)
    80004a08:	02010113          	addi	sp,sp,32
    80004a0c:	00008067          	ret

0000000080004a10 <_ZN12ProducerSyncD0Ev>:
class ProducerSync : public Thread {
    80004a10:	fe010113          	addi	sp,sp,-32
    80004a14:	00113c23          	sd	ra,24(sp)
    80004a18:	00813823          	sd	s0,16(sp)
    80004a1c:	00913423          	sd	s1,8(sp)
    80004a20:	01213023          	sd	s2,0(sp)
    80004a24:	02010413          	addi	s0,sp,32
    80004a28:	00050493          	mv	s1,a0
    virtual ~Thread() {
    80004a2c:	00005797          	auipc	a5,0x5
    80004a30:	4ac78793          	addi	a5,a5,1196 # 80009ed8 <_ZTV6Thread+0x10>
    80004a34:	00f53023          	sd	a5,0(a0)
        myHandle->setState(PCB::FINISHED);
    80004a38:	00853783          	ld	a5,8(a0)
    void setState(threadState st) { state = st; }
    80004a3c:	00500713          	li	a4,5
    80004a40:	02e7a823          	sw	a4,48(a5)
        delete myHandle;
    80004a44:	00853903          	ld	s2,8(a0)
    80004a48:	02090063          	beqz	s2,80004a68 <_ZN12ProducerSyncD0Ev+0x58>
    ~PCB() { delete[] stack; }
    80004a4c:	01893503          	ld	a0,24(s2)
    80004a50:	00050663          	beqz	a0,80004a5c <_ZN12ProducerSyncD0Ev+0x4c>
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	438080e7          	jalr	1080(ra) # 80001e8c <_ZdaPv>
    80004a5c:	00090513          	mv	a0,s2
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	3dc080e7          	jalr	988(ra) # 80001e3c <_ZdlPv>
    80004a68:	00048513          	mv	a0,s1
    80004a6c:	ffffd097          	auipc	ra,0xffffd
    80004a70:	3d0080e7          	jalr	976(ra) # 80001e3c <_ZdlPv>
    80004a74:	01813083          	ld	ra,24(sp)
    80004a78:	01013403          	ld	s0,16(sp)
    80004a7c:	00813483          	ld	s1,8(sp)
    80004a80:	00013903          	ld	s2,0(sp)
    80004a84:	02010113          	addi	sp,sp,32
    80004a88:	00008067          	ret

0000000080004a8c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004a8c:	ff010113          	addi	sp,sp,-16
    80004a90:	00113423          	sd	ra,8(sp)
    80004a94:	00813023          	sd	s0,0(sp)
    80004a98:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004a9c:	02053583          	ld	a1,32(a0)
    80004aa0:	fffff097          	auipc	ra,0xfffff
    80004aa4:	63c080e7          	jalr	1596(ra) # 800040dc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004aa8:	00813083          	ld	ra,8(sp)
    80004aac:	00013403          	ld	s0,0(sp)
    80004ab0:	01010113          	addi	sp,sp,16
    80004ab4:	00008067          	ret

0000000080004ab8 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004ab8:	ff010113          	addi	sp,sp,-16
    80004abc:	00113423          	sd	ra,8(sp)
    80004ac0:	00813023          	sd	s0,0(sp)
    80004ac4:	01010413          	addi	s0,sp,16
        producer(td);
    80004ac8:	02053583          	ld	a1,32(a0)
    80004acc:	fffff097          	auipc	ra,0xfffff
    80004ad0:	6d8080e7          	jalr	1752(ra) # 800041a4 <_ZN12ProducerSync8producerEPv>
    }
    80004ad4:	00813083          	ld	ra,8(sp)
    80004ad8:	00013403          	ld	s0,0(sp)
    80004adc:	01010113          	addi	sp,sp,16
    80004ae0:	00008067          	ret

0000000080004ae4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004ae4:	ff010113          	addi	sp,sp,-16
    80004ae8:	00113423          	sd	ra,8(sp)
    80004aec:	00813023          	sd	s0,0(sp)
    80004af0:	01010413          	addi	s0,sp,16
        consumer(td);
    80004af4:	02053583          	ld	a1,32(a0)
    80004af8:	fffff097          	auipc	ra,0xfffff
    80004afc:	748080e7          	jalr	1864(ra) # 80004240 <_ZN12ConsumerSync8consumerEPv>
    }
    80004b00:	00813083          	ld	ra,8(sp)
    80004b04:	00013403          	ld	s0,0(sp)
    80004b08:	01010113          	addi	sp,sp,16
    80004b0c:	00008067          	ret

0000000080004b10 <_Z11printStringPKc>:
uint64 lockPrint = 0;

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string) {
    80004b10:	fe010113          	addi	sp,sp,-32
    80004b14:	00113c23          	sd	ra,24(sp)
    80004b18:	00813823          	sd	s0,16(sp)
    80004b1c:	00913423          	sd	s1,8(sp)
    80004b20:	02010413          	addi	s0,sp,32
    80004b24:	00050493          	mv	s1,a0
    LOCK();
    80004b28:	00100613          	li	a2,1
    80004b2c:	00000593          	li	a1,0
    80004b30:	00005517          	auipc	a0,0x5
    80004b34:	5e050513          	addi	a0,a0,1504 # 8000a110 <lockPrint>
    80004b38:	ffffd097          	auipc	ra,0xffffd
    80004b3c:	924080e7          	jalr	-1756(ra) # 8000145c <copy_and_swap>
    80004b40:	00050863          	beqz	a0,80004b50 <_Z11printStringPKc+0x40>
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	ab8080e7          	jalr	-1352(ra) # 800015fc <_Z15thread_dispatchv>
    80004b4c:	fddff06f          	j	80004b28 <_Z11printStringPKc+0x18>
    while (*string != '\0') {
    80004b50:	0004c503          	lbu	a0,0(s1)
    80004b54:	00050a63          	beqz	a0,80004b68 <_Z11printStringPKc+0x58>
        putc(*string); //ovde treba putc iz syscall da stoji
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	be8080e7          	jalr	-1048(ra) # 80001740 <_Z4putcc>
        string++;
    80004b60:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80004b64:	fedff06f          	j	80004b50 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004b68:	00000613          	li	a2,0
    80004b6c:	00100593          	li	a1,1
    80004b70:	00005517          	auipc	a0,0x5
    80004b74:	5a050513          	addi	a0,a0,1440 # 8000a110 <lockPrint>
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	8e4080e7          	jalr	-1820(ra) # 8000145c <copy_and_swap>
    80004b80:	fe0514e3          	bnez	a0,80004b68 <_Z11printStringPKc+0x58>
}
    80004b84:	01813083          	ld	ra,24(sp)
    80004b88:	01013403          	ld	s0,16(sp)
    80004b8c:	00813483          	ld	s1,8(sp)
    80004b90:	02010113          	addi	sp,sp,32
    80004b94:	00008067          	ret

0000000080004b98 <_Z9getStringPci>:

char *getString(char *buf, int max) {
    80004b98:	fd010113          	addi	sp,sp,-48
    80004b9c:	02113423          	sd	ra,40(sp)
    80004ba0:	02813023          	sd	s0,32(sp)
    80004ba4:	00913c23          	sd	s1,24(sp)
    80004ba8:	01213823          	sd	s2,16(sp)
    80004bac:	01313423          	sd	s3,8(sp)
    80004bb0:	01413023          	sd	s4,0(sp)
    80004bb4:	03010413          	addi	s0,sp,48
    80004bb8:	00050993          	mv	s3,a0
    80004bbc:	00058a13          	mv	s4,a1
    LOCK();
    80004bc0:	00100613          	li	a2,1
    80004bc4:	00000593          	li	a1,0
    80004bc8:	00005517          	auipc	a0,0x5
    80004bcc:	54850513          	addi	a0,a0,1352 # 8000a110 <lockPrint>
    80004bd0:	ffffd097          	auipc	ra,0xffffd
    80004bd4:	88c080e7          	jalr	-1908(ra) # 8000145c <copy_and_swap>
    80004bd8:	00050863          	beqz	a0,80004be8 <_Z9getStringPci+0x50>
    80004bdc:	ffffd097          	auipc	ra,0xffffd
    80004be0:	a20080e7          	jalr	-1504(ra) # 800015fc <_Z15thread_dispatchv>
    80004be4:	fddff06f          	j	80004bc0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for (i = 0; i + 1 < max;) {
    80004be8:	00000913          	li	s2,0
    80004bec:	00090493          	mv	s1,s2
    80004bf0:	0019091b          	addiw	s2,s2,1
    80004bf4:	03495a63          	bge	s2,s4,80004c28 <_Z9getStringPci+0x90>
        cc = getc();
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	b1c080e7          	jalr	-1252(ra) # 80001714 <_Z4getcv>
        if (cc < 1)
    80004c00:	02050463          	beqz	a0,80004c28 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004c04:	009984b3          	add	s1,s3,s1
    80004c08:	00a48023          	sb	a0,0(s1)
        if (c == '\n' || c == '\r')
    80004c0c:	00a00793          	li	a5,10
    80004c10:	00f50a63          	beq	a0,a5,80004c24 <_Z9getStringPci+0x8c>
    80004c14:	00d00793          	li	a5,13
    80004c18:	fcf51ae3          	bne	a0,a5,80004bec <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004c1c:	00090493          	mv	s1,s2
    80004c20:	0080006f          	j	80004c28 <_Z9getStringPci+0x90>
    80004c24:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004c28:	009984b3          	add	s1,s3,s1
    80004c2c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004c30:	00000613          	li	a2,0
    80004c34:	00100593          	li	a1,1
    80004c38:	00005517          	auipc	a0,0x5
    80004c3c:	4d850513          	addi	a0,a0,1240 # 8000a110 <lockPrint>
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	81c080e7          	jalr	-2020(ra) # 8000145c <copy_and_swap>
    80004c48:	fe0514e3          	bnez	a0,80004c30 <_Z9getStringPci+0x98>
    return buf;
    // return nullptr; //ovo treba izbrisati
}
    80004c4c:	00098513          	mv	a0,s3
    80004c50:	02813083          	ld	ra,40(sp)
    80004c54:	02013403          	ld	s0,32(sp)
    80004c58:	01813483          	ld	s1,24(sp)
    80004c5c:	01013903          	ld	s2,16(sp)
    80004c60:	00813983          	ld	s3,8(sp)
    80004c64:	00013a03          	ld	s4,0(sp)
    80004c68:	03010113          	addi	sp,sp,48
    80004c6c:	00008067          	ret

0000000080004c70 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004c70:	ff010113          	addi	sp,sp,-16
    80004c74:	00813423          	sd	s0,8(sp)
    80004c78:	01010413          	addi	s0,sp,16
    80004c7c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004c80:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004c84:	0006c603          	lbu	a2,0(a3)
    80004c88:	fd06071b          	addiw	a4,a2,-48
    80004c8c:	0ff77713          	andi	a4,a4,255
    80004c90:	00900793          	li	a5,9
    80004c94:	02e7e063          	bltu	a5,a4,80004cb4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004c98:	0025179b          	slliw	a5,a0,0x2
    80004c9c:	00a787bb          	addw	a5,a5,a0
    80004ca0:	0017979b          	slliw	a5,a5,0x1
    80004ca4:	00168693          	addi	a3,a3,1
    80004ca8:	00c787bb          	addw	a5,a5,a2
    80004cac:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004cb0:	fd5ff06f          	j	80004c84 <_Z11stringToIntPKc+0x14>
    return n;
    // return 0; //ovo treba obrisati
}
    80004cb4:	00813403          	ld	s0,8(sp)
    80004cb8:	01010113          	addi	sp,sp,16
    80004cbc:	00008067          	ret

0000000080004cc0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn) {
    80004cc0:	fc010113          	addi	sp,sp,-64
    80004cc4:	02113c23          	sd	ra,56(sp)
    80004cc8:	02813823          	sd	s0,48(sp)
    80004ccc:	02913423          	sd	s1,40(sp)
    80004cd0:	03213023          	sd	s2,32(sp)
    80004cd4:	01313c23          	sd	s3,24(sp)
    80004cd8:	04010413          	addi	s0,sp,64
    80004cdc:	00050493          	mv	s1,a0
    80004ce0:	00058913          	mv	s2,a1
    80004ce4:	00060993          	mv	s3,a2
    LOCK();
    80004ce8:	00100613          	li	a2,1
    80004cec:	00000593          	li	a1,0
    80004cf0:	00005517          	auipc	a0,0x5
    80004cf4:	42050513          	addi	a0,a0,1056 # 8000a110 <lockPrint>
    80004cf8:	ffffc097          	auipc	ra,0xffffc
    80004cfc:	764080e7          	jalr	1892(ra) # 8000145c <copy_and_swap>
    80004d00:	00050863          	beqz	a0,80004d10 <_Z8printIntiii+0x50>
    80004d04:	ffffd097          	auipc	ra,0xffffd
    80004d08:	8f8080e7          	jalr	-1800(ra) # 800015fc <_Z15thread_dispatchv>
    80004d0c:	fddff06f          	j	80004ce8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if (sgn && xx < 0) {
    80004d10:	00098463          	beqz	s3,80004d18 <_Z8printIntiii+0x58>
    80004d14:	0804c463          	bltz	s1,80004d9c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004d18:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004d1c:	00000593          	li	a1,0
    }

    i = 0;
    80004d20:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80004d24:	0009079b          	sext.w	a5,s2
    80004d28:	0325773b          	remuw	a4,a0,s2
    80004d2c:	00048613          	mv	a2,s1
    80004d30:	0014849b          	addiw	s1,s1,1
    80004d34:	02071693          	slli	a3,a4,0x20
    80004d38:	0206d693          	srli	a3,a3,0x20
    80004d3c:	00005717          	auipc	a4,0x5
    80004d40:	2ec70713          	addi	a4,a4,748 # 8000a028 <digits>
    80004d44:	00d70733          	add	a4,a4,a3
    80004d48:	00074683          	lbu	a3,0(a4)
    80004d4c:	fd040713          	addi	a4,s0,-48
    80004d50:	00c70733          	add	a4,a4,a2
    80004d54:	fed70823          	sb	a3,-16(a4)
    } while ((x /= base) != 0);
    80004d58:	0005071b          	sext.w	a4,a0
    80004d5c:	0325553b          	divuw	a0,a0,s2
    80004d60:	fcf772e3          	bgeu	a4,a5,80004d24 <_Z8printIntiii+0x64>
    if (neg)
    80004d64:	00058c63          	beqz	a1,80004d7c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004d68:	fd040793          	addi	a5,s0,-48
    80004d6c:	009784b3          	add	s1,a5,s1
    80004d70:	02d00793          	li	a5,45
    80004d74:	fef48823          	sb	a5,-16(s1)
    80004d78:	0026049b          	addiw	s1,a2,2

    while (--i >= 0)
    80004d7c:	fff4849b          	addiw	s1,s1,-1
    80004d80:	0204c463          	bltz	s1,80004da8 <_Z8printIntiii+0xe8>
        putc(buf[i]); //treba putc
    80004d84:	fd040793          	addi	a5,s0,-48
    80004d88:	009787b3          	add	a5,a5,s1
    80004d8c:	ff07c503          	lbu	a0,-16(a5)
    80004d90:	ffffd097          	auipc	ra,0xffffd
    80004d94:	9b0080e7          	jalr	-1616(ra) # 80001740 <_Z4putcc>
    80004d98:	fe5ff06f          	j	80004d7c <_Z8printIntiii+0xbc>
        x = -xx;
    80004d9c:	4090053b          	negw	a0,s1
        neg = 1;
    80004da0:	00100593          	li	a1,1
        x = -xx;
    80004da4:	f7dff06f          	j	80004d20 <_Z8printIntiii+0x60>

    UNLOCK();
    80004da8:	00000613          	li	a2,0
    80004dac:	00100593          	li	a1,1
    80004db0:	00005517          	auipc	a0,0x5
    80004db4:	36050513          	addi	a0,a0,864 # 8000a110 <lockPrint>
    80004db8:	ffffc097          	auipc	ra,0xffffc
    80004dbc:	6a4080e7          	jalr	1700(ra) # 8000145c <copy_and_swap>
    80004dc0:	fe0514e3          	bnez	a0,80004da8 <_Z8printIntiii+0xe8>
}
    80004dc4:	03813083          	ld	ra,56(sp)
    80004dc8:	03013403          	ld	s0,48(sp)
    80004dcc:	02813483          	ld	s1,40(sp)
    80004dd0:	02013903          	ld	s2,32(sp)
    80004dd4:	01813983          	ld	s3,24(sp)
    80004dd8:	04010113          	addi	sp,sp,64
    80004ddc:	00008067          	ret

0000000080004de0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004de0:	fd010113          	addi	sp,sp,-48
    80004de4:	02113423          	sd	ra,40(sp)
    80004de8:	02813023          	sd	s0,32(sp)
    80004dec:	00913c23          	sd	s1,24(sp)
    80004df0:	01213823          	sd	s2,16(sp)
    80004df4:	01313423          	sd	s3,8(sp)
    80004df8:	03010413          	addi	s0,sp,48
    80004dfc:	00050493          	mv	s1,a0
    80004e00:	00058993          	mv	s3,a1
    80004e04:	0015879b          	addiw	a5,a1,1
    80004e08:	0007851b          	sext.w	a0,a5
    80004e0c:	00f4a023          	sw	a5,0(s1)
    80004e10:	0004a823          	sw	zero,16(s1)
    80004e14:	0004aa23          	sw	zero,20(s1)
    buffer = (int *) mem_alloc(sizeof(int) * cap);
    80004e18:	00251513          	slli	a0,a0,0x2
    80004e1c:	ffffc097          	auipc	ra,0xffffc
    80004e20:	6a8080e7          	jalr	1704(ra) # 800014c4 <_Z9mem_allocm>
    80004e24:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004e28:	01000513          	li	a0,16
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	fe8080e7          	jalr	-24(ra) # 80001e14 <_Znwm>
    80004e34:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80004e38:	00005797          	auipc	a5,0x5
    80004e3c:	16878793          	addi	a5,a5,360 # 80009fa0 <_ZTV9Semaphore+0x10>
    80004e40:	00f53023          	sd	a5,0(a0)
        sem_open(&myHandle, init);
    80004e44:	00000593          	li	a1,0
    80004e48:	00850513          	addi	a0,a0,8
    80004e4c:	ffffc097          	auipc	ra,0xffffc
    80004e50:	7d4080e7          	jalr	2004(ra) # 80001620 <_Z8sem_openPP4_semj>
    80004e54:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004e58:	01000513          	li	a0,16
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	fb8080e7          	jalr	-72(ra) # 80001e14 <_Znwm>
    80004e64:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80004e68:	00005797          	auipc	a5,0x5
    80004e6c:	13878793          	addi	a5,a5,312 # 80009fa0 <_ZTV9Semaphore+0x10>
    80004e70:	00f53023          	sd	a5,0(a0)
        sem_open(&myHandle, init);
    80004e74:	00098593          	mv	a1,s3
    80004e78:	00850513          	addi	a0,a0,8
    80004e7c:	ffffc097          	auipc	ra,0xffffc
    80004e80:	7a4080e7          	jalr	1956(ra) # 80001620 <_Z8sem_openPP4_semj>
    80004e84:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80004e88:	01000513          	li	a0,16
    80004e8c:	ffffd097          	auipc	ra,0xffffd
    80004e90:	f88080e7          	jalr	-120(ra) # 80001e14 <_Znwm>
    80004e94:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80004e98:	00005797          	auipc	a5,0x5
    80004e9c:	10878793          	addi	a5,a5,264 # 80009fa0 <_ZTV9Semaphore+0x10>
    80004ea0:	00f53023          	sd	a5,0(a0)
        sem_open(&myHandle, init);
    80004ea4:	00100593          	li	a1,1
    80004ea8:	00850513          	addi	a0,a0,8
    80004eac:	ffffc097          	auipc	ra,0xffffc
    80004eb0:	774080e7          	jalr	1908(ra) # 80001620 <_Z8sem_openPP4_semj>
    80004eb4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004eb8:	01000513          	li	a0,16
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	f58080e7          	jalr	-168(ra) # 80001e14 <_Znwm>
    80004ec4:	00050913          	mv	s2,a0
    Semaphore(unsigned init = 1) {
    80004ec8:	00005797          	auipc	a5,0x5
    80004ecc:	0d878793          	addi	a5,a5,216 # 80009fa0 <_ZTV9Semaphore+0x10>
    80004ed0:	00f53023          	sd	a5,0(a0)
        sem_open(&myHandle, init);
    80004ed4:	00100593          	li	a1,1
    80004ed8:	00850513          	addi	a0,a0,8
    80004edc:	ffffc097          	auipc	ra,0xffffc
    80004ee0:	744080e7          	jalr	1860(ra) # 80001620 <_Z8sem_openPP4_semj>
    80004ee4:	0324b823          	sd	s2,48(s1)
}
    80004ee8:	02813083          	ld	ra,40(sp)
    80004eec:	02013403          	ld	s0,32(sp)
    80004ef0:	01813483          	ld	s1,24(sp)
    80004ef4:	01013903          	ld	s2,16(sp)
    80004ef8:	00813983          	ld	s3,8(sp)
    80004efc:	03010113          	addi	sp,sp,48
    80004f00:	00008067          	ret
    80004f04:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004f08:	00090513          	mv	a0,s2
    80004f0c:	ffffd097          	auipc	ra,0xffffd
    80004f10:	f30080e7          	jalr	-208(ra) # 80001e3c <_ZdlPv>
    80004f14:	00048513          	mv	a0,s1
    80004f18:	00006097          	auipc	ra,0x6
    80004f1c:	2d0080e7          	jalr	720(ra) # 8000b1e8 <_Unwind_Resume>
    80004f20:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004f24:	00090513          	mv	a0,s2
    80004f28:	ffffd097          	auipc	ra,0xffffd
    80004f2c:	f14080e7          	jalr	-236(ra) # 80001e3c <_ZdlPv>
    80004f30:	00048513          	mv	a0,s1
    80004f34:	00006097          	auipc	ra,0x6
    80004f38:	2b4080e7          	jalr	692(ra) # 8000b1e8 <_Unwind_Resume>
    80004f3c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004f40:	00090513          	mv	a0,s2
    80004f44:	ffffd097          	auipc	ra,0xffffd
    80004f48:	ef8080e7          	jalr	-264(ra) # 80001e3c <_ZdlPv>
    80004f4c:	00048513          	mv	a0,s1
    80004f50:	00006097          	auipc	ra,0x6
    80004f54:	298080e7          	jalr	664(ra) # 8000b1e8 <_Unwind_Resume>
    80004f58:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004f5c:	00090513          	mv	a0,s2
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	edc080e7          	jalr	-292(ra) # 80001e3c <_ZdlPv>
    80004f68:	00048513          	mv	a0,s1
    80004f6c:	00006097          	auipc	ra,0x6
    80004f70:	27c080e7          	jalr	636(ra) # 8000b1e8 <_Unwind_Resume>

0000000080004f74 <_ZN9BufferCPP3putEi>:
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;
}

void BufferCPP::put(int val) {
    80004f74:	fe010113          	addi	sp,sp,-32
    80004f78:	00113c23          	sd	ra,24(sp)
    80004f7c:	00813823          	sd	s0,16(sp)
    80004f80:	00913423          	sd	s1,8(sp)
    80004f84:	01213023          	sd	s2,0(sp)
    80004f88:	02010413          	addi	s0,sp,32
    80004f8c:	00050493          	mv	s1,a0
    80004f90:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004f94:	01853783          	ld	a5,24(a0)
        if (myHandle != nullptr) {
    80004f98:	0087b503          	ld	a0,8(a5)
    80004f9c:	00050663          	beqz	a0,80004fa8 <_ZN9BufferCPP3putEi+0x34>
            return sem_wait(myHandle);
    80004fa0:	ffffc097          	auipc	ra,0xffffc
    80004fa4:	6e4080e7          	jalr	1764(ra) # 80001684 <_Z8sem_waitP4_sem>

    mutexTail->wait();
    80004fa8:	0304b783          	ld	a5,48(s1)
        if (myHandle != nullptr) {
    80004fac:	0087b503          	ld	a0,8(a5)
    80004fb0:	00050663          	beqz	a0,80004fbc <_ZN9BufferCPP3putEi+0x48>
            return sem_wait(myHandle);
    80004fb4:	ffffc097          	auipc	ra,0xffffc
    80004fb8:	6d0080e7          	jalr	1744(ra) # 80001684 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80004fbc:	0084b783          	ld	a5,8(s1)
    80004fc0:	0144a703          	lw	a4,20(s1)
    80004fc4:	00271713          	slli	a4,a4,0x2
    80004fc8:	00e787b3          	add	a5,a5,a4
    80004fcc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004fd0:	0144a783          	lw	a5,20(s1)
    80004fd4:	0017879b          	addiw	a5,a5,1
    80004fd8:	0004a703          	lw	a4,0(s1)
    80004fdc:	02e7e7bb          	remw	a5,a5,a4
    80004fe0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004fe4:	0304b783          	ld	a5,48(s1)
        if (myHandle != nullptr) {
    80004fe8:	0087b503          	ld	a0,8(a5)
    80004fec:	00050663          	beqz	a0,80004ff8 <_ZN9BufferCPP3putEi+0x84>
            return sem_signal(myHandle);
    80004ff0:	ffffc097          	auipc	ra,0xffffc
    80004ff4:	6c4080e7          	jalr	1732(ra) # 800016b4 <_Z10sem_signalP4_sem>

    itemAvailable->signal();
    80004ff8:	0204b783          	ld	a5,32(s1)
        if (myHandle != nullptr) {
    80004ffc:	0087b503          	ld	a0,8(a5)
    80005000:	00050663          	beqz	a0,8000500c <_ZN9BufferCPP3putEi+0x98>
            return sem_signal(myHandle);
    80005004:	ffffc097          	auipc	ra,0xffffc
    80005008:	6b0080e7          	jalr	1712(ra) # 800016b4 <_Z10sem_signalP4_sem>
}
    8000500c:	01813083          	ld	ra,24(sp)
    80005010:	01013403          	ld	s0,16(sp)
    80005014:	00813483          	ld	s1,8(sp)
    80005018:	00013903          	ld	s2,0(sp)
    8000501c:	02010113          	addi	sp,sp,32
    80005020:	00008067          	ret

0000000080005024 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005024:	fe010113          	addi	sp,sp,-32
    80005028:	00113c23          	sd	ra,24(sp)
    8000502c:	00813823          	sd	s0,16(sp)
    80005030:	00913423          	sd	s1,8(sp)
    80005034:	01213023          	sd	s2,0(sp)
    80005038:	02010413          	addi	s0,sp,32
    8000503c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005040:	02053783          	ld	a5,32(a0)
        if (myHandle != nullptr) {
    80005044:	0087b503          	ld	a0,8(a5)
    80005048:	00050663          	beqz	a0,80005054 <_ZN9BufferCPP3getEv+0x30>
            return sem_wait(myHandle);
    8000504c:	ffffc097          	auipc	ra,0xffffc
    80005050:	638080e7          	jalr	1592(ra) # 80001684 <_Z8sem_waitP4_sem>

    mutexHead->wait();
    80005054:	0284b783          	ld	a5,40(s1)
        if (myHandle != nullptr) {
    80005058:	0087b503          	ld	a0,8(a5)
    8000505c:	00050663          	beqz	a0,80005068 <_ZN9BufferCPP3getEv+0x44>
            return sem_wait(myHandle);
    80005060:	ffffc097          	auipc	ra,0xffffc
    80005064:	624080e7          	jalr	1572(ra) # 80001684 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005068:	0084b703          	ld	a4,8(s1)
    8000506c:	0104a783          	lw	a5,16(s1)
    80005070:	00279693          	slli	a3,a5,0x2
    80005074:	00d70733          	add	a4,a4,a3
    80005078:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000507c:	0017879b          	addiw	a5,a5,1
    80005080:	0004a703          	lw	a4,0(s1)
    80005084:	02e7e7bb          	remw	a5,a5,a4
    80005088:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000508c:	0284b783          	ld	a5,40(s1)
        if (myHandle != nullptr) {
    80005090:	0087b503          	ld	a0,8(a5)
    80005094:	00050663          	beqz	a0,800050a0 <_ZN9BufferCPP3getEv+0x7c>
            return sem_signal(myHandle);
    80005098:	ffffc097          	auipc	ra,0xffffc
    8000509c:	61c080e7          	jalr	1564(ra) # 800016b4 <_Z10sem_signalP4_sem>

    spaceAvailable->signal();
    800050a0:	0184b783          	ld	a5,24(s1)
        if (myHandle != nullptr) {
    800050a4:	0087b503          	ld	a0,8(a5)
    800050a8:	00050663          	beqz	a0,800050b4 <_ZN9BufferCPP3getEv+0x90>
            return sem_signal(myHandle);
    800050ac:	ffffc097          	auipc	ra,0xffffc
    800050b0:	608080e7          	jalr	1544(ra) # 800016b4 <_Z10sem_signalP4_sem>

    return ret;
}
    800050b4:	00090513          	mv	a0,s2
    800050b8:	01813083          	ld	ra,24(sp)
    800050bc:	01013403          	ld	s0,16(sp)
    800050c0:	00813483          	ld	s1,8(sp)
    800050c4:	00013903          	ld	s2,0(sp)
    800050c8:	02010113          	addi	sp,sp,32
    800050cc:	00008067          	ret

00000000800050d0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800050d0:	fe010113          	addi	sp,sp,-32
    800050d4:	00113c23          	sd	ra,24(sp)
    800050d8:	00813823          	sd	s0,16(sp)
    800050dc:	00913423          	sd	s1,8(sp)
    800050e0:	01213023          	sd	s2,0(sp)
    800050e4:	02010413          	addi	s0,sp,32
    800050e8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800050ec:	02853783          	ld	a5,40(a0)
        if (myHandle != nullptr) {
    800050f0:	0087b503          	ld	a0,8(a5)
    800050f4:	00050663          	beqz	a0,80005100 <_ZN9BufferCPP6getCntEv+0x30>
            return sem_wait(myHandle);
    800050f8:	ffffc097          	auipc	ra,0xffffc
    800050fc:	58c080e7          	jalr	1420(ra) # 80001684 <_Z8sem_waitP4_sem>
    mutexTail->wait();
    80005100:	0304b783          	ld	a5,48(s1)
        if (myHandle != nullptr) {
    80005104:	0087b503          	ld	a0,8(a5)
    80005108:	00050663          	beqz	a0,80005114 <_ZN9BufferCPP6getCntEv+0x44>
            return sem_wait(myHandle);
    8000510c:	ffffc097          	auipc	ra,0xffffc
    80005110:	578080e7          	jalr	1400(ra) # 80001684 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005114:	0144a783          	lw	a5,20(s1)
    80005118:	0104a903          	lw	s2,16(s1)
    8000511c:	0527c663          	blt	a5,s2,80005168 <_ZN9BufferCPP6getCntEv+0x98>
        ret = tail - head;
    80005120:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005124:	0304b783          	ld	a5,48(s1)
        if (myHandle != nullptr) {
    80005128:	0087b503          	ld	a0,8(a5)
    8000512c:	00050663          	beqz	a0,80005138 <_ZN9BufferCPP6getCntEv+0x68>
            return sem_signal(myHandle);
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	584080e7          	jalr	1412(ra) # 800016b4 <_Z10sem_signalP4_sem>
    mutexHead->signal();
    80005138:	0284b783          	ld	a5,40(s1)
        if (myHandle != nullptr) {
    8000513c:	0087b503          	ld	a0,8(a5)
    80005140:	00050663          	beqz	a0,8000514c <_ZN9BufferCPP6getCntEv+0x7c>
            return sem_signal(myHandle);
    80005144:	ffffc097          	auipc	ra,0xffffc
    80005148:	570080e7          	jalr	1392(ra) # 800016b4 <_Z10sem_signalP4_sem>

    return ret;
}
    8000514c:	00090513          	mv	a0,s2
    80005150:	01813083          	ld	ra,24(sp)
    80005154:	01013403          	ld	s0,16(sp)
    80005158:	00813483          	ld	s1,8(sp)
    8000515c:	00013903          	ld	s2,0(sp)
    80005160:	02010113          	addi	sp,sp,32
    80005164:	00008067          	ret
        ret = cap - head + tail;
    80005168:	0004a703          	lw	a4,0(s1)
    8000516c:	4127093b          	subw	s2,a4,s2
    80005170:	00f9093b          	addw	s2,s2,a5
    80005174:	fb1ff06f          	j	80005124 <_ZN9BufferCPP6getCntEv+0x54>

0000000080005178 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005178:	fe010113          	addi	sp,sp,-32
    8000517c:	00113c23          	sd	ra,24(sp)
    80005180:	00813823          	sd	s0,16(sp)
    80005184:	00913423          	sd	s1,8(sp)
    80005188:	02010413          	addi	s0,sp,32
    8000518c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005190:	00a00513          	li	a0,10
    80005194:	ffffd097          	auipc	ra,0xffffd
    80005198:	d48080e7          	jalr	-696(ra) # 80001edc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000519c:	00003517          	auipc	a0,0x3
    800051a0:	11450513          	addi	a0,a0,276 # 800082b0 <CONSOLE_STATUS+0x2a0>
    800051a4:	00000097          	auipc	ra,0x0
    800051a8:	96c080e7          	jalr	-1684(ra) # 80004b10 <_Z11printStringPKc>
    while (getCnt()) {
    800051ac:	00048513          	mv	a0,s1
    800051b0:	00000097          	auipc	ra,0x0
    800051b4:	f20080e7          	jalr	-224(ra) # 800050d0 <_ZN9BufferCPP6getCntEv>
    800051b8:	02050c63          	beqz	a0,800051f0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800051bc:	0084b783          	ld	a5,8(s1)
    800051c0:	0104a703          	lw	a4,16(s1)
    800051c4:	00271713          	slli	a4,a4,0x2
    800051c8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800051cc:	0007c503          	lbu	a0,0(a5)
    800051d0:	ffffd097          	auipc	ra,0xffffd
    800051d4:	d0c080e7          	jalr	-756(ra) # 80001edc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800051d8:	0104a783          	lw	a5,16(s1)
    800051dc:	0017879b          	addiw	a5,a5,1
    800051e0:	0004a703          	lw	a4,0(s1)
    800051e4:	02e7e7bb          	remw	a5,a5,a4
    800051e8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800051ec:	fc1ff06f          	j	800051ac <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800051f0:	02100513          	li	a0,33
    800051f4:	ffffd097          	auipc	ra,0xffffd
    800051f8:	ce8080e7          	jalr	-792(ra) # 80001edc <_ZN7Console4putcEc>
    Console::putc('\n');
    800051fc:	00a00513          	li	a0,10
    80005200:	ffffd097          	auipc	ra,0xffffd
    80005204:	cdc080e7          	jalr	-804(ra) # 80001edc <_ZN7Console4putcEc>
    mem_free(buffer);
    80005208:	0084b503          	ld	a0,8(s1)
    8000520c:	ffffc097          	auipc	ra,0xffffc
    80005210:	308080e7          	jalr	776(ra) # 80001514 <_Z8mem_freePv>
    delete itemAvailable;
    80005214:	0204b503          	ld	a0,32(s1)
    80005218:	00050863          	beqz	a0,80005228 <_ZN9BufferCPPD1Ev+0xb0>
    8000521c:	00053783          	ld	a5,0(a0)
    80005220:	0087b783          	ld	a5,8(a5)
    80005224:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005228:	0184b503          	ld	a0,24(s1)
    8000522c:	00050863          	beqz	a0,8000523c <_ZN9BufferCPPD1Ev+0xc4>
    80005230:	00053783          	ld	a5,0(a0)
    80005234:	0087b783          	ld	a5,8(a5)
    80005238:	000780e7          	jalr	a5
    delete mutexTail;
    8000523c:	0304b503          	ld	a0,48(s1)
    80005240:	00050863          	beqz	a0,80005250 <_ZN9BufferCPPD1Ev+0xd8>
    80005244:	00053783          	ld	a5,0(a0)
    80005248:	0087b783          	ld	a5,8(a5)
    8000524c:	000780e7          	jalr	a5
    delete mutexHead;
    80005250:	0284b503          	ld	a0,40(s1)
    80005254:	00050863          	beqz	a0,80005264 <_ZN9BufferCPPD1Ev+0xec>
    80005258:	00053783          	ld	a5,0(a0)
    8000525c:	0087b783          	ld	a5,8(a5)
    80005260:	000780e7          	jalr	a5
}
    80005264:	01813083          	ld	ra,24(sp)
    80005268:	01013403          	ld	s0,16(sp)
    8000526c:	00813483          	ld	s1,8(sp)
    80005270:	02010113          	addi	sp,sp,32
    80005274:	00008067          	ret

0000000080005278 <_Z8userMainv>:
//     }
//     finishediva++;
//     printString("zavrsena nit\n");
// }

void userMain() {
    80005278:	fe010113          	addi	sp,sp,-32
    8000527c:	00113c23          	sd	ra,24(sp)
    80005280:	00813823          	sd	s0,16(sp)
    80005284:	00913423          	sd	s1,8(sp)
    80005288:	01213023          	sd	s2,0(sp)
    8000528c:	02010413          	addi	s0,sp,32
    // while (finishediva != 2) {
    //     thread_dispatch();
    // }


    printString("Unesite broj testa? [1-7]\n");
    80005290:	00003517          	auipc	a0,0x3
    80005294:	03850513          	addi	a0,a0,56 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	878080e7          	jalr	-1928(ra) # 80004b10 <_Z11printStringPKc>
    int test = getc() - '0';
    800052a0:	ffffc097          	auipc	ra,0xffffc
    800052a4:	474080e7          	jalr	1140(ra) # 80001714 <_Z4getcv>
    800052a8:	00050913          	mv	s2,a0
    800052ac:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800052b0:	ffffc097          	auipc	ra,0xffffc
    800052b4:	464080e7          	jalr	1124(ra) # 80001714 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800052b8:	fcb9091b          	addiw	s2,s2,-53
    800052bc:	00100793          	li	a5,1
    800052c0:	0327f463          	bgeu	a5,s2,800052e8 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800052c4:	00700793          	li	a5,7
    800052c8:	0e97e263          	bltu	a5,s1,800053ac <_Z8userMainv+0x134>
    800052cc:	00249493          	slli	s1,s1,0x2
    800052d0:	00003717          	auipc	a4,0x3
    800052d4:	21070713          	addi	a4,a4,528 # 800084e0 <CONSOLE_STATUS+0x4d0>
    800052d8:	00e484b3          	add	s1,s1,a4
    800052dc:	0004a783          	lw	a5,0(s1)
    800052e0:	00e787b3          	add	a5,a5,a4
    800052e4:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800052e8:	00003517          	auipc	a0,0x3
    800052ec:	00050513          	mv	a0,a0
    800052f0:	00000097          	auipc	ra,0x0
    800052f4:	820080e7          	jalr	-2016(ra) # 80004b10 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    800052f8:	01813083          	ld	ra,24(sp)
    800052fc:	01013403          	ld	s0,16(sp)
    80005300:	00813483          	ld	s1,8(sp)
    80005304:	00013903          	ld	s2,0(sp)
    80005308:	02010113          	addi	sp,sp,32
    8000530c:	00008067          	ret
            Threads_C_API_test();
    80005310:	fffff097          	auipc	ra,0xfffff
    80005314:	cd0080e7          	jalr	-816(ra) # 80003fe0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005318:	00003517          	auipc	a0,0x3
    8000531c:	00050513          	mv	a0,a0
    80005320:	fffff097          	auipc	ra,0xfffff
    80005324:	7f0080e7          	jalr	2032(ra) # 80004b10 <_Z11printStringPKc>
            break;
    80005328:	fd1ff06f          	j	800052f8 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    8000532c:	ffffe097          	auipc	ra,0xffffe
    80005330:	0e8080e7          	jalr	232(ra) # 80003414 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005334:	00003517          	auipc	a0,0x3
    80005338:	02450513          	addi	a0,a0,36 # 80008358 <CONSOLE_STATUS+0x348>
    8000533c:	fffff097          	auipc	ra,0xfffff
    80005340:	7d4080e7          	jalr	2004(ra) # 80004b10 <_Z11printStringPKc>
            break;
    80005344:	fb5ff06f          	j	800052f8 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005348:	ffffe097          	auipc	ra,0xffffe
    8000534c:	920080e7          	jalr	-1760(ra) # 80002c68 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005350:	00003517          	auipc	a0,0x3
    80005354:	04850513          	addi	a0,a0,72 # 80008398 <CONSOLE_STATUS+0x388>
    80005358:	fffff097          	auipc	ra,0xfffff
    8000535c:	7b8080e7          	jalr	1976(ra) # 80004b10 <_Z11printStringPKc>
            break;
    80005360:	f99ff06f          	j	800052f8 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005364:	fffff097          	auipc	ra,0xfffff
    80005368:	fd8080e7          	jalr	-40(ra) # 8000433c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000536c:	00003517          	auipc	a0,0x3
    80005370:	07c50513          	addi	a0,a0,124 # 800083e8 <CONSOLE_STATUS+0x3d8>
    80005374:	fffff097          	auipc	ra,0xfffff
    80005378:	79c080e7          	jalr	1948(ra) # 80004b10 <_Z11printStringPKc>
            break;
    8000537c:	f7dff06f          	j	800052f8 <_Z8userMainv+0x80>
            System_Mode_test();
    80005380:	00000097          	auipc	ra,0x0
    80005384:	52c080e7          	jalr	1324(ra) # 800058ac <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005388:	00003517          	auipc	a0,0x3
    8000538c:	0b850513          	addi	a0,a0,184 # 80008440 <CONSOLE_STATUS+0x430>
    80005390:	fffff097          	auipc	ra,0xfffff
    80005394:	780080e7          	jalr	1920(ra) # 80004b10 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005398:	00003517          	auipc	a0,0x3
    8000539c:	0c850513          	addi	a0,a0,200 # 80008460 <CONSOLE_STATUS+0x450>
    800053a0:	fffff097          	auipc	ra,0xfffff
    800053a4:	770080e7          	jalr	1904(ra) # 80004b10 <_Z11printStringPKc>
            break;
    800053a8:	f51ff06f          	j	800052f8 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800053ac:	00003517          	auipc	a0,0x3
    800053b0:	10c50513          	addi	a0,a0,268 # 800084b8 <CONSOLE_STATUS+0x4a8>
    800053b4:	fffff097          	auipc	ra,0xfffff
    800053b8:	75c080e7          	jalr	1884(ra) # 80004b10 <_Z11printStringPKc>
    800053bc:	f3dff06f          	j	800052f8 <_Z8userMainv+0x80>

00000000800053c0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800053c0:	fe010113          	addi	sp,sp,-32
    800053c4:	00113c23          	sd	ra,24(sp)
    800053c8:	00813823          	sd	s0,16(sp)
    800053cc:	00913423          	sd	s1,8(sp)
    800053d0:	01213023          	sd	s2,0(sp)
    800053d4:	02010413          	addi	s0,sp,32
    800053d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800053dc:	00100793          	li	a5,1
    800053e0:	02a7f863          	bgeu	a5,a0,80005410 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800053e4:	00a00793          	li	a5,10
    800053e8:	02f577b3          	remu	a5,a0,a5
    800053ec:	02078e63          	beqz	a5,80005428 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800053f0:	fff48513          	addi	a0,s1,-1
    800053f4:	00000097          	auipc	ra,0x0
    800053f8:	fcc080e7          	jalr	-52(ra) # 800053c0 <_ZL9fibonaccim>
    800053fc:	00050913          	mv	s2,a0
    80005400:	ffe48513          	addi	a0,s1,-2
    80005404:	00000097          	auipc	ra,0x0
    80005408:	fbc080e7          	jalr	-68(ra) # 800053c0 <_ZL9fibonaccim>
    8000540c:	00a90533          	add	a0,s2,a0
}
    80005410:	01813083          	ld	ra,24(sp)
    80005414:	01013403          	ld	s0,16(sp)
    80005418:	00813483          	ld	s1,8(sp)
    8000541c:	00013903          	ld	s2,0(sp)
    80005420:	02010113          	addi	sp,sp,32
    80005424:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005428:	ffffc097          	auipc	ra,0xffffc
    8000542c:	1d4080e7          	jalr	468(ra) # 800015fc <_Z15thread_dispatchv>
    80005430:	fc1ff06f          	j	800053f0 <_ZL9fibonaccim+0x30>

0000000080005434 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void *arg) {
    80005434:	fe010113          	addi	sp,sp,-32
    80005438:	00113c23          	sd	ra,24(sp)
    8000543c:	00813823          	sd	s0,16(sp)
    80005440:	00913423          	sd	s1,8(sp)
    80005444:	01213023          	sd	s2,0(sp)
    80005448:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000544c:	00a00493          	li	s1,10
    80005450:	0400006f          	j	80005490 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i=");
    80005454:	00003517          	auipc	a0,0x3
    80005458:	dc450513          	addi	a0,a0,-572 # 80008218 <CONSOLE_STATUS+0x208>
    8000545c:	fffff097          	auipc	ra,0xfffff
    80005460:	6b4080e7          	jalr	1716(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    80005464:	00000613          	li	a2,0
    80005468:	00a00593          	li	a1,10
    8000546c:	00048513          	mv	a0,s1
    80005470:	00000097          	auipc	ra,0x0
    80005474:	850080e7          	jalr	-1968(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80005478:	00003517          	auipc	a0,0x3
    8000547c:	fc050513          	addi	a0,a0,-64 # 80008438 <CONSOLE_STATUS+0x428>
    80005480:	fffff097          	auipc	ra,0xfffff
    80005484:	690080e7          	jalr	1680(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005488:	0014849b          	addiw	s1,s1,1
    8000548c:	0ff4f493          	andi	s1,s1,255
    80005490:	00c00793          	li	a5,12
    80005494:	fc97f0e3          	bgeu	a5,s1,80005454 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005498:	00003517          	auipc	a0,0x3
    8000549c:	d8850513          	addi	a0,a0,-632 # 80008220 <CONSOLE_STATUS+0x210>
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	670080e7          	jalr	1648(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800054a8:	00500313          	li	t1,5
    thread_dispatch();
    800054ac:	ffffc097          	auipc	ra,0xffffc
    800054b0:	150080e7          	jalr	336(ra) # 800015fc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800054b4:	01000513          	li	a0,16
    800054b8:	00000097          	auipc	ra,0x0
    800054bc:	f08080e7          	jalr	-248(ra) # 800053c0 <_ZL9fibonaccim>
    800054c0:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800054c4:	00003517          	auipc	a0,0x3
    800054c8:	d6c50513          	addi	a0,a0,-660 # 80008230 <CONSOLE_STATUS+0x220>
    800054cc:	fffff097          	auipc	ra,0xfffff
    800054d0:	644080e7          	jalr	1604(ra) # 80004b10 <_Z11printStringPKc>
    printInt(result);
    800054d4:	00000613          	li	a2,0
    800054d8:	00a00593          	li	a1,10
    800054dc:	0009051b          	sext.w	a0,s2
    800054e0:	fffff097          	auipc	ra,0xfffff
    800054e4:	7e0080e7          	jalr	2016(ra) # 80004cc0 <_Z8printIntiii>
    printString("\n");
    800054e8:	00003517          	auipc	a0,0x3
    800054ec:	f5050513          	addi	a0,a0,-176 # 80008438 <CONSOLE_STATUS+0x428>
    800054f0:	fffff097          	auipc	ra,0xfffff
    800054f4:	620080e7          	jalr	1568(ra) # 80004b10 <_Z11printStringPKc>
    800054f8:	0400006f          	j	80005538 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i=");
    800054fc:	00003517          	auipc	a0,0x3
    80005500:	d1c50513          	addi	a0,a0,-740 # 80008218 <CONSOLE_STATUS+0x208>
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	60c080e7          	jalr	1548(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    8000550c:	00000613          	li	a2,0
    80005510:	00a00593          	li	a1,10
    80005514:	00048513          	mv	a0,s1
    80005518:	fffff097          	auipc	ra,0xfffff
    8000551c:	7a8080e7          	jalr	1960(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80005520:	00003517          	auipc	a0,0x3
    80005524:	f1850513          	addi	a0,a0,-232 # 80008438 <CONSOLE_STATUS+0x428>
    80005528:	fffff097          	auipc	ra,0xfffff
    8000552c:	5e8080e7          	jalr	1512(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005530:	0014849b          	addiw	s1,s1,1
    80005534:	0ff4f493          	andi	s1,s1,255
    80005538:	00f00793          	li	a5,15
    8000553c:	fc97f0e3          	bgeu	a5,s1,800054fc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005540:	00003517          	auipc	a0,0x3
    80005544:	d0050513          	addi	a0,a0,-768 # 80008240 <CONSOLE_STATUS+0x230>
    80005548:	fffff097          	auipc	ra,0xfffff
    8000554c:	5c8080e7          	jalr	1480(ra) # 80004b10 <_Z11printStringPKc>
    finishedD = true;
    80005550:	00100793          	li	a5,1
    80005554:	00005717          	auipc	a4,0x5
    80005558:	bcf70223          	sb	a5,-1084(a4) # 8000a118 <_ZL9finishedD>
    thread_dispatch();
    8000555c:	ffffc097          	auipc	ra,0xffffc
    80005560:	0a0080e7          	jalr	160(ra) # 800015fc <_Z15thread_dispatchv>
}
    80005564:	01813083          	ld	ra,24(sp)
    80005568:	01013403          	ld	s0,16(sp)
    8000556c:	00813483          	ld	s1,8(sp)
    80005570:	00013903          	ld	s2,0(sp)
    80005574:	02010113          	addi	sp,sp,32
    80005578:	00008067          	ret

000000008000557c <_ZL11workerBodyCPv>:
static void workerBodyC(void *arg) {
    8000557c:	fe010113          	addi	sp,sp,-32
    80005580:	00113c23          	sd	ra,24(sp)
    80005584:	00813823          	sd	s0,16(sp)
    80005588:	00913423          	sd	s1,8(sp)
    8000558c:	01213023          	sd	s2,0(sp)
    80005590:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005594:	00000493          	li	s1,0
    80005598:	0400006f          	j	800055d8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i=");
    8000559c:	00003517          	auipc	a0,0x3
    800055a0:	c4c50513          	addi	a0,a0,-948 # 800081e8 <CONSOLE_STATUS+0x1d8>
    800055a4:	fffff097          	auipc	ra,0xfffff
    800055a8:	56c080e7          	jalr	1388(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    800055ac:	00000613          	li	a2,0
    800055b0:	00a00593          	li	a1,10
    800055b4:	00048513          	mv	a0,s1
    800055b8:	fffff097          	auipc	ra,0xfffff
    800055bc:	708080e7          	jalr	1800(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    800055c0:	00003517          	auipc	a0,0x3
    800055c4:	e7850513          	addi	a0,a0,-392 # 80008438 <CONSOLE_STATUS+0x428>
    800055c8:	fffff097          	auipc	ra,0xfffff
    800055cc:	548080e7          	jalr	1352(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800055d0:	0014849b          	addiw	s1,s1,1
    800055d4:	0ff4f493          	andi	s1,s1,255
    800055d8:	00200793          	li	a5,2
    800055dc:	fc97f0e3          	bgeu	a5,s1,8000559c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800055e0:	00003517          	auipc	a0,0x3
    800055e4:	c1050513          	addi	a0,a0,-1008 # 800081f0 <CONSOLE_STATUS+0x1e0>
    800055e8:	fffff097          	auipc	ra,0xfffff
    800055ec:	528080e7          	jalr	1320(ra) # 80004b10 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800055f0:	00700313          	li	t1,7
    thread_dispatch();
    800055f4:	ffffc097          	auipc	ra,0xffffc
    800055f8:	008080e7          	jalr	8(ra) # 800015fc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800055fc:	00030913          	mv	s2,t1
    printString("C: t1=");
    80005600:	00003517          	auipc	a0,0x3
    80005604:	c0050513          	addi	a0,a0,-1024 # 80008200 <CONSOLE_STATUS+0x1f0>
    80005608:	fffff097          	auipc	ra,0xfffff
    8000560c:	508080e7          	jalr	1288(ra) # 80004b10 <_Z11printStringPKc>
    printInt(t1);
    80005610:	00000613          	li	a2,0
    80005614:	00a00593          	li	a1,10
    80005618:	0009051b          	sext.w	a0,s2
    8000561c:	fffff097          	auipc	ra,0xfffff
    80005620:	6a4080e7          	jalr	1700(ra) # 80004cc0 <_Z8printIntiii>
    printString("\n");
    80005624:	00003517          	auipc	a0,0x3
    80005628:	e1450513          	addi	a0,a0,-492 # 80008438 <CONSOLE_STATUS+0x428>
    8000562c:	fffff097          	auipc	ra,0xfffff
    80005630:	4e4080e7          	jalr	1252(ra) # 80004b10 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005634:	00c00513          	li	a0,12
    80005638:	00000097          	auipc	ra,0x0
    8000563c:	d88080e7          	jalr	-632(ra) # 800053c0 <_ZL9fibonaccim>
    80005640:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80005644:	00003517          	auipc	a0,0x3
    80005648:	bc450513          	addi	a0,a0,-1084 # 80008208 <CONSOLE_STATUS+0x1f8>
    8000564c:	fffff097          	auipc	ra,0xfffff
    80005650:	4c4080e7          	jalr	1220(ra) # 80004b10 <_Z11printStringPKc>
    printInt(result);
    80005654:	00000613          	li	a2,0
    80005658:	00a00593          	li	a1,10
    8000565c:	0009051b          	sext.w	a0,s2
    80005660:	fffff097          	auipc	ra,0xfffff
    80005664:	660080e7          	jalr	1632(ra) # 80004cc0 <_Z8printIntiii>
    printString("\n");
    80005668:	00003517          	auipc	a0,0x3
    8000566c:	dd050513          	addi	a0,a0,-560 # 80008438 <CONSOLE_STATUS+0x428>
    80005670:	fffff097          	auipc	ra,0xfffff
    80005674:	4a0080e7          	jalr	1184(ra) # 80004b10 <_Z11printStringPKc>
    80005678:	0400006f          	j	800056b8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i=");
    8000567c:	00003517          	auipc	a0,0x3
    80005680:	b6c50513          	addi	a0,a0,-1172 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80005684:	fffff097          	auipc	ra,0xfffff
    80005688:	48c080e7          	jalr	1164(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    8000568c:	00000613          	li	a2,0
    80005690:	00a00593          	li	a1,10
    80005694:	00048513          	mv	a0,s1
    80005698:	fffff097          	auipc	ra,0xfffff
    8000569c:	628080e7          	jalr	1576(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    800056a0:	00003517          	auipc	a0,0x3
    800056a4:	d9850513          	addi	a0,a0,-616 # 80008438 <CONSOLE_STATUS+0x428>
    800056a8:	fffff097          	auipc	ra,0xfffff
    800056ac:	468080e7          	jalr	1128(ra) # 80004b10 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800056b0:	0014849b          	addiw	s1,s1,1
    800056b4:	0ff4f493          	andi	s1,s1,255
    800056b8:	00500793          	li	a5,5
    800056bc:	fc97f0e3          	bgeu	a5,s1,8000567c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800056c0:	00003517          	auipc	a0,0x3
    800056c4:	b0050513          	addi	a0,a0,-1280 # 800081c0 <CONSOLE_STATUS+0x1b0>
    800056c8:	fffff097          	auipc	ra,0xfffff
    800056cc:	448080e7          	jalr	1096(ra) # 80004b10 <_Z11printStringPKc>
    finishedC = true;
    800056d0:	00100793          	li	a5,1
    800056d4:	00005717          	auipc	a4,0x5
    800056d8:	a4f702a3          	sb	a5,-1467(a4) # 8000a119 <_ZL9finishedC>
    thread_dispatch();
    800056dc:	ffffc097          	auipc	ra,0xffffc
    800056e0:	f20080e7          	jalr	-224(ra) # 800015fc <_Z15thread_dispatchv>
}
    800056e4:	01813083          	ld	ra,24(sp)
    800056e8:	01013403          	ld	s0,16(sp)
    800056ec:	00813483          	ld	s1,8(sp)
    800056f0:	00013903          	ld	s2,0(sp)
    800056f4:	02010113          	addi	sp,sp,32
    800056f8:	00008067          	ret

00000000800056fc <_ZL11workerBodyBPv>:
static void workerBodyB(void *arg) {
    800056fc:	fe010113          	addi	sp,sp,-32
    80005700:	00113c23          	sd	ra,24(sp)
    80005704:	00813823          	sd	s0,16(sp)
    80005708:	00913423          	sd	s1,8(sp)
    8000570c:	01213023          	sd	s2,0(sp)
    80005710:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005714:	00000913          	li	s2,0
    80005718:	0400006f          	j	80005758 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000571c:	ffffc097          	auipc	ra,0xffffc
    80005720:	ee0080e7          	jalr	-288(ra) # 800015fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005724:	00148493          	addi	s1,s1,1
    80005728:	000027b7          	lui	a5,0x2
    8000572c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005730:	0097ee63          	bltu	a5,s1,8000574c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) {
    80005734:	00000713          	li	a4,0
    80005738:	000077b7          	lui	a5,0x7
    8000573c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005740:	fce7eee3          	bltu	a5,a4,8000571c <_ZL11workerBodyBPv+0x20>
    80005744:	00170713          	addi	a4,a4,1
    80005748:	ff1ff06f          	j	80005738 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000574c:	00a00793          	li	a5,10
    80005750:	04f90663          	beq	s2,a5,8000579c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005754:	00190913          	addi	s2,s2,1
    80005758:	00f00793          	li	a5,15
    8000575c:	0527e463          	bltu	a5,s2,800057a4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i=");
    80005760:	00003517          	auipc	a0,0x3
    80005764:	a7050513          	addi	a0,a0,-1424 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80005768:	fffff097          	auipc	ra,0xfffff
    8000576c:	3a8080e7          	jalr	936(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    80005770:	00000613          	li	a2,0
    80005774:	00a00593          	li	a1,10
    80005778:	0009051b          	sext.w	a0,s2
    8000577c:	fffff097          	auipc	ra,0xfffff
    80005780:	544080e7          	jalr	1348(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80005784:	00003517          	auipc	a0,0x3
    80005788:	cb450513          	addi	a0,a0,-844 # 80008438 <CONSOLE_STATUS+0x428>
    8000578c:	fffff097          	auipc	ra,0xfffff
    80005790:	384080e7          	jalr	900(ra) # 80004b10 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005794:	00000493          	li	s1,0
    80005798:	f91ff06f          	j	80005728 <_ZL11workerBodyBPv+0x2c>
            __asm__ volatile("csrr t6, sepc");
    8000579c:	14102ff3          	csrr	t6,sepc
    800057a0:	fb5ff06f          	j	80005754 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800057a4:	00003517          	auipc	a0,0x3
    800057a8:	a3450513          	addi	a0,a0,-1484 # 800081d8 <CONSOLE_STATUS+0x1c8>
    800057ac:	fffff097          	auipc	ra,0xfffff
    800057b0:	364080e7          	jalr	868(ra) # 80004b10 <_Z11printStringPKc>
    finishedB = true;
    800057b4:	00100793          	li	a5,1
    800057b8:	00005717          	auipc	a4,0x5
    800057bc:	96f70123          	sb	a5,-1694(a4) # 8000a11a <_ZL9finishedB>
    thread_dispatch();
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	e3c080e7          	jalr	-452(ra) # 800015fc <_Z15thread_dispatchv>
}
    800057c8:	01813083          	ld	ra,24(sp)
    800057cc:	01013403          	ld	s0,16(sp)
    800057d0:	00813483          	ld	s1,8(sp)
    800057d4:	00013903          	ld	s2,0(sp)
    800057d8:	02010113          	addi	sp,sp,32
    800057dc:	00008067          	ret

00000000800057e0 <_ZL11workerBodyAPv>:
static void workerBodyA(void *arg) {
    800057e0:	fe010113          	addi	sp,sp,-32
    800057e4:	00113c23          	sd	ra,24(sp)
    800057e8:	00813823          	sd	s0,16(sp)
    800057ec:	00913423          	sd	s1,8(sp)
    800057f0:	01213023          	sd	s2,0(sp)
    800057f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800057f8:	00000913          	li	s2,0
    800057fc:	0380006f          	j	80005834 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	dfc080e7          	jalr	-516(ra) # 800015fc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005808:	00148493          	addi	s1,s1,1
    8000580c:	000027b7          	lui	a5,0x2
    80005810:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005814:	0097ee63          	bltu	a5,s1,80005830 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) {
    80005818:	00000713          	li	a4,0
    8000581c:	000077b7          	lui	a5,0x7
    80005820:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005824:	fce7eee3          	bltu	a5,a4,80005800 <_ZL11workerBodyAPv+0x20>
    80005828:	00170713          	addi	a4,a4,1
    8000582c:	ff1ff06f          	j	8000581c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005830:	00190913          	addi	s2,s2,1
    80005834:	00900793          	li	a5,9
    80005838:	0527e063          	bltu	a5,s2,80005878 <_ZL11workerBodyAPv+0x98>
        printString("A: i=");
    8000583c:	00003517          	auipc	a0,0x3
    80005840:	97c50513          	addi	a0,a0,-1668 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80005844:	fffff097          	auipc	ra,0xfffff
    80005848:	2cc080e7          	jalr	716(ra) # 80004b10 <_Z11printStringPKc>
        printInt(i);
    8000584c:	00000613          	li	a2,0
    80005850:	00a00593          	li	a1,10
    80005854:	0009051b          	sext.w	a0,s2
    80005858:	fffff097          	auipc	ra,0xfffff
    8000585c:	468080e7          	jalr	1128(ra) # 80004cc0 <_Z8printIntiii>
        printString("\n");
    80005860:	00003517          	auipc	a0,0x3
    80005864:	bd850513          	addi	a0,a0,-1064 # 80008438 <CONSOLE_STATUS+0x428>
    80005868:	fffff097          	auipc	ra,0xfffff
    8000586c:	2a8080e7          	jalr	680(ra) # 80004b10 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005870:	00000493          	li	s1,0
    80005874:	f99ff06f          	j	8000580c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005878:	00003517          	auipc	a0,0x3
    8000587c:	94850513          	addi	a0,a0,-1720 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80005880:	fffff097          	auipc	ra,0xfffff
    80005884:	290080e7          	jalr	656(ra) # 80004b10 <_Z11printStringPKc>
    finishedA = true;
    80005888:	00100793          	li	a5,1
    8000588c:	00005717          	auipc	a4,0x5
    80005890:	88f707a3          	sb	a5,-1905(a4) # 8000a11b <_ZL9finishedA>
}
    80005894:	01813083          	ld	ra,24(sp)
    80005898:	01013403          	ld	s0,16(sp)
    8000589c:	00813483          	ld	s1,8(sp)
    800058a0:	00013903          	ld	s2,0(sp)
    800058a4:	02010113          	addi	sp,sp,32
    800058a8:	00008067          	ret

00000000800058ac <_Z16System_Mode_testv>:


void System_Mode_test() {
    800058ac:	fd010113          	addi	sp,sp,-48
    800058b0:	02113423          	sd	ra,40(sp)
    800058b4:	02813023          	sd	s0,32(sp)
    800058b8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800058bc:	00000613          	li	a2,0
    800058c0:	00000597          	auipc	a1,0x0
    800058c4:	f2058593          	addi	a1,a1,-224 # 800057e0 <_ZL11workerBodyAPv>
    800058c8:	fd040513          	addi	a0,s0,-48
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	c84080e7          	jalr	-892(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadA created\n");
    800058d4:	00003517          	auipc	a0,0x3
    800058d8:	97c50513          	addi	a0,a0,-1668 # 80008250 <CONSOLE_STATUS+0x240>
    800058dc:	fffff097          	auipc	ra,0xfffff
    800058e0:	234080e7          	jalr	564(ra) # 80004b10 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800058e4:	00000613          	li	a2,0
    800058e8:	00000597          	auipc	a1,0x0
    800058ec:	e1458593          	addi	a1,a1,-492 # 800056fc <_ZL11workerBodyBPv>
    800058f0:	fd840513          	addi	a0,s0,-40
    800058f4:	ffffc097          	auipc	ra,0xffffc
    800058f8:	c5c080e7          	jalr	-932(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadB created\n");
    800058fc:	00003517          	auipc	a0,0x3
    80005900:	96c50513          	addi	a0,a0,-1684 # 80008268 <CONSOLE_STATUS+0x258>
    80005904:	fffff097          	auipc	ra,0xfffff
    80005908:	20c080e7          	jalr	524(ra) # 80004b10 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000590c:	00000613          	li	a2,0
    80005910:	00000597          	auipc	a1,0x0
    80005914:	c6c58593          	addi	a1,a1,-916 # 8000557c <_ZL11workerBodyCPv>
    80005918:	fe040513          	addi	a0,s0,-32
    8000591c:	ffffc097          	auipc	ra,0xffffc
    80005920:	c34080e7          	jalr	-972(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadC created\n");
    80005924:	00003517          	auipc	a0,0x3
    80005928:	95c50513          	addi	a0,a0,-1700 # 80008280 <CONSOLE_STATUS+0x270>
    8000592c:	fffff097          	auipc	ra,0xfffff
    80005930:	1e4080e7          	jalr	484(ra) # 80004b10 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005934:	00000613          	li	a2,0
    80005938:	00000597          	auipc	a1,0x0
    8000593c:	afc58593          	addi	a1,a1,-1284 # 80005434 <_ZL11workerBodyDPv>
    80005940:	fe840513          	addi	a0,s0,-24
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	c0c080e7          	jalr	-1012(ra) # 80001550 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadD created\n");
    8000594c:	00003517          	auipc	a0,0x3
    80005950:	94c50513          	addi	a0,a0,-1716 # 80008298 <CONSOLE_STATUS+0x288>
    80005954:	fffff097          	auipc	ra,0xfffff
    80005958:	1bc080e7          	jalr	444(ra) # 80004b10 <_Z11printStringPKc>
    8000595c:	00c0006f          	j	80005968 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	c9c080e7          	jalr	-868(ra) # 800015fc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005968:	00004797          	auipc	a5,0x4
    8000596c:	7b37c783          	lbu	a5,1971(a5) # 8000a11b <_ZL9finishedA>
    80005970:	fe0788e3          	beqz	a5,80005960 <_Z16System_Mode_testv+0xb4>
    80005974:	00004797          	auipc	a5,0x4
    80005978:	7a67c783          	lbu	a5,1958(a5) # 8000a11a <_ZL9finishedB>
    8000597c:	fe0782e3          	beqz	a5,80005960 <_Z16System_Mode_testv+0xb4>
    80005980:	00004797          	auipc	a5,0x4
    80005984:	7997c783          	lbu	a5,1945(a5) # 8000a119 <_ZL9finishedC>
    80005988:	fc078ce3          	beqz	a5,80005960 <_Z16System_Mode_testv+0xb4>
    8000598c:	00004797          	auipc	a5,0x4
    80005990:	78c7c783          	lbu	a5,1932(a5) # 8000a118 <_ZL9finishedD>
    80005994:	fc0786e3          	beqz	a5,80005960 <_Z16System_Mode_testv+0xb4>
    }
}
    80005998:	02813083          	ld	ra,40(sp)
    8000599c:	02013403          	ld	s0,32(sp)
    800059a0:	03010113          	addi	sp,sp,48
    800059a4:	00008067          	ret

00000000800059a8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800059a8:	fe010113          	addi	sp,sp,-32
    800059ac:	00113c23          	sd	ra,24(sp)
    800059b0:	00813823          	sd	s0,16(sp)
    800059b4:	00913423          	sd	s1,8(sp)
    800059b8:	01213023          	sd	s2,0(sp)
    800059bc:	02010413          	addi	s0,sp,32
    800059c0:	00050493          	mv	s1,a0
    800059c4:	00058913          	mv	s2,a1
    800059c8:	0015879b          	addiw	a5,a1,1
    800059cc:	0007851b          	sext.w	a0,a5
    800059d0:	00f4a023          	sw	a5,0(s1)
    800059d4:	0004a823          	sw	zero,16(s1)
    800059d8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *) mem_alloc(sizeof(int) * cap);
    800059dc:	00251513          	slli	a0,a0,0x2
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	ae4080e7          	jalr	-1308(ra) # 800014c4 <_Z9mem_allocm>
    800059e8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800059ec:	00000593          	li	a1,0
    800059f0:	02048513          	addi	a0,s1,32
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	c2c080e7          	jalr	-980(ra) # 80001620 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800059fc:	00090593          	mv	a1,s2
    80005a00:	01848513          	addi	a0,s1,24
    80005a04:	ffffc097          	auipc	ra,0xffffc
    80005a08:	c1c080e7          	jalr	-996(ra) # 80001620 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005a0c:	00100593          	li	a1,1
    80005a10:	02848513          	addi	a0,s1,40
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	c0c080e7          	jalr	-1012(ra) # 80001620 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005a1c:	00100593          	li	a1,1
    80005a20:	03048513          	addi	a0,s1,48
    80005a24:	ffffc097          	auipc	ra,0xffffc
    80005a28:	bfc080e7          	jalr	-1028(ra) # 80001620 <_Z8sem_openPP4_semj>
}
    80005a2c:	01813083          	ld	ra,24(sp)
    80005a30:	01013403          	ld	s0,16(sp)
    80005a34:	00813483          	ld	s1,8(sp)
    80005a38:	00013903          	ld	s2,0(sp)
    80005a3c:	02010113          	addi	sp,sp,32
    80005a40:	00008067          	ret

0000000080005a44 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005a44:	fe010113          	addi	sp,sp,-32
    80005a48:	00113c23          	sd	ra,24(sp)
    80005a4c:	00813823          	sd	s0,16(sp)
    80005a50:	00913423          	sd	s1,8(sp)
    80005a54:	01213023          	sd	s2,0(sp)
    80005a58:	02010413          	addi	s0,sp,32
    80005a5c:	00050493          	mv	s1,a0
    80005a60:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005a64:	01853503          	ld	a0,24(a0)
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	c1c080e7          	jalr	-996(ra) # 80001684 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005a70:	0304b503          	ld	a0,48(s1)
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	c10080e7          	jalr	-1008(ra) # 80001684 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005a7c:	0084b783          	ld	a5,8(s1)
    80005a80:	0144a703          	lw	a4,20(s1)
    80005a84:	00271713          	slli	a4,a4,0x2
    80005a88:	00e787b3          	add	a5,a5,a4
    80005a8c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a90:	0144a783          	lw	a5,20(s1)
    80005a94:	0017879b          	addiw	a5,a5,1
    80005a98:	0004a703          	lw	a4,0(s1)
    80005a9c:	02e7e7bb          	remw	a5,a5,a4
    80005aa0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005aa4:	0304b503          	ld	a0,48(s1)
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	c0c080e7          	jalr	-1012(ra) # 800016b4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005ab0:	0204b503          	ld	a0,32(s1)
    80005ab4:	ffffc097          	auipc	ra,0xffffc
    80005ab8:	c00080e7          	jalr	-1024(ra) # 800016b4 <_Z10sem_signalP4_sem>
}
    80005abc:	01813083          	ld	ra,24(sp)
    80005ac0:	01013403          	ld	s0,16(sp)
    80005ac4:	00813483          	ld	s1,8(sp)
    80005ac8:	00013903          	ld	s2,0(sp)
    80005acc:	02010113          	addi	sp,sp,32
    80005ad0:	00008067          	ret

0000000080005ad4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005ad4:	fe010113          	addi	sp,sp,-32
    80005ad8:	00113c23          	sd	ra,24(sp)
    80005adc:	00813823          	sd	s0,16(sp)
    80005ae0:	00913423          	sd	s1,8(sp)
    80005ae4:	01213023          	sd	s2,0(sp)
    80005ae8:	02010413          	addi	s0,sp,32
    80005aec:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005af0:	02053503          	ld	a0,32(a0)
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	b90080e7          	jalr	-1136(ra) # 80001684 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005afc:	0284b503          	ld	a0,40(s1)
    80005b00:	ffffc097          	auipc	ra,0xffffc
    80005b04:	b84080e7          	jalr	-1148(ra) # 80001684 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005b08:	0084b703          	ld	a4,8(s1)
    80005b0c:	0104a783          	lw	a5,16(s1)
    80005b10:	00279693          	slli	a3,a5,0x2
    80005b14:	00d70733          	add	a4,a4,a3
    80005b18:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b1c:	0017879b          	addiw	a5,a5,1
    80005b20:	0004a703          	lw	a4,0(s1)
    80005b24:	02e7e7bb          	remw	a5,a5,a4
    80005b28:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005b2c:	0284b503          	ld	a0,40(s1)
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	b84080e7          	jalr	-1148(ra) # 800016b4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005b38:	0184b503          	ld	a0,24(s1)
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	b78080e7          	jalr	-1160(ra) # 800016b4 <_Z10sem_signalP4_sem>

    return ret;
}
    80005b44:	00090513          	mv	a0,s2
    80005b48:	01813083          	ld	ra,24(sp)
    80005b4c:	01013403          	ld	s0,16(sp)
    80005b50:	00813483          	ld	s1,8(sp)
    80005b54:	00013903          	ld	s2,0(sp)
    80005b58:	02010113          	addi	sp,sp,32
    80005b5c:	00008067          	ret

0000000080005b60 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005b60:	fe010113          	addi	sp,sp,-32
    80005b64:	00113c23          	sd	ra,24(sp)
    80005b68:	00813823          	sd	s0,16(sp)
    80005b6c:	00913423          	sd	s1,8(sp)
    80005b70:	01213023          	sd	s2,0(sp)
    80005b74:	02010413          	addi	s0,sp,32
    80005b78:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005b7c:	02853503          	ld	a0,40(a0)
    80005b80:	ffffc097          	auipc	ra,0xffffc
    80005b84:	b04080e7          	jalr	-1276(ra) # 80001684 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005b88:	0304b503          	ld	a0,48(s1)
    80005b8c:	ffffc097          	auipc	ra,0xffffc
    80005b90:	af8080e7          	jalr	-1288(ra) # 80001684 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005b94:	0144a783          	lw	a5,20(s1)
    80005b98:	0104a903          	lw	s2,16(s1)
    80005b9c:	0327ce63          	blt	a5,s2,80005bd8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005ba0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005ba4:	0304b503          	ld	a0,48(s1)
    80005ba8:	ffffc097          	auipc	ra,0xffffc
    80005bac:	b0c080e7          	jalr	-1268(ra) # 800016b4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005bb0:	0284b503          	ld	a0,40(s1)
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	b00080e7          	jalr	-1280(ra) # 800016b4 <_Z10sem_signalP4_sem>

    return ret;
}
    80005bbc:	00090513          	mv	a0,s2
    80005bc0:	01813083          	ld	ra,24(sp)
    80005bc4:	01013403          	ld	s0,16(sp)
    80005bc8:	00813483          	ld	s1,8(sp)
    80005bcc:	00013903          	ld	s2,0(sp)
    80005bd0:	02010113          	addi	sp,sp,32
    80005bd4:	00008067          	ret
        ret = cap - head + tail;
    80005bd8:	0004a703          	lw	a4,0(s1)
    80005bdc:	4127093b          	subw	s2,a4,s2
    80005be0:	00f9093b          	addw	s2,s2,a5
    80005be4:	fc1ff06f          	j	80005ba4 <_ZN6Buffer6getCntEv+0x44>

0000000080005be8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005be8:	fe010113          	addi	sp,sp,-32
    80005bec:	00113c23          	sd	ra,24(sp)
    80005bf0:	00813823          	sd	s0,16(sp)
    80005bf4:	00913423          	sd	s1,8(sp)
    80005bf8:	02010413          	addi	s0,sp,32
    80005bfc:	00050493          	mv	s1,a0
    putc('\n');
    80005c00:	00a00513          	li	a0,10
    80005c04:	ffffc097          	auipc	ra,0xffffc
    80005c08:	b3c080e7          	jalr	-1220(ra) # 80001740 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005c0c:	00002517          	auipc	a0,0x2
    80005c10:	6a450513          	addi	a0,a0,1700 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	efc080e7          	jalr	-260(ra) # 80004b10 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005c1c:	00048513          	mv	a0,s1
    80005c20:	00000097          	auipc	ra,0x0
    80005c24:	f40080e7          	jalr	-192(ra) # 80005b60 <_ZN6Buffer6getCntEv>
    80005c28:	02a05c63          	blez	a0,80005c60 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005c2c:	0084b783          	ld	a5,8(s1)
    80005c30:	0104a703          	lw	a4,16(s1)
    80005c34:	00271713          	slli	a4,a4,0x2
    80005c38:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005c3c:	0007c503          	lbu	a0,0(a5)
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	b00080e7          	jalr	-1280(ra) # 80001740 <_Z4putcc>
        head = (head + 1) % cap;
    80005c48:	0104a783          	lw	a5,16(s1)
    80005c4c:	0017879b          	addiw	a5,a5,1
    80005c50:	0004a703          	lw	a4,0(s1)
    80005c54:	02e7e7bb          	remw	a5,a5,a4
    80005c58:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005c5c:	fc1ff06f          	j	80005c1c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005c60:	02100513          	li	a0,33
    80005c64:	ffffc097          	auipc	ra,0xffffc
    80005c68:	adc080e7          	jalr	-1316(ra) # 80001740 <_Z4putcc>
    putc('\n');
    80005c6c:	00a00513          	li	a0,10
    80005c70:	ffffc097          	auipc	ra,0xffffc
    80005c74:	ad0080e7          	jalr	-1328(ra) # 80001740 <_Z4putcc>
    mem_free(buffer);
    80005c78:	0084b503          	ld	a0,8(s1)
    80005c7c:	ffffc097          	auipc	ra,0xffffc
    80005c80:	898080e7          	jalr	-1896(ra) # 80001514 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005c84:	0204b503          	ld	a0,32(s1)
    80005c88:	ffffc097          	auipc	ra,0xffffc
    80005c8c:	9cc080e7          	jalr	-1588(ra) # 80001654 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80005c90:	0184b503          	ld	a0,24(s1)
    80005c94:	ffffc097          	auipc	ra,0xffffc
    80005c98:	9c0080e7          	jalr	-1600(ra) # 80001654 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005c9c:	0304b503          	ld	a0,48(s1)
    80005ca0:	ffffc097          	auipc	ra,0xffffc
    80005ca4:	9b4080e7          	jalr	-1612(ra) # 80001654 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80005ca8:	0284b503          	ld	a0,40(s1)
    80005cac:	ffffc097          	auipc	ra,0xffffc
    80005cb0:	9a8080e7          	jalr	-1624(ra) # 80001654 <_Z9sem_closeP4_sem>
}
    80005cb4:	01813083          	ld	ra,24(sp)
    80005cb8:	01013403          	ld	s0,16(sp)
    80005cbc:	00813483          	ld	s1,8(sp)
    80005cc0:	02010113          	addi	sp,sp,32
    80005cc4:	00008067          	ret

0000000080005cc8 <start>:
    80005cc8:	ff010113          	addi	sp,sp,-16
    80005ccc:	00813423          	sd	s0,8(sp)
    80005cd0:	01010413          	addi	s0,sp,16
    80005cd4:	300027f3          	csrr	a5,mstatus
    80005cd8:	ffffe737          	lui	a4,0xffffe
    80005cdc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff347f>
    80005ce0:	00e7f7b3          	and	a5,a5,a4
    80005ce4:	00001737          	lui	a4,0x1
    80005ce8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005cec:	00e7e7b3          	or	a5,a5,a4
    80005cf0:	30079073          	csrw	mstatus,a5
    80005cf4:	00000797          	auipc	a5,0x0
    80005cf8:	16078793          	addi	a5,a5,352 # 80005e54 <system_main>
    80005cfc:	34179073          	csrw	mepc,a5
    80005d00:	00000793          	li	a5,0
    80005d04:	18079073          	csrw	satp,a5
    80005d08:	000107b7          	lui	a5,0x10
    80005d0c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005d10:	30279073          	csrw	medeleg,a5
    80005d14:	30379073          	csrw	mideleg,a5
    80005d18:	104027f3          	csrr	a5,sie
    80005d1c:	2227e793          	ori	a5,a5,546
    80005d20:	10479073          	csrw	sie,a5
    80005d24:	fff00793          	li	a5,-1
    80005d28:	00a7d793          	srli	a5,a5,0xa
    80005d2c:	3b079073          	csrw	pmpaddr0,a5
    80005d30:	00f00793          	li	a5,15
    80005d34:	3a079073          	csrw	pmpcfg0,a5
    80005d38:	f14027f3          	csrr	a5,mhartid
    80005d3c:	0200c737          	lui	a4,0x200c
    80005d40:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005d44:	0007869b          	sext.w	a3,a5
    80005d48:	00269713          	slli	a4,a3,0x2
    80005d4c:	000f4637          	lui	a2,0xf4
    80005d50:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005d54:	00d70733          	add	a4,a4,a3
    80005d58:	0037979b          	slliw	a5,a5,0x3
    80005d5c:	020046b7          	lui	a3,0x2004
    80005d60:	00d787b3          	add	a5,a5,a3
    80005d64:	00c585b3          	add	a1,a1,a2
    80005d68:	00371693          	slli	a3,a4,0x3
    80005d6c:	00004717          	auipc	a4,0x4
    80005d70:	3b470713          	addi	a4,a4,948 # 8000a120 <timer_scratch>
    80005d74:	00b7b023          	sd	a1,0(a5)
    80005d78:	00d70733          	add	a4,a4,a3
    80005d7c:	00f73c23          	sd	a5,24(a4)
    80005d80:	02c73023          	sd	a2,32(a4)
    80005d84:	34071073          	csrw	mscratch,a4
    80005d88:	00000797          	auipc	a5,0x0
    80005d8c:	6e878793          	addi	a5,a5,1768 # 80006470 <timervec>
    80005d90:	30579073          	csrw	mtvec,a5
    80005d94:	300027f3          	csrr	a5,mstatus
    80005d98:	0087e793          	ori	a5,a5,8
    80005d9c:	30079073          	csrw	mstatus,a5
    80005da0:	304027f3          	csrr	a5,mie
    80005da4:	0807e793          	ori	a5,a5,128
    80005da8:	30479073          	csrw	mie,a5
    80005dac:	f14027f3          	csrr	a5,mhartid
    80005db0:	0007879b          	sext.w	a5,a5
    80005db4:	00078213          	mv	tp,a5
    80005db8:	30200073          	mret
    80005dbc:	00813403          	ld	s0,8(sp)
    80005dc0:	01010113          	addi	sp,sp,16
    80005dc4:	00008067          	ret

0000000080005dc8 <timerinit>:
    80005dc8:	ff010113          	addi	sp,sp,-16
    80005dcc:	00813423          	sd	s0,8(sp)
    80005dd0:	01010413          	addi	s0,sp,16
    80005dd4:	f14027f3          	csrr	a5,mhartid
    80005dd8:	0200c737          	lui	a4,0x200c
    80005ddc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005de0:	0007869b          	sext.w	a3,a5
    80005de4:	00269713          	slli	a4,a3,0x2
    80005de8:	000f4637          	lui	a2,0xf4
    80005dec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005df0:	00d70733          	add	a4,a4,a3
    80005df4:	0037979b          	slliw	a5,a5,0x3
    80005df8:	020046b7          	lui	a3,0x2004
    80005dfc:	00d787b3          	add	a5,a5,a3
    80005e00:	00c585b3          	add	a1,a1,a2
    80005e04:	00371693          	slli	a3,a4,0x3
    80005e08:	00004717          	auipc	a4,0x4
    80005e0c:	31870713          	addi	a4,a4,792 # 8000a120 <timer_scratch>
    80005e10:	00b7b023          	sd	a1,0(a5)
    80005e14:	00d70733          	add	a4,a4,a3
    80005e18:	00f73c23          	sd	a5,24(a4)
    80005e1c:	02c73023          	sd	a2,32(a4)
    80005e20:	34071073          	csrw	mscratch,a4
    80005e24:	00000797          	auipc	a5,0x0
    80005e28:	64c78793          	addi	a5,a5,1612 # 80006470 <timervec>
    80005e2c:	30579073          	csrw	mtvec,a5
    80005e30:	300027f3          	csrr	a5,mstatus
    80005e34:	0087e793          	ori	a5,a5,8
    80005e38:	30079073          	csrw	mstatus,a5
    80005e3c:	304027f3          	csrr	a5,mie
    80005e40:	0807e793          	ori	a5,a5,128
    80005e44:	30479073          	csrw	mie,a5
    80005e48:	00813403          	ld	s0,8(sp)
    80005e4c:	01010113          	addi	sp,sp,16
    80005e50:	00008067          	ret

0000000080005e54 <system_main>:
    80005e54:	fe010113          	addi	sp,sp,-32
    80005e58:	00813823          	sd	s0,16(sp)
    80005e5c:	00913423          	sd	s1,8(sp)
    80005e60:	00113c23          	sd	ra,24(sp)
    80005e64:	02010413          	addi	s0,sp,32
    80005e68:	00000097          	auipc	ra,0x0
    80005e6c:	0c4080e7          	jalr	196(ra) # 80005f2c <cpuid>
    80005e70:	00004497          	auipc	s1,0x4
    80005e74:	22048493          	addi	s1,s1,544 # 8000a090 <started>
    80005e78:	02050263          	beqz	a0,80005e9c <system_main+0x48>
    80005e7c:	0004a783          	lw	a5,0(s1)
    80005e80:	0007879b          	sext.w	a5,a5
    80005e84:	fe078ce3          	beqz	a5,80005e7c <system_main+0x28>
    80005e88:	0ff0000f          	fence
    80005e8c:	00002517          	auipc	a0,0x2
    80005e90:	6a450513          	addi	a0,a0,1700 # 80008530 <CONSOLE_STATUS+0x520>
    80005e94:	00001097          	auipc	ra,0x1
    80005e98:	a78080e7          	jalr	-1416(ra) # 8000690c <panic>
    80005e9c:	00001097          	auipc	ra,0x1
    80005ea0:	9cc080e7          	jalr	-1588(ra) # 80006868 <consoleinit>
    80005ea4:	00001097          	auipc	ra,0x1
    80005ea8:	158080e7          	jalr	344(ra) # 80006ffc <printfinit>
    80005eac:	00002517          	auipc	a0,0x2
    80005eb0:	58c50513          	addi	a0,a0,1420 # 80008438 <CONSOLE_STATUS+0x428>
    80005eb4:	00001097          	auipc	ra,0x1
    80005eb8:	ab4080e7          	jalr	-1356(ra) # 80006968 <__printf>
    80005ebc:	00002517          	auipc	a0,0x2
    80005ec0:	64450513          	addi	a0,a0,1604 # 80008500 <CONSOLE_STATUS+0x4f0>
    80005ec4:	00001097          	auipc	ra,0x1
    80005ec8:	aa4080e7          	jalr	-1372(ra) # 80006968 <__printf>
    80005ecc:	00002517          	auipc	a0,0x2
    80005ed0:	56c50513          	addi	a0,a0,1388 # 80008438 <CONSOLE_STATUS+0x428>
    80005ed4:	00001097          	auipc	ra,0x1
    80005ed8:	a94080e7          	jalr	-1388(ra) # 80006968 <__printf>
    80005edc:	00001097          	auipc	ra,0x1
    80005ee0:	4ac080e7          	jalr	1196(ra) # 80007388 <kinit>
    80005ee4:	00000097          	auipc	ra,0x0
    80005ee8:	148080e7          	jalr	328(ra) # 8000602c <trapinit>
    80005eec:	00000097          	auipc	ra,0x0
    80005ef0:	16c080e7          	jalr	364(ra) # 80006058 <trapinithart>
    80005ef4:	00000097          	auipc	ra,0x0
    80005ef8:	5bc080e7          	jalr	1468(ra) # 800064b0 <plicinit>
    80005efc:	00000097          	auipc	ra,0x0
    80005f00:	5dc080e7          	jalr	1500(ra) # 800064d8 <plicinithart>
    80005f04:	00000097          	auipc	ra,0x0
    80005f08:	078080e7          	jalr	120(ra) # 80005f7c <userinit>
    80005f0c:	0ff0000f          	fence
    80005f10:	00100793          	li	a5,1
    80005f14:	00002517          	auipc	a0,0x2
    80005f18:	60450513          	addi	a0,a0,1540 # 80008518 <CONSOLE_STATUS+0x508>
    80005f1c:	00f4a023          	sw	a5,0(s1)
    80005f20:	00001097          	auipc	ra,0x1
    80005f24:	a48080e7          	jalr	-1464(ra) # 80006968 <__printf>
    80005f28:	0000006f          	j	80005f28 <system_main+0xd4>

0000000080005f2c <cpuid>:
    80005f2c:	ff010113          	addi	sp,sp,-16
    80005f30:	00813423          	sd	s0,8(sp)
    80005f34:	01010413          	addi	s0,sp,16
    80005f38:	00020513          	mv	a0,tp
    80005f3c:	00813403          	ld	s0,8(sp)
    80005f40:	0005051b          	sext.w	a0,a0
    80005f44:	01010113          	addi	sp,sp,16
    80005f48:	00008067          	ret

0000000080005f4c <mycpu>:
    80005f4c:	ff010113          	addi	sp,sp,-16
    80005f50:	00813423          	sd	s0,8(sp)
    80005f54:	01010413          	addi	s0,sp,16
    80005f58:	00020793          	mv	a5,tp
    80005f5c:	00813403          	ld	s0,8(sp)
    80005f60:	0007879b          	sext.w	a5,a5
    80005f64:	00779793          	slli	a5,a5,0x7
    80005f68:	00005517          	auipc	a0,0x5
    80005f6c:	1e850513          	addi	a0,a0,488 # 8000b150 <cpus>
    80005f70:	00f50533          	add	a0,a0,a5
    80005f74:	01010113          	addi	sp,sp,16
    80005f78:	00008067          	ret

0000000080005f7c <userinit>:
    80005f7c:	ff010113          	addi	sp,sp,-16
    80005f80:	00813423          	sd	s0,8(sp)
    80005f84:	01010413          	addi	s0,sp,16
    80005f88:	00813403          	ld	s0,8(sp)
    80005f8c:	01010113          	addi	sp,sp,16
    80005f90:	ffffc317          	auipc	t1,0xffffc
    80005f94:	d7430067          	jr	-652(t1) # 80001d04 <main>

0000000080005f98 <either_copyout>:
    80005f98:	ff010113          	addi	sp,sp,-16
    80005f9c:	00813023          	sd	s0,0(sp)
    80005fa0:	00113423          	sd	ra,8(sp)
    80005fa4:	01010413          	addi	s0,sp,16
    80005fa8:	02051663          	bnez	a0,80005fd4 <either_copyout+0x3c>
    80005fac:	00058513          	mv	a0,a1
    80005fb0:	00060593          	mv	a1,a2
    80005fb4:	0006861b          	sext.w	a2,a3
    80005fb8:	00002097          	auipc	ra,0x2
    80005fbc:	c5c080e7          	jalr	-932(ra) # 80007c14 <__memmove>
    80005fc0:	00813083          	ld	ra,8(sp)
    80005fc4:	00013403          	ld	s0,0(sp)
    80005fc8:	00000513          	li	a0,0
    80005fcc:	01010113          	addi	sp,sp,16
    80005fd0:	00008067          	ret
    80005fd4:	00002517          	auipc	a0,0x2
    80005fd8:	58450513          	addi	a0,a0,1412 # 80008558 <CONSOLE_STATUS+0x548>
    80005fdc:	00001097          	auipc	ra,0x1
    80005fe0:	930080e7          	jalr	-1744(ra) # 8000690c <panic>

0000000080005fe4 <either_copyin>:
    80005fe4:	ff010113          	addi	sp,sp,-16
    80005fe8:	00813023          	sd	s0,0(sp)
    80005fec:	00113423          	sd	ra,8(sp)
    80005ff0:	01010413          	addi	s0,sp,16
    80005ff4:	02059463          	bnez	a1,8000601c <either_copyin+0x38>
    80005ff8:	00060593          	mv	a1,a2
    80005ffc:	0006861b          	sext.w	a2,a3
    80006000:	00002097          	auipc	ra,0x2
    80006004:	c14080e7          	jalr	-1004(ra) # 80007c14 <__memmove>
    80006008:	00813083          	ld	ra,8(sp)
    8000600c:	00013403          	ld	s0,0(sp)
    80006010:	00000513          	li	a0,0
    80006014:	01010113          	addi	sp,sp,16
    80006018:	00008067          	ret
    8000601c:	00002517          	auipc	a0,0x2
    80006020:	56450513          	addi	a0,a0,1380 # 80008580 <CONSOLE_STATUS+0x570>
    80006024:	00001097          	auipc	ra,0x1
    80006028:	8e8080e7          	jalr	-1816(ra) # 8000690c <panic>

000000008000602c <trapinit>:
    8000602c:	ff010113          	addi	sp,sp,-16
    80006030:	00813423          	sd	s0,8(sp)
    80006034:	01010413          	addi	s0,sp,16
    80006038:	00813403          	ld	s0,8(sp)
    8000603c:	00002597          	auipc	a1,0x2
    80006040:	56c58593          	addi	a1,a1,1388 # 800085a8 <CONSOLE_STATUS+0x598>
    80006044:	00005517          	auipc	a0,0x5
    80006048:	18c50513          	addi	a0,a0,396 # 8000b1d0 <tickslock>
    8000604c:	01010113          	addi	sp,sp,16
    80006050:	00001317          	auipc	t1,0x1
    80006054:	5c830067          	jr	1480(t1) # 80007618 <initlock>

0000000080006058 <trapinithart>:
    80006058:	ff010113          	addi	sp,sp,-16
    8000605c:	00813423          	sd	s0,8(sp)
    80006060:	01010413          	addi	s0,sp,16
    80006064:	00000797          	auipc	a5,0x0
    80006068:	2fc78793          	addi	a5,a5,764 # 80006360 <kernelvec>
    8000606c:	10579073          	csrw	stvec,a5
    80006070:	00813403          	ld	s0,8(sp)
    80006074:	01010113          	addi	sp,sp,16
    80006078:	00008067          	ret

000000008000607c <usertrap>:
    8000607c:	ff010113          	addi	sp,sp,-16
    80006080:	00813423          	sd	s0,8(sp)
    80006084:	01010413          	addi	s0,sp,16
    80006088:	00813403          	ld	s0,8(sp)
    8000608c:	01010113          	addi	sp,sp,16
    80006090:	00008067          	ret

0000000080006094 <usertrapret>:
    80006094:	ff010113          	addi	sp,sp,-16
    80006098:	00813423          	sd	s0,8(sp)
    8000609c:	01010413          	addi	s0,sp,16
    800060a0:	00813403          	ld	s0,8(sp)
    800060a4:	01010113          	addi	sp,sp,16
    800060a8:	00008067          	ret

00000000800060ac <kerneltrap>:
    800060ac:	fe010113          	addi	sp,sp,-32
    800060b0:	00813823          	sd	s0,16(sp)
    800060b4:	00113c23          	sd	ra,24(sp)
    800060b8:	00913423          	sd	s1,8(sp)
    800060bc:	02010413          	addi	s0,sp,32
    800060c0:	142025f3          	csrr	a1,scause
    800060c4:	100027f3          	csrr	a5,sstatus
    800060c8:	0027f793          	andi	a5,a5,2
    800060cc:	10079c63          	bnez	a5,800061e4 <kerneltrap+0x138>
    800060d0:	142027f3          	csrr	a5,scause
    800060d4:	0207ce63          	bltz	a5,80006110 <kerneltrap+0x64>
    800060d8:	00002517          	auipc	a0,0x2
    800060dc:	51850513          	addi	a0,a0,1304 # 800085f0 <CONSOLE_STATUS+0x5e0>
    800060e0:	00001097          	auipc	ra,0x1
    800060e4:	888080e7          	jalr	-1912(ra) # 80006968 <__printf>
    800060e8:	141025f3          	csrr	a1,sepc
    800060ec:	14302673          	csrr	a2,stval
    800060f0:	00002517          	auipc	a0,0x2
    800060f4:	51050513          	addi	a0,a0,1296 # 80008600 <CONSOLE_STATUS+0x5f0>
    800060f8:	00001097          	auipc	ra,0x1
    800060fc:	870080e7          	jalr	-1936(ra) # 80006968 <__printf>
    80006100:	00002517          	auipc	a0,0x2
    80006104:	51850513          	addi	a0,a0,1304 # 80008618 <CONSOLE_STATUS+0x608>
    80006108:	00001097          	auipc	ra,0x1
    8000610c:	804080e7          	jalr	-2044(ra) # 8000690c <panic>
    80006110:	0ff7f713          	andi	a4,a5,255
    80006114:	00900693          	li	a3,9
    80006118:	04d70063          	beq	a4,a3,80006158 <kerneltrap+0xac>
    8000611c:	fff00713          	li	a4,-1
    80006120:	03f71713          	slli	a4,a4,0x3f
    80006124:	00170713          	addi	a4,a4,1
    80006128:	fae798e3          	bne	a5,a4,800060d8 <kerneltrap+0x2c>
    8000612c:	00000097          	auipc	ra,0x0
    80006130:	e00080e7          	jalr	-512(ra) # 80005f2c <cpuid>
    80006134:	06050663          	beqz	a0,800061a0 <kerneltrap+0xf4>
    80006138:	144027f3          	csrr	a5,sip
    8000613c:	ffd7f793          	andi	a5,a5,-3
    80006140:	14479073          	csrw	sip,a5
    80006144:	01813083          	ld	ra,24(sp)
    80006148:	01013403          	ld	s0,16(sp)
    8000614c:	00813483          	ld	s1,8(sp)
    80006150:	02010113          	addi	sp,sp,32
    80006154:	00008067          	ret
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	3cc080e7          	jalr	972(ra) # 80006524 <plic_claim>
    80006160:	00a00793          	li	a5,10
    80006164:	00050493          	mv	s1,a0
    80006168:	06f50863          	beq	a0,a5,800061d8 <kerneltrap+0x12c>
    8000616c:	fc050ce3          	beqz	a0,80006144 <kerneltrap+0x98>
    80006170:	00050593          	mv	a1,a0
    80006174:	00002517          	auipc	a0,0x2
    80006178:	45c50513          	addi	a0,a0,1116 # 800085d0 <CONSOLE_STATUS+0x5c0>
    8000617c:	00000097          	auipc	ra,0x0
    80006180:	7ec080e7          	jalr	2028(ra) # 80006968 <__printf>
    80006184:	01013403          	ld	s0,16(sp)
    80006188:	01813083          	ld	ra,24(sp)
    8000618c:	00048513          	mv	a0,s1
    80006190:	00813483          	ld	s1,8(sp)
    80006194:	02010113          	addi	sp,sp,32
    80006198:	00000317          	auipc	t1,0x0
    8000619c:	3c430067          	jr	964(t1) # 8000655c <plic_complete>
    800061a0:	00005517          	auipc	a0,0x5
    800061a4:	03050513          	addi	a0,a0,48 # 8000b1d0 <tickslock>
    800061a8:	00001097          	auipc	ra,0x1
    800061ac:	494080e7          	jalr	1172(ra) # 8000763c <acquire>
    800061b0:	00004717          	auipc	a4,0x4
    800061b4:	ee470713          	addi	a4,a4,-284 # 8000a094 <ticks>
    800061b8:	00072783          	lw	a5,0(a4)
    800061bc:	00005517          	auipc	a0,0x5
    800061c0:	01450513          	addi	a0,a0,20 # 8000b1d0 <tickslock>
    800061c4:	0017879b          	addiw	a5,a5,1
    800061c8:	00f72023          	sw	a5,0(a4)
    800061cc:	00001097          	auipc	ra,0x1
    800061d0:	53c080e7          	jalr	1340(ra) # 80007708 <release>
    800061d4:	f65ff06f          	j	80006138 <kerneltrap+0x8c>
    800061d8:	00001097          	auipc	ra,0x1
    800061dc:	098080e7          	jalr	152(ra) # 80007270 <uartintr>
    800061e0:	fa5ff06f          	j	80006184 <kerneltrap+0xd8>
    800061e4:	00002517          	auipc	a0,0x2
    800061e8:	3cc50513          	addi	a0,a0,972 # 800085b0 <CONSOLE_STATUS+0x5a0>
    800061ec:	00000097          	auipc	ra,0x0
    800061f0:	720080e7          	jalr	1824(ra) # 8000690c <panic>

00000000800061f4 <clockintr>:
    800061f4:	fe010113          	addi	sp,sp,-32
    800061f8:	00813823          	sd	s0,16(sp)
    800061fc:	00913423          	sd	s1,8(sp)
    80006200:	00113c23          	sd	ra,24(sp)
    80006204:	02010413          	addi	s0,sp,32
    80006208:	00005497          	auipc	s1,0x5
    8000620c:	fc848493          	addi	s1,s1,-56 # 8000b1d0 <tickslock>
    80006210:	00048513          	mv	a0,s1
    80006214:	00001097          	auipc	ra,0x1
    80006218:	428080e7          	jalr	1064(ra) # 8000763c <acquire>
    8000621c:	00004717          	auipc	a4,0x4
    80006220:	e7870713          	addi	a4,a4,-392 # 8000a094 <ticks>
    80006224:	00072783          	lw	a5,0(a4)
    80006228:	01013403          	ld	s0,16(sp)
    8000622c:	01813083          	ld	ra,24(sp)
    80006230:	00048513          	mv	a0,s1
    80006234:	0017879b          	addiw	a5,a5,1
    80006238:	00813483          	ld	s1,8(sp)
    8000623c:	00f72023          	sw	a5,0(a4)
    80006240:	02010113          	addi	sp,sp,32
    80006244:	00001317          	auipc	t1,0x1
    80006248:	4c430067          	jr	1220(t1) # 80007708 <release>

000000008000624c <devintr>:
    8000624c:	142027f3          	csrr	a5,scause
    80006250:	00000513          	li	a0,0
    80006254:	0007c463          	bltz	a5,8000625c <devintr+0x10>
    80006258:	00008067          	ret
    8000625c:	fe010113          	addi	sp,sp,-32
    80006260:	00813823          	sd	s0,16(sp)
    80006264:	00113c23          	sd	ra,24(sp)
    80006268:	00913423          	sd	s1,8(sp)
    8000626c:	02010413          	addi	s0,sp,32
    80006270:	0ff7f713          	andi	a4,a5,255
    80006274:	00900693          	li	a3,9
    80006278:	04d70c63          	beq	a4,a3,800062d0 <devintr+0x84>
    8000627c:	fff00713          	li	a4,-1
    80006280:	03f71713          	slli	a4,a4,0x3f
    80006284:	00170713          	addi	a4,a4,1
    80006288:	00e78c63          	beq	a5,a4,800062a0 <devintr+0x54>
    8000628c:	01813083          	ld	ra,24(sp)
    80006290:	01013403          	ld	s0,16(sp)
    80006294:	00813483          	ld	s1,8(sp)
    80006298:	02010113          	addi	sp,sp,32
    8000629c:	00008067          	ret
    800062a0:	00000097          	auipc	ra,0x0
    800062a4:	c8c080e7          	jalr	-884(ra) # 80005f2c <cpuid>
    800062a8:	06050663          	beqz	a0,80006314 <devintr+0xc8>
    800062ac:	144027f3          	csrr	a5,sip
    800062b0:	ffd7f793          	andi	a5,a5,-3
    800062b4:	14479073          	csrw	sip,a5
    800062b8:	01813083          	ld	ra,24(sp)
    800062bc:	01013403          	ld	s0,16(sp)
    800062c0:	00813483          	ld	s1,8(sp)
    800062c4:	00200513          	li	a0,2
    800062c8:	02010113          	addi	sp,sp,32
    800062cc:	00008067          	ret
    800062d0:	00000097          	auipc	ra,0x0
    800062d4:	254080e7          	jalr	596(ra) # 80006524 <plic_claim>
    800062d8:	00a00793          	li	a5,10
    800062dc:	00050493          	mv	s1,a0
    800062e0:	06f50663          	beq	a0,a5,8000634c <devintr+0x100>
    800062e4:	00100513          	li	a0,1
    800062e8:	fa0482e3          	beqz	s1,8000628c <devintr+0x40>
    800062ec:	00048593          	mv	a1,s1
    800062f0:	00002517          	auipc	a0,0x2
    800062f4:	2e050513          	addi	a0,a0,736 # 800085d0 <CONSOLE_STATUS+0x5c0>
    800062f8:	00000097          	auipc	ra,0x0
    800062fc:	670080e7          	jalr	1648(ra) # 80006968 <__printf>
    80006300:	00048513          	mv	a0,s1
    80006304:	00000097          	auipc	ra,0x0
    80006308:	258080e7          	jalr	600(ra) # 8000655c <plic_complete>
    8000630c:	00100513          	li	a0,1
    80006310:	f7dff06f          	j	8000628c <devintr+0x40>
    80006314:	00005517          	auipc	a0,0x5
    80006318:	ebc50513          	addi	a0,a0,-324 # 8000b1d0 <tickslock>
    8000631c:	00001097          	auipc	ra,0x1
    80006320:	320080e7          	jalr	800(ra) # 8000763c <acquire>
    80006324:	00004717          	auipc	a4,0x4
    80006328:	d7070713          	addi	a4,a4,-656 # 8000a094 <ticks>
    8000632c:	00072783          	lw	a5,0(a4)
    80006330:	00005517          	auipc	a0,0x5
    80006334:	ea050513          	addi	a0,a0,-352 # 8000b1d0 <tickslock>
    80006338:	0017879b          	addiw	a5,a5,1
    8000633c:	00f72023          	sw	a5,0(a4)
    80006340:	00001097          	auipc	ra,0x1
    80006344:	3c8080e7          	jalr	968(ra) # 80007708 <release>
    80006348:	f65ff06f          	j	800062ac <devintr+0x60>
    8000634c:	00001097          	auipc	ra,0x1
    80006350:	f24080e7          	jalr	-220(ra) # 80007270 <uartintr>
    80006354:	fadff06f          	j	80006300 <devintr+0xb4>
	...

0000000080006360 <kernelvec>:
    80006360:	f0010113          	addi	sp,sp,-256
    80006364:	00113023          	sd	ra,0(sp)
    80006368:	00213423          	sd	sp,8(sp)
    8000636c:	00313823          	sd	gp,16(sp)
    80006370:	00413c23          	sd	tp,24(sp)
    80006374:	02513023          	sd	t0,32(sp)
    80006378:	02613423          	sd	t1,40(sp)
    8000637c:	02713823          	sd	t2,48(sp)
    80006380:	02813c23          	sd	s0,56(sp)
    80006384:	04913023          	sd	s1,64(sp)
    80006388:	04a13423          	sd	a0,72(sp)
    8000638c:	04b13823          	sd	a1,80(sp)
    80006390:	04c13c23          	sd	a2,88(sp)
    80006394:	06d13023          	sd	a3,96(sp)
    80006398:	06e13423          	sd	a4,104(sp)
    8000639c:	06f13823          	sd	a5,112(sp)
    800063a0:	07013c23          	sd	a6,120(sp)
    800063a4:	09113023          	sd	a7,128(sp)
    800063a8:	09213423          	sd	s2,136(sp)
    800063ac:	09313823          	sd	s3,144(sp)
    800063b0:	09413c23          	sd	s4,152(sp)
    800063b4:	0b513023          	sd	s5,160(sp)
    800063b8:	0b613423          	sd	s6,168(sp)
    800063bc:	0b713823          	sd	s7,176(sp)
    800063c0:	0b813c23          	sd	s8,184(sp)
    800063c4:	0d913023          	sd	s9,192(sp)
    800063c8:	0da13423          	sd	s10,200(sp)
    800063cc:	0db13823          	sd	s11,208(sp)
    800063d0:	0dc13c23          	sd	t3,216(sp)
    800063d4:	0fd13023          	sd	t4,224(sp)
    800063d8:	0fe13423          	sd	t5,232(sp)
    800063dc:	0ff13823          	sd	t6,240(sp)
    800063e0:	ccdff0ef          	jal	ra,800060ac <kerneltrap>
    800063e4:	00013083          	ld	ra,0(sp)
    800063e8:	00813103          	ld	sp,8(sp)
    800063ec:	01013183          	ld	gp,16(sp)
    800063f0:	02013283          	ld	t0,32(sp)
    800063f4:	02813303          	ld	t1,40(sp)
    800063f8:	03013383          	ld	t2,48(sp)
    800063fc:	03813403          	ld	s0,56(sp)
    80006400:	04013483          	ld	s1,64(sp)
    80006404:	04813503          	ld	a0,72(sp)
    80006408:	05013583          	ld	a1,80(sp)
    8000640c:	05813603          	ld	a2,88(sp)
    80006410:	06013683          	ld	a3,96(sp)
    80006414:	06813703          	ld	a4,104(sp)
    80006418:	07013783          	ld	a5,112(sp)
    8000641c:	07813803          	ld	a6,120(sp)
    80006420:	08013883          	ld	a7,128(sp)
    80006424:	08813903          	ld	s2,136(sp)
    80006428:	09013983          	ld	s3,144(sp)
    8000642c:	09813a03          	ld	s4,152(sp)
    80006430:	0a013a83          	ld	s5,160(sp)
    80006434:	0a813b03          	ld	s6,168(sp)
    80006438:	0b013b83          	ld	s7,176(sp)
    8000643c:	0b813c03          	ld	s8,184(sp)
    80006440:	0c013c83          	ld	s9,192(sp)
    80006444:	0c813d03          	ld	s10,200(sp)
    80006448:	0d013d83          	ld	s11,208(sp)
    8000644c:	0d813e03          	ld	t3,216(sp)
    80006450:	0e013e83          	ld	t4,224(sp)
    80006454:	0e813f03          	ld	t5,232(sp)
    80006458:	0f013f83          	ld	t6,240(sp)
    8000645c:	10010113          	addi	sp,sp,256
    80006460:	10200073          	sret
    80006464:	00000013          	nop
    80006468:	00000013          	nop
    8000646c:	00000013          	nop

0000000080006470 <timervec>:
    80006470:	34051573          	csrrw	a0,mscratch,a0
    80006474:	00b53023          	sd	a1,0(a0)
    80006478:	00c53423          	sd	a2,8(a0)
    8000647c:	00d53823          	sd	a3,16(a0)
    80006480:	01853583          	ld	a1,24(a0)
    80006484:	02053603          	ld	a2,32(a0)
    80006488:	0005b683          	ld	a3,0(a1)
    8000648c:	00c686b3          	add	a3,a3,a2
    80006490:	00d5b023          	sd	a3,0(a1)
    80006494:	00200593          	li	a1,2
    80006498:	14459073          	csrw	sip,a1
    8000649c:	01053683          	ld	a3,16(a0)
    800064a0:	00853603          	ld	a2,8(a0)
    800064a4:	00053583          	ld	a1,0(a0)
    800064a8:	34051573          	csrrw	a0,mscratch,a0
    800064ac:	30200073          	mret

00000000800064b0 <plicinit>:
    800064b0:	ff010113          	addi	sp,sp,-16
    800064b4:	00813423          	sd	s0,8(sp)
    800064b8:	01010413          	addi	s0,sp,16
    800064bc:	00813403          	ld	s0,8(sp)
    800064c0:	0c0007b7          	lui	a5,0xc000
    800064c4:	00100713          	li	a4,1
    800064c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800064cc:	00e7a223          	sw	a4,4(a5)
    800064d0:	01010113          	addi	sp,sp,16
    800064d4:	00008067          	ret

00000000800064d8 <plicinithart>:
    800064d8:	ff010113          	addi	sp,sp,-16
    800064dc:	00813023          	sd	s0,0(sp)
    800064e0:	00113423          	sd	ra,8(sp)
    800064e4:	01010413          	addi	s0,sp,16
    800064e8:	00000097          	auipc	ra,0x0
    800064ec:	a44080e7          	jalr	-1468(ra) # 80005f2c <cpuid>
    800064f0:	0085171b          	slliw	a4,a0,0x8
    800064f4:	0c0027b7          	lui	a5,0xc002
    800064f8:	00e787b3          	add	a5,a5,a4
    800064fc:	40200713          	li	a4,1026
    80006500:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006504:	00813083          	ld	ra,8(sp)
    80006508:	00013403          	ld	s0,0(sp)
    8000650c:	00d5151b          	slliw	a0,a0,0xd
    80006510:	0c2017b7          	lui	a5,0xc201
    80006514:	00a78533          	add	a0,a5,a0
    80006518:	00052023          	sw	zero,0(a0)
    8000651c:	01010113          	addi	sp,sp,16
    80006520:	00008067          	ret

0000000080006524 <plic_claim>:
    80006524:	ff010113          	addi	sp,sp,-16
    80006528:	00813023          	sd	s0,0(sp)
    8000652c:	00113423          	sd	ra,8(sp)
    80006530:	01010413          	addi	s0,sp,16
    80006534:	00000097          	auipc	ra,0x0
    80006538:	9f8080e7          	jalr	-1544(ra) # 80005f2c <cpuid>
    8000653c:	00813083          	ld	ra,8(sp)
    80006540:	00013403          	ld	s0,0(sp)
    80006544:	00d5151b          	slliw	a0,a0,0xd
    80006548:	0c2017b7          	lui	a5,0xc201
    8000654c:	00a78533          	add	a0,a5,a0
    80006550:	00452503          	lw	a0,4(a0)
    80006554:	01010113          	addi	sp,sp,16
    80006558:	00008067          	ret

000000008000655c <plic_complete>:
    8000655c:	fe010113          	addi	sp,sp,-32
    80006560:	00813823          	sd	s0,16(sp)
    80006564:	00913423          	sd	s1,8(sp)
    80006568:	00113c23          	sd	ra,24(sp)
    8000656c:	02010413          	addi	s0,sp,32
    80006570:	00050493          	mv	s1,a0
    80006574:	00000097          	auipc	ra,0x0
    80006578:	9b8080e7          	jalr	-1608(ra) # 80005f2c <cpuid>
    8000657c:	01813083          	ld	ra,24(sp)
    80006580:	01013403          	ld	s0,16(sp)
    80006584:	00d5179b          	slliw	a5,a0,0xd
    80006588:	0c201737          	lui	a4,0xc201
    8000658c:	00f707b3          	add	a5,a4,a5
    80006590:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006594:	00813483          	ld	s1,8(sp)
    80006598:	02010113          	addi	sp,sp,32
    8000659c:	00008067          	ret

00000000800065a0 <consolewrite>:
    800065a0:	fb010113          	addi	sp,sp,-80
    800065a4:	04813023          	sd	s0,64(sp)
    800065a8:	04113423          	sd	ra,72(sp)
    800065ac:	02913c23          	sd	s1,56(sp)
    800065b0:	03213823          	sd	s2,48(sp)
    800065b4:	03313423          	sd	s3,40(sp)
    800065b8:	03413023          	sd	s4,32(sp)
    800065bc:	01513c23          	sd	s5,24(sp)
    800065c0:	05010413          	addi	s0,sp,80
    800065c4:	06c05c63          	blez	a2,8000663c <consolewrite+0x9c>
    800065c8:	00060993          	mv	s3,a2
    800065cc:	00050a13          	mv	s4,a0
    800065d0:	00058493          	mv	s1,a1
    800065d4:	00000913          	li	s2,0
    800065d8:	fff00a93          	li	s5,-1
    800065dc:	01c0006f          	j	800065f8 <consolewrite+0x58>
    800065e0:	fbf44503          	lbu	a0,-65(s0)
    800065e4:	0019091b          	addiw	s2,s2,1
    800065e8:	00148493          	addi	s1,s1,1
    800065ec:	00001097          	auipc	ra,0x1
    800065f0:	a9c080e7          	jalr	-1380(ra) # 80007088 <uartputc>
    800065f4:	03298063          	beq	s3,s2,80006614 <consolewrite+0x74>
    800065f8:	00048613          	mv	a2,s1
    800065fc:	00100693          	li	a3,1
    80006600:	000a0593          	mv	a1,s4
    80006604:	fbf40513          	addi	a0,s0,-65
    80006608:	00000097          	auipc	ra,0x0
    8000660c:	9dc080e7          	jalr	-1572(ra) # 80005fe4 <either_copyin>
    80006610:	fd5518e3          	bne	a0,s5,800065e0 <consolewrite+0x40>
    80006614:	04813083          	ld	ra,72(sp)
    80006618:	04013403          	ld	s0,64(sp)
    8000661c:	03813483          	ld	s1,56(sp)
    80006620:	02813983          	ld	s3,40(sp)
    80006624:	02013a03          	ld	s4,32(sp)
    80006628:	01813a83          	ld	s5,24(sp)
    8000662c:	00090513          	mv	a0,s2
    80006630:	03013903          	ld	s2,48(sp)
    80006634:	05010113          	addi	sp,sp,80
    80006638:	00008067          	ret
    8000663c:	00000913          	li	s2,0
    80006640:	fd5ff06f          	j	80006614 <consolewrite+0x74>

0000000080006644 <consoleread>:
    80006644:	f9010113          	addi	sp,sp,-112
    80006648:	06813023          	sd	s0,96(sp)
    8000664c:	04913c23          	sd	s1,88(sp)
    80006650:	05213823          	sd	s2,80(sp)
    80006654:	05313423          	sd	s3,72(sp)
    80006658:	05413023          	sd	s4,64(sp)
    8000665c:	03513c23          	sd	s5,56(sp)
    80006660:	03613823          	sd	s6,48(sp)
    80006664:	03713423          	sd	s7,40(sp)
    80006668:	03813023          	sd	s8,32(sp)
    8000666c:	06113423          	sd	ra,104(sp)
    80006670:	01913c23          	sd	s9,24(sp)
    80006674:	07010413          	addi	s0,sp,112
    80006678:	00060b93          	mv	s7,a2
    8000667c:	00050913          	mv	s2,a0
    80006680:	00058c13          	mv	s8,a1
    80006684:	00060b1b          	sext.w	s6,a2
    80006688:	00005497          	auipc	s1,0x5
    8000668c:	b7048493          	addi	s1,s1,-1168 # 8000b1f8 <cons>
    80006690:	00400993          	li	s3,4
    80006694:	fff00a13          	li	s4,-1
    80006698:	00a00a93          	li	s5,10
    8000669c:	05705e63          	blez	s7,800066f8 <consoleread+0xb4>
    800066a0:	09c4a703          	lw	a4,156(s1)
    800066a4:	0984a783          	lw	a5,152(s1)
    800066a8:	0007071b          	sext.w	a4,a4
    800066ac:	08e78463          	beq	a5,a4,80006734 <consoleread+0xf0>
    800066b0:	07f7f713          	andi	a4,a5,127
    800066b4:	00e48733          	add	a4,s1,a4
    800066b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800066bc:	0017869b          	addiw	a3,a5,1
    800066c0:	08d4ac23          	sw	a3,152(s1)
    800066c4:	00070c9b          	sext.w	s9,a4
    800066c8:	0b370663          	beq	a4,s3,80006774 <consoleread+0x130>
    800066cc:	00100693          	li	a3,1
    800066d0:	f9f40613          	addi	a2,s0,-97
    800066d4:	000c0593          	mv	a1,s8
    800066d8:	00090513          	mv	a0,s2
    800066dc:	f8e40fa3          	sb	a4,-97(s0)
    800066e0:	00000097          	auipc	ra,0x0
    800066e4:	8b8080e7          	jalr	-1864(ra) # 80005f98 <either_copyout>
    800066e8:	01450863          	beq	a0,s4,800066f8 <consoleread+0xb4>
    800066ec:	001c0c13          	addi	s8,s8,1
    800066f0:	fffb8b9b          	addiw	s7,s7,-1
    800066f4:	fb5c94e3          	bne	s9,s5,8000669c <consoleread+0x58>
    800066f8:	000b851b          	sext.w	a0,s7
    800066fc:	06813083          	ld	ra,104(sp)
    80006700:	06013403          	ld	s0,96(sp)
    80006704:	05813483          	ld	s1,88(sp)
    80006708:	05013903          	ld	s2,80(sp)
    8000670c:	04813983          	ld	s3,72(sp)
    80006710:	04013a03          	ld	s4,64(sp)
    80006714:	03813a83          	ld	s5,56(sp)
    80006718:	02813b83          	ld	s7,40(sp)
    8000671c:	02013c03          	ld	s8,32(sp)
    80006720:	01813c83          	ld	s9,24(sp)
    80006724:	40ab053b          	subw	a0,s6,a0
    80006728:	03013b03          	ld	s6,48(sp)
    8000672c:	07010113          	addi	sp,sp,112
    80006730:	00008067          	ret
    80006734:	00001097          	auipc	ra,0x1
    80006738:	1d8080e7          	jalr	472(ra) # 8000790c <push_on>
    8000673c:	0984a703          	lw	a4,152(s1)
    80006740:	09c4a783          	lw	a5,156(s1)
    80006744:	0007879b          	sext.w	a5,a5
    80006748:	fef70ce3          	beq	a4,a5,80006740 <consoleread+0xfc>
    8000674c:	00001097          	auipc	ra,0x1
    80006750:	234080e7          	jalr	564(ra) # 80007980 <pop_on>
    80006754:	0984a783          	lw	a5,152(s1)
    80006758:	07f7f713          	andi	a4,a5,127
    8000675c:	00e48733          	add	a4,s1,a4
    80006760:	01874703          	lbu	a4,24(a4)
    80006764:	0017869b          	addiw	a3,a5,1
    80006768:	08d4ac23          	sw	a3,152(s1)
    8000676c:	00070c9b          	sext.w	s9,a4
    80006770:	f5371ee3          	bne	a4,s3,800066cc <consoleread+0x88>
    80006774:	000b851b          	sext.w	a0,s7
    80006778:	f96bf2e3          	bgeu	s7,s6,800066fc <consoleread+0xb8>
    8000677c:	08f4ac23          	sw	a5,152(s1)
    80006780:	f7dff06f          	j	800066fc <consoleread+0xb8>

0000000080006784 <consputc>:
    80006784:	10000793          	li	a5,256
    80006788:	00f50663          	beq	a0,a5,80006794 <consputc+0x10>
    8000678c:	00001317          	auipc	t1,0x1
    80006790:	9f430067          	jr	-1548(t1) # 80007180 <uartputc_sync>
    80006794:	ff010113          	addi	sp,sp,-16
    80006798:	00113423          	sd	ra,8(sp)
    8000679c:	00813023          	sd	s0,0(sp)
    800067a0:	01010413          	addi	s0,sp,16
    800067a4:	00800513          	li	a0,8
    800067a8:	00001097          	auipc	ra,0x1
    800067ac:	9d8080e7          	jalr	-1576(ra) # 80007180 <uartputc_sync>
    800067b0:	02000513          	li	a0,32
    800067b4:	00001097          	auipc	ra,0x1
    800067b8:	9cc080e7          	jalr	-1588(ra) # 80007180 <uartputc_sync>
    800067bc:	00013403          	ld	s0,0(sp)
    800067c0:	00813083          	ld	ra,8(sp)
    800067c4:	00800513          	li	a0,8
    800067c8:	01010113          	addi	sp,sp,16
    800067cc:	00001317          	auipc	t1,0x1
    800067d0:	9b430067          	jr	-1612(t1) # 80007180 <uartputc_sync>

00000000800067d4 <consoleintr>:
    800067d4:	fe010113          	addi	sp,sp,-32
    800067d8:	00813823          	sd	s0,16(sp)
    800067dc:	00913423          	sd	s1,8(sp)
    800067e0:	01213023          	sd	s2,0(sp)
    800067e4:	00113c23          	sd	ra,24(sp)
    800067e8:	02010413          	addi	s0,sp,32
    800067ec:	00005917          	auipc	s2,0x5
    800067f0:	a0c90913          	addi	s2,s2,-1524 # 8000b1f8 <cons>
    800067f4:	00050493          	mv	s1,a0
    800067f8:	00090513          	mv	a0,s2
    800067fc:	00001097          	auipc	ra,0x1
    80006800:	e40080e7          	jalr	-448(ra) # 8000763c <acquire>
    80006804:	02048c63          	beqz	s1,8000683c <consoleintr+0x68>
    80006808:	0a092783          	lw	a5,160(s2)
    8000680c:	09892703          	lw	a4,152(s2)
    80006810:	07f00693          	li	a3,127
    80006814:	40e7873b          	subw	a4,a5,a4
    80006818:	02e6e263          	bltu	a3,a4,8000683c <consoleintr+0x68>
    8000681c:	00d00713          	li	a4,13
    80006820:	04e48063          	beq	s1,a4,80006860 <consoleintr+0x8c>
    80006824:	07f7f713          	andi	a4,a5,127
    80006828:	00e90733          	add	a4,s2,a4
    8000682c:	0017879b          	addiw	a5,a5,1
    80006830:	0af92023          	sw	a5,160(s2)
    80006834:	00970c23          	sb	s1,24(a4)
    80006838:	08f92e23          	sw	a5,156(s2)
    8000683c:	01013403          	ld	s0,16(sp)
    80006840:	01813083          	ld	ra,24(sp)
    80006844:	00813483          	ld	s1,8(sp)
    80006848:	00013903          	ld	s2,0(sp)
    8000684c:	00005517          	auipc	a0,0x5
    80006850:	9ac50513          	addi	a0,a0,-1620 # 8000b1f8 <cons>
    80006854:	02010113          	addi	sp,sp,32
    80006858:	00001317          	auipc	t1,0x1
    8000685c:	eb030067          	jr	-336(t1) # 80007708 <release>
    80006860:	00a00493          	li	s1,10
    80006864:	fc1ff06f          	j	80006824 <consoleintr+0x50>

0000000080006868 <consoleinit>:
    80006868:	fe010113          	addi	sp,sp,-32
    8000686c:	00113c23          	sd	ra,24(sp)
    80006870:	00813823          	sd	s0,16(sp)
    80006874:	00913423          	sd	s1,8(sp)
    80006878:	02010413          	addi	s0,sp,32
    8000687c:	00005497          	auipc	s1,0x5
    80006880:	97c48493          	addi	s1,s1,-1668 # 8000b1f8 <cons>
    80006884:	00048513          	mv	a0,s1
    80006888:	00002597          	auipc	a1,0x2
    8000688c:	da058593          	addi	a1,a1,-608 # 80008628 <CONSOLE_STATUS+0x618>
    80006890:	00001097          	auipc	ra,0x1
    80006894:	d88080e7          	jalr	-632(ra) # 80007618 <initlock>
    80006898:	00000097          	auipc	ra,0x0
    8000689c:	7ac080e7          	jalr	1964(ra) # 80007044 <uartinit>
    800068a0:	01813083          	ld	ra,24(sp)
    800068a4:	01013403          	ld	s0,16(sp)
    800068a8:	00000797          	auipc	a5,0x0
    800068ac:	d9c78793          	addi	a5,a5,-612 # 80006644 <consoleread>
    800068b0:	0af4bc23          	sd	a5,184(s1)
    800068b4:	00000797          	auipc	a5,0x0
    800068b8:	cec78793          	addi	a5,a5,-788 # 800065a0 <consolewrite>
    800068bc:	0cf4b023          	sd	a5,192(s1)
    800068c0:	00813483          	ld	s1,8(sp)
    800068c4:	02010113          	addi	sp,sp,32
    800068c8:	00008067          	ret

00000000800068cc <console_read>:
    800068cc:	ff010113          	addi	sp,sp,-16
    800068d0:	00813423          	sd	s0,8(sp)
    800068d4:	01010413          	addi	s0,sp,16
    800068d8:	00813403          	ld	s0,8(sp)
    800068dc:	00005317          	auipc	t1,0x5
    800068e0:	9d433303          	ld	t1,-1580(t1) # 8000b2b0 <devsw+0x10>
    800068e4:	01010113          	addi	sp,sp,16
    800068e8:	00030067          	jr	t1

00000000800068ec <console_write>:
    800068ec:	ff010113          	addi	sp,sp,-16
    800068f0:	00813423          	sd	s0,8(sp)
    800068f4:	01010413          	addi	s0,sp,16
    800068f8:	00813403          	ld	s0,8(sp)
    800068fc:	00005317          	auipc	t1,0x5
    80006900:	9bc33303          	ld	t1,-1604(t1) # 8000b2b8 <devsw+0x18>
    80006904:	01010113          	addi	sp,sp,16
    80006908:	00030067          	jr	t1

000000008000690c <panic>:
    8000690c:	fe010113          	addi	sp,sp,-32
    80006910:	00113c23          	sd	ra,24(sp)
    80006914:	00813823          	sd	s0,16(sp)
    80006918:	00913423          	sd	s1,8(sp)
    8000691c:	02010413          	addi	s0,sp,32
    80006920:	00050493          	mv	s1,a0
    80006924:	00002517          	auipc	a0,0x2
    80006928:	d0c50513          	addi	a0,a0,-756 # 80008630 <CONSOLE_STATUS+0x620>
    8000692c:	00005797          	auipc	a5,0x5
    80006930:	a207a623          	sw	zero,-1492(a5) # 8000b358 <pr+0x18>
    80006934:	00000097          	auipc	ra,0x0
    80006938:	034080e7          	jalr	52(ra) # 80006968 <__printf>
    8000693c:	00048513          	mv	a0,s1
    80006940:	00000097          	auipc	ra,0x0
    80006944:	028080e7          	jalr	40(ra) # 80006968 <__printf>
    80006948:	00002517          	auipc	a0,0x2
    8000694c:	af050513          	addi	a0,a0,-1296 # 80008438 <CONSOLE_STATUS+0x428>
    80006950:	00000097          	auipc	ra,0x0
    80006954:	018080e7          	jalr	24(ra) # 80006968 <__printf>
    80006958:	00100793          	li	a5,1
    8000695c:	00003717          	auipc	a4,0x3
    80006960:	72f72e23          	sw	a5,1852(a4) # 8000a098 <panicked>
    80006964:	0000006f          	j	80006964 <panic+0x58>

0000000080006968 <__printf>:
    80006968:	f3010113          	addi	sp,sp,-208
    8000696c:	08813023          	sd	s0,128(sp)
    80006970:	07313423          	sd	s3,104(sp)
    80006974:	09010413          	addi	s0,sp,144
    80006978:	05813023          	sd	s8,64(sp)
    8000697c:	08113423          	sd	ra,136(sp)
    80006980:	06913c23          	sd	s1,120(sp)
    80006984:	07213823          	sd	s2,112(sp)
    80006988:	07413023          	sd	s4,96(sp)
    8000698c:	05513c23          	sd	s5,88(sp)
    80006990:	05613823          	sd	s6,80(sp)
    80006994:	05713423          	sd	s7,72(sp)
    80006998:	03913c23          	sd	s9,56(sp)
    8000699c:	03a13823          	sd	s10,48(sp)
    800069a0:	03b13423          	sd	s11,40(sp)
    800069a4:	00005317          	auipc	t1,0x5
    800069a8:	99c30313          	addi	t1,t1,-1636 # 8000b340 <pr>
    800069ac:	01832c03          	lw	s8,24(t1)
    800069b0:	00b43423          	sd	a1,8(s0)
    800069b4:	00c43823          	sd	a2,16(s0)
    800069b8:	00d43c23          	sd	a3,24(s0)
    800069bc:	02e43023          	sd	a4,32(s0)
    800069c0:	02f43423          	sd	a5,40(s0)
    800069c4:	03043823          	sd	a6,48(s0)
    800069c8:	03143c23          	sd	a7,56(s0)
    800069cc:	00050993          	mv	s3,a0
    800069d0:	4a0c1663          	bnez	s8,80006e7c <__printf+0x514>
    800069d4:	60098c63          	beqz	s3,80006fec <__printf+0x684>
    800069d8:	0009c503          	lbu	a0,0(s3)
    800069dc:	00840793          	addi	a5,s0,8
    800069e0:	f6f43c23          	sd	a5,-136(s0)
    800069e4:	00000493          	li	s1,0
    800069e8:	22050063          	beqz	a0,80006c08 <__printf+0x2a0>
    800069ec:	00002a37          	lui	s4,0x2
    800069f0:	00018ab7          	lui	s5,0x18
    800069f4:	000f4b37          	lui	s6,0xf4
    800069f8:	00989bb7          	lui	s7,0x989
    800069fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006a00:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006a04:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006a08:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006a0c:	00148c9b          	addiw	s9,s1,1
    80006a10:	02500793          	li	a5,37
    80006a14:	01998933          	add	s2,s3,s9
    80006a18:	38f51263          	bne	a0,a5,80006d9c <__printf+0x434>
    80006a1c:	00094783          	lbu	a5,0(s2)
    80006a20:	00078c9b          	sext.w	s9,a5
    80006a24:	1e078263          	beqz	a5,80006c08 <__printf+0x2a0>
    80006a28:	0024849b          	addiw	s1,s1,2
    80006a2c:	07000713          	li	a4,112
    80006a30:	00998933          	add	s2,s3,s1
    80006a34:	38e78a63          	beq	a5,a4,80006dc8 <__printf+0x460>
    80006a38:	20f76863          	bltu	a4,a5,80006c48 <__printf+0x2e0>
    80006a3c:	42a78863          	beq	a5,a0,80006e6c <__printf+0x504>
    80006a40:	06400713          	li	a4,100
    80006a44:	40e79663          	bne	a5,a4,80006e50 <__printf+0x4e8>
    80006a48:	f7843783          	ld	a5,-136(s0)
    80006a4c:	0007a603          	lw	a2,0(a5)
    80006a50:	00878793          	addi	a5,a5,8
    80006a54:	f6f43c23          	sd	a5,-136(s0)
    80006a58:	42064a63          	bltz	a2,80006e8c <__printf+0x524>
    80006a5c:	00a00713          	li	a4,10
    80006a60:	02e677bb          	remuw	a5,a2,a4
    80006a64:	00002d97          	auipc	s11,0x2
    80006a68:	bf4d8d93          	addi	s11,s11,-1036 # 80008658 <digits>
    80006a6c:	00900593          	li	a1,9
    80006a70:	0006051b          	sext.w	a0,a2
    80006a74:	00000c93          	li	s9,0
    80006a78:	02079793          	slli	a5,a5,0x20
    80006a7c:	0207d793          	srli	a5,a5,0x20
    80006a80:	00fd87b3          	add	a5,s11,a5
    80006a84:	0007c783          	lbu	a5,0(a5)
    80006a88:	02e656bb          	divuw	a3,a2,a4
    80006a8c:	f8f40023          	sb	a5,-128(s0)
    80006a90:	14c5d863          	bge	a1,a2,80006be0 <__printf+0x278>
    80006a94:	06300593          	li	a1,99
    80006a98:	00100c93          	li	s9,1
    80006a9c:	02e6f7bb          	remuw	a5,a3,a4
    80006aa0:	02079793          	slli	a5,a5,0x20
    80006aa4:	0207d793          	srli	a5,a5,0x20
    80006aa8:	00fd87b3          	add	a5,s11,a5
    80006aac:	0007c783          	lbu	a5,0(a5)
    80006ab0:	02e6d73b          	divuw	a4,a3,a4
    80006ab4:	f8f400a3          	sb	a5,-127(s0)
    80006ab8:	12a5f463          	bgeu	a1,a0,80006be0 <__printf+0x278>
    80006abc:	00a00693          	li	a3,10
    80006ac0:	00900593          	li	a1,9
    80006ac4:	02d777bb          	remuw	a5,a4,a3
    80006ac8:	02079793          	slli	a5,a5,0x20
    80006acc:	0207d793          	srli	a5,a5,0x20
    80006ad0:	00fd87b3          	add	a5,s11,a5
    80006ad4:	0007c503          	lbu	a0,0(a5)
    80006ad8:	02d757bb          	divuw	a5,a4,a3
    80006adc:	f8a40123          	sb	a0,-126(s0)
    80006ae0:	48e5f263          	bgeu	a1,a4,80006f64 <__printf+0x5fc>
    80006ae4:	06300513          	li	a0,99
    80006ae8:	02d7f5bb          	remuw	a1,a5,a3
    80006aec:	02059593          	slli	a1,a1,0x20
    80006af0:	0205d593          	srli	a1,a1,0x20
    80006af4:	00bd85b3          	add	a1,s11,a1
    80006af8:	0005c583          	lbu	a1,0(a1)
    80006afc:	02d7d7bb          	divuw	a5,a5,a3
    80006b00:	f8b401a3          	sb	a1,-125(s0)
    80006b04:	48e57263          	bgeu	a0,a4,80006f88 <__printf+0x620>
    80006b08:	3e700513          	li	a0,999
    80006b0c:	02d7f5bb          	remuw	a1,a5,a3
    80006b10:	02059593          	slli	a1,a1,0x20
    80006b14:	0205d593          	srli	a1,a1,0x20
    80006b18:	00bd85b3          	add	a1,s11,a1
    80006b1c:	0005c583          	lbu	a1,0(a1)
    80006b20:	02d7d7bb          	divuw	a5,a5,a3
    80006b24:	f8b40223          	sb	a1,-124(s0)
    80006b28:	46e57663          	bgeu	a0,a4,80006f94 <__printf+0x62c>
    80006b2c:	02d7f5bb          	remuw	a1,a5,a3
    80006b30:	02059593          	slli	a1,a1,0x20
    80006b34:	0205d593          	srli	a1,a1,0x20
    80006b38:	00bd85b3          	add	a1,s11,a1
    80006b3c:	0005c583          	lbu	a1,0(a1)
    80006b40:	02d7d7bb          	divuw	a5,a5,a3
    80006b44:	f8b402a3          	sb	a1,-123(s0)
    80006b48:	46ea7863          	bgeu	s4,a4,80006fb8 <__printf+0x650>
    80006b4c:	02d7f5bb          	remuw	a1,a5,a3
    80006b50:	02059593          	slli	a1,a1,0x20
    80006b54:	0205d593          	srli	a1,a1,0x20
    80006b58:	00bd85b3          	add	a1,s11,a1
    80006b5c:	0005c583          	lbu	a1,0(a1)
    80006b60:	02d7d7bb          	divuw	a5,a5,a3
    80006b64:	f8b40323          	sb	a1,-122(s0)
    80006b68:	3eeaf863          	bgeu	s5,a4,80006f58 <__printf+0x5f0>
    80006b6c:	02d7f5bb          	remuw	a1,a5,a3
    80006b70:	02059593          	slli	a1,a1,0x20
    80006b74:	0205d593          	srli	a1,a1,0x20
    80006b78:	00bd85b3          	add	a1,s11,a1
    80006b7c:	0005c583          	lbu	a1,0(a1)
    80006b80:	02d7d7bb          	divuw	a5,a5,a3
    80006b84:	f8b403a3          	sb	a1,-121(s0)
    80006b88:	42eb7e63          	bgeu	s6,a4,80006fc4 <__printf+0x65c>
    80006b8c:	02d7f5bb          	remuw	a1,a5,a3
    80006b90:	02059593          	slli	a1,a1,0x20
    80006b94:	0205d593          	srli	a1,a1,0x20
    80006b98:	00bd85b3          	add	a1,s11,a1
    80006b9c:	0005c583          	lbu	a1,0(a1)
    80006ba0:	02d7d7bb          	divuw	a5,a5,a3
    80006ba4:	f8b40423          	sb	a1,-120(s0)
    80006ba8:	42ebfc63          	bgeu	s7,a4,80006fe0 <__printf+0x678>
    80006bac:	02079793          	slli	a5,a5,0x20
    80006bb0:	0207d793          	srli	a5,a5,0x20
    80006bb4:	00fd8db3          	add	s11,s11,a5
    80006bb8:	000dc703          	lbu	a4,0(s11)
    80006bbc:	00a00793          	li	a5,10
    80006bc0:	00900c93          	li	s9,9
    80006bc4:	f8e404a3          	sb	a4,-119(s0)
    80006bc8:	00065c63          	bgez	a2,80006be0 <__printf+0x278>
    80006bcc:	f9040713          	addi	a4,s0,-112
    80006bd0:	00f70733          	add	a4,a4,a5
    80006bd4:	02d00693          	li	a3,45
    80006bd8:	fed70823          	sb	a3,-16(a4)
    80006bdc:	00078c93          	mv	s9,a5
    80006be0:	f8040793          	addi	a5,s0,-128
    80006be4:	01978cb3          	add	s9,a5,s9
    80006be8:	f7f40d13          	addi	s10,s0,-129
    80006bec:	000cc503          	lbu	a0,0(s9)
    80006bf0:	fffc8c93          	addi	s9,s9,-1
    80006bf4:	00000097          	auipc	ra,0x0
    80006bf8:	b90080e7          	jalr	-1136(ra) # 80006784 <consputc>
    80006bfc:	ffac98e3          	bne	s9,s10,80006bec <__printf+0x284>
    80006c00:	00094503          	lbu	a0,0(s2)
    80006c04:	e00514e3          	bnez	a0,80006a0c <__printf+0xa4>
    80006c08:	1a0c1663          	bnez	s8,80006db4 <__printf+0x44c>
    80006c0c:	08813083          	ld	ra,136(sp)
    80006c10:	08013403          	ld	s0,128(sp)
    80006c14:	07813483          	ld	s1,120(sp)
    80006c18:	07013903          	ld	s2,112(sp)
    80006c1c:	06813983          	ld	s3,104(sp)
    80006c20:	06013a03          	ld	s4,96(sp)
    80006c24:	05813a83          	ld	s5,88(sp)
    80006c28:	05013b03          	ld	s6,80(sp)
    80006c2c:	04813b83          	ld	s7,72(sp)
    80006c30:	04013c03          	ld	s8,64(sp)
    80006c34:	03813c83          	ld	s9,56(sp)
    80006c38:	03013d03          	ld	s10,48(sp)
    80006c3c:	02813d83          	ld	s11,40(sp)
    80006c40:	0d010113          	addi	sp,sp,208
    80006c44:	00008067          	ret
    80006c48:	07300713          	li	a4,115
    80006c4c:	1ce78a63          	beq	a5,a4,80006e20 <__printf+0x4b8>
    80006c50:	07800713          	li	a4,120
    80006c54:	1ee79e63          	bne	a5,a4,80006e50 <__printf+0x4e8>
    80006c58:	f7843783          	ld	a5,-136(s0)
    80006c5c:	0007a703          	lw	a4,0(a5)
    80006c60:	00878793          	addi	a5,a5,8
    80006c64:	f6f43c23          	sd	a5,-136(s0)
    80006c68:	28074263          	bltz	a4,80006eec <__printf+0x584>
    80006c6c:	00002d97          	auipc	s11,0x2
    80006c70:	9ecd8d93          	addi	s11,s11,-1556 # 80008658 <digits>
    80006c74:	00f77793          	andi	a5,a4,15
    80006c78:	00fd87b3          	add	a5,s11,a5
    80006c7c:	0007c683          	lbu	a3,0(a5)
    80006c80:	00f00613          	li	a2,15
    80006c84:	0007079b          	sext.w	a5,a4
    80006c88:	f8d40023          	sb	a3,-128(s0)
    80006c8c:	0047559b          	srliw	a1,a4,0x4
    80006c90:	0047569b          	srliw	a3,a4,0x4
    80006c94:	00000c93          	li	s9,0
    80006c98:	0ee65063          	bge	a2,a4,80006d78 <__printf+0x410>
    80006c9c:	00f6f693          	andi	a3,a3,15
    80006ca0:	00dd86b3          	add	a3,s11,a3
    80006ca4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006ca8:	0087d79b          	srliw	a5,a5,0x8
    80006cac:	00100c93          	li	s9,1
    80006cb0:	f8d400a3          	sb	a3,-127(s0)
    80006cb4:	0cb67263          	bgeu	a2,a1,80006d78 <__printf+0x410>
    80006cb8:	00f7f693          	andi	a3,a5,15
    80006cbc:	00dd86b3          	add	a3,s11,a3
    80006cc0:	0006c583          	lbu	a1,0(a3)
    80006cc4:	00f00613          	li	a2,15
    80006cc8:	0047d69b          	srliw	a3,a5,0x4
    80006ccc:	f8b40123          	sb	a1,-126(s0)
    80006cd0:	0047d593          	srli	a1,a5,0x4
    80006cd4:	28f67e63          	bgeu	a2,a5,80006f70 <__printf+0x608>
    80006cd8:	00f6f693          	andi	a3,a3,15
    80006cdc:	00dd86b3          	add	a3,s11,a3
    80006ce0:	0006c503          	lbu	a0,0(a3)
    80006ce4:	0087d813          	srli	a6,a5,0x8
    80006ce8:	0087d69b          	srliw	a3,a5,0x8
    80006cec:	f8a401a3          	sb	a0,-125(s0)
    80006cf0:	28b67663          	bgeu	a2,a1,80006f7c <__printf+0x614>
    80006cf4:	00f6f693          	andi	a3,a3,15
    80006cf8:	00dd86b3          	add	a3,s11,a3
    80006cfc:	0006c583          	lbu	a1,0(a3)
    80006d00:	00c7d513          	srli	a0,a5,0xc
    80006d04:	00c7d69b          	srliw	a3,a5,0xc
    80006d08:	f8b40223          	sb	a1,-124(s0)
    80006d0c:	29067a63          	bgeu	a2,a6,80006fa0 <__printf+0x638>
    80006d10:	00f6f693          	andi	a3,a3,15
    80006d14:	00dd86b3          	add	a3,s11,a3
    80006d18:	0006c583          	lbu	a1,0(a3)
    80006d1c:	0107d813          	srli	a6,a5,0x10
    80006d20:	0107d69b          	srliw	a3,a5,0x10
    80006d24:	f8b402a3          	sb	a1,-123(s0)
    80006d28:	28a67263          	bgeu	a2,a0,80006fac <__printf+0x644>
    80006d2c:	00f6f693          	andi	a3,a3,15
    80006d30:	00dd86b3          	add	a3,s11,a3
    80006d34:	0006c683          	lbu	a3,0(a3)
    80006d38:	0147d79b          	srliw	a5,a5,0x14
    80006d3c:	f8d40323          	sb	a3,-122(s0)
    80006d40:	21067663          	bgeu	a2,a6,80006f4c <__printf+0x5e4>
    80006d44:	02079793          	slli	a5,a5,0x20
    80006d48:	0207d793          	srli	a5,a5,0x20
    80006d4c:	00fd8db3          	add	s11,s11,a5
    80006d50:	000dc683          	lbu	a3,0(s11)
    80006d54:	00800793          	li	a5,8
    80006d58:	00700c93          	li	s9,7
    80006d5c:	f8d403a3          	sb	a3,-121(s0)
    80006d60:	00075c63          	bgez	a4,80006d78 <__printf+0x410>
    80006d64:	f9040713          	addi	a4,s0,-112
    80006d68:	00f70733          	add	a4,a4,a5
    80006d6c:	02d00693          	li	a3,45
    80006d70:	fed70823          	sb	a3,-16(a4)
    80006d74:	00078c93          	mv	s9,a5
    80006d78:	f8040793          	addi	a5,s0,-128
    80006d7c:	01978cb3          	add	s9,a5,s9
    80006d80:	f7f40d13          	addi	s10,s0,-129
    80006d84:	000cc503          	lbu	a0,0(s9)
    80006d88:	fffc8c93          	addi	s9,s9,-1
    80006d8c:	00000097          	auipc	ra,0x0
    80006d90:	9f8080e7          	jalr	-1544(ra) # 80006784 <consputc>
    80006d94:	ff9d18e3          	bne	s10,s9,80006d84 <__printf+0x41c>
    80006d98:	0100006f          	j	80006da8 <__printf+0x440>
    80006d9c:	00000097          	auipc	ra,0x0
    80006da0:	9e8080e7          	jalr	-1560(ra) # 80006784 <consputc>
    80006da4:	000c8493          	mv	s1,s9
    80006da8:	00094503          	lbu	a0,0(s2)
    80006dac:	c60510e3          	bnez	a0,80006a0c <__printf+0xa4>
    80006db0:	e40c0ee3          	beqz	s8,80006c0c <__printf+0x2a4>
    80006db4:	00004517          	auipc	a0,0x4
    80006db8:	58c50513          	addi	a0,a0,1420 # 8000b340 <pr>
    80006dbc:	00001097          	auipc	ra,0x1
    80006dc0:	94c080e7          	jalr	-1716(ra) # 80007708 <release>
    80006dc4:	e49ff06f          	j	80006c0c <__printf+0x2a4>
    80006dc8:	f7843783          	ld	a5,-136(s0)
    80006dcc:	03000513          	li	a0,48
    80006dd0:	01000d13          	li	s10,16
    80006dd4:	00878713          	addi	a4,a5,8
    80006dd8:	0007bc83          	ld	s9,0(a5)
    80006ddc:	f6e43c23          	sd	a4,-136(s0)
    80006de0:	00000097          	auipc	ra,0x0
    80006de4:	9a4080e7          	jalr	-1628(ra) # 80006784 <consputc>
    80006de8:	07800513          	li	a0,120
    80006dec:	00000097          	auipc	ra,0x0
    80006df0:	998080e7          	jalr	-1640(ra) # 80006784 <consputc>
    80006df4:	00002d97          	auipc	s11,0x2
    80006df8:	864d8d93          	addi	s11,s11,-1948 # 80008658 <digits>
    80006dfc:	03ccd793          	srli	a5,s9,0x3c
    80006e00:	00fd87b3          	add	a5,s11,a5
    80006e04:	0007c503          	lbu	a0,0(a5)
    80006e08:	fffd0d1b          	addiw	s10,s10,-1
    80006e0c:	004c9c93          	slli	s9,s9,0x4
    80006e10:	00000097          	auipc	ra,0x0
    80006e14:	974080e7          	jalr	-1676(ra) # 80006784 <consputc>
    80006e18:	fe0d12e3          	bnez	s10,80006dfc <__printf+0x494>
    80006e1c:	f8dff06f          	j	80006da8 <__printf+0x440>
    80006e20:	f7843783          	ld	a5,-136(s0)
    80006e24:	0007bc83          	ld	s9,0(a5)
    80006e28:	00878793          	addi	a5,a5,8
    80006e2c:	f6f43c23          	sd	a5,-136(s0)
    80006e30:	000c9a63          	bnez	s9,80006e44 <__printf+0x4dc>
    80006e34:	1080006f          	j	80006f3c <__printf+0x5d4>
    80006e38:	001c8c93          	addi	s9,s9,1
    80006e3c:	00000097          	auipc	ra,0x0
    80006e40:	948080e7          	jalr	-1720(ra) # 80006784 <consputc>
    80006e44:	000cc503          	lbu	a0,0(s9)
    80006e48:	fe0518e3          	bnez	a0,80006e38 <__printf+0x4d0>
    80006e4c:	f5dff06f          	j	80006da8 <__printf+0x440>
    80006e50:	02500513          	li	a0,37
    80006e54:	00000097          	auipc	ra,0x0
    80006e58:	930080e7          	jalr	-1744(ra) # 80006784 <consputc>
    80006e5c:	000c8513          	mv	a0,s9
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	924080e7          	jalr	-1756(ra) # 80006784 <consputc>
    80006e68:	f41ff06f          	j	80006da8 <__printf+0x440>
    80006e6c:	02500513          	li	a0,37
    80006e70:	00000097          	auipc	ra,0x0
    80006e74:	914080e7          	jalr	-1772(ra) # 80006784 <consputc>
    80006e78:	f31ff06f          	j	80006da8 <__printf+0x440>
    80006e7c:	00030513          	mv	a0,t1
    80006e80:	00000097          	auipc	ra,0x0
    80006e84:	7bc080e7          	jalr	1980(ra) # 8000763c <acquire>
    80006e88:	b4dff06f          	j	800069d4 <__printf+0x6c>
    80006e8c:	40c0053b          	negw	a0,a2
    80006e90:	00a00713          	li	a4,10
    80006e94:	02e576bb          	remuw	a3,a0,a4
    80006e98:	00001d97          	auipc	s11,0x1
    80006e9c:	7c0d8d93          	addi	s11,s11,1984 # 80008658 <digits>
    80006ea0:	ff700593          	li	a1,-9
    80006ea4:	02069693          	slli	a3,a3,0x20
    80006ea8:	0206d693          	srli	a3,a3,0x20
    80006eac:	00dd86b3          	add	a3,s11,a3
    80006eb0:	0006c683          	lbu	a3,0(a3)
    80006eb4:	02e557bb          	divuw	a5,a0,a4
    80006eb8:	f8d40023          	sb	a3,-128(s0)
    80006ebc:	10b65e63          	bge	a2,a1,80006fd8 <__printf+0x670>
    80006ec0:	06300593          	li	a1,99
    80006ec4:	02e7f6bb          	remuw	a3,a5,a4
    80006ec8:	02069693          	slli	a3,a3,0x20
    80006ecc:	0206d693          	srli	a3,a3,0x20
    80006ed0:	00dd86b3          	add	a3,s11,a3
    80006ed4:	0006c683          	lbu	a3,0(a3)
    80006ed8:	02e7d73b          	divuw	a4,a5,a4
    80006edc:	00200793          	li	a5,2
    80006ee0:	f8d400a3          	sb	a3,-127(s0)
    80006ee4:	bca5ece3          	bltu	a1,a0,80006abc <__printf+0x154>
    80006ee8:	ce5ff06f          	j	80006bcc <__printf+0x264>
    80006eec:	40e007bb          	negw	a5,a4
    80006ef0:	00001d97          	auipc	s11,0x1
    80006ef4:	768d8d93          	addi	s11,s11,1896 # 80008658 <digits>
    80006ef8:	00f7f693          	andi	a3,a5,15
    80006efc:	00dd86b3          	add	a3,s11,a3
    80006f00:	0006c583          	lbu	a1,0(a3)
    80006f04:	ff100613          	li	a2,-15
    80006f08:	0047d69b          	srliw	a3,a5,0x4
    80006f0c:	f8b40023          	sb	a1,-128(s0)
    80006f10:	0047d59b          	srliw	a1,a5,0x4
    80006f14:	0ac75e63          	bge	a4,a2,80006fd0 <__printf+0x668>
    80006f18:	00f6f693          	andi	a3,a3,15
    80006f1c:	00dd86b3          	add	a3,s11,a3
    80006f20:	0006c603          	lbu	a2,0(a3)
    80006f24:	00f00693          	li	a3,15
    80006f28:	0087d79b          	srliw	a5,a5,0x8
    80006f2c:	f8c400a3          	sb	a2,-127(s0)
    80006f30:	d8b6e4e3          	bltu	a3,a1,80006cb8 <__printf+0x350>
    80006f34:	00200793          	li	a5,2
    80006f38:	e2dff06f          	j	80006d64 <__printf+0x3fc>
    80006f3c:	00001c97          	auipc	s9,0x1
    80006f40:	6fcc8c93          	addi	s9,s9,1788 # 80008638 <CONSOLE_STATUS+0x628>
    80006f44:	02800513          	li	a0,40
    80006f48:	ef1ff06f          	j	80006e38 <__printf+0x4d0>
    80006f4c:	00700793          	li	a5,7
    80006f50:	00600c93          	li	s9,6
    80006f54:	e0dff06f          	j	80006d60 <__printf+0x3f8>
    80006f58:	00700793          	li	a5,7
    80006f5c:	00600c93          	li	s9,6
    80006f60:	c69ff06f          	j	80006bc8 <__printf+0x260>
    80006f64:	00300793          	li	a5,3
    80006f68:	00200c93          	li	s9,2
    80006f6c:	c5dff06f          	j	80006bc8 <__printf+0x260>
    80006f70:	00300793          	li	a5,3
    80006f74:	00200c93          	li	s9,2
    80006f78:	de9ff06f          	j	80006d60 <__printf+0x3f8>
    80006f7c:	00400793          	li	a5,4
    80006f80:	00300c93          	li	s9,3
    80006f84:	dddff06f          	j	80006d60 <__printf+0x3f8>
    80006f88:	00400793          	li	a5,4
    80006f8c:	00300c93          	li	s9,3
    80006f90:	c39ff06f          	j	80006bc8 <__printf+0x260>
    80006f94:	00500793          	li	a5,5
    80006f98:	00400c93          	li	s9,4
    80006f9c:	c2dff06f          	j	80006bc8 <__printf+0x260>
    80006fa0:	00500793          	li	a5,5
    80006fa4:	00400c93          	li	s9,4
    80006fa8:	db9ff06f          	j	80006d60 <__printf+0x3f8>
    80006fac:	00600793          	li	a5,6
    80006fb0:	00500c93          	li	s9,5
    80006fb4:	dadff06f          	j	80006d60 <__printf+0x3f8>
    80006fb8:	00600793          	li	a5,6
    80006fbc:	00500c93          	li	s9,5
    80006fc0:	c09ff06f          	j	80006bc8 <__printf+0x260>
    80006fc4:	00800793          	li	a5,8
    80006fc8:	00700c93          	li	s9,7
    80006fcc:	bfdff06f          	j	80006bc8 <__printf+0x260>
    80006fd0:	00100793          	li	a5,1
    80006fd4:	d91ff06f          	j	80006d64 <__printf+0x3fc>
    80006fd8:	00100793          	li	a5,1
    80006fdc:	bf1ff06f          	j	80006bcc <__printf+0x264>
    80006fe0:	00900793          	li	a5,9
    80006fe4:	00800c93          	li	s9,8
    80006fe8:	be1ff06f          	j	80006bc8 <__printf+0x260>
    80006fec:	00001517          	auipc	a0,0x1
    80006ff0:	65450513          	addi	a0,a0,1620 # 80008640 <CONSOLE_STATUS+0x630>
    80006ff4:	00000097          	auipc	ra,0x0
    80006ff8:	918080e7          	jalr	-1768(ra) # 8000690c <panic>

0000000080006ffc <printfinit>:
    80006ffc:	fe010113          	addi	sp,sp,-32
    80007000:	00813823          	sd	s0,16(sp)
    80007004:	00913423          	sd	s1,8(sp)
    80007008:	00113c23          	sd	ra,24(sp)
    8000700c:	02010413          	addi	s0,sp,32
    80007010:	00004497          	auipc	s1,0x4
    80007014:	33048493          	addi	s1,s1,816 # 8000b340 <pr>
    80007018:	00048513          	mv	a0,s1
    8000701c:	00001597          	auipc	a1,0x1
    80007020:	63458593          	addi	a1,a1,1588 # 80008650 <CONSOLE_STATUS+0x640>
    80007024:	00000097          	auipc	ra,0x0
    80007028:	5f4080e7          	jalr	1524(ra) # 80007618 <initlock>
    8000702c:	01813083          	ld	ra,24(sp)
    80007030:	01013403          	ld	s0,16(sp)
    80007034:	0004ac23          	sw	zero,24(s1)
    80007038:	00813483          	ld	s1,8(sp)
    8000703c:	02010113          	addi	sp,sp,32
    80007040:	00008067          	ret

0000000080007044 <uartinit>:
    80007044:	ff010113          	addi	sp,sp,-16
    80007048:	00813423          	sd	s0,8(sp)
    8000704c:	01010413          	addi	s0,sp,16
    80007050:	100007b7          	lui	a5,0x10000
    80007054:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007058:	f8000713          	li	a4,-128
    8000705c:	00e781a3          	sb	a4,3(a5)
    80007060:	00300713          	li	a4,3
    80007064:	00e78023          	sb	a4,0(a5)
    80007068:	000780a3          	sb	zero,1(a5)
    8000706c:	00e781a3          	sb	a4,3(a5)
    80007070:	00700693          	li	a3,7
    80007074:	00d78123          	sb	a3,2(a5)
    80007078:	00e780a3          	sb	a4,1(a5)
    8000707c:	00813403          	ld	s0,8(sp)
    80007080:	01010113          	addi	sp,sp,16
    80007084:	00008067          	ret

0000000080007088 <uartputc>:
    80007088:	00003797          	auipc	a5,0x3
    8000708c:	0107a783          	lw	a5,16(a5) # 8000a098 <panicked>
    80007090:	00078463          	beqz	a5,80007098 <uartputc+0x10>
    80007094:	0000006f          	j	80007094 <uartputc+0xc>
    80007098:	fd010113          	addi	sp,sp,-48
    8000709c:	02813023          	sd	s0,32(sp)
    800070a0:	00913c23          	sd	s1,24(sp)
    800070a4:	01213823          	sd	s2,16(sp)
    800070a8:	01313423          	sd	s3,8(sp)
    800070ac:	02113423          	sd	ra,40(sp)
    800070b0:	03010413          	addi	s0,sp,48
    800070b4:	00003917          	auipc	s2,0x3
    800070b8:	fec90913          	addi	s2,s2,-20 # 8000a0a0 <uart_tx_r>
    800070bc:	00093783          	ld	a5,0(s2)
    800070c0:	00003497          	auipc	s1,0x3
    800070c4:	fe848493          	addi	s1,s1,-24 # 8000a0a8 <uart_tx_w>
    800070c8:	0004b703          	ld	a4,0(s1)
    800070cc:	02078693          	addi	a3,a5,32
    800070d0:	00050993          	mv	s3,a0
    800070d4:	02e69c63          	bne	a3,a4,8000710c <uartputc+0x84>
    800070d8:	00001097          	auipc	ra,0x1
    800070dc:	834080e7          	jalr	-1996(ra) # 8000790c <push_on>
    800070e0:	00093783          	ld	a5,0(s2)
    800070e4:	0004b703          	ld	a4,0(s1)
    800070e8:	02078793          	addi	a5,a5,32
    800070ec:	00e79463          	bne	a5,a4,800070f4 <uartputc+0x6c>
    800070f0:	0000006f          	j	800070f0 <uartputc+0x68>
    800070f4:	00001097          	auipc	ra,0x1
    800070f8:	88c080e7          	jalr	-1908(ra) # 80007980 <pop_on>
    800070fc:	00093783          	ld	a5,0(s2)
    80007100:	0004b703          	ld	a4,0(s1)
    80007104:	02078693          	addi	a3,a5,32
    80007108:	fce688e3          	beq	a3,a4,800070d8 <uartputc+0x50>
    8000710c:	01f77693          	andi	a3,a4,31
    80007110:	00004597          	auipc	a1,0x4
    80007114:	25058593          	addi	a1,a1,592 # 8000b360 <uart_tx_buf>
    80007118:	00d586b3          	add	a3,a1,a3
    8000711c:	00170713          	addi	a4,a4,1
    80007120:	01368023          	sb	s3,0(a3)
    80007124:	00e4b023          	sd	a4,0(s1)
    80007128:	10000637          	lui	a2,0x10000
    8000712c:	02f71063          	bne	a4,a5,8000714c <uartputc+0xc4>
    80007130:	0340006f          	j	80007164 <uartputc+0xdc>
    80007134:	00074703          	lbu	a4,0(a4)
    80007138:	00f93023          	sd	a5,0(s2)
    8000713c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007140:	00093783          	ld	a5,0(s2)
    80007144:	0004b703          	ld	a4,0(s1)
    80007148:	00f70e63          	beq	a4,a5,80007164 <uartputc+0xdc>
    8000714c:	00564683          	lbu	a3,5(a2)
    80007150:	01f7f713          	andi	a4,a5,31
    80007154:	00e58733          	add	a4,a1,a4
    80007158:	0206f693          	andi	a3,a3,32
    8000715c:	00178793          	addi	a5,a5,1
    80007160:	fc069ae3          	bnez	a3,80007134 <uartputc+0xac>
    80007164:	02813083          	ld	ra,40(sp)
    80007168:	02013403          	ld	s0,32(sp)
    8000716c:	01813483          	ld	s1,24(sp)
    80007170:	01013903          	ld	s2,16(sp)
    80007174:	00813983          	ld	s3,8(sp)
    80007178:	03010113          	addi	sp,sp,48
    8000717c:	00008067          	ret

0000000080007180 <uartputc_sync>:
    80007180:	ff010113          	addi	sp,sp,-16
    80007184:	00813423          	sd	s0,8(sp)
    80007188:	01010413          	addi	s0,sp,16
    8000718c:	00003717          	auipc	a4,0x3
    80007190:	f0c72703          	lw	a4,-244(a4) # 8000a098 <panicked>
    80007194:	02071663          	bnez	a4,800071c0 <uartputc_sync+0x40>
    80007198:	00050793          	mv	a5,a0
    8000719c:	100006b7          	lui	a3,0x10000
    800071a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800071a4:	02077713          	andi	a4,a4,32
    800071a8:	fe070ce3          	beqz	a4,800071a0 <uartputc_sync+0x20>
    800071ac:	0ff7f793          	andi	a5,a5,255
    800071b0:	00f68023          	sb	a5,0(a3)
    800071b4:	00813403          	ld	s0,8(sp)
    800071b8:	01010113          	addi	sp,sp,16
    800071bc:	00008067          	ret
    800071c0:	0000006f          	j	800071c0 <uartputc_sync+0x40>

00000000800071c4 <uartstart>:
    800071c4:	ff010113          	addi	sp,sp,-16
    800071c8:	00813423          	sd	s0,8(sp)
    800071cc:	01010413          	addi	s0,sp,16
    800071d0:	00003617          	auipc	a2,0x3
    800071d4:	ed060613          	addi	a2,a2,-304 # 8000a0a0 <uart_tx_r>
    800071d8:	00003517          	auipc	a0,0x3
    800071dc:	ed050513          	addi	a0,a0,-304 # 8000a0a8 <uart_tx_w>
    800071e0:	00063783          	ld	a5,0(a2)
    800071e4:	00053703          	ld	a4,0(a0)
    800071e8:	04f70263          	beq	a4,a5,8000722c <uartstart+0x68>
    800071ec:	100005b7          	lui	a1,0x10000
    800071f0:	00004817          	auipc	a6,0x4
    800071f4:	17080813          	addi	a6,a6,368 # 8000b360 <uart_tx_buf>
    800071f8:	01c0006f          	j	80007214 <uartstart+0x50>
    800071fc:	0006c703          	lbu	a4,0(a3)
    80007200:	00f63023          	sd	a5,0(a2)
    80007204:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007208:	00063783          	ld	a5,0(a2)
    8000720c:	00053703          	ld	a4,0(a0)
    80007210:	00f70e63          	beq	a4,a5,8000722c <uartstart+0x68>
    80007214:	01f7f713          	andi	a4,a5,31
    80007218:	00e806b3          	add	a3,a6,a4
    8000721c:	0055c703          	lbu	a4,5(a1)
    80007220:	00178793          	addi	a5,a5,1
    80007224:	02077713          	andi	a4,a4,32
    80007228:	fc071ae3          	bnez	a4,800071fc <uartstart+0x38>
    8000722c:	00813403          	ld	s0,8(sp)
    80007230:	01010113          	addi	sp,sp,16
    80007234:	00008067          	ret

0000000080007238 <uartgetc>:
    80007238:	ff010113          	addi	sp,sp,-16
    8000723c:	00813423          	sd	s0,8(sp)
    80007240:	01010413          	addi	s0,sp,16
    80007244:	10000737          	lui	a4,0x10000
    80007248:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000724c:	0017f793          	andi	a5,a5,1
    80007250:	00078c63          	beqz	a5,80007268 <uartgetc+0x30>
    80007254:	00074503          	lbu	a0,0(a4)
    80007258:	0ff57513          	andi	a0,a0,255
    8000725c:	00813403          	ld	s0,8(sp)
    80007260:	01010113          	addi	sp,sp,16
    80007264:	00008067          	ret
    80007268:	fff00513          	li	a0,-1
    8000726c:	ff1ff06f          	j	8000725c <uartgetc+0x24>

0000000080007270 <uartintr>:
    80007270:	100007b7          	lui	a5,0x10000
    80007274:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007278:	0017f793          	andi	a5,a5,1
    8000727c:	0a078463          	beqz	a5,80007324 <uartintr+0xb4>
    80007280:	fe010113          	addi	sp,sp,-32
    80007284:	00813823          	sd	s0,16(sp)
    80007288:	00913423          	sd	s1,8(sp)
    8000728c:	00113c23          	sd	ra,24(sp)
    80007290:	02010413          	addi	s0,sp,32
    80007294:	100004b7          	lui	s1,0x10000
    80007298:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000729c:	0ff57513          	andi	a0,a0,255
    800072a0:	fffff097          	auipc	ra,0xfffff
    800072a4:	534080e7          	jalr	1332(ra) # 800067d4 <consoleintr>
    800072a8:	0054c783          	lbu	a5,5(s1)
    800072ac:	0017f793          	andi	a5,a5,1
    800072b0:	fe0794e3          	bnez	a5,80007298 <uartintr+0x28>
    800072b4:	00003617          	auipc	a2,0x3
    800072b8:	dec60613          	addi	a2,a2,-532 # 8000a0a0 <uart_tx_r>
    800072bc:	00003517          	auipc	a0,0x3
    800072c0:	dec50513          	addi	a0,a0,-532 # 8000a0a8 <uart_tx_w>
    800072c4:	00063783          	ld	a5,0(a2)
    800072c8:	00053703          	ld	a4,0(a0)
    800072cc:	04f70263          	beq	a4,a5,80007310 <uartintr+0xa0>
    800072d0:	100005b7          	lui	a1,0x10000
    800072d4:	00004817          	auipc	a6,0x4
    800072d8:	08c80813          	addi	a6,a6,140 # 8000b360 <uart_tx_buf>
    800072dc:	01c0006f          	j	800072f8 <uartintr+0x88>
    800072e0:	0006c703          	lbu	a4,0(a3)
    800072e4:	00f63023          	sd	a5,0(a2)
    800072e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800072ec:	00063783          	ld	a5,0(a2)
    800072f0:	00053703          	ld	a4,0(a0)
    800072f4:	00f70e63          	beq	a4,a5,80007310 <uartintr+0xa0>
    800072f8:	01f7f713          	andi	a4,a5,31
    800072fc:	00e806b3          	add	a3,a6,a4
    80007300:	0055c703          	lbu	a4,5(a1)
    80007304:	00178793          	addi	a5,a5,1
    80007308:	02077713          	andi	a4,a4,32
    8000730c:	fc071ae3          	bnez	a4,800072e0 <uartintr+0x70>
    80007310:	01813083          	ld	ra,24(sp)
    80007314:	01013403          	ld	s0,16(sp)
    80007318:	00813483          	ld	s1,8(sp)
    8000731c:	02010113          	addi	sp,sp,32
    80007320:	00008067          	ret
    80007324:	00003617          	auipc	a2,0x3
    80007328:	d7c60613          	addi	a2,a2,-644 # 8000a0a0 <uart_tx_r>
    8000732c:	00003517          	auipc	a0,0x3
    80007330:	d7c50513          	addi	a0,a0,-644 # 8000a0a8 <uart_tx_w>
    80007334:	00063783          	ld	a5,0(a2)
    80007338:	00053703          	ld	a4,0(a0)
    8000733c:	04f70263          	beq	a4,a5,80007380 <uartintr+0x110>
    80007340:	100005b7          	lui	a1,0x10000
    80007344:	00004817          	auipc	a6,0x4
    80007348:	01c80813          	addi	a6,a6,28 # 8000b360 <uart_tx_buf>
    8000734c:	01c0006f          	j	80007368 <uartintr+0xf8>
    80007350:	0006c703          	lbu	a4,0(a3)
    80007354:	00f63023          	sd	a5,0(a2)
    80007358:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000735c:	00063783          	ld	a5,0(a2)
    80007360:	00053703          	ld	a4,0(a0)
    80007364:	02f70063          	beq	a4,a5,80007384 <uartintr+0x114>
    80007368:	01f7f713          	andi	a4,a5,31
    8000736c:	00e806b3          	add	a3,a6,a4
    80007370:	0055c703          	lbu	a4,5(a1)
    80007374:	00178793          	addi	a5,a5,1
    80007378:	02077713          	andi	a4,a4,32
    8000737c:	fc071ae3          	bnez	a4,80007350 <uartintr+0xe0>
    80007380:	00008067          	ret
    80007384:	00008067          	ret

0000000080007388 <kinit>:
    80007388:	fc010113          	addi	sp,sp,-64
    8000738c:	02913423          	sd	s1,40(sp)
    80007390:	fffff7b7          	lui	a5,0xfffff
    80007394:	00005497          	auipc	s1,0x5
    80007398:	feb48493          	addi	s1,s1,-21 # 8000c37f <end+0xfff>
    8000739c:	02813823          	sd	s0,48(sp)
    800073a0:	01313c23          	sd	s3,24(sp)
    800073a4:	00f4f4b3          	and	s1,s1,a5
    800073a8:	02113c23          	sd	ra,56(sp)
    800073ac:	03213023          	sd	s2,32(sp)
    800073b0:	01413823          	sd	s4,16(sp)
    800073b4:	01513423          	sd	s5,8(sp)
    800073b8:	04010413          	addi	s0,sp,64
    800073bc:	000017b7          	lui	a5,0x1
    800073c0:	01100993          	li	s3,17
    800073c4:	00f487b3          	add	a5,s1,a5
    800073c8:	01b99993          	slli	s3,s3,0x1b
    800073cc:	06f9e063          	bltu	s3,a5,8000742c <kinit+0xa4>
    800073d0:	00004a97          	auipc	s5,0x4
    800073d4:	fb0a8a93          	addi	s5,s5,-80 # 8000b380 <end>
    800073d8:	0754ec63          	bltu	s1,s5,80007450 <kinit+0xc8>
    800073dc:	0734fa63          	bgeu	s1,s3,80007450 <kinit+0xc8>
    800073e0:	00088a37          	lui	s4,0x88
    800073e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800073e8:	00003917          	auipc	s2,0x3
    800073ec:	cc890913          	addi	s2,s2,-824 # 8000a0b0 <kmem>
    800073f0:	00ca1a13          	slli	s4,s4,0xc
    800073f4:	0140006f          	j	80007408 <kinit+0x80>
    800073f8:	000017b7          	lui	a5,0x1
    800073fc:	00f484b3          	add	s1,s1,a5
    80007400:	0554e863          	bltu	s1,s5,80007450 <kinit+0xc8>
    80007404:	0534f663          	bgeu	s1,s3,80007450 <kinit+0xc8>
    80007408:	00001637          	lui	a2,0x1
    8000740c:	00100593          	li	a1,1
    80007410:	00048513          	mv	a0,s1
    80007414:	00000097          	auipc	ra,0x0
    80007418:	5e4080e7          	jalr	1508(ra) # 800079f8 <__memset>
    8000741c:	00093783          	ld	a5,0(s2)
    80007420:	00f4b023          	sd	a5,0(s1)
    80007424:	00993023          	sd	s1,0(s2)
    80007428:	fd4498e3          	bne	s1,s4,800073f8 <kinit+0x70>
    8000742c:	03813083          	ld	ra,56(sp)
    80007430:	03013403          	ld	s0,48(sp)
    80007434:	02813483          	ld	s1,40(sp)
    80007438:	02013903          	ld	s2,32(sp)
    8000743c:	01813983          	ld	s3,24(sp)
    80007440:	01013a03          	ld	s4,16(sp)
    80007444:	00813a83          	ld	s5,8(sp)
    80007448:	04010113          	addi	sp,sp,64
    8000744c:	00008067          	ret
    80007450:	00001517          	auipc	a0,0x1
    80007454:	22050513          	addi	a0,a0,544 # 80008670 <digits+0x18>
    80007458:	fffff097          	auipc	ra,0xfffff
    8000745c:	4b4080e7          	jalr	1204(ra) # 8000690c <panic>

0000000080007460 <freerange>:
    80007460:	fc010113          	addi	sp,sp,-64
    80007464:	000017b7          	lui	a5,0x1
    80007468:	02913423          	sd	s1,40(sp)
    8000746c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007470:	009504b3          	add	s1,a0,s1
    80007474:	fffff537          	lui	a0,0xfffff
    80007478:	02813823          	sd	s0,48(sp)
    8000747c:	02113c23          	sd	ra,56(sp)
    80007480:	03213023          	sd	s2,32(sp)
    80007484:	01313c23          	sd	s3,24(sp)
    80007488:	01413823          	sd	s4,16(sp)
    8000748c:	01513423          	sd	s5,8(sp)
    80007490:	01613023          	sd	s6,0(sp)
    80007494:	04010413          	addi	s0,sp,64
    80007498:	00a4f4b3          	and	s1,s1,a0
    8000749c:	00f487b3          	add	a5,s1,a5
    800074a0:	06f5e463          	bltu	a1,a5,80007508 <freerange+0xa8>
    800074a4:	00004a97          	auipc	s5,0x4
    800074a8:	edca8a93          	addi	s5,s5,-292 # 8000b380 <end>
    800074ac:	0954e263          	bltu	s1,s5,80007530 <freerange+0xd0>
    800074b0:	01100993          	li	s3,17
    800074b4:	01b99993          	slli	s3,s3,0x1b
    800074b8:	0734fc63          	bgeu	s1,s3,80007530 <freerange+0xd0>
    800074bc:	00058a13          	mv	s4,a1
    800074c0:	00003917          	auipc	s2,0x3
    800074c4:	bf090913          	addi	s2,s2,-1040 # 8000a0b0 <kmem>
    800074c8:	00002b37          	lui	s6,0x2
    800074cc:	0140006f          	j	800074e0 <freerange+0x80>
    800074d0:	000017b7          	lui	a5,0x1
    800074d4:	00f484b3          	add	s1,s1,a5
    800074d8:	0554ec63          	bltu	s1,s5,80007530 <freerange+0xd0>
    800074dc:	0534fa63          	bgeu	s1,s3,80007530 <freerange+0xd0>
    800074e0:	00001637          	lui	a2,0x1
    800074e4:	00100593          	li	a1,1
    800074e8:	00048513          	mv	a0,s1
    800074ec:	00000097          	auipc	ra,0x0
    800074f0:	50c080e7          	jalr	1292(ra) # 800079f8 <__memset>
    800074f4:	00093703          	ld	a4,0(s2)
    800074f8:	016487b3          	add	a5,s1,s6
    800074fc:	00e4b023          	sd	a4,0(s1)
    80007500:	00993023          	sd	s1,0(s2)
    80007504:	fcfa76e3          	bgeu	s4,a5,800074d0 <freerange+0x70>
    80007508:	03813083          	ld	ra,56(sp)
    8000750c:	03013403          	ld	s0,48(sp)
    80007510:	02813483          	ld	s1,40(sp)
    80007514:	02013903          	ld	s2,32(sp)
    80007518:	01813983          	ld	s3,24(sp)
    8000751c:	01013a03          	ld	s4,16(sp)
    80007520:	00813a83          	ld	s5,8(sp)
    80007524:	00013b03          	ld	s6,0(sp)
    80007528:	04010113          	addi	sp,sp,64
    8000752c:	00008067          	ret
    80007530:	00001517          	auipc	a0,0x1
    80007534:	14050513          	addi	a0,a0,320 # 80008670 <digits+0x18>
    80007538:	fffff097          	auipc	ra,0xfffff
    8000753c:	3d4080e7          	jalr	980(ra) # 8000690c <panic>

0000000080007540 <kfree>:
    80007540:	fe010113          	addi	sp,sp,-32
    80007544:	00813823          	sd	s0,16(sp)
    80007548:	00113c23          	sd	ra,24(sp)
    8000754c:	00913423          	sd	s1,8(sp)
    80007550:	02010413          	addi	s0,sp,32
    80007554:	03451793          	slli	a5,a0,0x34
    80007558:	04079c63          	bnez	a5,800075b0 <kfree+0x70>
    8000755c:	00004797          	auipc	a5,0x4
    80007560:	e2478793          	addi	a5,a5,-476 # 8000b380 <end>
    80007564:	00050493          	mv	s1,a0
    80007568:	04f56463          	bltu	a0,a5,800075b0 <kfree+0x70>
    8000756c:	01100793          	li	a5,17
    80007570:	01b79793          	slli	a5,a5,0x1b
    80007574:	02f57e63          	bgeu	a0,a5,800075b0 <kfree+0x70>
    80007578:	00001637          	lui	a2,0x1
    8000757c:	00100593          	li	a1,1
    80007580:	00000097          	auipc	ra,0x0
    80007584:	478080e7          	jalr	1144(ra) # 800079f8 <__memset>
    80007588:	00003797          	auipc	a5,0x3
    8000758c:	b2878793          	addi	a5,a5,-1240 # 8000a0b0 <kmem>
    80007590:	0007b703          	ld	a4,0(a5)
    80007594:	01813083          	ld	ra,24(sp)
    80007598:	01013403          	ld	s0,16(sp)
    8000759c:	00e4b023          	sd	a4,0(s1)
    800075a0:	0097b023          	sd	s1,0(a5)
    800075a4:	00813483          	ld	s1,8(sp)
    800075a8:	02010113          	addi	sp,sp,32
    800075ac:	00008067          	ret
    800075b0:	00001517          	auipc	a0,0x1
    800075b4:	0c050513          	addi	a0,a0,192 # 80008670 <digits+0x18>
    800075b8:	fffff097          	auipc	ra,0xfffff
    800075bc:	354080e7          	jalr	852(ra) # 8000690c <panic>

00000000800075c0 <kalloc>:
    800075c0:	fe010113          	addi	sp,sp,-32
    800075c4:	00813823          	sd	s0,16(sp)
    800075c8:	00913423          	sd	s1,8(sp)
    800075cc:	00113c23          	sd	ra,24(sp)
    800075d0:	02010413          	addi	s0,sp,32
    800075d4:	00003797          	auipc	a5,0x3
    800075d8:	adc78793          	addi	a5,a5,-1316 # 8000a0b0 <kmem>
    800075dc:	0007b483          	ld	s1,0(a5)
    800075e0:	02048063          	beqz	s1,80007600 <kalloc+0x40>
    800075e4:	0004b703          	ld	a4,0(s1)
    800075e8:	00001637          	lui	a2,0x1
    800075ec:	00500593          	li	a1,5
    800075f0:	00048513          	mv	a0,s1
    800075f4:	00e7b023          	sd	a4,0(a5)
    800075f8:	00000097          	auipc	ra,0x0
    800075fc:	400080e7          	jalr	1024(ra) # 800079f8 <__memset>
    80007600:	01813083          	ld	ra,24(sp)
    80007604:	01013403          	ld	s0,16(sp)
    80007608:	00048513          	mv	a0,s1
    8000760c:	00813483          	ld	s1,8(sp)
    80007610:	02010113          	addi	sp,sp,32
    80007614:	00008067          	ret

0000000080007618 <initlock>:
    80007618:	ff010113          	addi	sp,sp,-16
    8000761c:	00813423          	sd	s0,8(sp)
    80007620:	01010413          	addi	s0,sp,16
    80007624:	00813403          	ld	s0,8(sp)
    80007628:	00b53423          	sd	a1,8(a0)
    8000762c:	00052023          	sw	zero,0(a0)
    80007630:	00053823          	sd	zero,16(a0)
    80007634:	01010113          	addi	sp,sp,16
    80007638:	00008067          	ret

000000008000763c <acquire>:
    8000763c:	fe010113          	addi	sp,sp,-32
    80007640:	00813823          	sd	s0,16(sp)
    80007644:	00913423          	sd	s1,8(sp)
    80007648:	00113c23          	sd	ra,24(sp)
    8000764c:	01213023          	sd	s2,0(sp)
    80007650:	02010413          	addi	s0,sp,32
    80007654:	00050493          	mv	s1,a0
    80007658:	10002973          	csrr	s2,sstatus
    8000765c:	100027f3          	csrr	a5,sstatus
    80007660:	ffd7f793          	andi	a5,a5,-3
    80007664:	10079073          	csrw	sstatus,a5
    80007668:	fffff097          	auipc	ra,0xfffff
    8000766c:	8e4080e7          	jalr	-1820(ra) # 80005f4c <mycpu>
    80007670:	07852783          	lw	a5,120(a0)
    80007674:	06078e63          	beqz	a5,800076f0 <acquire+0xb4>
    80007678:	fffff097          	auipc	ra,0xfffff
    8000767c:	8d4080e7          	jalr	-1836(ra) # 80005f4c <mycpu>
    80007680:	07852783          	lw	a5,120(a0)
    80007684:	0004a703          	lw	a4,0(s1)
    80007688:	0017879b          	addiw	a5,a5,1
    8000768c:	06f52c23          	sw	a5,120(a0)
    80007690:	04071063          	bnez	a4,800076d0 <acquire+0x94>
    80007694:	00100713          	li	a4,1
    80007698:	00070793          	mv	a5,a4
    8000769c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800076a0:	0007879b          	sext.w	a5,a5
    800076a4:	fe079ae3          	bnez	a5,80007698 <acquire+0x5c>
    800076a8:	0ff0000f          	fence
    800076ac:	fffff097          	auipc	ra,0xfffff
    800076b0:	8a0080e7          	jalr	-1888(ra) # 80005f4c <mycpu>
    800076b4:	01813083          	ld	ra,24(sp)
    800076b8:	01013403          	ld	s0,16(sp)
    800076bc:	00a4b823          	sd	a0,16(s1)
    800076c0:	00013903          	ld	s2,0(sp)
    800076c4:	00813483          	ld	s1,8(sp)
    800076c8:	02010113          	addi	sp,sp,32
    800076cc:	00008067          	ret
    800076d0:	0104b903          	ld	s2,16(s1)
    800076d4:	fffff097          	auipc	ra,0xfffff
    800076d8:	878080e7          	jalr	-1928(ra) # 80005f4c <mycpu>
    800076dc:	faa91ce3          	bne	s2,a0,80007694 <acquire+0x58>
    800076e0:	00001517          	auipc	a0,0x1
    800076e4:	f9850513          	addi	a0,a0,-104 # 80008678 <digits+0x20>
    800076e8:	fffff097          	auipc	ra,0xfffff
    800076ec:	224080e7          	jalr	548(ra) # 8000690c <panic>
    800076f0:	00195913          	srli	s2,s2,0x1
    800076f4:	fffff097          	auipc	ra,0xfffff
    800076f8:	858080e7          	jalr	-1960(ra) # 80005f4c <mycpu>
    800076fc:	00197913          	andi	s2,s2,1
    80007700:	07252e23          	sw	s2,124(a0)
    80007704:	f75ff06f          	j	80007678 <acquire+0x3c>

0000000080007708 <release>:
    80007708:	fe010113          	addi	sp,sp,-32
    8000770c:	00813823          	sd	s0,16(sp)
    80007710:	00113c23          	sd	ra,24(sp)
    80007714:	00913423          	sd	s1,8(sp)
    80007718:	01213023          	sd	s2,0(sp)
    8000771c:	02010413          	addi	s0,sp,32
    80007720:	00052783          	lw	a5,0(a0)
    80007724:	00079a63          	bnez	a5,80007738 <release+0x30>
    80007728:	00001517          	auipc	a0,0x1
    8000772c:	f5850513          	addi	a0,a0,-168 # 80008680 <digits+0x28>
    80007730:	fffff097          	auipc	ra,0xfffff
    80007734:	1dc080e7          	jalr	476(ra) # 8000690c <panic>
    80007738:	01053903          	ld	s2,16(a0)
    8000773c:	00050493          	mv	s1,a0
    80007740:	fffff097          	auipc	ra,0xfffff
    80007744:	80c080e7          	jalr	-2036(ra) # 80005f4c <mycpu>
    80007748:	fea910e3          	bne	s2,a0,80007728 <release+0x20>
    8000774c:	0004b823          	sd	zero,16(s1)
    80007750:	0ff0000f          	fence
    80007754:	0f50000f          	fence	iorw,ow
    80007758:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000775c:	ffffe097          	auipc	ra,0xffffe
    80007760:	7f0080e7          	jalr	2032(ra) # 80005f4c <mycpu>
    80007764:	100027f3          	csrr	a5,sstatus
    80007768:	0027f793          	andi	a5,a5,2
    8000776c:	04079a63          	bnez	a5,800077c0 <release+0xb8>
    80007770:	07852783          	lw	a5,120(a0)
    80007774:	02f05e63          	blez	a5,800077b0 <release+0xa8>
    80007778:	fff7871b          	addiw	a4,a5,-1
    8000777c:	06e52c23          	sw	a4,120(a0)
    80007780:	00071c63          	bnez	a4,80007798 <release+0x90>
    80007784:	07c52783          	lw	a5,124(a0)
    80007788:	00078863          	beqz	a5,80007798 <release+0x90>
    8000778c:	100027f3          	csrr	a5,sstatus
    80007790:	0027e793          	ori	a5,a5,2
    80007794:	10079073          	csrw	sstatus,a5
    80007798:	01813083          	ld	ra,24(sp)
    8000779c:	01013403          	ld	s0,16(sp)
    800077a0:	00813483          	ld	s1,8(sp)
    800077a4:	00013903          	ld	s2,0(sp)
    800077a8:	02010113          	addi	sp,sp,32
    800077ac:	00008067          	ret
    800077b0:	00001517          	auipc	a0,0x1
    800077b4:	ef050513          	addi	a0,a0,-272 # 800086a0 <digits+0x48>
    800077b8:	fffff097          	auipc	ra,0xfffff
    800077bc:	154080e7          	jalr	340(ra) # 8000690c <panic>
    800077c0:	00001517          	auipc	a0,0x1
    800077c4:	ec850513          	addi	a0,a0,-312 # 80008688 <digits+0x30>
    800077c8:	fffff097          	auipc	ra,0xfffff
    800077cc:	144080e7          	jalr	324(ra) # 8000690c <panic>

00000000800077d0 <holding>:
    800077d0:	00052783          	lw	a5,0(a0)
    800077d4:	00079663          	bnez	a5,800077e0 <holding+0x10>
    800077d8:	00000513          	li	a0,0
    800077dc:	00008067          	ret
    800077e0:	fe010113          	addi	sp,sp,-32
    800077e4:	00813823          	sd	s0,16(sp)
    800077e8:	00913423          	sd	s1,8(sp)
    800077ec:	00113c23          	sd	ra,24(sp)
    800077f0:	02010413          	addi	s0,sp,32
    800077f4:	01053483          	ld	s1,16(a0)
    800077f8:	ffffe097          	auipc	ra,0xffffe
    800077fc:	754080e7          	jalr	1876(ra) # 80005f4c <mycpu>
    80007800:	01813083          	ld	ra,24(sp)
    80007804:	01013403          	ld	s0,16(sp)
    80007808:	40a48533          	sub	a0,s1,a0
    8000780c:	00153513          	seqz	a0,a0
    80007810:	00813483          	ld	s1,8(sp)
    80007814:	02010113          	addi	sp,sp,32
    80007818:	00008067          	ret

000000008000781c <push_off>:
    8000781c:	fe010113          	addi	sp,sp,-32
    80007820:	00813823          	sd	s0,16(sp)
    80007824:	00113c23          	sd	ra,24(sp)
    80007828:	00913423          	sd	s1,8(sp)
    8000782c:	02010413          	addi	s0,sp,32
    80007830:	100024f3          	csrr	s1,sstatus
    80007834:	100027f3          	csrr	a5,sstatus
    80007838:	ffd7f793          	andi	a5,a5,-3
    8000783c:	10079073          	csrw	sstatus,a5
    80007840:	ffffe097          	auipc	ra,0xffffe
    80007844:	70c080e7          	jalr	1804(ra) # 80005f4c <mycpu>
    80007848:	07852783          	lw	a5,120(a0)
    8000784c:	02078663          	beqz	a5,80007878 <push_off+0x5c>
    80007850:	ffffe097          	auipc	ra,0xffffe
    80007854:	6fc080e7          	jalr	1788(ra) # 80005f4c <mycpu>
    80007858:	07852783          	lw	a5,120(a0)
    8000785c:	01813083          	ld	ra,24(sp)
    80007860:	01013403          	ld	s0,16(sp)
    80007864:	0017879b          	addiw	a5,a5,1
    80007868:	06f52c23          	sw	a5,120(a0)
    8000786c:	00813483          	ld	s1,8(sp)
    80007870:	02010113          	addi	sp,sp,32
    80007874:	00008067          	ret
    80007878:	0014d493          	srli	s1,s1,0x1
    8000787c:	ffffe097          	auipc	ra,0xffffe
    80007880:	6d0080e7          	jalr	1744(ra) # 80005f4c <mycpu>
    80007884:	0014f493          	andi	s1,s1,1
    80007888:	06952e23          	sw	s1,124(a0)
    8000788c:	fc5ff06f          	j	80007850 <push_off+0x34>

0000000080007890 <pop_off>:
    80007890:	ff010113          	addi	sp,sp,-16
    80007894:	00813023          	sd	s0,0(sp)
    80007898:	00113423          	sd	ra,8(sp)
    8000789c:	01010413          	addi	s0,sp,16
    800078a0:	ffffe097          	auipc	ra,0xffffe
    800078a4:	6ac080e7          	jalr	1708(ra) # 80005f4c <mycpu>
    800078a8:	100027f3          	csrr	a5,sstatus
    800078ac:	0027f793          	andi	a5,a5,2
    800078b0:	04079663          	bnez	a5,800078fc <pop_off+0x6c>
    800078b4:	07852783          	lw	a5,120(a0)
    800078b8:	02f05a63          	blez	a5,800078ec <pop_off+0x5c>
    800078bc:	fff7871b          	addiw	a4,a5,-1
    800078c0:	06e52c23          	sw	a4,120(a0)
    800078c4:	00071c63          	bnez	a4,800078dc <pop_off+0x4c>
    800078c8:	07c52783          	lw	a5,124(a0)
    800078cc:	00078863          	beqz	a5,800078dc <pop_off+0x4c>
    800078d0:	100027f3          	csrr	a5,sstatus
    800078d4:	0027e793          	ori	a5,a5,2
    800078d8:	10079073          	csrw	sstatus,a5
    800078dc:	00813083          	ld	ra,8(sp)
    800078e0:	00013403          	ld	s0,0(sp)
    800078e4:	01010113          	addi	sp,sp,16
    800078e8:	00008067          	ret
    800078ec:	00001517          	auipc	a0,0x1
    800078f0:	db450513          	addi	a0,a0,-588 # 800086a0 <digits+0x48>
    800078f4:	fffff097          	auipc	ra,0xfffff
    800078f8:	018080e7          	jalr	24(ra) # 8000690c <panic>
    800078fc:	00001517          	auipc	a0,0x1
    80007900:	d8c50513          	addi	a0,a0,-628 # 80008688 <digits+0x30>
    80007904:	fffff097          	auipc	ra,0xfffff
    80007908:	008080e7          	jalr	8(ra) # 8000690c <panic>

000000008000790c <push_on>:
    8000790c:	fe010113          	addi	sp,sp,-32
    80007910:	00813823          	sd	s0,16(sp)
    80007914:	00113c23          	sd	ra,24(sp)
    80007918:	00913423          	sd	s1,8(sp)
    8000791c:	02010413          	addi	s0,sp,32
    80007920:	100024f3          	csrr	s1,sstatus
    80007924:	100027f3          	csrr	a5,sstatus
    80007928:	0027e793          	ori	a5,a5,2
    8000792c:	10079073          	csrw	sstatus,a5
    80007930:	ffffe097          	auipc	ra,0xffffe
    80007934:	61c080e7          	jalr	1564(ra) # 80005f4c <mycpu>
    80007938:	07852783          	lw	a5,120(a0)
    8000793c:	02078663          	beqz	a5,80007968 <push_on+0x5c>
    80007940:	ffffe097          	auipc	ra,0xffffe
    80007944:	60c080e7          	jalr	1548(ra) # 80005f4c <mycpu>
    80007948:	07852783          	lw	a5,120(a0)
    8000794c:	01813083          	ld	ra,24(sp)
    80007950:	01013403          	ld	s0,16(sp)
    80007954:	0017879b          	addiw	a5,a5,1
    80007958:	06f52c23          	sw	a5,120(a0)
    8000795c:	00813483          	ld	s1,8(sp)
    80007960:	02010113          	addi	sp,sp,32
    80007964:	00008067          	ret
    80007968:	0014d493          	srli	s1,s1,0x1
    8000796c:	ffffe097          	auipc	ra,0xffffe
    80007970:	5e0080e7          	jalr	1504(ra) # 80005f4c <mycpu>
    80007974:	0014f493          	andi	s1,s1,1
    80007978:	06952e23          	sw	s1,124(a0)
    8000797c:	fc5ff06f          	j	80007940 <push_on+0x34>

0000000080007980 <pop_on>:
    80007980:	ff010113          	addi	sp,sp,-16
    80007984:	00813023          	sd	s0,0(sp)
    80007988:	00113423          	sd	ra,8(sp)
    8000798c:	01010413          	addi	s0,sp,16
    80007990:	ffffe097          	auipc	ra,0xffffe
    80007994:	5bc080e7          	jalr	1468(ra) # 80005f4c <mycpu>
    80007998:	100027f3          	csrr	a5,sstatus
    8000799c:	0027f793          	andi	a5,a5,2
    800079a0:	04078463          	beqz	a5,800079e8 <pop_on+0x68>
    800079a4:	07852783          	lw	a5,120(a0)
    800079a8:	02f05863          	blez	a5,800079d8 <pop_on+0x58>
    800079ac:	fff7879b          	addiw	a5,a5,-1
    800079b0:	06f52c23          	sw	a5,120(a0)
    800079b4:	07853783          	ld	a5,120(a0)
    800079b8:	00079863          	bnez	a5,800079c8 <pop_on+0x48>
    800079bc:	100027f3          	csrr	a5,sstatus
    800079c0:	ffd7f793          	andi	a5,a5,-3
    800079c4:	10079073          	csrw	sstatus,a5
    800079c8:	00813083          	ld	ra,8(sp)
    800079cc:	00013403          	ld	s0,0(sp)
    800079d0:	01010113          	addi	sp,sp,16
    800079d4:	00008067          	ret
    800079d8:	00001517          	auipc	a0,0x1
    800079dc:	cf050513          	addi	a0,a0,-784 # 800086c8 <digits+0x70>
    800079e0:	fffff097          	auipc	ra,0xfffff
    800079e4:	f2c080e7          	jalr	-212(ra) # 8000690c <panic>
    800079e8:	00001517          	auipc	a0,0x1
    800079ec:	cc050513          	addi	a0,a0,-832 # 800086a8 <digits+0x50>
    800079f0:	fffff097          	auipc	ra,0xfffff
    800079f4:	f1c080e7          	jalr	-228(ra) # 8000690c <panic>

00000000800079f8 <__memset>:
    800079f8:	ff010113          	addi	sp,sp,-16
    800079fc:	00813423          	sd	s0,8(sp)
    80007a00:	01010413          	addi	s0,sp,16
    80007a04:	1a060e63          	beqz	a2,80007bc0 <__memset+0x1c8>
    80007a08:	40a007b3          	neg	a5,a0
    80007a0c:	0077f793          	andi	a5,a5,7
    80007a10:	00778693          	addi	a3,a5,7
    80007a14:	00b00813          	li	a6,11
    80007a18:	0ff5f593          	andi	a1,a1,255
    80007a1c:	fff6071b          	addiw	a4,a2,-1
    80007a20:	1b06e663          	bltu	a3,a6,80007bcc <__memset+0x1d4>
    80007a24:	1cd76463          	bltu	a4,a3,80007bec <__memset+0x1f4>
    80007a28:	1a078e63          	beqz	a5,80007be4 <__memset+0x1ec>
    80007a2c:	00b50023          	sb	a1,0(a0)
    80007a30:	00100713          	li	a4,1
    80007a34:	1ae78463          	beq	a5,a4,80007bdc <__memset+0x1e4>
    80007a38:	00b500a3          	sb	a1,1(a0)
    80007a3c:	00200713          	li	a4,2
    80007a40:	1ae78a63          	beq	a5,a4,80007bf4 <__memset+0x1fc>
    80007a44:	00b50123          	sb	a1,2(a0)
    80007a48:	00300713          	li	a4,3
    80007a4c:	18e78463          	beq	a5,a4,80007bd4 <__memset+0x1dc>
    80007a50:	00b501a3          	sb	a1,3(a0)
    80007a54:	00400713          	li	a4,4
    80007a58:	1ae78263          	beq	a5,a4,80007bfc <__memset+0x204>
    80007a5c:	00b50223          	sb	a1,4(a0)
    80007a60:	00500713          	li	a4,5
    80007a64:	1ae78063          	beq	a5,a4,80007c04 <__memset+0x20c>
    80007a68:	00b502a3          	sb	a1,5(a0)
    80007a6c:	00700713          	li	a4,7
    80007a70:	18e79e63          	bne	a5,a4,80007c0c <__memset+0x214>
    80007a74:	00b50323          	sb	a1,6(a0)
    80007a78:	00700e93          	li	t4,7
    80007a7c:	00859713          	slli	a4,a1,0x8
    80007a80:	00e5e733          	or	a4,a1,a4
    80007a84:	01059e13          	slli	t3,a1,0x10
    80007a88:	01c76e33          	or	t3,a4,t3
    80007a8c:	01859313          	slli	t1,a1,0x18
    80007a90:	006e6333          	or	t1,t3,t1
    80007a94:	02059893          	slli	a7,a1,0x20
    80007a98:	40f60e3b          	subw	t3,a2,a5
    80007a9c:	011368b3          	or	a7,t1,a7
    80007aa0:	02859813          	slli	a6,a1,0x28
    80007aa4:	0108e833          	or	a6,a7,a6
    80007aa8:	03059693          	slli	a3,a1,0x30
    80007aac:	003e589b          	srliw	a7,t3,0x3
    80007ab0:	00d866b3          	or	a3,a6,a3
    80007ab4:	03859713          	slli	a4,a1,0x38
    80007ab8:	00389813          	slli	a6,a7,0x3
    80007abc:	00f507b3          	add	a5,a0,a5
    80007ac0:	00e6e733          	or	a4,a3,a4
    80007ac4:	000e089b          	sext.w	a7,t3
    80007ac8:	00f806b3          	add	a3,a6,a5
    80007acc:	00e7b023          	sd	a4,0(a5)
    80007ad0:	00878793          	addi	a5,a5,8
    80007ad4:	fed79ce3          	bne	a5,a3,80007acc <__memset+0xd4>
    80007ad8:	ff8e7793          	andi	a5,t3,-8
    80007adc:	0007871b          	sext.w	a4,a5
    80007ae0:	01d787bb          	addw	a5,a5,t4
    80007ae4:	0ce88e63          	beq	a7,a4,80007bc0 <__memset+0x1c8>
    80007ae8:	00f50733          	add	a4,a0,a5
    80007aec:	00b70023          	sb	a1,0(a4)
    80007af0:	0017871b          	addiw	a4,a5,1
    80007af4:	0cc77663          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007af8:	00e50733          	add	a4,a0,a4
    80007afc:	00b70023          	sb	a1,0(a4)
    80007b00:	0027871b          	addiw	a4,a5,2
    80007b04:	0ac77e63          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b08:	00e50733          	add	a4,a0,a4
    80007b0c:	00b70023          	sb	a1,0(a4)
    80007b10:	0037871b          	addiw	a4,a5,3
    80007b14:	0ac77663          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b18:	00e50733          	add	a4,a0,a4
    80007b1c:	00b70023          	sb	a1,0(a4)
    80007b20:	0047871b          	addiw	a4,a5,4
    80007b24:	08c77e63          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b28:	00e50733          	add	a4,a0,a4
    80007b2c:	00b70023          	sb	a1,0(a4)
    80007b30:	0057871b          	addiw	a4,a5,5
    80007b34:	08c77663          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b38:	00e50733          	add	a4,a0,a4
    80007b3c:	00b70023          	sb	a1,0(a4)
    80007b40:	0067871b          	addiw	a4,a5,6
    80007b44:	06c77e63          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b48:	00e50733          	add	a4,a0,a4
    80007b4c:	00b70023          	sb	a1,0(a4)
    80007b50:	0077871b          	addiw	a4,a5,7
    80007b54:	06c77663          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b58:	00e50733          	add	a4,a0,a4
    80007b5c:	00b70023          	sb	a1,0(a4)
    80007b60:	0087871b          	addiw	a4,a5,8
    80007b64:	04c77e63          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b68:	00e50733          	add	a4,a0,a4
    80007b6c:	00b70023          	sb	a1,0(a4)
    80007b70:	0097871b          	addiw	a4,a5,9
    80007b74:	04c77663          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b78:	00e50733          	add	a4,a0,a4
    80007b7c:	00b70023          	sb	a1,0(a4)
    80007b80:	00a7871b          	addiw	a4,a5,10
    80007b84:	02c77e63          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b88:	00e50733          	add	a4,a0,a4
    80007b8c:	00b70023          	sb	a1,0(a4)
    80007b90:	00b7871b          	addiw	a4,a5,11
    80007b94:	02c77663          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007b98:	00e50733          	add	a4,a0,a4
    80007b9c:	00b70023          	sb	a1,0(a4)
    80007ba0:	00c7871b          	addiw	a4,a5,12
    80007ba4:	00c77e63          	bgeu	a4,a2,80007bc0 <__memset+0x1c8>
    80007ba8:	00e50733          	add	a4,a0,a4
    80007bac:	00b70023          	sb	a1,0(a4)
    80007bb0:	00d7879b          	addiw	a5,a5,13
    80007bb4:	00c7f663          	bgeu	a5,a2,80007bc0 <__memset+0x1c8>
    80007bb8:	00f507b3          	add	a5,a0,a5
    80007bbc:	00b78023          	sb	a1,0(a5)
    80007bc0:	00813403          	ld	s0,8(sp)
    80007bc4:	01010113          	addi	sp,sp,16
    80007bc8:	00008067          	ret
    80007bcc:	00b00693          	li	a3,11
    80007bd0:	e55ff06f          	j	80007a24 <__memset+0x2c>
    80007bd4:	00300e93          	li	t4,3
    80007bd8:	ea5ff06f          	j	80007a7c <__memset+0x84>
    80007bdc:	00100e93          	li	t4,1
    80007be0:	e9dff06f          	j	80007a7c <__memset+0x84>
    80007be4:	00000e93          	li	t4,0
    80007be8:	e95ff06f          	j	80007a7c <__memset+0x84>
    80007bec:	00000793          	li	a5,0
    80007bf0:	ef9ff06f          	j	80007ae8 <__memset+0xf0>
    80007bf4:	00200e93          	li	t4,2
    80007bf8:	e85ff06f          	j	80007a7c <__memset+0x84>
    80007bfc:	00400e93          	li	t4,4
    80007c00:	e7dff06f          	j	80007a7c <__memset+0x84>
    80007c04:	00500e93          	li	t4,5
    80007c08:	e75ff06f          	j	80007a7c <__memset+0x84>
    80007c0c:	00600e93          	li	t4,6
    80007c10:	e6dff06f          	j	80007a7c <__memset+0x84>

0000000080007c14 <__memmove>:
    80007c14:	ff010113          	addi	sp,sp,-16
    80007c18:	00813423          	sd	s0,8(sp)
    80007c1c:	01010413          	addi	s0,sp,16
    80007c20:	0e060863          	beqz	a2,80007d10 <__memmove+0xfc>
    80007c24:	fff6069b          	addiw	a3,a2,-1
    80007c28:	0006881b          	sext.w	a6,a3
    80007c2c:	0ea5e863          	bltu	a1,a0,80007d1c <__memmove+0x108>
    80007c30:	00758713          	addi	a4,a1,7
    80007c34:	00a5e7b3          	or	a5,a1,a0
    80007c38:	40a70733          	sub	a4,a4,a0
    80007c3c:	0077f793          	andi	a5,a5,7
    80007c40:	00f73713          	sltiu	a4,a4,15
    80007c44:	00174713          	xori	a4,a4,1
    80007c48:	0017b793          	seqz	a5,a5
    80007c4c:	00e7f7b3          	and	a5,a5,a4
    80007c50:	10078863          	beqz	a5,80007d60 <__memmove+0x14c>
    80007c54:	00900793          	li	a5,9
    80007c58:	1107f463          	bgeu	a5,a6,80007d60 <__memmove+0x14c>
    80007c5c:	0036581b          	srliw	a6,a2,0x3
    80007c60:	fff8081b          	addiw	a6,a6,-1
    80007c64:	02081813          	slli	a6,a6,0x20
    80007c68:	01d85893          	srli	a7,a6,0x1d
    80007c6c:	00858813          	addi	a6,a1,8
    80007c70:	00058793          	mv	a5,a1
    80007c74:	00050713          	mv	a4,a0
    80007c78:	01088833          	add	a6,a7,a6
    80007c7c:	0007b883          	ld	a7,0(a5)
    80007c80:	00878793          	addi	a5,a5,8
    80007c84:	00870713          	addi	a4,a4,8
    80007c88:	ff173c23          	sd	a7,-8(a4)
    80007c8c:	ff0798e3          	bne	a5,a6,80007c7c <__memmove+0x68>
    80007c90:	ff867713          	andi	a4,a2,-8
    80007c94:	02071793          	slli	a5,a4,0x20
    80007c98:	0207d793          	srli	a5,a5,0x20
    80007c9c:	00f585b3          	add	a1,a1,a5
    80007ca0:	40e686bb          	subw	a3,a3,a4
    80007ca4:	00f507b3          	add	a5,a0,a5
    80007ca8:	06e60463          	beq	a2,a4,80007d10 <__memmove+0xfc>
    80007cac:	0005c703          	lbu	a4,0(a1)
    80007cb0:	00e78023          	sb	a4,0(a5)
    80007cb4:	04068e63          	beqz	a3,80007d10 <__memmove+0xfc>
    80007cb8:	0015c603          	lbu	a2,1(a1)
    80007cbc:	00100713          	li	a4,1
    80007cc0:	00c780a3          	sb	a2,1(a5)
    80007cc4:	04e68663          	beq	a3,a4,80007d10 <__memmove+0xfc>
    80007cc8:	0025c603          	lbu	a2,2(a1)
    80007ccc:	00200713          	li	a4,2
    80007cd0:	00c78123          	sb	a2,2(a5)
    80007cd4:	02e68e63          	beq	a3,a4,80007d10 <__memmove+0xfc>
    80007cd8:	0035c603          	lbu	a2,3(a1)
    80007cdc:	00300713          	li	a4,3
    80007ce0:	00c781a3          	sb	a2,3(a5)
    80007ce4:	02e68663          	beq	a3,a4,80007d10 <__memmove+0xfc>
    80007ce8:	0045c603          	lbu	a2,4(a1)
    80007cec:	00400713          	li	a4,4
    80007cf0:	00c78223          	sb	a2,4(a5)
    80007cf4:	00e68e63          	beq	a3,a4,80007d10 <__memmove+0xfc>
    80007cf8:	0055c603          	lbu	a2,5(a1)
    80007cfc:	00500713          	li	a4,5
    80007d00:	00c782a3          	sb	a2,5(a5)
    80007d04:	00e68663          	beq	a3,a4,80007d10 <__memmove+0xfc>
    80007d08:	0065c703          	lbu	a4,6(a1)
    80007d0c:	00e78323          	sb	a4,6(a5)
    80007d10:	00813403          	ld	s0,8(sp)
    80007d14:	01010113          	addi	sp,sp,16
    80007d18:	00008067          	ret
    80007d1c:	02061713          	slli	a4,a2,0x20
    80007d20:	02075713          	srli	a4,a4,0x20
    80007d24:	00e587b3          	add	a5,a1,a4
    80007d28:	f0f574e3          	bgeu	a0,a5,80007c30 <__memmove+0x1c>
    80007d2c:	02069613          	slli	a2,a3,0x20
    80007d30:	02065613          	srli	a2,a2,0x20
    80007d34:	fff64613          	not	a2,a2
    80007d38:	00e50733          	add	a4,a0,a4
    80007d3c:	00c78633          	add	a2,a5,a2
    80007d40:	fff7c683          	lbu	a3,-1(a5)
    80007d44:	fff78793          	addi	a5,a5,-1
    80007d48:	fff70713          	addi	a4,a4,-1
    80007d4c:	00d70023          	sb	a3,0(a4)
    80007d50:	fec798e3          	bne	a5,a2,80007d40 <__memmove+0x12c>
    80007d54:	00813403          	ld	s0,8(sp)
    80007d58:	01010113          	addi	sp,sp,16
    80007d5c:	00008067          	ret
    80007d60:	02069713          	slli	a4,a3,0x20
    80007d64:	02075713          	srli	a4,a4,0x20
    80007d68:	00170713          	addi	a4,a4,1
    80007d6c:	00e50733          	add	a4,a0,a4
    80007d70:	00050793          	mv	a5,a0
    80007d74:	0005c683          	lbu	a3,0(a1)
    80007d78:	00178793          	addi	a5,a5,1
    80007d7c:	00158593          	addi	a1,a1,1
    80007d80:	fed78fa3          	sb	a3,-1(a5)
    80007d84:	fee798e3          	bne	a5,a4,80007d74 <__memmove+0x160>
    80007d88:	f89ff06f          	j	80007d10 <__memmove+0xfc>

0000000080007d8c <__putc>:
    80007d8c:	fe010113          	addi	sp,sp,-32
    80007d90:	00813823          	sd	s0,16(sp)
    80007d94:	00113c23          	sd	ra,24(sp)
    80007d98:	02010413          	addi	s0,sp,32
    80007d9c:	00050793          	mv	a5,a0
    80007da0:	fef40593          	addi	a1,s0,-17
    80007da4:	00100613          	li	a2,1
    80007da8:	00000513          	li	a0,0
    80007dac:	fef407a3          	sb	a5,-17(s0)
    80007db0:	fffff097          	auipc	ra,0xfffff
    80007db4:	b3c080e7          	jalr	-1220(ra) # 800068ec <console_write>
    80007db8:	01813083          	ld	ra,24(sp)
    80007dbc:	01013403          	ld	s0,16(sp)
    80007dc0:	02010113          	addi	sp,sp,32
    80007dc4:	00008067          	ret

0000000080007dc8 <__getc>:
    80007dc8:	fe010113          	addi	sp,sp,-32
    80007dcc:	00813823          	sd	s0,16(sp)
    80007dd0:	00113c23          	sd	ra,24(sp)
    80007dd4:	02010413          	addi	s0,sp,32
    80007dd8:	fe840593          	addi	a1,s0,-24
    80007ddc:	00100613          	li	a2,1
    80007de0:	00000513          	li	a0,0
    80007de4:	fffff097          	auipc	ra,0xfffff
    80007de8:	ae8080e7          	jalr	-1304(ra) # 800068cc <console_read>
    80007dec:	fe844503          	lbu	a0,-24(s0)
    80007df0:	01813083          	ld	ra,24(sp)
    80007df4:	01013403          	ld	s0,16(sp)
    80007df8:	02010113          	addi	sp,sp,32
    80007dfc:	00008067          	ret

0000000080007e00 <console_handler>:
    80007e00:	fe010113          	addi	sp,sp,-32
    80007e04:	00813823          	sd	s0,16(sp)
    80007e08:	00113c23          	sd	ra,24(sp)
    80007e0c:	00913423          	sd	s1,8(sp)
    80007e10:	02010413          	addi	s0,sp,32
    80007e14:	14202773          	csrr	a4,scause
    80007e18:	100027f3          	csrr	a5,sstatus
    80007e1c:	0027f793          	andi	a5,a5,2
    80007e20:	06079e63          	bnez	a5,80007e9c <console_handler+0x9c>
    80007e24:	00074c63          	bltz	a4,80007e3c <console_handler+0x3c>
    80007e28:	01813083          	ld	ra,24(sp)
    80007e2c:	01013403          	ld	s0,16(sp)
    80007e30:	00813483          	ld	s1,8(sp)
    80007e34:	02010113          	addi	sp,sp,32
    80007e38:	00008067          	ret
    80007e3c:	0ff77713          	andi	a4,a4,255
    80007e40:	00900793          	li	a5,9
    80007e44:	fef712e3          	bne	a4,a5,80007e28 <console_handler+0x28>
    80007e48:	ffffe097          	auipc	ra,0xffffe
    80007e4c:	6dc080e7          	jalr	1756(ra) # 80006524 <plic_claim>
    80007e50:	00a00793          	li	a5,10
    80007e54:	00050493          	mv	s1,a0
    80007e58:	02f50c63          	beq	a0,a5,80007e90 <console_handler+0x90>
    80007e5c:	fc0506e3          	beqz	a0,80007e28 <console_handler+0x28>
    80007e60:	00050593          	mv	a1,a0
    80007e64:	00000517          	auipc	a0,0x0
    80007e68:	76c50513          	addi	a0,a0,1900 # 800085d0 <CONSOLE_STATUS+0x5c0>
    80007e6c:	fffff097          	auipc	ra,0xfffff
    80007e70:	afc080e7          	jalr	-1284(ra) # 80006968 <__printf>
    80007e74:	01013403          	ld	s0,16(sp)
    80007e78:	01813083          	ld	ra,24(sp)
    80007e7c:	00048513          	mv	a0,s1
    80007e80:	00813483          	ld	s1,8(sp)
    80007e84:	02010113          	addi	sp,sp,32
    80007e88:	ffffe317          	auipc	t1,0xffffe
    80007e8c:	6d430067          	jr	1748(t1) # 8000655c <plic_complete>
    80007e90:	fffff097          	auipc	ra,0xfffff
    80007e94:	3e0080e7          	jalr	992(ra) # 80007270 <uartintr>
    80007e98:	fddff06f          	j	80007e74 <console_handler+0x74>
    80007e9c:	00001517          	auipc	a0,0x1
    80007ea0:	83450513          	addi	a0,a0,-1996 # 800086d0 <digits+0x78>
    80007ea4:	fffff097          	auipc	ra,0xfffff
    80007ea8:	a68080e7          	jalr	-1432(ra) # 8000690c <panic>
	...
