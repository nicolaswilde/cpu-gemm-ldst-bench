
amx-gemm:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 32 3f 00 00    	push   0x3f32(%rip)        # 4f58 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 34 3f 00 00    	jmp    *0x3f34(%rip)        # 4f60 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   %ax,%ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <_init+0x20>
    10be:	66 90                	xchg   %ax,%ax
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	e9 52 ff ff ff       	jmp    1020 <_init+0x20>
    10ce:	66 90                	xchg   %ax,%ax
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	e9 42 ff ff ff       	jmp    1020 <_init+0x20>
    10de:	66 90                	xchg   %ax,%ax
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	e9 32 ff ff ff       	jmp    1020 <_init+0x20>
    10ee:	66 90                	xchg   %ax,%ax
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	e9 22 ff ff ff       	jmp    1020 <_init+0x20>
    10fe:	66 90                	xchg   %ax,%ax
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	e9 12 ff ff ff       	jmp    1020 <_init+0x20>
    110e:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001110 <__cxa_finalize@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 de 3e 00 00    	jmp    *0x3ede(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001120 <free@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 3e 3e 00 00    	jmp    *0x3e3e(%rip)        # 4f68 <free@GLIBC_2.2.5>
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001130 <clock_gettime@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 36 3e 00 00    	jmp    *0x3e36(%rip)        # 4f70 <clock_gettime@GLIBC_2.17>
    113a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001140 <omp_get_thread_num@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 2e 3e 00 00    	jmp    *0x3e2e(%rip)        # 4f78 <omp_get_thread_num@OMP_1.0>
    114a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001150 <__stack_chk_fail@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 26 3e 00 00    	jmp    *0x3e26(%rip)        # 4f80 <__stack_chk_fail@GLIBC_2.4>
    115a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001160 <memset@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	ff 25 1e 3e 00 00    	jmp    *0x3e1e(%rip)        # 4f88 <memset@GLIBC_2.2.5>
    116a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001170 <sched_setaffinity@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	ff 25 16 3e 00 00    	jmp    *0x3e16(%rip)        # 4f90 <sched_setaffinity@GLIBC_2.3.4>
    117a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001180 <srand@plt>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	ff 25 0e 3e 00 00    	jmp    *0x3e0e(%rip)        # 4f98 <srand@GLIBC_2.2.5>
    118a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001190 <time@plt>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	ff 25 06 3e 00 00    	jmp    *0x3e06(%rip)        # 4fa0 <time@GLIBC_2.2.5>
    119a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011a0 <malloc@plt>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	ff 25 fe 3d 00 00    	jmp    *0x3dfe(%rip)        # 4fa8 <malloc@GLIBC_2.2.5>
    11aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011b0 <fflush@plt>:
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	ff 25 f6 3d 00 00    	jmp    *0x3df6(%rip)        # 4fb0 <fflush@GLIBC_2.2.5>
    11ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011c0 <__printf_chk@plt>:
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	ff 25 ee 3d 00 00    	jmp    *0x3dee(%rip)        # 4fb8 <__printf_chk@GLIBC_2.3.4>
    11ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011d0 <perror@plt>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	ff 25 e6 3d 00 00    	jmp    *0x3de6(%rip)        # 4fc0 <perror@GLIBC_2.2.5>
    11da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011e0 <GOMP_parallel@plt>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	ff 25 de 3d 00 00    	jmp    *0x3dde(%rip)        # 4fc8 <GOMP_parallel@GOMP_4.0>
    11ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011f0 <rand@plt>:
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	ff 25 d6 3d 00 00    	jmp    *0x3dd6(%rip)        # 4fd0 <rand@GLIBC_2.2.5>
    11fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001200 <bind_thread_to_cpu.cold>:
    1200:	48 8d 3d fd 1d 00 00 	lea    0x1dfd(%rip),%rdi        # 3004 <_IO_stdin_used+0x4>
    1207:	e8 c4 ff ff ff       	call   11d0 <perror@plt>
    120c:	e9 7b 06 00 00       	jmp    188c <bind_thread_to_cpu+0x6c>

0000000000001211 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0.cold>:
    1211:	48 8d 3d ec 1d 00 00 	lea    0x1dec(%rip),%rdi        # 3004 <_IO_stdin_used+0x4>
    1218:	48 89 8d 38 ff ff ff 	mov    %rcx,-0xc8(%rbp)
    121f:	e8 ac ff ff ff       	call   11d0 <perror@plt>
    1224:	48 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%rcx
    122b:	e9 bd 0c 00 00       	jmp    1eed <amx_gemm_i8i8i32_omp_tiling._omp_fn.0+0xcd>

0000000000001230 <main>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	41 57                	push   %r15
    1236:	45 31 c9             	xor    %r9d,%r9d
    1239:	41 b8 04 00 00 00    	mov    $0x4,%r8d
    123f:	b9 04 00 00 00       	mov    $0x4,%ecx
    1244:	ba 10 00 00 00       	mov    $0x10,%edx
    1249:	48 8d 35 b0 1e 00 00 	lea    0x1eb0(%rip),%rsi        # 3100 <_IO_stdin_used+0x100>
    1250:	bf 02 00 00 00       	mov    $0x2,%edi
    1255:	41 56                	push   %r14
    1257:	41 55                	push   %r13
    1259:	41 54                	push   %r12
    125b:	41 bc 05 00 00 00    	mov    $0x5,%r12d
    1261:	55                   	push   %rbp
    1262:	53                   	push   %rbx
    1263:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
    126a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1271:	00 00 
    1273:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
    127a:	00 
    127b:	31 c0                	xor    %eax,%eax
    127d:	6a 0f                	push   $0xf
    127f:	e8 3c ff ff ff       	call   11c0 <__printf_chk@plt>
    1284:	ba 00 02 00 00       	mov    $0x200,%edx
    1289:	41 b8 00 04 00 00    	mov    $0x400,%r8d
    128f:	b9 00 02 00 00       	mov    $0x200,%ecx
    1294:	48 8d 35 7b 1d 00 00 	lea    0x1d7b(%rip),%rsi        # 3016 <_IO_stdin_used+0x16>
    129b:	bf 02 00 00 00       	mov    $0x2,%edi
    12a0:	31 c0                	xor    %eax,%eax
    12a2:	e8 19 ff ff ff       	call   11c0 <__printf_chk@plt>
    12a7:	31 ff                	xor    %edi,%edi
    12a9:	e8 e2 fe ff ff       	call   1190 <time@plt>
    12ae:	89 c7                	mov    %eax,%edi
    12b0:	e8 cb fe ff ff       	call   1180 <srand@plt>
    12b5:	58                   	pop    %rax
    12b6:	5a                   	pop    %rdx
    12b7:	e8 34 ff ff ff       	call   11f0 <rand@plt>
    12bc:	89 c3                	mov    %eax,%ebx
    12be:	e8 2d ff ff ff       	call   11f0 <rand@plt>
    12c3:	89 c5                	mov    %eax,%ebp
    12c5:	e8 26 ff ff ff       	call   11f0 <rand@plt>
    12ca:	89 c1                	mov    %eax,%ecx
    12cc:	c1 f9 1f             	sar    $0x1f,%ecx
    12cf:	c1 e9 14             	shr    $0x14,%ecx
    12d2:	8d 14 08             	lea    (%rax,%rcx,1),%edx
    12d5:	89 e8                	mov    %ebp,%eax
    12d7:	c1 f8 1f             	sar    $0x1f,%eax
    12da:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    12e0:	c1 e8 14             	shr    $0x14,%eax
    12e3:	29 ca                	sub    %ecx,%edx
    12e5:	b9 00 10 00 00       	mov    $0x1000,%ecx
    12ea:	8d 74 05 00          	lea    0x0(%rbp,%rax,1),%esi
    12ee:	83 c2 40             	add    $0x40,%edx
    12f1:	81 e6 ff 0f 00 00    	and    $0xfff,%esi
    12f7:	48 63 d2             	movslq %edx,%rdx
    12fa:	29 c6                	sub    %eax,%esi
    12fc:	89 d8                	mov    %ebx,%eax
    12fe:	48 83 e2 c0          	and    $0xffffffffffffffc0,%rdx
    1302:	c1 f8 1f             	sar    $0x1f,%eax
    1305:	81 c6 00 02 00 00    	add    $0x200,%esi
    130b:	c1 e8 14             	shr    $0x14,%eax
    130e:	48 63 f6             	movslq %esi,%rsi
    1311:	8d 3c 03             	lea    (%rbx,%rax,1),%edi
    1314:	48 81 e6 00 fe ff ff 	and    $0xfffffffffffffe00,%rsi
    131b:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
    1321:	29 c7                	sub    %eax,%edi
    1323:	81 c7 00 02 00 00    	add    $0x200,%edi
    1329:	48 63 ff             	movslq %edi,%rdi
    132c:	48 81 e7 00 fe ff ff 	and    $0xfffffffffffffe00,%rdi
    1333:	e8 28 0e 00 00       	call   2160 <test_correctness>
    1338:	41 ff cc             	dec    %r12d
    133b:	0f 85 76 ff ff ff    	jne    12b7 <main+0x87>
    1341:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
    1348:	00 
    1349:	bd 07 00 00 00       	mov    $0x7,%ebp
    134e:	ba 00 02 00 00       	mov    $0x200,%edx
    1353:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    1358:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
    135f:	00 
    1360:	41 89 ec             	mov    %ebp,%r12d
    1363:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1368:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
    136d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    1372:	48 89 d6             	mov    %rdx,%rsi
    1375:	c7 44 24 68 07 00 00 	movl   $0x7,0x68(%rsp)
    137c:	00 
    137d:	62 f2 fd 08 7c ea    	vpbroadcastq %rdx,%xmm5
    1383:	bd 00 02 00 00       	mov    $0x200,%ebp
    1388:	48 0f af f2          	imul   %rdx,%rsi
    138c:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    1391:	44 89 64 24 6c       	mov    %r12d,0x6c(%rsp)
    1396:	c5 f9 7f 6c 24 10    	vmovdqa %xmm5,0x10(%rsp)
    139c:	48 8d 0c b5 00 00 00 	lea    0x0(,%rsi,4),%rcx
    13a3:	00 
    13a4:	48 89 74 24 60       	mov    %rsi,0x60(%rsp)
    13a9:	48 8d 81 00 10 00 00 	lea    0x1000(%rcx),%rax
    13b0:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
    13b5:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    13ba:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
    13bf:	48 0f af dd          	imul   %rbp,%rbx
    13c3:	4c 8d a3 00 10 00 00 	lea    0x1000(%rbx),%r12
    13ca:	4c 89 e7             	mov    %r12,%rdi
    13cd:	e8 ce fd ff ff       	call   11a0 <malloc@plt>
    13d2:	4c 89 e7             	mov    %r12,%rdi
    13d5:	41 bc 0a 00 00 00    	mov    $0xa,%r12d
    13db:	49 89 c6             	mov    %rax,%r14
    13de:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    13e3:	e8 b8 fd ff ff       	call   11a0 <malloc@plt>
    13e8:	4d 8d ae 00 10 00 00 	lea    0x1000(%r14),%r13
    13ef:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    13f4:	49 89 c7             	mov    %rax,%r15
    13f7:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    13fe:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1403:	e8 98 fd ff ff       	call   11a0 <malloc@plt>
    1408:	4d 8d b7 00 10 00 00 	lea    0x1000(%r15),%r14
    140f:	48 89 da             	mov    %rbx,%rdx
    1412:	be 01 00 00 00       	mov    $0x1,%esi
    1417:	49 81 e6 00 f0 ff ff 	and    $0xfffffffffffff000,%r14
    141e:	4c 89 ef             	mov    %r13,%rdi
    1421:	4c 8d b8 00 10 00 00 	lea    0x1000(%rax),%r15
    1428:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    142d:	e8 2e fd ff ff       	call   1160 <memset@plt>
    1432:	48 89 da             	mov    %rbx,%rdx
    1435:	be 01 00 00 00       	mov    $0x1,%esi
    143a:	4c 89 f7             	mov    %r14,%rdi
    143d:	e8 1e fd ff ff       	call   1160 <memset@plt>
    1442:	49 81 e7 00 f0 ff ff 	and    $0xfffffffffffff000,%r15
    1449:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
    144e:	be 01 00 00 00       	mov    $0x1,%esi
    1453:	4c 89 ff             	mov    %r15,%rdi
    1456:	e8 05 fd ff ff       	call   1160 <memset@plt>
    145b:	c5 f9 6f 64 24 10    	vmovdqa 0x10(%rsp),%xmm4
    1461:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    1466:	31 c9                	xor    %ecx,%ecx
    1468:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    146d:	ba 10 00 00 00       	mov    $0x10,%edx
    1472:	48 8d 3d a7 09 00 00 	lea    0x9a7(%rip),%rdi        # 1e20 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0>
    1479:	48 89 ac 24 a8 00 00 	mov    %rbp,0xa8(%rsp)
    1480:	00 
    1481:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
    1488:	00 
    1489:	c5 fa 7f a4 24 98 00 	vmovdqu %xmm4,0x98(%rsp)
    1490:	00 00 
    1492:	4c 89 bc 24 90 00 00 	mov    %r15,0x90(%rsp)
    1499:	00 
    149a:	4c 89 b4 24 88 00 00 	mov    %r14,0x88(%rsp)
    14a1:	00 
    14a2:	4c 89 ac 24 80 00 00 	mov    %r13,0x80(%rsp)
    14a9:	00 
    14aa:	e8 31 fd ff ff       	call   11e0 <GOMP_parallel@plt>
    14af:	8b 9c 24 c4 00 00 00 	mov    0xc4(%rsp),%ebx
    14b6:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
    14bb:	bf 01 00 00 00       	mov    $0x1,%edi
    14c0:	03 9c 24 c0 00 00 00 	add    0xc0(%rsp),%ebx
    14c7:	03 9c 24 c8 00 00 00 	add    0xc8(%rsp),%ebx
    14ce:	03 9c 24 cc 00 00 00 	add    0xcc(%rsp),%ebx
    14d5:	03 9c 24 d0 00 00 00 	add    0xd0(%rsp),%ebx
    14dc:	03 9c 24 d4 00 00 00 	add    0xd4(%rsp),%ebx
    14e3:	03 9c 24 d8 00 00 00 	add    0xd8(%rsp),%ebx
    14ea:	03 9c 24 dc 00 00 00 	add    0xdc(%rsp),%ebx
    14f1:	03 9c 24 e0 00 00 00 	add    0xe0(%rsp),%ebx
    14f8:	03 9c 24 e4 00 00 00 	add    0xe4(%rsp),%ebx
    14ff:	03 9c 24 e8 00 00 00 	add    0xe8(%rsp),%ebx
    1506:	03 9c 24 ec 00 00 00 	add    0xec(%rsp),%ebx
    150d:	03 9c 24 f0 00 00 00 	add    0xf0(%rsp),%ebx
    1514:	03 9c 24 f4 00 00 00 	add    0xf4(%rsp),%ebx
    151b:	03 9c 24 f8 00 00 00 	add    0xf8(%rsp),%ebx
    1522:	03 9c 24 fc 00 00 00 	add    0xfc(%rsp),%ebx
    1529:	e8 02 fc ff ff       	call   1130 <clock_gettime@plt>
    152e:	66 90                	xchg   %ax,%ax
    1530:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    1535:	c5 f9 6f 54 24 10    	vmovdqa 0x10(%rsp),%xmm2
    153b:	31 c9                	xor    %ecx,%ecx
    153d:	ba 10 00 00 00       	mov    $0x10,%edx
    1542:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    1547:	48 8d 3d d2 08 00 00 	lea    0x8d2(%rip),%rdi        # 1e20 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0>
    154e:	48 89 ac 24 a8 00 00 	mov    %rbp,0xa8(%rsp)
    1555:	00 
    1556:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
    155d:	00 
    155e:	4c 89 bc 24 90 00 00 	mov    %r15,0x90(%rsp)
    1565:	00 
    1566:	4c 89 b4 24 88 00 00 	mov    %r14,0x88(%rsp)
    156d:	00 
    156e:	4c 89 ac 24 80 00 00 	mov    %r13,0x80(%rsp)
    1575:	00 
    1576:	c5 fa 7f 94 24 98 00 	vmovdqu %xmm2,0x98(%rsp)
    157d:	00 00 
    157f:	e8 5c fc ff ff       	call   11e0 <GOMP_parallel@plt>
    1584:	8b 84 24 c4 00 00 00 	mov    0xc4(%rsp),%eax
    158b:	03 84 24 c0 00 00 00 	add    0xc0(%rsp),%eax
    1592:	03 84 24 c8 00 00 00 	add    0xc8(%rsp),%eax
    1599:	03 84 24 cc 00 00 00 	add    0xcc(%rsp),%eax
    15a0:	03 84 24 d0 00 00 00 	add    0xd0(%rsp),%eax
    15a7:	03 84 24 d4 00 00 00 	add    0xd4(%rsp),%eax
    15ae:	03 84 24 d8 00 00 00 	add    0xd8(%rsp),%eax
    15b5:	03 84 24 dc 00 00 00 	add    0xdc(%rsp),%eax
    15bc:	03 84 24 e0 00 00 00 	add    0xe0(%rsp),%eax
    15c3:	03 84 24 e4 00 00 00 	add    0xe4(%rsp),%eax
    15ca:	03 84 24 e8 00 00 00 	add    0xe8(%rsp),%eax
    15d1:	03 84 24 ec 00 00 00 	add    0xec(%rsp),%eax
    15d8:	03 84 24 f0 00 00 00 	add    0xf0(%rsp),%eax
    15df:	03 84 24 f4 00 00 00 	add    0xf4(%rsp),%eax
    15e6:	03 84 24 f8 00 00 00 	add    0xf8(%rsp),%eax
    15ed:	03 84 24 fc 00 00 00 	add    0xfc(%rsp),%eax
    15f4:	01 c3                	add    %eax,%ebx
    15f6:	41 ff cc             	dec    %r12d
    15f9:	0f 85 31 ff ff ff    	jne    1530 <main+0x300>
    15ff:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    1604:	bf 01 00 00 00       	mov    $0x1,%edi
    1609:	e8 22 fb ff ff       	call   1130 <clock_gettime@plt>
    160e:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
    1615:	00 
    1616:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    161a:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    161f:	49 89 e8             	mov    %rbp,%r8
    1622:	41 89 d9             	mov    %ebx,%r9d
    1625:	48 8d 35 74 1a 00 00 	lea    0x1a74(%rip),%rsi        # 30a0 <_IO_stdin_used+0xa0>
    162c:	bf 02 00 00 00       	mov    $0x2,%edi
    1631:	48 2b 44 24 70       	sub    0x70(%rsp),%rax
    1636:	48 89 ca             	mov    %rcx,%rdx
    1639:	c4 e1 e3 2a c0       	vcvtsi2sd %rax,%xmm3,%xmm0
    163e:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    1645:	00 
    1646:	48 2b 44 24 78       	sub    0x78(%rsp),%rax
    164b:	c4 e1 e3 2a c8       	vcvtsi2sd %rax,%xmm3,%xmm1
    1650:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    1655:	48 0f af c5          	imul   %rbp,%rax
    1659:	48 01 ed             	add    %rbp,%rbp
    165c:	c4 e2 f1 99 05 db 1a 	vfmadd132sd 0x1adb(%rip),%xmm1,%xmm0        # 3140 <_IO_stdin_used+0x140>
    1663:	00 00 
    1665:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1669:	48 01 c0             	add    %rax,%rax
    166c:	c4 e1 e3 2a c8       	vcvtsi2sd %rax,%xmm3,%xmm1
    1671:	b8 02 00 00 00       	mov    $0x2,%eax
    1676:	c5 fb 59 05 ca 1a 00 	vmulsd 0x1aca(%rip),%xmm0,%xmm0        # 3148 <_IO_stdin_used+0x148>
    167d:	00 
    167e:	c5 f3 59 0d ca 1a 00 	vmulsd 0x1aca(%rip),%xmm1,%xmm1        # 3150 <_IO_stdin_used+0x150>
    1685:	00 
    1686:	c5 f3 5e c8          	vdivsd %xmm0,%xmm1,%xmm1
    168a:	e8 31 fb ff ff       	call   11c0 <__printf_chk@plt>
    168f:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    1694:	e8 87 fa ff ff       	call   1120 <free@plt>
    1699:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    169e:	e8 7d fa ff ff       	call   1120 <free@plt>
    16a3:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
    16a8:	e8 73 fa ff ff       	call   1120 <free@plt>
    16ad:	48 8b 3d 5c 39 00 00 	mov    0x395c(%rip),%rdi        # 5010 <stdout@GLIBC_2.2.5>
    16b4:	e8 f7 fa ff ff       	call   11b0 <fflush@plt>
    16b9:	ff 4c 24 68          	decl   0x68(%rsp)
    16bd:	0f 85 f7 fc ff ff    	jne    13ba <main+0x18a>
    16c3:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    16c8:	44 8b 64 24 6c       	mov    0x6c(%rsp),%r12d
    16cd:	48 01 d2             	add    %rdx,%rdx
    16d0:	41 ff cc             	dec    %r12d
    16d3:	0f 85 99 fc ff ff    	jne    1372 <main+0x142>
    16d9:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
    16e0:	00 
    16e1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    16e8:	00 00 
    16ea:	75 14                	jne    1700 <main+0x4d0>
    16ec:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
    16f3:	31 c0                	xor    %eax,%eax
    16f5:	5b                   	pop    %rbx
    16f6:	5d                   	pop    %rbp
    16f7:	41 5c                	pop    %r12
    16f9:	41 5d                	pop    %r13
    16fb:	41 5e                	pop    %r14
    16fd:	41 5f                	pop    %r15
    16ff:	c3                   	ret
    1700:	e8 4b fa ff ff       	call   1150 <__stack_chk_fail@plt>
    1705:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    170c:	00 00 00 
    170f:	90                   	nop

0000000000001710 <set_fast_math>:
    1710:	f3 0f 1e fa          	endbr64
    1714:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    1719:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    1720:	00 
    1721:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    1726:	c3                   	ret
    1727:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    172e:	00 00 

0000000000001730 <_start>:
    1730:	f3 0f 1e fa          	endbr64
    1734:	31 ed                	xor    %ebp,%ebp
    1736:	49 89 d1             	mov    %rdx,%r9
    1739:	5e                   	pop    %rsi
    173a:	48 89 e2             	mov    %rsp,%rdx
    173d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1741:	50                   	push   %rax
    1742:	54                   	push   %rsp
    1743:	45 31 c0             	xor    %r8d,%r8d
    1746:	31 c9                	xor    %ecx,%ecx
    1748:	48 8d 3d e1 fa ff ff 	lea    -0x51f(%rip),%rdi        # 1230 <main>
    174f:	ff 15 83 38 00 00    	call   *0x3883(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    1755:	f4                   	hlt
    1756:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    175d:	00 00 00 

0000000000001760 <deregister_tm_clones>:
    1760:	48 8d 3d a9 38 00 00 	lea    0x38a9(%rip),%rdi        # 5010 <stdout@GLIBC_2.2.5>
    1767:	48 8d 05 a2 38 00 00 	lea    0x38a2(%rip),%rax        # 5010 <stdout@GLIBC_2.2.5>
    176e:	48 39 f8             	cmp    %rdi,%rax
    1771:	74 15                	je     1788 <deregister_tm_clones+0x28>
    1773:	48 8b 05 66 38 00 00 	mov    0x3866(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    177a:	48 85 c0             	test   %rax,%rax
    177d:	74 09                	je     1788 <deregister_tm_clones+0x28>
    177f:	ff e0                	jmp    *%rax
    1781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1788:	c3                   	ret
    1789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001790 <register_tm_clones>:
    1790:	48 8d 3d 79 38 00 00 	lea    0x3879(%rip),%rdi        # 5010 <stdout@GLIBC_2.2.5>
    1797:	48 8d 35 72 38 00 00 	lea    0x3872(%rip),%rsi        # 5010 <stdout@GLIBC_2.2.5>
    179e:	48 29 fe             	sub    %rdi,%rsi
    17a1:	48 89 f0             	mov    %rsi,%rax
    17a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    17a8:	48 c1 f8 03          	sar    $0x3,%rax
    17ac:	48 01 c6             	add    %rax,%rsi
    17af:	48 d1 fe             	sar    $1,%rsi
    17b2:	74 14                	je     17c8 <register_tm_clones+0x38>
    17b4:	48 8b 05 35 38 00 00 	mov    0x3835(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    17bb:	48 85 c0             	test   %rax,%rax
    17be:	74 08                	je     17c8 <register_tm_clones+0x38>
    17c0:	ff e0                	jmp    *%rax
    17c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    17c8:	c3                   	ret
    17c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000017d0 <__do_global_dtors_aux>:
    17d0:	f3 0f 1e fa          	endbr64
    17d4:	80 3d 3d 38 00 00 00 	cmpb   $0x0,0x383d(%rip)        # 5018 <completed.0>
    17db:	75 2b                	jne    1808 <__do_global_dtors_aux+0x38>
    17dd:	55                   	push   %rbp
    17de:	48 83 3d 12 38 00 00 	cmpq   $0x0,0x3812(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    17e5:	00 
    17e6:	48 89 e5             	mov    %rsp,%rbp
    17e9:	74 0c                	je     17f7 <__do_global_dtors_aux+0x27>
    17eb:	48 8b 3d 16 38 00 00 	mov    0x3816(%rip),%rdi        # 5008 <__dso_handle>
    17f2:	e8 19 f9 ff ff       	call   1110 <__cxa_finalize@plt>
    17f7:	e8 64 ff ff ff       	call   1760 <deregister_tm_clones>
    17fc:	c6 05 15 38 00 00 01 	movb   $0x1,0x3815(%rip)        # 5018 <completed.0>
    1803:	5d                   	pop    %rbp
    1804:	c3                   	ret
    1805:	0f 1f 00             	nopl   (%rax)
    1808:	c3                   	ret
    1809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001810 <frame_dummy>:
    1810:	f3 0f 1e fa          	endbr64
    1814:	e9 77 ff ff ff       	jmp    1790 <register_tm_clones>
    1819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001820 <bind_thread_to_cpu>:
    1820:	f3 0f 1e fa          	endbr64
    1824:	55                   	push   %rbp
    1825:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
    1829:	48 89 e5             	mov    %rsp,%rbp
    182c:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    1833:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    183a:	00 00 
    183c:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1843:	00 
    1844:	31 c0                	xor    %eax,%eax
    1846:	48 63 c7             	movslq %edi,%rax
    1849:	48 89 e2             	mov    %rsp,%rdx
    184c:	62 f1 7f 48 7f 04 24 	vmovdqu8 %zmm0,(%rsp)
    1853:	62 f1 7f 48 7f 44 24 	vmovdqu8 %zmm0,0x40(%rsp)
    185a:	01 
    185b:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    1861:	77 12                	ja     1875 <bind_thread_to_cpu+0x55>
    1863:	48 c1 e8 06          	shr    $0x6,%rax
    1867:	b9 01 00 00 00       	mov    $0x1,%ecx
    186c:	c4 e2 c1 f7 c9       	shlx   %rdi,%rcx,%rcx
    1871:	48 09 0c c2          	or     %rcx,(%rdx,%rax,8)
    1875:	31 ff                	xor    %edi,%edi
    1877:	be 80 00 00 00       	mov    $0x80,%esi
    187c:	c5 f8 77             	vzeroupper
    187f:	e8 ec f8 ff ff       	call   1170 <sched_setaffinity@plt>
    1884:	85 c0                	test   %eax,%eax
    1886:	0f 85 74 f9 ff ff    	jne    1200 <bind_thread_to_cpu.cold>
    188c:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    1893:	00 
    1894:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    189b:	00 00 
    189d:	75 02                	jne    18a1 <bind_thread_to_cpu+0x81>
    189f:	c9                   	leave
    18a0:	c3                   	ret
    18a1:	e8 aa f8 ff ff       	call   1150 <__stack_chk_fail@plt>
    18a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    18ad:	00 00 00 

00000000000018b0 <cpu_gemm_i8i8i32>:
    18b0:	f3 0f 1e fa          	endbr64
    18b4:	41 55                	push   %r13
    18b6:	49 89 ca             	mov    %rcx,%r10
    18b9:	41 54                	push   %r12
    18bb:	55                   	push   %rbp
    18bc:	53                   	push   %rbx
    18bd:	48 85 c9             	test   %rcx,%rcx
    18c0:	0f 84 9f 00 00 00    	je     1965 <cpu_gemm_i8i8i32+0xb5>
    18c6:	4d 8d 60 ff          	lea    -0x1(%r8),%r12
    18ca:	48 89 d5             	mov    %rdx,%rbp
    18cd:	45 31 db             	xor    %r11d,%r11d
    18d0:	31 db                	xor    %ebx,%ebx
    18d2:	49 83 e4 c0          	and    $0xffffffffffffffc0,%r12
    18d6:	31 c0                	xor    %eax,%eax
    18d8:	4c 8d aa 00 01 00 00 	lea    0x100(%rdx),%r13
    18df:	90                   	nop
    18e0:	4d 85 c0             	test   %r8,%r8
    18e3:	74 21                	je     1906 <cpu_gemm_i8i8i32+0x56>
    18e5:	4b 8d 0c 23          	lea    (%r11,%r12,1),%rcx
    18e9:	4a 8d 54 9d 00       	lea    0x0(%rbp,%r11,4),%rdx
    18ee:	49 8d 4c 8d 00       	lea    0x0(%r13,%rcx,4),%rcx
    18f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    18f8:	03 02                	add    (%rdx),%eax
    18fa:	48 81 c2 00 01 00 00 	add    $0x100,%rdx
    1901:	48 39 d1             	cmp    %rdx,%rcx
    1904:	75 f2                	jne    18f8 <cpu_gemm_i8i8i32+0x48>
    1906:	48 8d 53 01          	lea    0x1(%rbx),%rdx
    190a:	4d 01 c3             	add    %r8,%r11
    190d:	49 39 d2             	cmp    %rdx,%r10
    1910:	74 0e                	je     1920 <cpu_gemm_i8i8i32+0x70>
    1912:	48 89 d3             	mov    %rdx,%rbx
    1915:	eb c9                	jmp    18e0 <cpu_gemm_i8i8i32+0x30>
    1917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    191e:	00 00 
    1920:	4d 89 c3             	mov    %r8,%r11
    1923:	31 ed                	xor    %ebp,%ebp
    1925:	49 c1 eb 09          	shr    $0x9,%r11
    1929:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1930:	31 d2                	xor    %edx,%edx
    1932:	4d 85 c9             	test   %r9,%r9
    1935:	74 1d                	je     1954 <cpu_gemm_i8i8i32+0xa4>
    1937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    193e:	00 00 
    1940:	48 0f be 0c 17       	movsbq (%rdi,%rdx,1),%rcx
    1945:	48 83 c2 40          	add    $0x40,%rdx
    1949:	41 0f af cb          	imul   %r11d,%ecx
    194d:	01 c8                	add    %ecx,%eax
    194f:	4c 39 ca             	cmp    %r9,%rdx
    1952:	72 ec                	jb     1940 <cpu_gemm_i8i8i32+0x90>
    1954:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    1958:	4c 01 cf             	add    %r9,%rdi
    195b:	48 39 eb             	cmp    %rbp,%rbx
    195e:	74 10                	je     1970 <cpu_gemm_i8i8i32+0xc0>
    1960:	48 89 d5             	mov    %rdx,%rbp
    1963:	eb cb                	jmp    1930 <cpu_gemm_i8i8i32+0x80>
    1965:	31 c0                	xor    %eax,%eax
    1967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    196e:	00 00 
    1970:	4d 85 c0             	test   %r8,%r8
    1973:	74 39                	je     19ae <cpu_gemm_i8i8i32+0xfe>
    1975:	4c 89 d7             	mov    %r10,%rdi
    1978:	45 31 d2             	xor    %r10d,%r10d
    197b:	48 c1 ef 09          	shr    $0x9,%rdi
    197f:	90                   	nop
    1980:	31 d2                	xor    %edx,%edx
    1982:	4d 85 c9             	test   %r9,%r9
    1985:	74 1c                	je     19a3 <cpu_gemm_i8i8i32+0xf3>
    1987:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    198e:	00 00 
    1990:	48 0f be 0c 16       	movsbq (%rsi,%rdx,1),%rcx
    1995:	48 83 c2 40          	add    $0x40,%rdx
    1999:	0f af cf             	imul   %edi,%ecx
    199c:	01 c8                	add    %ecx,%eax
    199e:	4c 39 ca             	cmp    %r9,%rdx
    19a1:	72 ed                	jb     1990 <cpu_gemm_i8i8i32+0xe0>
    19a3:	49 ff c2             	inc    %r10
    19a6:	4c 01 ce             	add    %r9,%rsi
    19a9:	4d 39 d0             	cmp    %r10,%r8
    19ac:	75 d2                	jne    1980 <cpu_gemm_i8i8i32+0xd0>
    19ae:	5b                   	pop    %rbx
    19af:	5d                   	pop    %rbp
    19b0:	41 5c                	pop    %r12
    19b2:	41 5d                	pop    %r13
    19b4:	c3                   	ret
    19b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    19bc:	00 00 00 00 

00000000000019c0 <amx_gemm_i8i8i32>:
    19c0:	f3 0f 1e fa          	endbr64
    19c4:	55                   	push   %rbp
    19c5:	c4 e1 f9 6e d1       	vmovq  %rcx,%xmm2
    19ca:	c4 e1 f9 6e df       	vmovq  %rdi,%xmm3
    19cf:	31 c9                	xor    %ecx,%ecx
    19d1:	c4 e3 e1 22 c6 01    	vpinsrq $0x1,%rsi,%xmm3,%xmm0
    19d7:	c4 c3 e9 22 c8 01    	vpinsrq $0x1,%r8,%xmm2,%xmm1
    19dd:	48 8d 3d 3c 04 00 00 	lea    0x43c(%rip),%rdi        # 1e20 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0>
    19e4:	48 89 e5             	mov    %rsp,%rbp
    19e7:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    19eb:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    19f2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19f9:	00 00 
    19fb:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
    1a02:	00 
    1a03:	31 c0                	xor    %eax,%eax
    1a05:	48 89 e6             	mov    %rsp,%rsi
    1a08:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1a0d:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1a12:	ba 10 00 00 00       	mov    $0x10,%edx
    1a17:	c5 fa 7f 4c 24 18    	vmovdqu %xmm1,0x18(%rsp)
    1a1d:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
    1a22:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
    1a27:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    1a2c:	e8 af f7 ff ff       	call   11e0 <GOMP_parallel@plt>
    1a31:	c5 fd 6f 64 24 40    	vmovdqa 0x40(%rsp),%ymm4
    1a37:	c5 dd fe 4c 24 60    	vpaddd 0x60(%rsp),%ymm4,%ymm1
    1a3d:	c5 f9 6f c1          	vmovdqa %xmm1,%xmm0
    1a41:	c4 e3 7d 39 c9 01    	vextracti128 $0x1,%ymm1,%xmm1
    1a47:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    1a4b:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
    1a50:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    1a54:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
    1a59:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    1a5d:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
    1a64:	00 
    1a65:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1a6c:	00 00 
    1a6e:	75 09                	jne    1a79 <amx_gemm_i8i8i32+0xb9>
    1a70:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    1a74:	c5 f8 77             	vzeroupper
    1a77:	c9                   	leave
    1a78:	c3                   	ret
    1a79:	c5 f8 77             	vzeroupper
    1a7c:	e8 cf f6 ff ff       	call   1150 <__stack_chk_fail@plt>
    1a81:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1a88:	00 00 00 00 
    1a8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001a90 <gemm_load_tile_int8>:
    1a90:	f3 0f 1e fa          	endbr64
    1a94:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    1a9b:	00 
    1a9c:	48 85 f6             	test   %rsi,%rsi
    1a9f:	74 3d                	je     1ade <gemm_load_tile_int8+0x4e>
    1aa1:	48 85 d2             	test   %rdx,%rdx
    1aa4:	74 38                	je     1ade <gemm_load_tile_int8+0x4e>
    1aa6:	45 31 d2             	xor    %r10d,%r10d
    1aa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ab0:	31 c0                	xor    %eax,%eax
    1ab2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1ab8:	44 8b 4c 24 fc       	mov    -0x4(%rsp),%r9d
    1abd:	44 0f be 04 07       	movsbl (%rdi,%rax,1),%r8d
    1ac2:	48 83 c0 40          	add    $0x40,%rax
    1ac6:	45 01 c8             	add    %r9d,%r8d
    1ac9:	44 89 44 24 fc       	mov    %r8d,-0x4(%rsp)
    1ace:	48 39 d0             	cmp    %rdx,%rax
    1ad1:	72 e5                	jb     1ab8 <gemm_load_tile_int8+0x28>
    1ad3:	49 ff c2             	inc    %r10
    1ad6:	48 01 cf             	add    %rcx,%rdi
    1ad9:	4c 39 d6             	cmp    %r10,%rsi
    1adc:	75 d2                	jne    1ab0 <gemm_load_tile_int8+0x20>
    1ade:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
    1ae2:	c3                   	ret
    1ae3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1aea:	00 00 00 00 
    1aee:	66 90                	xchg   %ax,%ax

0000000000001af0 <gemm_load_tile_int32>:
    1af0:	f3 0f 1e fa          	endbr64
    1af4:	53                   	push   %rbx
    1af5:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    1afc:	00 
    1afd:	48 85 f6             	test   %rsi,%rsi
    1b00:	74 5a                	je     1b5c <gemm_load_tile_int32+0x6c>
    1b02:	48 85 d2             	test   %rdx,%rdx
    1b05:	74 55                	je     1b5c <gemm_load_tile_int32+0x6c>
    1b07:	49 89 fa             	mov    %rdi,%r10
    1b0a:	4c 8d 4a ff          	lea    -0x1(%rdx),%r9
    1b0e:	49 89 f3             	mov    %rsi,%r11
    1b11:	31 ff                	xor    %edi,%edi
    1b13:	49 83 e1 c0          	and    $0xffffffffffffffc0,%r9
    1b17:	45 31 c0             	xor    %r8d,%r8d
    1b1a:	49 8d 9a 00 01 00 00 	lea    0x100(%r10),%rbx
    1b21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b28:	4a 8d 14 0f          	lea    (%rdi,%r9,1),%rdx
    1b2c:	49 8d 04 ba          	lea    (%r10,%rdi,4),%rax
    1b30:	48 8d 34 93          	lea    (%rbx,%rdx,4),%rsi
    1b34:	0f 1f 40 00          	nopl   0x0(%rax)
    1b38:	8b 54 24 fc          	mov    -0x4(%rsp),%edx
    1b3c:	48 05 00 01 00 00    	add    $0x100,%rax
    1b42:	03 90 00 ff ff ff    	add    -0x100(%rax),%edx
    1b48:	89 54 24 fc          	mov    %edx,-0x4(%rsp)
    1b4c:	48 39 c6             	cmp    %rax,%rsi
    1b4f:	75 e7                	jne    1b38 <gemm_load_tile_int32+0x48>
    1b51:	49 ff c0             	inc    %r8
    1b54:	48 01 cf             	add    %rcx,%rdi
    1b57:	4d 39 c3             	cmp    %r8,%r11
    1b5a:	75 cc                	jne    1b28 <gemm_load_tile_int32+0x38>
    1b5c:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
    1b60:	5b                   	pop    %rbx
    1b61:	c3                   	ret
    1b62:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1b69:	00 00 00 00 
    1b6d:	0f 1f 00             	nopl   (%rax)

0000000000001b70 <gemm_store_tile_int32>:
    1b70:	f3 0f 1e fa          	endbr64
    1b74:	48 85 f6             	test   %rsi,%rsi
    1b77:	74 7a                	je     1bf3 <gemm_store_tile_int32+0x83>
    1b79:	48 85 d2             	test   %rdx,%rdx
    1b7c:	74 75                	je     1bf3 <gemm_store_tile_int32+0x83>
    1b7e:	55                   	push   %rbp
    1b7f:	4c 8d 4a ff          	lea    -0x1(%rdx),%r9
    1b83:	49 89 f3             	mov    %rsi,%r11
    1b86:	49 89 fa             	mov    %rdi,%r10
    1b89:	49 83 e1 c0          	and    $0xffffffffffffffc0,%r9
    1b8d:	31 f6                	xor    %esi,%esi
    1b8f:	48 8d af 00 01 00 00 	lea    0x100(%rdi),%rbp
    1b96:	53                   	push   %rbx
    1b97:	48 89 cb             	mov    %rcx,%rbx
    1b9a:	31 c9                	xor    %ecx,%ecx
    1b9c:	0f 1f 40 00          	nopl   0x0(%rax)
    1ba0:	49 8d 14 09          	lea    (%r9,%rcx,1),%rdx
    1ba4:	49 8d 04 8a          	lea    (%r10,%rcx,4),%rax
    1ba8:	48 8d 54 95 00       	lea    0x0(%rbp,%rdx,4),%rdx
    1bad:	48 89 d7             	mov    %rdx,%rdi
    1bb0:	48 29 c7             	sub    %rax,%rdi
    1bb3:	f7 c7 00 01 00 00    	test   $0x100,%edi
    1bb9:	74 15                	je     1bd0 <gemm_store_tile_int32+0x60>
    1bbb:	44 89 00             	mov    %r8d,(%rax)
    1bbe:	48 05 00 01 00 00    	add    $0x100,%rax
    1bc4:	48 39 d0             	cmp    %rdx,%rax
    1bc7:	74 1c                	je     1be5 <gemm_store_tile_int32+0x75>
    1bc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1bd0:	44 89 00             	mov    %r8d,(%rax)
    1bd3:	48 05 00 02 00 00    	add    $0x200,%rax
    1bd9:	44 89 80 00 ff ff ff 	mov    %r8d,-0x100(%rax)
    1be0:	48 39 d0             	cmp    %rdx,%rax
    1be3:	75 eb                	jne    1bd0 <gemm_store_tile_int32+0x60>
    1be5:	48 ff c6             	inc    %rsi
    1be8:	48 01 d9             	add    %rbx,%rcx
    1beb:	49 39 f3             	cmp    %rsi,%r11
    1bee:	75 b0                	jne    1ba0 <gemm_store_tile_int32+0x30>
    1bf0:	5b                   	pop    %rbx
    1bf1:	5d                   	pop    %rbp
    1bf2:	c3                   	ret
    1bf3:	c3                   	ret
    1bf4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1bfb:	00 00 00 00 
    1bff:	90                   	nop

0000000000001c00 <amx_gemm_i8i8i32_tile>:
    1c00:	f3 0f 1e fa          	endbr64
    1c04:	41 56                	push   %r14
    1c06:	49 89 fa             	mov    %rdi,%r10
    1c09:	49 89 f3             	mov    %rsi,%r11
    1c0c:	4c 89 c7             	mov    %r8,%rdi
    1c0f:	48 89 d6             	mov    %rdx,%rsi
    1c12:	4d 89 c8             	mov    %r9,%r8
    1c15:	41 55                	push   %r13
    1c17:	41 54                	push   %r12
    1c19:	55                   	push   %rbp
    1c1a:	53                   	push   %rbx
    1c1b:	48 89 cb             	mov    %rcx,%rbx
    1c1e:	b9 00 02 00 00       	mov    $0x200,%ecx
    1c23:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    1c28:	c7 44 24 f0 00 00 00 	movl   $0x0,-0x10(%rsp)
    1c2f:	00 
    1c30:	c7 44 24 f4 00 00 00 	movl   $0x0,-0xc(%rsp)
    1c37:	00 
    1c38:	48 8d 2c 85 00 00 00 	lea    0x0(,%rax,4),%rbp
    1c3f:	00 
    1c40:	48 89 d0             	mov    %rdx,%rax
    1c43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1c48:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c4c:	03 10                	add    (%rax),%edx
    1c4e:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c52:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c56:	03 90 00 01 00 00    	add    0x100(%rax),%edx
    1c5c:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c60:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c64:	03 90 00 02 00 00    	add    0x200(%rax),%edx
    1c6a:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c6e:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c72:	03 90 00 03 00 00    	add    0x300(%rax),%edx
    1c78:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c7c:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c80:	03 90 00 04 00 00    	add    0x400(%rax),%edx
    1c86:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c8a:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c8e:	03 90 00 05 00 00    	add    0x500(%rax),%edx
    1c94:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c98:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c9c:	03 90 00 06 00 00    	add    0x600(%rax),%edx
    1ca2:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1ca6:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1caa:	03 90 00 07 00 00    	add    0x700(%rax),%edx
    1cb0:	48 01 e8             	add    %rbp,%rax
    1cb3:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1cb7:	48 ff c9             	dec    %rcx
    1cba:	75 8c                	jne    1c48 <amx_gemm_i8i8i32_tile+0x48>
    1cbc:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1cc0:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1cc4:	45 31 c9             	xor    %r9d,%r9d
    1cc7:	01 d0                	add    %edx,%eax
    1cc9:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
    1ccd:	48 85 db             	test   %rbx,%rbx
    1cd0:	0f 84 d3 00 00 00    	je     1da9 <amx_gemm_i8i8i32_tile+0x1a9>
    1cd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1cdd:	00 00 00 
    1ce0:	48 89 d9             	mov    %rbx,%rcx
    1ce3:	b8 00 04 00 00       	mov    $0x400,%eax
    1ce8:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    1cef:	00 
    1cf0:	4c 29 c9             	sub    %r9,%rcx
    1cf3:	48 39 c1             	cmp    %rax,%rcx
    1cf6:	48 0f 47 c8          	cmova  %rax,%rcx
    1cfa:	4c 39 cb             	cmp    %r9,%rbx
    1cfd:	0f 84 f6 00 00 00    	je     1df9 <amx_gemm_i8i8i32_tile+0x1f9>
    1d03:	4f 8d 2c 0a          	lea    (%r10,%r9,1),%r13
    1d07:	41 be 00 02 00 00    	mov    $0x200,%r14d
    1d0d:	0f 1f 00             	nopl   (%rax)
    1d10:	31 c0                	xor    %eax,%eax
    1d12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1d18:	44 8b 64 24 fc       	mov    -0x4(%rsp),%r12d
    1d1d:	41 0f be 54 05 00    	movsbl 0x0(%r13,%rax,1),%edx
    1d23:	48 83 c0 40          	add    $0x40,%rax
    1d27:	44 01 e2             	add    %r12d,%edx
    1d2a:	89 54 24 fc          	mov    %edx,-0x4(%rsp)
    1d2e:	48 39 c8             	cmp    %rcx,%rax
    1d31:	72 e5                	jb     1d18 <amx_gemm_i8i8i32_tile+0x118>
    1d33:	49 01 fd             	add    %rdi,%r13
    1d36:	49 ff ce             	dec    %r14
    1d39:	75 d5                	jne    1d10 <amx_gemm_i8i8i32_tile+0x110>
    1d3b:	8b 54 24 fc          	mov    -0x4(%rsp),%edx
    1d3f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1d43:	4f 8d 2c 0b          	lea    (%r11,%r9,1),%r13
    1d47:	41 be 00 02 00 00    	mov    $0x200,%r14d
    1d4d:	01 d0                	add    %edx,%eax
    1d4f:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
    1d53:	c7 44 24 f8 00 00 00 	movl   $0x0,-0x8(%rsp)
    1d5a:	00 
    1d5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1d60:	31 c0                	xor    %eax,%eax
    1d62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1d68:	44 8b 64 24 f8       	mov    -0x8(%rsp),%r12d
    1d6d:	41 0f be 54 05 00    	movsbl 0x0(%r13,%rax,1),%edx
    1d73:	48 83 c0 40          	add    $0x40,%rax
    1d77:	44 01 e2             	add    %r12d,%edx
    1d7a:	89 54 24 f8          	mov    %edx,-0x8(%rsp)
    1d7e:	48 39 c8             	cmp    %rcx,%rax
    1d81:	72 e5                	jb     1d68 <amx_gemm_i8i8i32_tile+0x168>
    1d83:	4d 01 c5             	add    %r8,%r13
    1d86:	49 ff ce             	dec    %r14
    1d89:	75 d5                	jne    1d60 <amx_gemm_i8i8i32_tile+0x160>
    1d8b:	8b 54 24 f8          	mov    -0x8(%rsp),%edx
    1d8f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1d93:	49 81 c1 00 04 00 00 	add    $0x400,%r9
    1d9a:	01 d0                	add    %edx,%eax
    1d9c:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
    1da0:	49 39 d9             	cmp    %rbx,%r9
    1da3:	0f 82 37 ff ff ff    	jb     1ce0 <amx_gemm_i8i8i32_tile+0xe0>
    1da9:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1dad:	ba 00 02 00 00       	mov    $0x200,%edx
    1db2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1db8:	89 06                	mov    %eax,(%rsi)
    1dba:	89 86 00 01 00 00    	mov    %eax,0x100(%rsi)
    1dc0:	89 86 00 02 00 00    	mov    %eax,0x200(%rsi)
    1dc6:	89 86 00 03 00 00    	mov    %eax,0x300(%rsi)
    1dcc:	89 86 00 04 00 00    	mov    %eax,0x400(%rsi)
    1dd2:	89 86 00 05 00 00    	mov    %eax,0x500(%rsi)
    1dd8:	89 86 00 06 00 00    	mov    %eax,0x600(%rsi)
    1dde:	89 86 00 07 00 00    	mov    %eax,0x700(%rsi)
    1de4:	48 01 ee             	add    %rbp,%rsi
    1de7:	48 ff ca             	dec    %rdx
    1dea:	75 cc                	jne    1db8 <amx_gemm_i8i8i32_tile+0x1b8>
    1dec:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1df0:	5b                   	pop    %rbx
    1df1:	5d                   	pop    %rbp
    1df2:	41 5c                	pop    %r12
    1df4:	41 5d                	pop    %r13
    1df6:	41 5e                	pop    %r14
    1df8:	c3                   	ret
    1df9:	8b 54 24 fc          	mov    -0x4(%rsp),%edx
    1dfd:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1e01:	01 d0                	add    %edx,%eax
    1e03:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
    1e07:	c7 44 24 f8 00 00 00 	movl   $0x0,-0x8(%rsp)
    1e0e:	00 
    1e0f:	e9 77 ff ff ff       	jmp    1d8b <amx_gemm_i8i8i32_tile+0x18b>
    1e14:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1e1b:	00 00 00 00 
    1e1f:	90                   	nop

0000000000001e20 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0>:
    1e20:	f3 0f 1e fa          	endbr64
    1e24:	55                   	push   %rbp
    1e25:	48 89 e5             	mov    %rsp,%rbp
    1e28:	41 57                	push   %r15
    1e2a:	41 56                	push   %r14
    1e2c:	41 55                	push   %r13
    1e2e:	41 54                	push   %r12
    1e30:	41 52                	push   %r10
    1e32:	53                   	push   %rbx
    1e33:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
    1e3a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e41:	00 00 
    1e43:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1e47:	48 8b 47 28          	mov    0x28(%rdi),%rax
    1e4b:	4c 8b 67 20          	mov    0x20(%rdi),%r12
    1e4f:	4c 8b 77 10          	mov    0x10(%rdi),%r14
    1e53:	48 89 bd 38 ff ff ff 	mov    %rdi,-0xc8(%rbp)
    1e5a:	48 8b 5f 08          	mov    0x8(%rdi),%rbx
    1e5e:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
    1e65:	48 8b 47 18          	mov    0x18(%rdi),%rax
    1e69:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    1e70:	48 8b 07             	mov    (%rdi),%rax
    1e73:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
    1e7a:	e8 c1 f2 ff ff       	call   1140 <omp_get_thread_num@plt>
    1e7f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
    1e83:	48 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%rcx
    1e8a:	48 8d 95 40 ff ff ff 	lea    -0xc0(%rbp),%rdx
    1e91:	41 89 c5             	mov    %eax,%r13d
    1e94:	48 98                	cltq
    1e96:	62 f1 7f 48 7f 45 fd 	vmovdqu8 %zmm0,-0xc0(%rbp)
    1e9d:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    1ea3:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
    1eaa:	62 f1 7f 48 7f 45 fe 	vmovdqu8 %zmm0,-0x80(%rbp)
    1eb1:	77 15                	ja     1ec8 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0+0xa8>
    1eb3:	48 c1 e8 06          	shr    $0x6,%rax
    1eb7:	48 89 c6             	mov    %rax,%rsi
    1eba:	b8 01 00 00 00       	mov    $0x1,%eax
    1ebf:	c4 e2 91 f7 c0       	shlx   %r13,%rax,%rax
    1ec4:	48 09 04 f2          	or     %rax,(%rdx,%rsi,8)
    1ec8:	48 89 8d 38 ff ff ff 	mov    %rcx,-0xc8(%rbp)
    1ecf:	31 ff                	xor    %edi,%edi
    1ed1:	be 80 00 00 00       	mov    $0x80,%esi
    1ed6:	c5 f8 77             	vzeroupper
    1ed9:	e8 92 f2 ff ff       	call   1170 <sched_setaffinity@plt>
    1ede:	48 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%rcx
    1ee5:	85 c0                	test   %eax,%eax
    1ee7:	0f 85 24 f3 ff ff    	jne    1211 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0.cold>
    1eed:	44 89 e8             	mov    %r13d,%eax
    1ef0:	45 31 ff             	xor    %r15d,%r15d
    1ef3:	45 8d 45 03          	lea    0x3(%r13),%r8d
    1ef7:	c1 f8 1f             	sar    $0x1f,%eax
    1efa:	c1 e8 1e             	shr    $0x1e,%eax
    1efd:	45 8d 5c 05 00       	lea    0x0(%r13,%rax,1),%r11d
    1f02:	41 83 e3 03          	and    $0x3,%r11d
    1f06:	41 29 c3             	sub    %eax,%r11d
    1f09:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
    1f10:	41 c1 e3 09          	shl    $0x9,%r11d
    1f14:	45 85 ed             	test   %r13d,%r13d
    1f17:	45 0f 49 c5          	cmovns %r13d,%r8d
    1f1b:	41 c1 f8 02          	sar    $0x2,%r8d
    1f1f:	41 c1 e0 09          	shl    $0x9,%r8d
    1f23:	4d 63 c0             	movslq %r8d,%r8
    1f26:	49 39 c0             	cmp    %rax,%r8
    1f29:	0f 83 28 01 00 00    	jae    2057 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0+0x237>
    1f2f:	4d 63 db             	movslq %r11d,%r11
    1f32:	4d 39 e3             	cmp    %r12,%r11
    1f35:	0f 83 1c 01 00 00    	jae    2057 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0+0x237>
    1f3b:	4c 89 e2             	mov    %r12,%rdx
    1f3e:	4c 89 e0             	mov    %r12,%rax
    1f41:	4c 89 9d f8 fe ff ff 	mov    %r11,-0x108(%rbp)
    1f48:	49 0f af d0          	imul   %r8,%rdx
    1f4c:	48 c1 e0 0d          	shl    $0xd,%rax
    1f50:	48 89 8d e8 fe ff ff 	mov    %rcx,-0x118(%rbp)
    1f57:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    1f5e:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    1f65:	4c 01 da             	add    %r11,%rdx
    1f68:	48 89 c7             	mov    %rax,%rdi
    1f6b:	4d 8d 0c 96          	lea    (%r14,%rdx,4),%r9
    1f6f:	48 89 c2             	mov    %rax,%rdx
    1f72:	48 c1 e7 0b          	shl    $0xb,%rdi
    1f76:	49 0f af d0          	imul   %r8,%rdx
    1f7a:	48 89 bd 30 ff ff ff 	mov    %rdi,-0xd0(%rbp)
    1f81:	48 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%rdi
    1f88:	49 0f af c3          	imul   %r11,%rax
    1f8c:	48 01 d7             	add    %rdx,%rdi
    1f8f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1f93:	48 89 bd 38 ff ff ff 	mov    %rdi,-0xc8(%rbp)
    1f9a:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
    1fa1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1fa8:	4c 8b ad 00 ff ff ff 	mov    -0x100(%rbp),%r13
    1faf:	4c 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%r14
    1fb6:	4c 89 85 20 ff ff ff 	mov    %r8,-0xe0(%rbp)
    1fbd:	4c 89 8d 18 ff ff ff 	mov    %r9,-0xe8(%rbp)
    1fc4:	4c 89 e8             	mov    %r13,%rax
    1fc7:	4d 89 cd             	mov    %r9,%r13
    1fca:	48 89 c3             	mov    %rax,%rbx
    1fcd:	0f 1f 00             	nopl   (%rax)
    1fd0:	48 83 ec 08          	sub    $0x8,%rsp
    1fd4:	4c 89 ea             	mov    %r13,%rdx
    1fd7:	48 89 de             	mov    %rbx,%rsi
    1fda:	49 81 c6 00 08 00 00 	add    $0x800,%r14
    1fe1:	41 54                	push   %r12
    1fe3:	49 81 c5 00 20 00 00 	add    $0x2000,%r13
    1fea:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
    1ff1:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
    1ff8:	49 89 c9             	mov    %rcx,%r9
    1ffb:	49 89 c8             	mov    %rcx,%r8
    1ffe:	e8 fd fb ff ff       	call   1c00 <amx_gemm_i8i8i32_tile>
    2003:	5a                   	pop    %rdx
    2004:	41 01 c7             	add    %eax,%r15d
    2007:	48 8b 85 30 ff ff ff 	mov    -0xd0(%rbp),%rax
    200e:	59                   	pop    %rcx
    200f:	48 01 c3             	add    %rax,%rbx
    2012:	4d 39 e6             	cmp    %r12,%r14
    2015:	72 b9                	jb     1fd0 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0+0x1b0>
    2017:	48 89 c6             	mov    %rax,%rsi
    201a:	4c 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%r9
    2021:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    2028:	4c 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%r8
    202f:	48 01 b5 38 ff ff ff 	add    %rsi,-0xc8(%rbp)
    2036:	49 01 c1             	add    %rax,%r9
    2039:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
    2040:	49 81 c0 00 08 00 00 	add    $0x800,%r8
    2047:	49 39 c0             	cmp    %rax,%r8
    204a:	0f 82 58 ff ff ff    	jb     1fa8 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0+0x188>
    2050:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
    2057:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    205b:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
    2062:	44 89 3c 82          	mov    %r15d,(%rdx,%rax,4)
    2066:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    206a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2071:	00 00 
    2073:	75 11                	jne    2086 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0+0x266>
    2075:	48 8d 65 d0          	lea    -0x30(%rbp),%rsp
    2079:	5b                   	pop    %rbx
    207a:	41 5a                	pop    %r10
    207c:	41 5c                	pop    %r12
    207e:	41 5d                	pop    %r13
    2080:	41 5e                	pop    %r14
    2082:	41 5f                	pop    %r15
    2084:	5d                   	pop    %rbp
    2085:	c3                   	ret
    2086:	e8 c5 f0 ff ff       	call   1150 <__stack_chk_fail@plt>
    208b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002090 <amx_gemm_i8i8i32_omp_tiling>:
    2090:	f3 0f 1e fa          	endbr64
    2094:	55                   	push   %rbp
    2095:	c4 e1 f9 6e d1       	vmovq  %rcx,%xmm2
    209a:	c4 e1 f9 6e df       	vmovq  %rdi,%xmm3
    209f:	31 c9                	xor    %ecx,%ecx
    20a1:	c4 e3 e1 22 c6 01    	vpinsrq $0x1,%rsi,%xmm3,%xmm0
    20a7:	c4 c3 e9 22 c8 01    	vpinsrq $0x1,%r8,%xmm2,%xmm1
    20ad:	48 8d 3d 6c fd ff ff 	lea    -0x294(%rip),%rdi        # 1e20 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0>
    20b4:	48 89 e5             	mov    %rsp,%rbp
    20b7:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    20bb:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    20c2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20c9:	00 00 
    20cb:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
    20d2:	00 
    20d3:	31 c0                	xor    %eax,%eax
    20d5:	48 89 e6             	mov    %rsp,%rsi
    20d8:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    20dd:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    20e2:	ba 10 00 00 00       	mov    $0x10,%edx
    20e7:	c5 fa 7f 4c 24 18    	vmovdqu %xmm1,0x18(%rsp)
    20ed:	c5 f9 7f 04 24       	vmovdqa %xmm0,(%rsp)
    20f2:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
    20f7:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    20fc:	e8 df f0 ff ff       	call   11e0 <GOMP_parallel@plt>
    2101:	c5 fd 6f 64 24 40    	vmovdqa 0x40(%rsp),%ymm4
    2107:	c5 dd fe 4c 24 60    	vpaddd 0x60(%rsp),%ymm4,%ymm1
    210d:	c5 f9 6f c1          	vmovdqa %xmm1,%xmm0
    2111:	c4 e3 7d 39 c9 01    	vextracti128 $0x1,%ymm1,%xmm1
    2117:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    211b:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
    2120:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    2124:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
    2129:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    212d:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
    2134:	00 
    2135:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    213c:	00 00 
    213e:	75 09                	jne    2149 <amx_gemm_i8i8i32_omp_tiling+0xb9>
    2140:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    2144:	c5 f8 77             	vzeroupper
    2147:	c9                   	leave
    2148:	c3                   	ret
    2149:	c5 f8 77             	vzeroupper
    214c:	e8 ff ef ff ff       	call   1150 <__stack_chk_fail@plt>
    2151:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2158:	00 00 00 00 
    215c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002160 <test_correctness>:
    2160:	f3 0f 1e fa          	endbr64
    2164:	41 55                	push   %r13
    2166:	49 89 d0             	mov    %rdx,%r8
    2169:	c4 e1 f9 6e df       	vmovq  %rdi,%xmm3
    216e:	4c 0f af c7          	imul   %rdi,%r8
    2172:	c4 e3 e1 22 d6 01    	vpinsrq $0x1,%rsi,%xmm3,%xmm2
    2178:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
    217d:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    2181:	41 ff 75 f8          	push   -0x8(%r13)
    2185:	55                   	push   %rbp
    2186:	48 89 e5             	mov    %rsp,%rbp
    2189:	41 57                	push   %r15
    218b:	49 89 d7             	mov    %rdx,%r15
    218e:	41 56                	push   %r14
    2190:	49 89 f6             	mov    %rsi,%r14
    2193:	4d 0f af fe          	imul   %r14,%r15
    2197:	41 55                	push   %r13
    2199:	41 54                	push   %r12
    219b:	49 89 fc             	mov    %rdi,%r12
    219e:	4d 0f af e6          	imul   %r14,%r12
    21a2:	53                   	push   %rbx
    21a3:	48 89 cb             	mov    %rcx,%rbx
    21a6:	48 81 ec 28 01 00 00 	sub    $0x128,%rsp
    21ad:	48 89 b5 18 ff ff ff 	mov    %rsi,-0xe8(%rbp)
    21b4:	48 89 95 10 ff ff ff 	mov    %rdx,-0xf0(%rbp)
    21bb:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
    21c2:	49 8d 3c 08          	lea    (%r8,%rcx,1),%rdi
    21c6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    21cd:	00 00 
    21cf:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    21d3:	31 c0                	xor    %eax,%eax
    21d5:	4c 89 85 c8 fe ff ff 	mov    %r8,-0x138(%rbp)
    21dc:	c5 f9 7f 95 d0 fe ff 	vmovdqa %xmm2,-0x130(%rbp)
    21e3:	ff 
    21e4:	e8 b7 ef ff ff       	call   11a0 <malloc@plt>
    21e9:	49 8d 3c 1f          	lea    (%r15,%rbx,1),%rdi
    21ed:	4c 89 bd 08 ff ff ff 	mov    %r15,-0xf8(%rbp)
    21f4:	49 89 c5             	mov    %rax,%r13
    21f7:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
    21fe:	e8 9d ef ff ff       	call   11a0 <malloc@plt>
    2203:	4a 8d 3c a3          	lea    (%rbx,%r12,4),%rdi
    2207:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
    220e:	e8 8d ef ff ff       	call   11a0 <malloc@plt>
    2213:	48 89 d9             	mov    %rbx,%rcx
    2216:	49 8d 74 1d 00       	lea    0x0(%r13,%rbx,1),%rsi
    221b:	4c 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%r8
    2222:	48 f7 d9             	neg    %rcx
    2225:	48 89 c7             	mov    %rax,%rdi
    2228:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
    222f:	48 21 ce             	and    %rcx,%rsi
    2232:	48 89 c8             	mov    %rcx,%rax
    2235:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
    223c:	48 8d 14 1f          	lea    (%rdi,%rbx,1),%rdx
    2240:	48 21 c2             	and    %rax,%rdx
    2243:	48 89 b5 f0 fe ff ff 	mov    %rsi,-0x110(%rbp)
    224a:	48 01 d9             	add    %rbx,%rcx
    224d:	48 89 95 e0 fe ff ff 	mov    %rdx,-0x120(%rbp)
    2254:	49 89 d5             	mov    %rdx,%r13
    2257:	48 21 c1             	and    %rax,%rcx
    225a:	48 89 8d e8 fe ff ff 	mov    %rcx,-0x118(%rbp)
    2261:	49 89 ce             	mov    %rcx,%r14
    2264:	4d 85 c0             	test   %r8,%r8
    2267:	74 23                	je     228c <test_correctness+0x12c>
    2269:	49 89 f7             	mov    %rsi,%r15
    226c:	49 8d 1c 30          	lea    (%r8,%rsi,1),%rbx
    2270:	e8 7b ef ff ff       	call   11f0 <rand@plt>
    2275:	49 ff c7             	inc    %r15
    2278:	99                   	cltd
    2279:	c1 ea 18             	shr    $0x18,%edx
    227c:	01 d0                	add    %edx,%eax
    227e:	0f b6 c0             	movzbl %al,%eax
    2281:	29 d0                	sub    %edx,%eax
    2283:	41 88 47 ff          	mov    %al,-0x1(%r15)
    2287:	49 39 df             	cmp    %rbx,%r15
    228a:	75 e4                	jne    2270 <test_correctness+0x110>
    228c:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    2293:	48 85 c0             	test   %rax,%rax
    2296:	74 24                	je     22bc <test_correctness+0x15c>
    2298:	48 89 c3             	mov    %rax,%rbx
    229b:	4c 01 f3             	add    %r14,%rbx
    229e:	66 90                	xchg   %ax,%ax
    22a0:	e8 4b ef ff ff       	call   11f0 <rand@plt>
    22a5:	49 ff c6             	inc    %r14
    22a8:	99                   	cltd
    22a9:	c1 ea 18             	shr    $0x18,%edx
    22ac:	01 d0                	add    %edx,%eax
    22ae:	0f b6 c0             	movzbl %al,%eax
    22b1:	29 d0                	sub    %edx,%eax
    22b3:	41 88 46 ff          	mov    %al,-0x1(%r14)
    22b7:	4c 39 f3             	cmp    %r14,%rbx
    22ba:	75 e4                	jne    22a0 <test_correctness+0x140>
    22bc:	4d 85 e4             	test   %r12,%r12
    22bf:	74 1c                	je     22dd <test_correctness+0x17d>
    22c1:	31 db                	xor    %ebx,%ebx
    22c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    22c8:	e8 23 ef ff ff       	call   11f0 <rand@plt>
    22cd:	48 ff c3             	inc    %rbx
    22d0:	49 83 c5 04          	add    $0x4,%r13
    22d4:	41 89 45 fc          	mov    %eax,-0x4(%r13)
    22d8:	49 39 dc             	cmp    %rbx,%r12
    22db:	75 eb                	jne    22c8 <test_correctness+0x168>
    22dd:	4c 8b bd 10 ff ff ff 	mov    -0xf0(%rbp),%r15
    22e4:	4c 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%r14
    22eb:	4c 8b a5 e8 fe ff ff 	mov    -0x118(%rbp),%r12
    22f2:	4c 8b ad f0 fe ff ff 	mov    -0x110(%rbp),%r13
    22f9:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
    2300:	4c 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%r8
    2307:	4d 89 f9             	mov    %r15,%r9
    230a:	4c 89 f2             	mov    %r14,%rdx
    230d:	4c 89 e6             	mov    %r12,%rsi
    2310:	4c 89 ef             	mov    %r13,%rdi
    2313:	e8 98 f5 ff ff       	call   18b0 <cpu_gemm_i8i8i32>
    2318:	c5 f9 6f a5 d0 fe ff 	vmovdqa -0x130(%rbp),%xmm4
    231f:	ff 
    2320:	48 8d b5 30 ff ff ff 	lea    -0xd0(%rbp),%rsi
    2327:	31 c9                	xor    %ecx,%ecx
    2329:	89 c3                	mov    %eax,%ebx
    232b:	ba 10 00 00 00       	mov    $0x10,%edx
    2330:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    2337:	4c 89 bd 58 ff ff ff 	mov    %r15,-0xa8(%rbp)
    233e:	48 8d 3d db fa ff ff 	lea    -0x525(%rip),%rdi        # 1e20 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0>
    2345:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    234c:	4c 89 b5 40 ff ff ff 	mov    %r14,-0xc0(%rbp)
    2353:	4c 89 a5 38 ff ff ff 	mov    %r12,-0xc8(%rbp)
    235a:	4c 89 ad 30 ff ff ff 	mov    %r13,-0xd0(%rbp)
    2361:	c5 fa 7f a5 48 ff ff 	vmovdqu %xmm4,-0xb8(%rbp)
    2368:	ff 
    2369:	e8 72 ee ff ff       	call   11e0 <GOMP_parallel@plt>
    236e:	c5 fd 6f 6d 90       	vmovdqa -0x70(%rbp),%ymm5
    2373:	c5 d5 fe 8d 70 ff ff 	vpaddd -0x90(%rbp),%ymm5,%ymm1
    237a:	ff 
    237b:	c5 f9 6f c1          	vmovdqa %xmm1,%xmm0
    237f:	c4 e3 7d 39 c9 01    	vextracti128 $0x1,%ymm1,%xmm1
    2385:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    2389:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
    238e:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    2392:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
    2397:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    239b:	c5 f9 7e c0          	vmovd  %xmm0,%eax
    239f:	39 c3                	cmp    %eax,%ebx
    23a1:	0f 84 89 00 00 00    	je     2430 <test_correctness+0x2d0>
    23a7:	48 83 ec 08          	sub    $0x8,%rsp
    23ab:	31 c0                	xor    %eax,%eax
    23ad:	41 89 d9             	mov    %ebx,%r9d
    23b0:	4d 89 f8             	mov    %r15,%r8
    23b3:	48 8d 64 24 f8       	lea    -0x8(%rsp),%rsp
    23b8:	48 8d 35 71 0c 00 00 	lea    0xc71(%rip),%rsi        # 3030 <_IO_stdin_used+0x30>
    23bf:	bf 02 00 00 00       	mov    $0x2,%edi
    23c4:	c5 f9 7e 04 24       	vmovd  %xmm0,(%rsp)
    23c9:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
    23d0:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
    23d7:	c5 f8 77             	vzeroupper
    23da:	e8 e1 ed ff ff       	call   11c0 <__printf_chk@plt>
    23df:	58                   	pop    %rax
    23e0:	5a                   	pop    %rdx
    23e1:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
    23e8:	e8 33 ed ff ff       	call   1120 <free@plt>
    23ed:	48 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%rdi
    23f4:	e8 27 ed ff ff       	call   1120 <free@plt>
    23f9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    23fd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2404:	00 00 
    2406:	75 55                	jne    245d <test_correctness+0x2fd>
    2408:	48 8b bd f8 fe ff ff 	mov    -0x108(%rbp),%rdi
    240f:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    2413:	5b                   	pop    %rbx
    2414:	41 5c                	pop    %r12
    2416:	41 5d                	pop    %r13
    2418:	41 5e                	pop    %r14
    241a:	41 5f                	pop    %r15
    241c:	5d                   	pop    %rbp
    241d:	49 8d 65 f0          	lea    -0x10(%r13),%rsp
    2421:	41 5d                	pop    %r13
    2423:	e9 f8 ec ff ff       	jmp    1120 <free@plt>
    2428:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    242f:	00 
    2430:	4c 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%r8
    2437:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
    243e:	48 8d 35 33 0c 00 00 	lea    0xc33(%rip),%rsi        # 3078 <_IO_stdin_used+0x78>
    2445:	bf 02 00 00 00       	mov    $0x2,%edi
    244a:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
    2451:	31 c0                	xor    %eax,%eax
    2453:	c5 f8 77             	vzeroupper
    2456:	e8 65 ed ff ff       	call   11c0 <__printf_chk@plt>
    245b:	eb 84                	jmp    23e1 <test_correctness+0x281>
    245d:	e8 ee ec ff ff       	call   1150 <__stack_chk_fail@plt>
    2462:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2469:	00 00 00 00 
    246d:	0f 1f 00             	nopl   (%rax)

0000000000002470 <test_performance>:
    2470:	f3 0f 1e fa          	endbr64
    2474:	41 55                	push   %r13
    2476:	c4 e1 f9 6e e7       	vmovq  %rdi,%xmm4
    247b:	c4 e3 d9 22 de 01    	vpinsrq $0x1,%rsi,%xmm4,%xmm3
    2481:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
    2486:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    248a:	41 ff 75 f8          	push   -0x8(%r13)
    248e:	55                   	push   %rbp
    248f:	48 89 e5             	mov    %rsp,%rbp
    2492:	41 57                	push   %r15
    2494:	49 89 ff             	mov    %rdi,%r15
    2497:	41 56                	push   %r14
    2499:	49 89 f6             	mov    %rsi,%r14
    249c:	4d 0f af fe          	imul   %r14,%r15
    24a0:	41 55                	push   %r13
    24a2:	49 89 d5             	mov    %rdx,%r13
    24a5:	48 89 fa             	mov    %rdi,%rdx
    24a8:	49 0f af d5          	imul   %r13,%rdx
    24ac:	41 54                	push   %r12
    24ae:	4e 8d 24 bd 00 00 00 	lea    0x0(,%r15,4),%r12
    24b5:	00 
    24b6:	53                   	push   %rbx
    24b7:	48 89 cb             	mov    %rcx,%rbx
    24ba:	48 81 ec 28 01 00 00 	sub    $0x128,%rsp
    24c1:	44 89 85 1c ff ff ff 	mov    %r8d,-0xe4(%rbp)
    24c8:	48 89 b5 c0 fe ff ff 	mov    %rsi,-0x140(%rbp)
    24cf:	48 89 bd c8 fe ff ff 	mov    %rdi,-0x138(%rbp)
    24d6:	48 8d 3c 0a          	lea    (%rdx,%rcx,1),%rdi
    24da:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24e1:	00 00 
    24e3:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    24e7:	31 c0                	xor    %eax,%eax
    24e9:	c5 f9 7f 9d 00 ff ff 	vmovdqa %xmm3,-0x100(%rbp)
    24f0:	ff 
    24f1:	48 89 95 f0 fe ff ff 	mov    %rdx,-0x110(%rbp)
    24f8:	e8 a3 ec ff ff       	call   11a0 <malloc@plt>
    24fd:	4c 89 f1             	mov    %r14,%rcx
    2500:	49 0f af cd          	imul   %r13,%rcx
    2504:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    250b:	48 8d 3c 19          	lea    (%rcx,%rbx,1),%rdi
    250f:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
    2516:	e8 85 ec ff ff       	call   11a0 <malloc@plt>
    251b:	49 8d 3c 1c          	lea    (%r12,%rbx,1),%rdi
    251f:	4c 89 bd d8 fe ff ff 	mov    %r15,-0x128(%rbp)
    2526:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    252d:	e8 6e ec ff ff       	call   11a0 <malloc@plt>
    2532:	48 89 d9             	mov    %rbx,%rcx
    2535:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
    253c:	48 8b 95 f0 fe ff ff 	mov    -0x110(%rbp),%rdx
    2543:	48 f7 d9             	neg    %rcx
    2546:	48 89 c7             	mov    %rax,%rdi
    2549:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
    2550:	48 89 c8             	mov    %rcx,%rax
    2553:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
    255a:	4c 8d 3c 1e          	lea    (%rsi,%rbx,1),%r15
    255e:	be 01 00 00 00       	mov    $0x1,%esi
    2563:	49 21 c7             	and    %rax,%r15
    2566:	4c 8d 34 19          	lea    (%rcx,%rbx,1),%r14
    256a:	48 8d 0c 1f          	lea    (%rdi,%rbx,1),%rcx
    256e:	49 21 c6             	and    %rax,%r14
    2571:	48 21 c1             	and    %rax,%rcx
    2574:	4c 89 f7             	mov    %r14,%rdi
    2577:	48 89 cb             	mov    %rcx,%rbx
    257a:	48 89 8d f8 fe ff ff 	mov    %rcx,-0x108(%rbp)
    2581:	e8 da eb ff ff       	call   1160 <memset@plt>
    2586:	48 8b 95 10 ff ff ff 	mov    -0xf0(%rbp),%rdx
    258d:	be 01 00 00 00       	mov    $0x1,%esi
    2592:	4c 89 ff             	mov    %r15,%rdi
    2595:	e8 c6 eb ff ff       	call   1160 <memset@plt>
    259a:	48 89 df             	mov    %rbx,%rdi
    259d:	4c 89 e2             	mov    %r12,%rdx
    25a0:	be 01 00 00 00       	mov    $0x1,%esi
    25a5:	e8 b6 eb ff ff       	call   1160 <memset@plt>
    25aa:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    25b1:	c5 f9 6f 9d 00 ff ff 	vmovdqa -0x100(%rbp),%xmm3
    25b8:	ff 
    25b9:	31 c9                	xor    %ecx,%ecx
    25bb:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
    25c2:	ba 10 00 00 00       	mov    $0x10,%edx
    25c7:	48 8d 3d 52 f8 ff ff 	lea    -0x7ae(%rip),%rdi        # 1e20 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0>
    25ce:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    25d5:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
    25dc:	48 89 c6             	mov    %rax,%rsi
    25df:	c5 fa 7f 9d 48 ff ff 	vmovdqu %xmm3,-0xb8(%rbp)
    25e6:	ff 
    25e7:	48 89 9d 40 ff ff ff 	mov    %rbx,-0xc0(%rbp)
    25ee:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
    25f5:	4c 89 ad 58 ff ff ff 	mov    %r13,-0xa8(%rbp)
    25fc:	4c 89 bd 38 ff ff ff 	mov    %r15,-0xc8(%rbp)
    2603:	4c 89 b5 30 ff ff ff 	mov    %r14,-0xd0(%rbp)
    260a:	e8 d1 eb ff ff       	call   11e0 <GOMP_parallel@plt>
    260f:	c5 fd 6f 75 90       	vmovdqa -0x70(%rbp),%ymm6
    2614:	48 8d b5 20 ff ff ff 	lea    -0xe0(%rbp),%rsi
    261b:	bf 01 00 00 00       	mov    $0x1,%edi
    2620:	c5 cd fe 8d 70 ff ff 	vpaddd -0x90(%rbp),%ymm6,%ymm1
    2627:	ff 
    2628:	c5 f9 6f c1          	vmovdqa %xmm1,%xmm0
    262c:	c4 e3 7d 39 c9 01    	vextracti128 $0x1,%ymm1,%xmm1
    2632:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    2636:	c5 f1 73 d8 08       	vpsrldq $0x8,%xmm0,%xmm1
    263b:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    263f:	c5 f1 73 d8 04       	vpsrldq $0x4,%xmm0,%xmm1
    2644:	c5 f9 fe c1          	vpaddd %xmm1,%xmm0,%xmm0
    2648:	c5 f9 7e c3          	vmovd  %xmm0,%ebx
    264c:	c5 f8 77             	vzeroupper
    264f:	e8 dc ea ff ff       	call   1130 <clock_gettime@plt>
    2654:	8b 85 1c ff ff ff    	mov    -0xe4(%rbp),%eax
    265a:	85 c0                	test   %eax,%eax
    265c:	0f 84 af 00 00 00    	je     2711 <test_performance+0x2a1>
    2662:	45 31 e4             	xor    %r12d,%r12d
    2665:	0f 1f 00             	nopl   (%rax)
    2668:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    266f:	c5 f9 6f ad 00 ff ff 	vmovdqa -0x100(%rbp),%xmm5
    2676:	ff 
    2677:	31 c9                	xor    %ecx,%ecx
    2679:	ba 10 00 00 00       	mov    $0x10,%edx
    267e:	48 8b b5 10 ff ff ff 	mov    -0xf0(%rbp),%rsi
    2685:	48 8d 3d 94 f7 ff ff 	lea    -0x86c(%rip),%rdi        # 1e20 <amx_gemm_i8i8i32_omp_tiling._omp_fn.0>
    268c:	4c 89 ad 58 ff ff ff 	mov    %r13,-0xa8(%rbp)
    2693:	41 ff c4             	inc    %r12d
    2696:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    269d:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
    26a4:	4c 89 bd 38 ff ff ff 	mov    %r15,-0xc8(%rbp)
    26ab:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    26b2:	4c 89 b5 30 ff ff ff 	mov    %r14,-0xd0(%rbp)
    26b9:	c5 fa 7f ad 48 ff ff 	vmovdqu %xmm5,-0xb8(%rbp)
    26c0:	ff 
    26c1:	e8 1a eb ff ff       	call   11e0 <GOMP_parallel@plt>
    26c6:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
    26cc:	03 85 70 ff ff ff    	add    -0x90(%rbp),%eax
    26d2:	03 85 78 ff ff ff    	add    -0x88(%rbp),%eax
    26d8:	03 85 7c ff ff ff    	add    -0x84(%rbp),%eax
    26de:	03 45 80             	add    -0x80(%rbp),%eax
    26e1:	03 45 84             	add    -0x7c(%rbp),%eax
    26e4:	03 45 88             	add    -0x78(%rbp),%eax
    26e7:	03 45 8c             	add    -0x74(%rbp),%eax
    26ea:	03 45 90             	add    -0x70(%rbp),%eax
    26ed:	03 45 94             	add    -0x6c(%rbp),%eax
    26f0:	03 45 98             	add    -0x68(%rbp),%eax
    26f3:	03 45 9c             	add    -0x64(%rbp),%eax
    26f6:	03 45 a0             	add    -0x60(%rbp),%eax
    26f9:	03 45 a4             	add    -0x5c(%rbp),%eax
    26fc:	03 45 a8             	add    -0x58(%rbp),%eax
    26ff:	03 45 ac             	add    -0x54(%rbp),%eax
    2702:	01 c3                	add    %eax,%ebx
    2704:	44 39 a5 1c ff ff ff 	cmp    %r12d,-0xe4(%rbp)
    270b:	0f 85 57 ff ff ff    	jne    2668 <test_performance+0x1f8>
    2711:	48 8b b5 10 ff ff ff 	mov    -0xf0(%rbp),%rsi
    2718:	bf 01 00 00 00       	mov    $0x1,%edi
    271d:	e8 0e ea ff ff       	call   1130 <clock_gettime@plt>
    2722:	48 8b 95 30 ff ff ff 	mov    -0xd0(%rbp),%rdx
    2729:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    272d:	8b 85 1c ff ff ff    	mov    -0xe4(%rbp),%eax
    2733:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
    273a:	41 89 d9             	mov    %ebx,%r9d
    273d:	4d 89 e8             	mov    %r13,%r8
    2740:	48 8d 35 59 09 00 00 	lea    0x959(%rip),%rsi        # 30a0 <_IO_stdin_used+0xa0>
    2747:	48 2b 95 20 ff ff ff 	sub    -0xe0(%rbp),%rdx
    274e:	49 0f af c5          	imul   %r13,%rax
    2752:	bf 02 00 00 00       	mov    $0x2,%edi
    2757:	c4 e1 f3 2a c2       	vcvtsi2sd %rdx,%xmm1,%xmm0
    275c:	48 8b 95 38 ff ff ff 	mov    -0xc8(%rbp),%rdx
    2763:	48 2b 95 28 ff ff ff 	sub    -0xd8(%rbp),%rdx
    276a:	48 0f af c1          	imul   %rcx,%rax
    276e:	48 8b 8d c0 fe ff ff 	mov    -0x140(%rbp),%rcx
    2775:	c4 e1 f3 2a d2       	vcvtsi2sd %rdx,%xmm1,%xmm2
    277a:	48 8b 95 c8 fe ff ff 	mov    -0x138(%rbp),%rdx
    2781:	62 f1 f7 08 7b c8    	vcvtusi2sd %rax,%xmm1,%xmm1
    2787:	b8 02 00 00 00       	mov    $0x2,%eax
    278c:	c4 e2 e9 99 05 ab 09 	vfmadd132sd 0x9ab(%rip),%xmm2,%xmm0        # 3140 <_IO_stdin_used+0x140>
    2793:	00 00 
    2795:	c5 f3 59 0d b3 09 00 	vmulsd 0x9b3(%rip),%xmm1,%xmm1        # 3150 <_IO_stdin_used+0x150>
    279c:	00 
    279d:	c5 fb 59 05 a3 09 00 	vmulsd 0x9a3(%rip),%xmm0,%xmm0        # 3148 <_IO_stdin_used+0x148>
    27a4:	00 
    27a5:	c5 f3 5e c8          	vdivsd %xmm0,%xmm1,%xmm1
    27a9:	e8 12 ea ff ff       	call   11c0 <__printf_chk@plt>
    27ae:	48 8b bd e8 fe ff ff 	mov    -0x118(%rbp),%rdi
    27b5:	e8 66 e9 ff ff       	call   1120 <free@plt>
    27ba:	48 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%rdi
    27c1:	e8 5a e9 ff ff       	call   1120 <free@plt>
    27c6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    27ca:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    27d1:	00 00 
    27d3:	75 23                	jne    27f8 <test_performance+0x388>
    27d5:	48 8b bd d0 fe ff ff 	mov    -0x130(%rbp),%rdi
    27dc:	48 81 c4 28 01 00 00 	add    $0x128,%rsp
    27e3:	5b                   	pop    %rbx
    27e4:	41 5c                	pop    %r12
    27e6:	41 5d                	pop    %r13
    27e8:	41 5e                	pop    %r14
    27ea:	41 5f                	pop    %r15
    27ec:	5d                   	pop    %rbp
    27ed:	49 8d 65 f0          	lea    -0x10(%r13),%rsp
    27f1:	41 5d                	pop    %r13
    27f3:	e9 28 e9 ff ff       	jmp    1120 <free@plt>
    27f8:	e8 53 e9 ff ff       	call   1150 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000002800 <_fini>:
    2800:	f3 0f 1e fa          	endbr64
    2804:	48 83 ec 08          	sub    $0x8,%rsp
    2808:	48 83 c4 08          	add    $0x8,%rsp
    280c:	c3                   	ret
