
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
    1020:	ff 35 42 3f 00 00    	push   0x3f42(%rip)        # 4f68 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 44 3f 00 00    	jmp    *0x3f44(%rip)        # 4f70 <_GLOBAL_OFFSET_TABLE_+0x10>
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

Disassembly of section .plt.got:

00000000000010f0 <__cxa_finalize@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 fe 3e 00 00    	jmp    *0x3efe(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001100 <free@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 6e 3e 00 00    	jmp    *0x3e6e(%rip)        # 4f78 <free@GLIBC_2.2.5>
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <clock_gettime@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 66 3e 00 00    	jmp    *0x3e66(%rip)        # 4f80 <clock_gettime@GLIBC_2.17>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001120 <__stack_chk_fail@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 5e 3e 00 00    	jmp    *0x3e5e(%rip)        # 4f88 <__stack_chk_fail@GLIBC_2.4>
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001130 <memset@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 56 3e 00 00    	jmp    *0x3e56(%rip)        # 4f90 <memset@GLIBC_2.2.5>
    113a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001140 <sched_setaffinity@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 4e 3e 00 00    	jmp    *0x3e4e(%rip)        # 4f98 <sched_setaffinity@GLIBC_2.3.4>
    114a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001150 <srand@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 46 3e 00 00    	jmp    *0x3e46(%rip)        # 4fa0 <srand@GLIBC_2.2.5>
    115a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001160 <time@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	ff 25 3e 3e 00 00    	jmp    *0x3e3e(%rip)        # 4fa8 <time@GLIBC_2.2.5>
    116a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001170 <malloc@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	ff 25 36 3e 00 00    	jmp    *0x3e36(%rip)        # 4fb0 <malloc@GLIBC_2.2.5>
    117a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001180 <fflush@plt>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	ff 25 2e 3e 00 00    	jmp    *0x3e2e(%rip)        # 4fb8 <fflush@GLIBC_2.2.5>
    118a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001190 <__printf_chk@plt>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	ff 25 26 3e 00 00    	jmp    *0x3e26(%rip)        # 4fc0 <__printf_chk@GLIBC_2.3.4>
    119a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011a0 <perror@plt>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	ff 25 1e 3e 00 00    	jmp    *0x3e1e(%rip)        # 4fc8 <perror@GLIBC_2.2.5>
    11aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011b0 <rand@plt>:
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	ff 25 16 3e 00 00    	jmp    *0x3e16(%rip)        # 4fd0 <rand@GLIBC_2.2.5>
    11ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000011c0 <bind_thread_to_cpu.cold>:
    11c0:	48 8d 3d 3d 1e 00 00 	lea    0x1e3d(%rip),%rdi        # 3004 <_IO_stdin_used+0x4>
    11c7:	e8 d4 ff ff ff       	call   11a0 <perror@plt>
    11cc:	e9 3b 07 00 00       	jmp    190c <bind_thread_to_cpu+0x6c>
    11d1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11d8:	00 00 00 
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011e0 <main>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	41 57                	push   %r15
    11e6:	31 ff                	xor    %edi,%edi
    11e8:	41 56                	push   %r14
    11ea:	41 55                	push   %r13
    11ec:	41 54                	push   %r12
    11ee:	41 bc 05 00 00 00    	mov    $0x5,%r12d
    11f4:	55                   	push   %rbp
    11f5:	53                   	push   %rbx
    11f6:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
    11fd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1204:	00 00 
    1206:	48 89 84 24 e8 00 00 	mov    %rax,0xe8(%rsp)
    120d:	00 
    120e:	31 c0                	xor    %eax,%eax
    1210:	e8 8b 06 00 00       	call   18a0 <bind_thread_to_cpu>
    1215:	31 d2                	xor    %edx,%edx
    1217:	48 8d 35 f8 1d 00 00 	lea    0x1df8(%rip),%rsi        # 3016 <_IO_stdin_used+0x16>
    121e:	bf 02 00 00 00       	mov    $0x2,%edi
    1223:	31 c0                	xor    %eax,%eax
    1225:	e8 66 ff ff ff       	call   1190 <__printf_chk@plt>
    122a:	41 b8 00 04 00 00    	mov    $0x400,%r8d
    1230:	b9 00 02 00 00       	mov    $0x200,%ecx
    1235:	ba 00 02 00 00       	mov    $0x200,%edx
    123a:	48 8d 35 f1 1d 00 00 	lea    0x1df1(%rip),%rsi        # 3032 <_IO_stdin_used+0x32>
    1241:	bf 02 00 00 00       	mov    $0x2,%edi
    1246:	31 c0                	xor    %eax,%eax
    1248:	e8 43 ff ff ff       	call   1190 <__printf_chk@plt>
    124d:	31 ff                	xor    %edi,%edi
    124f:	e8 0c ff ff ff       	call   1160 <time@plt>
    1254:	89 c7                	mov    %eax,%edi
    1256:	e8 f5 fe ff ff       	call   1150 <srand@plt>
    125b:	e8 50 ff ff ff       	call   11b0 <rand@plt>
    1260:	89 c3                	mov    %eax,%ebx
    1262:	e8 49 ff ff ff       	call   11b0 <rand@plt>
    1267:	89 c5                	mov    %eax,%ebp
    1269:	e8 42 ff ff ff       	call   11b0 <rand@plt>
    126e:	89 c1                	mov    %eax,%ecx
    1270:	c1 f9 1f             	sar    $0x1f,%ecx
    1273:	c1 e9 15             	shr    $0x15,%ecx
    1276:	8d 14 08             	lea    (%rax,%rcx,1),%edx
    1279:	89 e8                	mov    %ebp,%eax
    127b:	c1 f8 1f             	sar    $0x1f,%eax
    127e:	81 e2 ff 07 00 00    	and    $0x7ff,%edx
    1284:	c1 e8 15             	shr    $0x15,%eax
    1287:	29 ca                	sub    %ecx,%edx
    1289:	b9 00 10 00 00       	mov    $0x1000,%ecx
    128e:	8d 74 05 00          	lea    0x0(%rbp,%rax,1),%esi
    1292:	83 c2 40             	add    $0x40,%edx
    1295:	81 e6 ff 07 00 00    	and    $0x7ff,%esi
    129b:	48 63 d2             	movslq %edx,%rdx
    129e:	29 c6                	sub    %eax,%esi
    12a0:	89 d8                	mov    %ebx,%eax
    12a2:	48 83 e2 c0          	and    $0xffffffffffffffc0,%rdx
    12a6:	c1 f8 1f             	sar    $0x1f,%eax
    12a9:	81 c6 00 02 00 00    	add    $0x200,%esi
    12af:	c1 e8 15             	shr    $0x15,%eax
    12b2:	48 63 f6             	movslq %esi,%rsi
    12b5:	8d 3c 03             	lea    (%rbx,%rax,1),%edi
    12b8:	48 81 e6 00 fe ff ff 	and    $0xfffffffffffffe00,%rsi
    12bf:	81 e7 ff 07 00 00    	and    $0x7ff,%edi
    12c5:	29 c7                	sub    %eax,%edi
    12c7:	81 c7 00 02 00 00    	add    $0x200,%edi
    12cd:	48 63 ff             	movslq %edi,%rdi
    12d0:	48 81 e7 00 fe ff ff 	and    $0xfffffffffffffe00,%rdi
    12d7:	e8 e4 0c 00 00       	call   1fc0 <test_correctness>
    12dc:	41 ff cc             	dec    %r12d
    12df:	0f 85 76 ff ff ff    	jne    125b <main+0x7b>
    12e5:	48 8d 84 24 c0 00 00 	lea    0xc0(%rsp),%rax
    12ec:	00 
    12ed:	bd 06 00 00 00       	mov    $0x6,%ebp
    12f2:	41 bf 00 02 00 00    	mov    $0x200,%r15d
    12f8:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    12ff:	00 
    1300:	48 8d 84 24 d0 00 00 	lea    0xd0(%rsp),%rax
    1307:	00 
    1308:	4d 89 fd             	mov    %r15,%r13
    130b:	41 89 ec             	mov    %ebp,%r12d
    130e:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
    1315:	00 
    1316:	4c 89 ed             	mov    %r13,%rbp
    1319:	49 8d 4d ff          	lea    -0x1(%r13),%rcx
    131d:	c7 84 24 a8 00 00 00 	movl   $0x6,0xa8(%rsp)
    1324:	06 00 00 00 
    1328:	41 be 00 02 00 00    	mov    $0x200,%r14d
    132e:	49 0f af ed          	imul   %r13,%rbp
    1332:	48 81 e1 00 fe ff ff 	and    $0xfffffffffffffe00,%rcx
    1339:	44 89 a4 24 ac 00 00 	mov    %r12d,0xac(%rsp)
    1340:	00 
    1341:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
    1346:	48 8d 14 ad 00 00 00 	lea    0x0(,%rbp,4),%rdx
    134d:	00 
    134e:	48 89 ac 24 98 00 00 	mov    %rbp,0x98(%rsp)
    1355:	00 
    1356:	48 8d 82 00 10 00 00 	lea    0x1000(%rdx),%rax
    135d:	48 89 94 24 a0 00 00 	mov    %rdx,0xa0(%rsp)
    1364:	00 
    1365:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    136a:	4c 89 e8             	mov    %r13,%rax
    136d:	48 c1 e0 09          	shl    $0x9,%rax
    1371:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    1376:	4c 89 e8             	mov    %r13,%rax
    1379:	48 c1 e0 0b          	shl    $0xb,%rax
    137d:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1382:	4c 89 eb             	mov    %r13,%rbx
    1385:	49 0f af de          	imul   %r14,%rbx
    1389:	48 8d ab 00 10 00 00 	lea    0x1000(%rbx),%rbp
    1390:	48 89 ef             	mov    %rbp,%rdi
    1393:	e8 d8 fd ff ff       	call   1170 <malloc@plt>
    1398:	48 89 ef             	mov    %rbp,%rdi
    139b:	49 89 c7             	mov    %rax,%r15
    139e:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    13a3:	e8 c8 fd ff ff       	call   1170 <malloc@plt>
    13a8:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    13ad:	48 89 c5             	mov    %rax,%rbp
    13b0:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
    13b5:	e8 b6 fd ff ff       	call   1170 <malloc@plt>
    13ba:	48 89 da             	mov    %rbx,%rdx
    13bd:	be 01 00 00 00       	mov    $0x1,%esi
    13c2:	48 89 c7             	mov    %rax,%rdi
    13c5:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
    13cc:	00 
    13cd:	49 8d 87 00 10 00 00 	lea    0x1000(%r15),%rax
    13d4:	48 89 c1             	mov    %rax,%rcx
    13d7:	48 8d 85 00 10 00 00 	lea    0x1000(%rbp),%rax
    13de:	48 89 c5             	mov    %rax,%rbp
    13e1:	48 8d 87 00 10 00 00 	lea    0x1000(%rdi),%rax
    13e8:	48 81 e1 00 f0 ff ff 	and    $0xfffffffffffff000,%rcx
    13ef:	49 89 c7             	mov    %rax,%r15
    13f2:	48 89 cf             	mov    %rcx,%rdi
    13f5:	48 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%rbp
    13fc:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
    1401:	49 81 e7 00 f0 ff ff 	and    $0xfffffffffffff000,%r15
    1408:	49 89 cc             	mov    %rcx,%r12
    140b:	48 89 6c 24 30       	mov    %rbp,0x30(%rsp)
    1410:	4c 89 7c 24 50       	mov    %r15,0x50(%rsp)
    1415:	e8 16 fd ff ff       	call   1130 <memset@plt>
    141a:	48 89 da             	mov    %rbx,%rdx
    141d:	be 01 00 00 00       	mov    $0x1,%esi
    1422:	48 89 ef             	mov    %rbp,%rdi
    1425:	e8 06 fd ff ff       	call   1130 <memset@plt>
    142a:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
    1431:	00 
    1432:	be 01 00 00 00       	mov    $0x1,%esi
    1437:	4c 89 ff             	mov    %r15,%rdi
    143a:	e8 f1 fc ff ff       	call   1130 <memset@plt>
    143f:	c7 84 24 b8 00 00 00 	movl   $0x0,0xb8(%rsp)
    1446:	00 00 00 00 
    144a:	4d 85 ed             	test   %r13,%r13
    144d:	0f 84 cf 00 00 00    	je     1522 <main+0x342>
    1453:	49 8d 87 00 08 00 00 	lea    0x800(%r15),%rax
    145a:	4c 89 f5             	mov    %r14,%rbp
    145d:	45 31 c0             	xor    %r8d,%r8d
    1460:	4c 89 e3             	mov    %r12,%rbx
    1463:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1468:	48 c1 e5 09          	shl    $0x9,%rbp
    146c:	4c 89 ff             	mov    %r15,%rdi
    146f:	31 c9                	xor    %ecx,%ecx
    1471:	4c 89 c2             	mov    %r8,%rdx
    1474:	0f 1f 40 00          	nopl   0x0(%rax)
    1478:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    147d:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    1482:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1487:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
    148c:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    1491:	48 01 c8             	add    %rcx,%rax
    1494:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
    1499:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
    149d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    14a2:	4c 89 f8             	mov    %r15,%rax
    14a5:	49 89 ff             	mov    %rdi,%r15
    14a8:	49 89 c4             	mov    %rax,%r12
    14ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    14b0:	48 83 ec 08          	sub    $0x8,%rsp
    14b4:	4c 89 e6             	mov    %r12,%rsi
    14b7:	4c 89 f1             	mov    %r14,%rcx
    14ba:	4c 89 fa             	mov    %r15,%rdx
    14bd:	41 55                	push   %r13
    14bf:	4d 89 f1             	mov    %r14,%r9
    14c2:	4d 89 f0             	mov    %r14,%r8
    14c5:	48 89 df             	mov    %rbx,%rdi
    14c8:	49 81 c7 00 08 00 00 	add    $0x800,%r15
    14cf:	49 01 ec             	add    %rbp,%r12
    14d2:	e8 d9 06 00 00       	call   1bb0 <amx_gemm_i8i8i32_tile>
    14d7:	8b 8c 24 c8 00 00 00 	mov    0xc8(%rsp),%ecx
    14de:	01 c8                	add    %ecx,%eax
    14e0:	89 84 24 c8 00 00 00 	mov    %eax,0xc8(%rsp)
    14e7:	59                   	pop    %rcx
    14e8:	5e                   	pop    %rsi
    14e9:	4c 39 7c 24 08       	cmp    %r15,0x8(%rsp)
    14ee:	75 c0                	jne    14b0 <main+0x2d0>
    14f0:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    14f5:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    14fa:	48 01 eb             	add    %rbp,%rbx
    14fd:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    1502:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    1507:	48 01 c1             	add    %rax,%rcx
    150a:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    150f:	48 81 c2 00 02 00 00 	add    $0x200,%rdx
    1516:	48 01 c7             	add    %rax,%rdi
    1519:	4c 39 ea             	cmp    %r13,%rdx
    151c:	0f 82 56 ff ff ff    	jb     1478 <main+0x298>
    1522:	8b 94 24 b8 00 00 00 	mov    0xb8(%rsp),%edx
    1529:	48 8b b4 24 88 00 00 	mov    0x88(%rsp),%rsi
    1530:	00 
    1531:	bf 01 00 00 00       	mov    $0x1,%edi
    1536:	bd 0a 00 00 00       	mov    $0xa,%ebp
    153b:	89 eb                	mov    %ebp,%ebx
    153d:	89 54 24 10          	mov    %edx,0x10(%rsp)
    1541:	e8 ca fb ff ff       	call   1110 <clock_gettime@plt>
    1546:	4c 89 f0             	mov    %r14,%rax
    1549:	4c 89 6c 24 08       	mov    %r13,0x8(%rsp)
    154e:	8b 54 24 10          	mov    0x10(%rsp),%edx
    1552:	48 c1 e0 09          	shl    $0x9,%rax
    1556:	4c 89 74 24 20       	mov    %r14,0x20(%rsp)
    155b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1560:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
    1565:	48 05 00 08 00 00    	add    $0x800,%rax
    156b:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1570:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
    1576:	c7 84 24 bc 00 00 00 	movl   $0x0,0xbc(%rsp)
    157d:	00 00 00 00 
    1581:	0f 84 c7 00 00 00    	je     164e <main+0x46e>
    1587:	4c 8b 64 24 60       	mov    0x60(%rsp),%r12
    158c:	4c 8b 74 24 50       	mov    0x50(%rsp),%r14
    1591:	89 54 24 58          	mov    %edx,0x58(%rsp)
    1595:	45 31 ff             	xor    %r15d,%r15d
    1598:	31 c9                	xor    %ecx,%ecx
    159a:	89 5c 24 5c          	mov    %ebx,0x5c(%rsp)
    159e:	4c 89 fb             	mov    %r15,%rbx
    15a1:	4d 89 f7             	mov    %r14,%r15
    15a4:	4d 89 e6             	mov    %r12,%r14
    15a7:	49 89 cc             	mov    %rcx,%r12
    15aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    15b0:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    15b5:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    15ba:	4c 89 fd             	mov    %r15,%rbp
    15bd:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
    15c2:	48 01 d8             	add    %rbx,%rax
    15c5:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
    15c9:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    15ce:	66 90                	xchg   %ax,%ax
    15d0:	48 83 ec 08          	sub    $0x8,%rsp
    15d4:	48 89 ea             	mov    %rbp,%rdx
    15d7:	4c 89 ee             	mov    %r13,%rsi
    15da:	4c 89 f7             	mov    %r14,%rdi
    15dd:	ff 74 24 10          	push   0x10(%rsp)
    15e1:	48 81 c5 00 08 00 00 	add    $0x800,%rbp
    15e8:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    15ed:	49 89 c9             	mov    %rcx,%r9
    15f0:	49 89 c8             	mov    %rcx,%r8
    15f3:	e8 b8 05 00 00       	call   1bb0 <amx_gemm_i8i8i32_tile>
    15f8:	8b 94 24 cc 00 00 00 	mov    0xcc(%rsp),%edx
    15ff:	01 d0                	add    %edx,%eax
    1601:	89 84 24 cc 00 00 00 	mov    %eax,0xcc(%rsp)
    1608:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    160d:	49 01 c5             	add    %rax,%r13
    1610:	58                   	pop    %rax
    1611:	5a                   	pop    %rdx
    1612:	48 39 6c 24 10       	cmp    %rbp,0x10(%rsp)
    1617:	75 b7                	jne    15d0 <main+0x3f0>
    1619:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
    161e:	49 81 c4 00 02 00 00 	add    $0x200,%r12
    1625:	48 01 c3             	add    %rax,%rbx
    1628:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    162d:	49 01 c7             	add    %rax,%r15
    1630:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1635:	49 01 c6             	add    %rax,%r14
    1638:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    163d:	49 39 c4             	cmp    %rax,%r12
    1640:	0f 82 6a ff ff ff    	jb     15b0 <main+0x3d0>
    1646:	8b 54 24 58          	mov    0x58(%rsp),%edx
    164a:	8b 5c 24 5c          	mov    0x5c(%rsp),%ebx
    164e:	8b 84 24 bc 00 00 00 	mov    0xbc(%rsp),%eax
    1655:	01 c2                	add    %eax,%edx
    1657:	ff cb                	dec    %ebx
    1659:	0f 85 11 ff ff ff    	jne    1570 <main+0x390>
    165f:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
    1666:	00 
    1667:	bf 01 00 00 00       	mov    $0x1,%edi
    166c:	4c 8b 6c 24 08       	mov    0x8(%rsp),%r13
    1671:	89 54 24 08          	mov    %edx,0x8(%rsp)
    1675:	4c 8b 74 24 20       	mov    0x20(%rsp),%r14
    167a:	e8 91 fa ff ff       	call   1110 <clock_gettime@plt>
    167f:	48 8b 84 24 d0 00 00 	mov    0xd0(%rsp),%rax
    1686:	00 
    1687:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    168b:	44 8b 4c 24 08       	mov    0x8(%rsp),%r9d
    1690:	4d 89 f0             	mov    %r14,%r8
    1693:	4c 89 e9             	mov    %r13,%rcx
    1696:	4c 89 ea             	mov    %r13,%rdx
    1699:	bf 02 00 00 00       	mov    $0x2,%edi
    169e:	48 2b 84 24 c0 00 00 	sub    0xc0(%rsp),%rax
    16a5:	00 
    16a6:	48 8d 35 0b 1a 00 00 	lea    0x1a0b(%rip),%rsi        # 30b8 <_IO_stdin_used+0xb8>
    16ad:	c4 e1 eb 2a c0       	vcvtsi2sd %rax,%xmm2,%xmm0
    16b2:	48 8b 84 24 d8 00 00 	mov    0xd8(%rsp),%rax
    16b9:	00 
    16ba:	48 2b 84 24 c8 00 00 	sub    0xc8(%rsp),%rax
    16c1:	00 
    16c2:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    16c7:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    16ce:	00 
    16cf:	49 0f af c6          	imul   %r14,%rax
    16d3:	4d 01 f6             	add    %r14,%r14
    16d6:	c4 e2 f1 99 05 39 1a 	vfmadd132sd 0x1a39(%rip),%xmm1,%xmm0        # 3118 <_IO_stdin_used+0x118>
    16dd:	00 00 
    16df:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    16e3:	48 01 c0             	add    %rax,%rax
    16e6:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    16eb:	b8 02 00 00 00       	mov    $0x2,%eax
    16f0:	c5 fb 59 05 28 1a 00 	vmulsd 0x1a28(%rip),%xmm0,%xmm0        # 3120 <_IO_stdin_used+0x120>
    16f7:	00 
    16f8:	c5 f3 59 0d 28 1a 00 	vmulsd 0x1a28(%rip),%xmm1,%xmm1        # 3128 <_IO_stdin_used+0x128>
    16ff:	00 
    1700:	c5 f3 5e c8          	vdivsd %xmm0,%xmm1,%xmm1
    1704:	e8 87 fa ff ff       	call   1190 <__printf_chk@plt>
    1709:	48 8b 7c 24 68       	mov    0x68(%rsp),%rdi
    170e:	e8 ed f9 ff ff       	call   1100 <free@plt>
    1713:	48 8b 7c 24 70       	mov    0x70(%rsp),%rdi
    1718:	e8 e3 f9 ff ff       	call   1100 <free@plt>
    171d:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
    1724:	00 
    1725:	e8 d6 f9 ff ff       	call   1100 <free@plt>
    172a:	48 8b 3d df 38 00 00 	mov    0x38df(%rip),%rdi        # 5010 <stdout@GLIBC_2.2.5>
    1731:	e8 4a fa ff ff       	call   1180 <fflush@plt>
    1736:	ff 8c 24 a8 00 00 00 	decl   0xa8(%rsp)
    173d:	0f 85 3f fc ff ff    	jne    1382 <main+0x1a2>
    1743:	44 8b a4 24 ac 00 00 	mov    0xac(%rsp),%r12d
    174a:	00 
    174b:	4d 01 ed             	add    %r13,%r13
    174e:	41 ff cc             	dec    %r12d
    1751:	0f 85 bf fb ff ff    	jne    1316 <main+0x136>
    1757:	48 8b 84 24 e8 00 00 	mov    0xe8(%rsp),%rax
    175e:	00 
    175f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1766:	00 00 
    1768:	75 14                	jne    177e <main+0x59e>
    176a:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
    1771:	31 c0                	xor    %eax,%eax
    1773:	5b                   	pop    %rbx
    1774:	5d                   	pop    %rbp
    1775:	41 5c                	pop    %r12
    1777:	41 5d                	pop    %r13
    1779:	41 5e                	pop    %r14
    177b:	41 5f                	pop    %r15
    177d:	c3                   	ret
    177e:	e8 9d f9 ff ff       	call   1120 <__stack_chk_fail@plt>
    1783:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    178a:	00 00 00 
    178d:	0f 1f 00             	nopl   (%rax)

0000000000001790 <set_fast_math>:
    1790:	f3 0f 1e fa          	endbr64
    1794:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    1799:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    17a0:	00 
    17a1:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    17a6:	c3                   	ret
    17a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    17ae:	00 00 

00000000000017b0 <_start>:
    17b0:	f3 0f 1e fa          	endbr64
    17b4:	31 ed                	xor    %ebp,%ebp
    17b6:	49 89 d1             	mov    %rdx,%r9
    17b9:	5e                   	pop    %rsi
    17ba:	48 89 e2             	mov    %rsp,%rdx
    17bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    17c1:	50                   	push   %rax
    17c2:	54                   	push   %rsp
    17c3:	45 31 c0             	xor    %r8d,%r8d
    17c6:	31 c9                	xor    %ecx,%ecx
    17c8:	48 8d 3d 11 fa ff ff 	lea    -0x5ef(%rip),%rdi        # 11e0 <main>
    17cf:	ff 15 03 38 00 00    	call   *0x3803(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    17d5:	f4                   	hlt
    17d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    17dd:	00 00 00 

00000000000017e0 <deregister_tm_clones>:
    17e0:	48 8d 3d 29 38 00 00 	lea    0x3829(%rip),%rdi        # 5010 <stdout@GLIBC_2.2.5>
    17e7:	48 8d 05 22 38 00 00 	lea    0x3822(%rip),%rax        # 5010 <stdout@GLIBC_2.2.5>
    17ee:	48 39 f8             	cmp    %rdi,%rax
    17f1:	74 15                	je     1808 <deregister_tm_clones+0x28>
    17f3:	48 8b 05 e6 37 00 00 	mov    0x37e6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    17fa:	48 85 c0             	test   %rax,%rax
    17fd:	74 09                	je     1808 <deregister_tm_clones+0x28>
    17ff:	ff e0                	jmp    *%rax
    1801:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1808:	c3                   	ret
    1809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001810 <register_tm_clones>:
    1810:	48 8d 3d f9 37 00 00 	lea    0x37f9(%rip),%rdi        # 5010 <stdout@GLIBC_2.2.5>
    1817:	48 8d 35 f2 37 00 00 	lea    0x37f2(%rip),%rsi        # 5010 <stdout@GLIBC_2.2.5>
    181e:	48 29 fe             	sub    %rdi,%rsi
    1821:	48 89 f0             	mov    %rsi,%rax
    1824:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1828:	48 c1 f8 03          	sar    $0x3,%rax
    182c:	48 01 c6             	add    %rax,%rsi
    182f:	48 d1 fe             	sar    $1,%rsi
    1832:	74 14                	je     1848 <register_tm_clones+0x38>
    1834:	48 8b 05 b5 37 00 00 	mov    0x37b5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    183b:	48 85 c0             	test   %rax,%rax
    183e:	74 08                	je     1848 <register_tm_clones+0x38>
    1840:	ff e0                	jmp    *%rax
    1842:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1848:	c3                   	ret
    1849:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001850 <__do_global_dtors_aux>:
    1850:	f3 0f 1e fa          	endbr64
    1854:	80 3d bd 37 00 00 00 	cmpb   $0x0,0x37bd(%rip)        # 5018 <completed.0>
    185b:	75 2b                	jne    1888 <__do_global_dtors_aux+0x38>
    185d:	55                   	push   %rbp
    185e:	48 83 3d 92 37 00 00 	cmpq   $0x0,0x3792(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1865:	00 
    1866:	48 89 e5             	mov    %rsp,%rbp
    1869:	74 0c                	je     1877 <__do_global_dtors_aux+0x27>
    186b:	48 8b 3d 96 37 00 00 	mov    0x3796(%rip),%rdi        # 5008 <__dso_handle>
    1872:	e8 79 f8 ff ff       	call   10f0 <__cxa_finalize@plt>
    1877:	e8 64 ff ff ff       	call   17e0 <deregister_tm_clones>
    187c:	c6 05 95 37 00 00 01 	movb   $0x1,0x3795(%rip)        # 5018 <completed.0>
    1883:	5d                   	pop    %rbp
    1884:	c3                   	ret
    1885:	0f 1f 00             	nopl   (%rax)
    1888:	c3                   	ret
    1889:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001890 <frame_dummy>:
    1890:	f3 0f 1e fa          	endbr64
    1894:	e9 77 ff ff ff       	jmp    1810 <register_tm_clones>
    1899:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000018a0 <bind_thread_to_cpu>:
    18a0:	f3 0f 1e fa          	endbr64
    18a4:	55                   	push   %rbp
    18a5:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
    18a9:	48 89 e5             	mov    %rsp,%rbp
    18ac:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    18b3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18ba:	00 00 
    18bc:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    18c3:	00 
    18c4:	31 c0                	xor    %eax,%eax
    18c6:	48 63 c7             	movslq %edi,%rax
    18c9:	48 89 e2             	mov    %rsp,%rdx
    18cc:	62 f1 7f 48 7f 04 24 	vmovdqu8 %zmm0,(%rsp)
    18d3:	62 f1 7f 48 7f 44 24 	vmovdqu8 %zmm0,0x40(%rsp)
    18da:	01 
    18db:	48 3d ff 03 00 00    	cmp    $0x3ff,%rax
    18e1:	77 12                	ja     18f5 <bind_thread_to_cpu+0x55>
    18e3:	48 c1 e8 06          	shr    $0x6,%rax
    18e7:	b9 01 00 00 00       	mov    $0x1,%ecx
    18ec:	c4 e2 c1 f7 c9       	shlx   %rdi,%rcx,%rcx
    18f1:	48 09 0c c2          	or     %rcx,(%rdx,%rax,8)
    18f5:	31 ff                	xor    %edi,%edi
    18f7:	be 80 00 00 00       	mov    $0x80,%esi
    18fc:	c5 f8 77             	vzeroupper
    18ff:	e8 3c f8 ff ff       	call   1140 <sched_setaffinity@plt>
    1904:	85 c0                	test   %eax,%eax
    1906:	0f 85 b4 f8 ff ff    	jne    11c0 <bind_thread_to_cpu.cold>
    190c:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    1913:	00 
    1914:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    191b:	00 00 
    191d:	75 02                	jne    1921 <bind_thread_to_cpu+0x81>
    191f:	c9                   	leave
    1920:	c3                   	ret
    1921:	e8 fa f7 ff ff       	call   1120 <__stack_chk_fail@plt>
    1926:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    192d:	00 00 00 

0000000000001930 <cpu_gemm_i8i8i32>:
    1930:	f3 0f 1e fa          	endbr64
    1934:	41 55                	push   %r13
    1936:	49 89 ca             	mov    %rcx,%r10
    1939:	41 54                	push   %r12
    193b:	55                   	push   %rbp
    193c:	53                   	push   %rbx
    193d:	48 85 c9             	test   %rcx,%rcx
    1940:	0f 84 9f 00 00 00    	je     19e5 <cpu_gemm_i8i8i32+0xb5>
    1946:	4d 8d 60 ff          	lea    -0x1(%r8),%r12
    194a:	48 89 d5             	mov    %rdx,%rbp
    194d:	45 31 db             	xor    %r11d,%r11d
    1950:	31 db                	xor    %ebx,%ebx
    1952:	49 83 e4 c0          	and    $0xffffffffffffffc0,%r12
    1956:	31 c0                	xor    %eax,%eax
    1958:	4c 8d aa 00 01 00 00 	lea    0x100(%rdx),%r13
    195f:	90                   	nop
    1960:	4d 85 c0             	test   %r8,%r8
    1963:	74 21                	je     1986 <cpu_gemm_i8i8i32+0x56>
    1965:	4b 8d 0c 23          	lea    (%r11,%r12,1),%rcx
    1969:	4a 8d 54 9d 00       	lea    0x0(%rbp,%r11,4),%rdx
    196e:	49 8d 4c 8d 00       	lea    0x0(%r13,%rcx,4),%rcx
    1973:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1978:	03 02                	add    (%rdx),%eax
    197a:	48 81 c2 00 01 00 00 	add    $0x100,%rdx
    1981:	48 39 d1             	cmp    %rdx,%rcx
    1984:	75 f2                	jne    1978 <cpu_gemm_i8i8i32+0x48>
    1986:	48 8d 53 01          	lea    0x1(%rbx),%rdx
    198a:	4d 01 c3             	add    %r8,%r11
    198d:	49 39 d2             	cmp    %rdx,%r10
    1990:	74 0e                	je     19a0 <cpu_gemm_i8i8i32+0x70>
    1992:	48 89 d3             	mov    %rdx,%rbx
    1995:	eb c9                	jmp    1960 <cpu_gemm_i8i8i32+0x30>
    1997:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    199e:	00 00 
    19a0:	4d 89 c3             	mov    %r8,%r11
    19a3:	31 ed                	xor    %ebp,%ebp
    19a5:	49 c1 eb 09          	shr    $0x9,%r11
    19a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    19b0:	31 d2                	xor    %edx,%edx
    19b2:	4d 85 c9             	test   %r9,%r9
    19b5:	74 1d                	je     19d4 <cpu_gemm_i8i8i32+0xa4>
    19b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    19be:	00 00 
    19c0:	48 0f be 0c 17       	movsbq (%rdi,%rdx,1),%rcx
    19c5:	48 83 c2 40          	add    $0x40,%rdx
    19c9:	41 0f af cb          	imul   %r11d,%ecx
    19cd:	01 c8                	add    %ecx,%eax
    19cf:	4c 39 ca             	cmp    %r9,%rdx
    19d2:	72 ec                	jb     19c0 <cpu_gemm_i8i8i32+0x90>
    19d4:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    19d8:	4c 01 cf             	add    %r9,%rdi
    19db:	48 39 eb             	cmp    %rbp,%rbx
    19de:	74 10                	je     19f0 <cpu_gemm_i8i8i32+0xc0>
    19e0:	48 89 d5             	mov    %rdx,%rbp
    19e3:	eb cb                	jmp    19b0 <cpu_gemm_i8i8i32+0x80>
    19e5:	31 c0                	xor    %eax,%eax
    19e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    19ee:	00 00 
    19f0:	4d 85 c0             	test   %r8,%r8
    19f3:	74 39                	je     1a2e <cpu_gemm_i8i8i32+0xfe>
    19f5:	4c 89 d7             	mov    %r10,%rdi
    19f8:	45 31 d2             	xor    %r10d,%r10d
    19fb:	48 c1 ef 09          	shr    $0x9,%rdi
    19ff:	90                   	nop
    1a00:	31 d2                	xor    %edx,%edx
    1a02:	4d 85 c9             	test   %r9,%r9
    1a05:	74 1c                	je     1a23 <cpu_gemm_i8i8i32+0xf3>
    1a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1a0e:	00 00 
    1a10:	48 0f be 0c 16       	movsbq (%rsi,%rdx,1),%rcx
    1a15:	48 83 c2 40          	add    $0x40,%rdx
    1a19:	0f af cf             	imul   %edi,%ecx
    1a1c:	01 c8                	add    %ecx,%eax
    1a1e:	4c 39 ca             	cmp    %r9,%rdx
    1a21:	72 ed                	jb     1a10 <cpu_gemm_i8i8i32+0xe0>
    1a23:	49 ff c2             	inc    %r10
    1a26:	4c 01 ce             	add    %r9,%rsi
    1a29:	4d 39 d0             	cmp    %r10,%r8
    1a2c:	75 d2                	jne    1a00 <cpu_gemm_i8i8i32+0xd0>
    1a2e:	5b                   	pop    %rbx
    1a2f:	5d                   	pop    %rbp
    1a30:	41 5c                	pop    %r12
    1a32:	41 5d                	pop    %r13
    1a34:	c3                   	ret
    1a35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1a3c:	00 00 00 00 

0000000000001a40 <gemm_load_tile_int8>:
    1a40:	f3 0f 1e fa          	endbr64
    1a44:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    1a4b:	00 
    1a4c:	48 85 f6             	test   %rsi,%rsi
    1a4f:	74 3d                	je     1a8e <gemm_load_tile_int8+0x4e>
    1a51:	48 85 d2             	test   %rdx,%rdx
    1a54:	74 38                	je     1a8e <gemm_load_tile_int8+0x4e>
    1a56:	45 31 d2             	xor    %r10d,%r10d
    1a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a60:	31 c0                	xor    %eax,%eax
    1a62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1a68:	44 8b 4c 24 fc       	mov    -0x4(%rsp),%r9d
    1a6d:	44 0f be 04 07       	movsbl (%rdi,%rax,1),%r8d
    1a72:	48 83 c0 40          	add    $0x40,%rax
    1a76:	45 01 c8             	add    %r9d,%r8d
    1a79:	44 89 44 24 fc       	mov    %r8d,-0x4(%rsp)
    1a7e:	48 39 d0             	cmp    %rdx,%rax
    1a81:	72 e5                	jb     1a68 <gemm_load_tile_int8+0x28>
    1a83:	49 ff c2             	inc    %r10
    1a86:	48 01 cf             	add    %rcx,%rdi
    1a89:	4c 39 d6             	cmp    %r10,%rsi
    1a8c:	75 d2                	jne    1a60 <gemm_load_tile_int8+0x20>
    1a8e:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
    1a92:	c3                   	ret
    1a93:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1a9a:	00 00 00 00 
    1a9e:	66 90                	xchg   %ax,%ax

0000000000001aa0 <gemm_load_tile_int32>:
    1aa0:	f3 0f 1e fa          	endbr64
    1aa4:	53                   	push   %rbx
    1aa5:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    1aac:	00 
    1aad:	48 85 f6             	test   %rsi,%rsi
    1ab0:	74 5a                	je     1b0c <gemm_load_tile_int32+0x6c>
    1ab2:	48 85 d2             	test   %rdx,%rdx
    1ab5:	74 55                	je     1b0c <gemm_load_tile_int32+0x6c>
    1ab7:	49 89 fa             	mov    %rdi,%r10
    1aba:	4c 8d 4a ff          	lea    -0x1(%rdx),%r9
    1abe:	49 89 f3             	mov    %rsi,%r11
    1ac1:	31 ff                	xor    %edi,%edi
    1ac3:	49 83 e1 c0          	and    $0xffffffffffffffc0,%r9
    1ac7:	45 31 c0             	xor    %r8d,%r8d
    1aca:	49 8d 9a 00 01 00 00 	lea    0x100(%r10),%rbx
    1ad1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ad8:	4a 8d 14 0f          	lea    (%rdi,%r9,1),%rdx
    1adc:	49 8d 04 ba          	lea    (%r10,%rdi,4),%rax
    1ae0:	48 8d 34 93          	lea    (%rbx,%rdx,4),%rsi
    1ae4:	0f 1f 40 00          	nopl   0x0(%rax)
    1ae8:	8b 54 24 fc          	mov    -0x4(%rsp),%edx
    1aec:	48 05 00 01 00 00    	add    $0x100,%rax
    1af2:	03 90 00 ff ff ff    	add    -0x100(%rax),%edx
    1af8:	89 54 24 fc          	mov    %edx,-0x4(%rsp)
    1afc:	48 39 c6             	cmp    %rax,%rsi
    1aff:	75 e7                	jne    1ae8 <gemm_load_tile_int32+0x48>
    1b01:	49 ff c0             	inc    %r8
    1b04:	48 01 cf             	add    %rcx,%rdi
    1b07:	4d 39 c3             	cmp    %r8,%r11
    1b0a:	75 cc                	jne    1ad8 <gemm_load_tile_int32+0x38>
    1b0c:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
    1b10:	5b                   	pop    %rbx
    1b11:	c3                   	ret
    1b12:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1b19:	00 00 00 00 
    1b1d:	0f 1f 00             	nopl   (%rax)

0000000000001b20 <gemm_store_tile_int32>:
    1b20:	f3 0f 1e fa          	endbr64
    1b24:	48 85 f6             	test   %rsi,%rsi
    1b27:	74 7a                	je     1ba3 <gemm_store_tile_int32+0x83>
    1b29:	48 85 d2             	test   %rdx,%rdx
    1b2c:	74 75                	je     1ba3 <gemm_store_tile_int32+0x83>
    1b2e:	55                   	push   %rbp
    1b2f:	4c 8d 4a ff          	lea    -0x1(%rdx),%r9
    1b33:	49 89 f3             	mov    %rsi,%r11
    1b36:	49 89 fa             	mov    %rdi,%r10
    1b39:	49 83 e1 c0          	and    $0xffffffffffffffc0,%r9
    1b3d:	31 f6                	xor    %esi,%esi
    1b3f:	48 8d af 00 01 00 00 	lea    0x100(%rdi),%rbp
    1b46:	53                   	push   %rbx
    1b47:	48 89 cb             	mov    %rcx,%rbx
    1b4a:	31 c9                	xor    %ecx,%ecx
    1b4c:	0f 1f 40 00          	nopl   0x0(%rax)
    1b50:	49 8d 14 09          	lea    (%r9,%rcx,1),%rdx
    1b54:	49 8d 04 8a          	lea    (%r10,%rcx,4),%rax
    1b58:	48 8d 54 95 00       	lea    0x0(%rbp,%rdx,4),%rdx
    1b5d:	48 89 d7             	mov    %rdx,%rdi
    1b60:	48 29 c7             	sub    %rax,%rdi
    1b63:	f7 c7 00 01 00 00    	test   $0x100,%edi
    1b69:	74 15                	je     1b80 <gemm_store_tile_int32+0x60>
    1b6b:	44 89 00             	mov    %r8d,(%rax)
    1b6e:	48 05 00 01 00 00    	add    $0x100,%rax
    1b74:	48 39 d0             	cmp    %rdx,%rax
    1b77:	74 1c                	je     1b95 <gemm_store_tile_int32+0x75>
    1b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b80:	44 89 00             	mov    %r8d,(%rax)
    1b83:	48 05 00 02 00 00    	add    $0x200,%rax
    1b89:	44 89 80 00 ff ff ff 	mov    %r8d,-0x100(%rax)
    1b90:	48 39 d0             	cmp    %rdx,%rax
    1b93:	75 eb                	jne    1b80 <gemm_store_tile_int32+0x60>
    1b95:	48 ff c6             	inc    %rsi
    1b98:	48 01 d9             	add    %rbx,%rcx
    1b9b:	49 39 f3             	cmp    %rsi,%r11
    1b9e:	75 b0                	jne    1b50 <gemm_store_tile_int32+0x30>
    1ba0:	5b                   	pop    %rbx
    1ba1:	5d                   	pop    %rbp
    1ba2:	c3                   	ret
    1ba3:	c3                   	ret
    1ba4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1bab:	00 00 00 00 
    1baf:	90                   	nop

0000000000001bb0 <amx_gemm_i8i8i32_tile>:
    1bb0:	f3 0f 1e fa          	endbr64
    1bb4:	41 56                	push   %r14
    1bb6:	49 89 fa             	mov    %rdi,%r10
    1bb9:	49 89 f3             	mov    %rsi,%r11
    1bbc:	4c 89 c7             	mov    %r8,%rdi
    1bbf:	48 89 d6             	mov    %rdx,%rsi
    1bc2:	4d 89 c8             	mov    %r9,%r8
    1bc5:	41 55                	push   %r13
    1bc7:	41 54                	push   %r12
    1bc9:	55                   	push   %rbp
    1bca:	53                   	push   %rbx
    1bcb:	48 89 cb             	mov    %rcx,%rbx
    1bce:	b9 00 02 00 00       	mov    $0x200,%ecx
    1bd3:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    1bd8:	c7 44 24 f0 00 00 00 	movl   $0x0,-0x10(%rsp)
    1bdf:	00 
    1be0:	c7 44 24 f4 00 00 00 	movl   $0x0,-0xc(%rsp)
    1be7:	00 
    1be8:	48 8d 2c 85 00 00 00 	lea    0x0(,%rax,4),%rbp
    1bef:	00 
    1bf0:	48 89 d0             	mov    %rdx,%rax
    1bf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1bf8:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1bfc:	03 10                	add    (%rax),%edx
    1bfe:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c02:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c06:	03 90 00 01 00 00    	add    0x100(%rax),%edx
    1c0c:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c10:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c14:	03 90 00 02 00 00    	add    0x200(%rax),%edx
    1c1a:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c1e:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c22:	03 90 00 03 00 00    	add    0x300(%rax),%edx
    1c28:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c2c:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c30:	03 90 00 04 00 00    	add    0x400(%rax),%edx
    1c36:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c3a:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c3e:	03 90 00 05 00 00    	add    0x500(%rax),%edx
    1c44:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c48:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c4c:	03 90 00 06 00 00    	add    0x600(%rax),%edx
    1c52:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c56:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c5a:	03 90 00 07 00 00    	add    0x700(%rax),%edx
    1c60:	48 01 e8             	add    %rbp,%rax
    1c63:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
    1c67:	48 ff c9             	dec    %rcx
    1c6a:	75 8c                	jne    1bf8 <amx_gemm_i8i8i32_tile+0x48>
    1c6c:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
    1c70:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1c74:	45 31 c9             	xor    %r9d,%r9d
    1c77:	01 d0                	add    %edx,%eax
    1c79:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
    1c7d:	48 85 db             	test   %rbx,%rbx
    1c80:	0f 84 d3 00 00 00    	je     1d59 <amx_gemm_i8i8i32_tile+0x1a9>
    1c86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c8d:	00 00 00 
    1c90:	48 89 d9             	mov    %rbx,%rcx
    1c93:	b8 00 04 00 00       	mov    $0x400,%eax
    1c98:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
    1c9f:	00 
    1ca0:	4c 29 c9             	sub    %r9,%rcx
    1ca3:	48 39 c1             	cmp    %rax,%rcx
    1ca6:	48 0f 47 c8          	cmova  %rax,%rcx
    1caa:	4c 39 cb             	cmp    %r9,%rbx
    1cad:	0f 84 f6 00 00 00    	je     1da9 <amx_gemm_i8i8i32_tile+0x1f9>
    1cb3:	4f 8d 2c 0a          	lea    (%r10,%r9,1),%r13
    1cb7:	41 be 00 02 00 00    	mov    $0x200,%r14d
    1cbd:	0f 1f 00             	nopl   (%rax)
    1cc0:	31 c0                	xor    %eax,%eax
    1cc2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1cc8:	44 8b 64 24 fc       	mov    -0x4(%rsp),%r12d
    1ccd:	41 0f be 54 05 00    	movsbl 0x0(%r13,%rax,1),%edx
    1cd3:	48 83 c0 40          	add    $0x40,%rax
    1cd7:	44 01 e2             	add    %r12d,%edx
    1cda:	89 54 24 fc          	mov    %edx,-0x4(%rsp)
    1cde:	48 39 c8             	cmp    %rcx,%rax
    1ce1:	72 e5                	jb     1cc8 <amx_gemm_i8i8i32_tile+0x118>
    1ce3:	49 01 fd             	add    %rdi,%r13
    1ce6:	49 ff ce             	dec    %r14
    1ce9:	75 d5                	jne    1cc0 <amx_gemm_i8i8i32_tile+0x110>
    1ceb:	8b 54 24 fc          	mov    -0x4(%rsp),%edx
    1cef:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1cf3:	4f 8d 2c 0b          	lea    (%r11,%r9,1),%r13
    1cf7:	41 be 00 02 00 00    	mov    $0x200,%r14d
    1cfd:	01 d0                	add    %edx,%eax
    1cff:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
    1d03:	c7 44 24 f8 00 00 00 	movl   $0x0,-0x8(%rsp)
    1d0a:	00 
    1d0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1d10:	31 c0                	xor    %eax,%eax
    1d12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1d18:	44 8b 64 24 f8       	mov    -0x8(%rsp),%r12d
    1d1d:	41 0f be 54 05 00    	movsbl 0x0(%r13,%rax,1),%edx
    1d23:	48 83 c0 40          	add    $0x40,%rax
    1d27:	44 01 e2             	add    %r12d,%edx
    1d2a:	89 54 24 f8          	mov    %edx,-0x8(%rsp)
    1d2e:	48 39 c8             	cmp    %rcx,%rax
    1d31:	72 e5                	jb     1d18 <amx_gemm_i8i8i32_tile+0x168>
    1d33:	4d 01 c5             	add    %r8,%r13
    1d36:	49 ff ce             	dec    %r14
    1d39:	75 d5                	jne    1d10 <amx_gemm_i8i8i32_tile+0x160>
    1d3b:	8b 54 24 f8          	mov    -0x8(%rsp),%edx
    1d3f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1d43:	49 81 c1 00 04 00 00 	add    $0x400,%r9
    1d4a:	01 d0                	add    %edx,%eax
    1d4c:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
    1d50:	49 39 d9             	cmp    %rbx,%r9
    1d53:	0f 82 37 ff ff ff    	jb     1c90 <amx_gemm_i8i8i32_tile+0xe0>
    1d59:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1d5d:	ba 00 02 00 00       	mov    $0x200,%edx
    1d62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1d68:	89 06                	mov    %eax,(%rsi)
    1d6a:	89 86 00 01 00 00    	mov    %eax,0x100(%rsi)
    1d70:	89 86 00 02 00 00    	mov    %eax,0x200(%rsi)
    1d76:	89 86 00 03 00 00    	mov    %eax,0x300(%rsi)
    1d7c:	89 86 00 04 00 00    	mov    %eax,0x400(%rsi)
    1d82:	89 86 00 05 00 00    	mov    %eax,0x500(%rsi)
    1d88:	89 86 00 06 00 00    	mov    %eax,0x600(%rsi)
    1d8e:	89 86 00 07 00 00    	mov    %eax,0x700(%rsi)
    1d94:	48 01 ee             	add    %rbp,%rsi
    1d97:	48 ff ca             	dec    %rdx
    1d9a:	75 cc                	jne    1d68 <amx_gemm_i8i8i32_tile+0x1b8>
    1d9c:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1da0:	5b                   	pop    %rbx
    1da1:	5d                   	pop    %rbp
    1da2:	41 5c                	pop    %r12
    1da4:	41 5d                	pop    %r13
    1da6:	41 5e                	pop    %r14
    1da8:	c3                   	ret
    1da9:	8b 54 24 fc          	mov    -0x4(%rsp),%edx
    1dad:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
    1db1:	01 d0                	add    %edx,%eax
    1db3:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
    1db7:	c7 44 24 f8 00 00 00 	movl   $0x0,-0x8(%rsp)
    1dbe:	00 
    1dbf:	e9 77 ff ff ff       	jmp    1d3b <amx_gemm_i8i8i32_tile+0x18b>
    1dc4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1dcb:	00 00 00 00 
    1dcf:	90                   	nop

0000000000001dd0 <amx_gemm_i8i8i32>:
    1dd0:	f3 0f 1e fa          	endbr64
    1dd4:	41 57                	push   %r15
    1dd6:	41 56                	push   %r14
    1dd8:	41 55                	push   %r13
    1dda:	41 54                	push   %r12
    1ddc:	55                   	push   %rbp
    1ddd:	53                   	push   %rbx
    1dde:	48 83 ec 38          	sub    $0x38,%rsp
    1de2:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%rsp)
    1de9:	00 
    1dea:	48 85 c9             	test   %rcx,%rcx
    1ded:	0f 84 ba 00 00 00    	je     1ead <amx_gemm_i8i8i32+0xdd>
    1df3:	49 89 d2             	mov    %rdx,%r10
    1df6:	4d 89 c6             	mov    %r8,%r14
    1df9:	48 89 ca             	mov    %rcx,%rdx
    1dfc:	31 ed                	xor    %ebp,%ebp
    1dfe:	31 c9                	xor    %ecx,%ecx
    1e00:	4d 85 c0             	test   %r8,%r8
    1e03:	0f 84 a4 00 00 00    	je     1ead <amx_gemm_i8i8i32+0xdd>
    1e09:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
    1e0e:	49 89 f7             	mov    %rsi,%r15
    1e11:	4c 89 cb             	mov    %r9,%rbx
    1e14:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
    1e19:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
    1e1e:	89 ca                	mov    %ecx,%edx
    1e20:	4d 89 f4             	mov    %r14,%r12
    1e23:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1e28:	45 31 ed             	xor    %r13d,%r13d
    1e2b:	89 54 24 0c          	mov    %edx,0xc(%rsp)
    1e2f:	4c 0f af e5          	imul   %rbp,%r12
    1e33:	48 0f af eb          	imul   %rbx,%rbp
    1e37:	48 01 c5             	add    %rax,%rbp
    1e3a:	31 c0                	xor    %eax,%eax
    1e3c:	48 89 2c 24          	mov    %rbp,(%rsp)
    1e40:	48 89 dd             	mov    %rbx,%rbp
    1e43:	44 89 eb             	mov    %r13d,%ebx
    1e46:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    1e4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1e50:	41 56                	push   %r14
    1e52:	49 8d 14 04          	lea    (%r12,%rax,1),%rdx
    1e56:	49 89 e9             	mov    %rbp,%r9
    1e59:	49 89 e8             	mov    %rbp,%r8
    1e5c:	48 0f af c5          	imul   %rbp,%rax
    1e60:	49 8d 54 95 00       	lea    0x0(%r13,%rdx,4),%rdx
    1e65:	48 89 e9             	mov    %rbp,%rcx
    1e68:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1e6d:	49 8d 34 07          	lea    (%r15,%rax,1),%rsi
    1e71:	e8 3a fd ff ff       	call   1bb0 <amx_gemm_i8i8i32_tile>
    1e76:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
    1e7a:	01 d0                	add    %edx,%eax
    1e7c:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
    1e80:	8d 83 00 02 00 00    	lea    0x200(%rbx),%eax
    1e86:	5a                   	pop    %rdx
    1e87:	48 89 c3             	mov    %rax,%rbx
    1e8a:	4c 39 f0             	cmp    %r14,%rax
    1e8d:	72 c1                	jb     1e50 <amx_gemm_i8i8i32+0x80>
    1e8f:	8b 54 24 0c          	mov    0xc(%rsp),%edx
    1e93:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    1e98:	48 89 eb             	mov    %rbp,%rbx
    1e9b:	8d aa 00 02 00 00    	lea    0x200(%rdx),%ebp
    1ea1:	48 89 ea             	mov    %rbp,%rdx
    1ea4:	48 39 c5             	cmp    %rax,%rbp
    1ea7:	0f 82 73 ff ff ff    	jb     1e20 <amx_gemm_i8i8i32+0x50>
    1ead:	8b 44 24 34          	mov    0x34(%rsp),%eax
    1eb1:	48 83 c4 38          	add    $0x38,%rsp
    1eb5:	5b                   	pop    %rbx
    1eb6:	5d                   	pop    %rbp
    1eb7:	41 5c                	pop    %r12
    1eb9:	41 5d                	pop    %r13
    1ebb:	41 5e                	pop    %r14
    1ebd:	41 5f                	pop    %r15
    1ebf:	c3                   	ret

0000000000001ec0 <amx_gemm_i8i8i32_omp_tiling>:
    1ec0:	f3 0f 1e fa          	endbr64
    1ec4:	41 57                	push   %r15
    1ec6:	41 56                	push   %r14
    1ec8:	41 55                	push   %r13
    1eca:	41 54                	push   %r12
    1ecc:	55                   	push   %rbp
    1ecd:	53                   	push   %rbx
    1ece:	48 83 ec 38          	sub    $0x38,%rsp
    1ed2:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%rsp)
    1ed9:	00 
    1eda:	48 85 c9             	test   %rcx,%rcx
    1edd:	0f 84 bc 00 00 00    	je     1f9f <amx_gemm_i8i8i32_omp_tiling+0xdf>
    1ee3:	49 89 d2             	mov    %rdx,%r10
    1ee6:	4d 89 c6             	mov    %r8,%r14
    1ee9:	48 89 ca             	mov    %rcx,%rdx
    1eec:	31 ed                	xor    %ebp,%ebp
    1eee:	31 c9                	xor    %ecx,%ecx
    1ef0:	4d 85 c0             	test   %r8,%r8
    1ef3:	0f 84 a6 00 00 00    	je     1f9f <amx_gemm_i8i8i32_omp_tiling+0xdf>
    1ef9:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
    1efe:	49 89 f7             	mov    %rsi,%r15
    1f01:	4c 89 cb             	mov    %r9,%rbx
    1f04:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
    1f09:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
    1f0e:	89 ca                	mov    %ecx,%edx
    1f10:	4d 89 f4             	mov    %r14,%r12
    1f13:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    1f18:	45 31 ed             	xor    %r13d,%r13d
    1f1b:	89 54 24 0c          	mov    %edx,0xc(%rsp)
    1f1f:	4c 0f af e5          	imul   %rbp,%r12
    1f23:	48 0f af eb          	imul   %rbx,%rbp
    1f27:	48 01 c5             	add    %rax,%rbp
    1f2a:	31 c0                	xor    %eax,%eax
    1f2c:	48 89 2c 24          	mov    %rbp,(%rsp)
    1f30:	48 89 dd             	mov    %rbx,%rbp
    1f33:	44 89 eb             	mov    %r13d,%ebx
    1f36:	4c 8b 6c 24 18       	mov    0x18(%rsp),%r13
    1f3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1f40:	41 56                	push   %r14
    1f42:	49 8d 14 04          	lea    (%r12,%rax,1),%rdx
    1f46:	49 89 e9             	mov    %rbp,%r9
    1f49:	49 89 e8             	mov    %rbp,%r8
    1f4c:	48 0f af c5          	imul   %rbp,%rax
    1f50:	49 8d 54 95 00       	lea    0x0(%r13,%rdx,4),%rdx
    1f55:	48 89 e9             	mov    %rbp,%rcx
    1f58:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1f5d:	49 8d 34 07          	lea    (%r15,%rax,1),%rsi
    1f61:	e8 4a fc ff ff       	call   1bb0 <amx_gemm_i8i8i32_tile>
    1f66:	89 c2                	mov    %eax,%edx
    1f68:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
    1f6c:	01 d0                	add    %edx,%eax
    1f6e:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
    1f72:	8d 83 00 02 00 00    	lea    0x200(%rbx),%eax
    1f78:	5a                   	pop    %rdx
    1f79:	48 89 c3             	mov    %rax,%rbx
    1f7c:	4c 39 f0             	cmp    %r14,%rax
    1f7f:	72 bf                	jb     1f40 <amx_gemm_i8i8i32_omp_tiling+0x80>
    1f81:	8b 54 24 0c          	mov    0xc(%rsp),%edx
    1f85:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    1f8a:	48 89 eb             	mov    %rbp,%rbx
    1f8d:	8d aa 00 02 00 00    	lea    0x200(%rdx),%ebp
    1f93:	48 89 ea             	mov    %rbp,%rdx
    1f96:	48 39 c5             	cmp    %rax,%rbp
    1f99:	0f 82 71 ff ff ff    	jb     1f10 <amx_gemm_i8i8i32_omp_tiling+0x50>
    1f9f:	8b 44 24 34          	mov    0x34(%rsp),%eax
    1fa3:	48 83 c4 38          	add    $0x38,%rsp
    1fa7:	5b                   	pop    %rbx
    1fa8:	5d                   	pop    %rbp
    1fa9:	41 5c                	pop    %r12
    1fab:	41 5d                	pop    %r13
    1fad:	41 5e                	pop    %r14
    1faf:	41 5f                	pop    %r15
    1fb1:	c3                   	ret
    1fb2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1fb9:	00 00 00 00 
    1fbd:	0f 1f 00             	nopl   (%rax)

0000000000001fc0 <test_correctness>:
    1fc0:	f3 0f 1e fa          	endbr64
    1fc4:	41 57                	push   %r15
    1fc6:	49 89 cf             	mov    %rcx,%r15
    1fc9:	41 56                	push   %r14
    1fcb:	49 89 fe             	mov    %rdi,%r14
    1fce:	4c 0f af f2          	imul   %rdx,%r14
    1fd2:	41 55                	push   %r13
    1fd4:	49 89 fd             	mov    %rdi,%r13
    1fd7:	41 54                	push   %r12
    1fd9:	55                   	push   %rbp
    1fda:	48 89 f5             	mov    %rsi,%rbp
    1fdd:	4c 0f af ed          	imul   %rbp,%r13
    1fe1:	53                   	push   %rbx
    1fe2:	48 89 d3             	mov    %rdx,%rbx
    1fe5:	48 83 ec 68          	sub    $0x68,%rsp
    1fe9:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    1fee:	49 8d 3c 0e          	lea    (%r14,%rcx,1),%rdi
    1ff2:	e8 79 f1 ff ff       	call   1170 <malloc@plt>
    1ff7:	48 89 df             	mov    %rbx,%rdi
    1ffa:	48 0f af fd          	imul   %rbp,%rdi
    1ffe:	49 89 c4             	mov    %rax,%r12
    2001:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    2006:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    200b:	4c 01 ff             	add    %r15,%rdi
    200e:	e8 5d f1 ff ff       	call   1170 <malloc@plt>
    2013:	4b 8d 3c af          	lea    (%r15,%r13,4),%rdi
    2017:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
    201c:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    2021:	e8 4a f1 ff ff       	call   1170 <malloc@plt>
    2026:	4c 89 f9             	mov    %r15,%rcx
    2029:	4b 8d 34 3c          	lea    (%r12,%r15,1),%rsi
    202d:	48 f7 d9             	neg    %rcx
    2030:	48 89 c7             	mov    %rax,%rdi
    2033:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    2038:	48 21 ce             	and    %rcx,%rsi
    203b:	48 89 c8             	mov    %rcx,%rax
    203e:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    2043:	4a 8d 14 3f          	lea    (%rdi,%r15,1),%rdx
    2047:	48 21 c2             	and    %rax,%rdx
    204a:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
    204f:	4c 01 f9             	add    %r15,%rcx
    2052:	49 89 d5             	mov    %rdx,%r13
    2055:	49 89 d7             	mov    %rdx,%r15
    2058:	48 21 c1             	and    %rax,%rcx
    205b:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
    2060:	49 89 cc             	mov    %rcx,%r12
    2063:	4d 85 f6             	test   %r14,%r14
    2066:	74 30                	je     2098 <test_correctness+0xd8>
    2068:	48 89 5c 24 48       	mov    %rbx,0x48(%rsp)
    206d:	49 01 f6             	add    %rsi,%r14
    2070:	48 89 f3             	mov    %rsi,%rbx
    2073:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2078:	e8 33 f1 ff ff       	call   11b0 <rand@plt>
    207d:	48 ff c3             	inc    %rbx
    2080:	99                   	cltd
    2081:	c1 ea 18             	shr    $0x18,%edx
    2084:	01 d0                	add    %edx,%eax
    2086:	0f b6 c0             	movzbl %al,%eax
    2089:	29 d0                	sub    %edx,%eax
    208b:	88 43 ff             	mov    %al,-0x1(%rbx)
    208e:	49 39 de             	cmp    %rbx,%r14
    2091:	75 e5                	jne    2078 <test_correctness+0xb8>
    2093:	48 8b 5c 24 48       	mov    0x48(%rsp),%rbx
    2098:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    209d:	48 85 c0             	test   %rax,%rax
    20a0:	74 2b                	je     20cd <test_correctness+0x10d>
    20a2:	49 89 c6             	mov    %rax,%r14
    20a5:	4d 01 e6             	add    %r12,%r14
    20a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    20af:	00 
    20b0:	e8 fb f0 ff ff       	call   11b0 <rand@plt>
    20b5:	49 ff c4             	inc    %r12
    20b8:	99                   	cltd
    20b9:	c1 ea 18             	shr    $0x18,%edx
    20bc:	01 d0                	add    %edx,%eax
    20be:	0f b6 c0             	movzbl %al,%eax
    20c1:	29 d0                	sub    %edx,%eax
    20c3:	41 88 44 24 ff       	mov    %al,-0x1(%r12)
    20c8:	4d 39 e6             	cmp    %r12,%r14
    20cb:	75 e3                	jne    20b0 <test_correctness+0xf0>
    20cd:	4c 8b 74 24 10       	mov    0x10(%rsp),%r14
    20d2:	4d 85 f6             	test   %r14,%r14
    20d5:	74 1e                	je     20f5 <test_correctness+0x135>
    20d7:	45 31 e4             	xor    %r12d,%r12d
    20da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    20e0:	e8 cb f0 ff ff       	call   11b0 <rand@plt>
    20e5:	49 ff c4             	inc    %r12
    20e8:	49 83 c5 04          	add    $0x4,%r13
    20ec:	41 89 45 fc          	mov    %eax,-0x4(%r13)
    20f0:	4d 39 e6             	cmp    %r12,%r14
    20f3:	75 eb                	jne    20e0 <test_correctness+0x120>
    20f5:	4c 8b 74 24 18       	mov    0x18(%rsp),%r14
    20fa:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    20ff:	49 89 d9             	mov    %rbx,%r9
    2102:	49 89 e8             	mov    %rbp,%r8
    2105:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
    210a:	4c 89 fa             	mov    %r15,%rdx
    210d:	4c 89 f1             	mov    %r14,%rcx
    2110:	e8 1b f8 ff ff       	call   1930 <cpu_gemm_i8i8i32>
    2115:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%rsp)
    211c:	00 
    211d:	41 89 c5             	mov    %eax,%r13d
    2120:	4d 85 f6             	test   %r14,%r14
    2123:	0f 84 ae 00 00 00    	je     21d7 <test_correctness+0x217>
    2129:	31 d2                	xor    %edx,%edx
    212b:	45 31 e4             	xor    %r12d,%r12d
    212e:	48 85 ed             	test   %rbp,%rbp
    2131:	0f 84 a0 00 00 00    	je     21d7 <test_correctness+0x217>
    2137:	89 44 24 48          	mov    %eax,0x48(%rsp)
    213b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2140:	49 89 ed             	mov    %rbp,%r13
    2143:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    2148:	89 54 24 10          	mov    %edx,0x10(%rsp)
    214c:	45 31 f6             	xor    %r14d,%r14d
    214f:	4d 0f af ec          	imul   %r12,%r13
    2153:	48 89 d9             	mov    %rbx,%rcx
    2156:	4c 0f af e3          	imul   %rbx,%r12
    215a:	44 89 f3             	mov    %r14d,%ebx
    215d:	49 89 ce             	mov    %rcx,%r14
    2160:	49 01 c4             	add    %rax,%r12
    2163:	31 c0                	xor    %eax,%eax
    2165:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    216a:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
    216f:	90                   	nop
    2170:	48 83 ec 08          	sub    $0x8,%rsp
    2174:	49 8d 54 05 00       	lea    0x0(%r13,%rax,1),%rdx
    2179:	4c 89 f1             	mov    %r14,%rcx
    217c:	4d 89 f1             	mov    %r14,%r9
    217f:	55                   	push   %rbp
    2180:	49 0f af c6          	imul   %r14,%rax
    2184:	49 8d 14 97          	lea    (%r15,%rdx,4),%rdx
    2188:	4d 89 f0             	mov    %r14,%r8
    218b:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2190:	49 8d 34 04          	lea    (%r12,%rax,1),%rsi
    2194:	e8 17 fa ff ff       	call   1bb0 <amx_gemm_i8i8i32_tile>
    2199:	8b 54 24 6c          	mov    0x6c(%rsp),%edx
    219d:	01 d0                	add    %edx,%eax
    219f:	89 44 24 6c          	mov    %eax,0x6c(%rsp)
    21a3:	8d 83 00 02 00 00    	lea    0x200(%rbx),%eax
    21a9:	59                   	pop    %rcx
    21aa:	48 89 c3             	mov    %rax,%rbx
    21ad:	5e                   	pop    %rsi
    21ae:	48 39 e8             	cmp    %rbp,%rax
    21b1:	72 bd                	jb     2170 <test_correctness+0x1b0>
    21b3:	8b 54 24 10          	mov    0x10(%rsp),%edx
    21b7:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    21bc:	4c 89 f3             	mov    %r14,%rbx
    21bf:	44 8d a2 00 02 00 00 	lea    0x200(%rdx),%r12d
    21c6:	4c 89 e2             	mov    %r12,%rdx
    21c9:	49 39 c4             	cmp    %rax,%r12
    21cc:	0f 82 6e ff ff ff    	jb     2140 <test_correctness+0x180>
    21d2:	44 8b 6c 24 48       	mov    0x48(%rsp),%r13d
    21d7:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
    21db:	41 39 c5             	cmp    %eax,%r13d
    21de:	74 54                	je     2234 <test_correctness+0x274>
    21e0:	48 83 ec 08          	sub    $0x8,%rsp
    21e4:	45 89 e9             	mov    %r13d,%r9d
    21e7:	49 89 d8             	mov    %rbx,%r8
    21ea:	48 89 e9             	mov    %rbp,%rcx
    21ed:	50                   	push   %rax
    21ee:	48 8d 35 53 0e 00 00 	lea    0xe53(%rip),%rsi        # 3048 <_IO_stdin_used+0x48>
    21f5:	bf 02 00 00 00       	mov    $0x2,%edi
    21fa:	31 c0                	xor    %eax,%eax
    21fc:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    2201:	e8 8a ef ff ff       	call   1190 <__printf_chk@plt>
    2206:	58                   	pop    %rax
    2207:	5a                   	pop    %rdx
    2208:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    220d:	e8 ee ee ff ff       	call   1100 <free@plt>
    2212:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    2217:	e8 e4 ee ff ff       	call   1100 <free@plt>
    221c:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
    2221:	48 83 c4 68          	add    $0x68,%rsp
    2225:	5b                   	pop    %rbx
    2226:	5d                   	pop    %rbp
    2227:	41 5c                	pop    %r12
    2229:	41 5d                	pop    %r13
    222b:	41 5e                	pop    %r14
    222d:	41 5f                	pop    %r15
    222f:	e9 cc ee ff ff       	jmp    1100 <free@plt>
    2234:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2239:	49 89 d8             	mov    %rbx,%r8
    223c:	48 89 e9             	mov    %rbp,%rcx
    223f:	48 8d 35 4a 0e 00 00 	lea    0xe4a(%rip),%rsi        # 3090 <_IO_stdin_used+0x90>
    2246:	bf 02 00 00 00       	mov    $0x2,%edi
    224b:	31 c0                	xor    %eax,%eax
    224d:	e8 3e ef ff ff       	call   1190 <__printf_chk@plt>
    2252:	eb b4                	jmp    2208 <test_correctness+0x248>
    2254:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    225b:	00 00 00 00 
    225f:	90                   	nop

0000000000002260 <test_performance>:
    2260:	f3 0f 1e fa          	endbr64
    2264:	41 57                	push   %r15
    2266:	49 89 d7             	mov    %rdx,%r15
    2269:	48 89 fa             	mov    %rdi,%rdx
    226c:	49 0f af d7          	imul   %r15,%rdx
    2270:	41 56                	push   %r14
    2272:	41 55                	push   %r13
    2274:	41 54                	push   %r12
    2276:	49 89 fc             	mov    %rdi,%r12
    2279:	55                   	push   %rbp
    227a:	48 89 cd             	mov    %rcx,%rbp
    227d:	53                   	push   %rbx
    227e:	48 89 f3             	mov    %rsi,%rbx
    2281:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
    2288:	44 89 44 24 3c       	mov    %r8d,0x3c(%rsp)
    228d:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    2292:	48 8d 3c 0a          	lea    (%rdx,%rcx,1),%rdi
    2296:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    229d:	00 00 
    229f:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
    22a6:	00 
    22a7:	31 c0                	xor    %eax,%eax
    22a9:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    22ae:	e8 bd ee ff ff       	call   1170 <malloc@plt>
    22b3:	4c 89 f9             	mov    %r15,%rcx
    22b6:	48 0f af cb          	imul   %rbx,%rcx
    22ba:	49 89 c5             	mov    %rax,%r13
    22bd:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    22c2:	48 8d 3c 29          	lea    (%rcx,%rbp,1),%rdi
    22c6:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    22cb:	e8 a0 ee ff ff       	call   1170 <malloc@plt>
    22d0:	4c 89 e7             	mov    %r12,%rdi
    22d3:	48 0f af fb          	imul   %rbx,%rdi
    22d7:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    22dc:	4c 8d 34 bd 00 00 00 	lea    0x0(,%rdi,4),%r14
    22e3:	00 
    22e4:	48 89 7c 24 48       	mov    %rdi,0x48(%rsp)
    22e9:	49 8d 3c 2e          	lea    (%r14,%rbp,1),%rdi
    22ed:	e8 7e ee ff ff       	call   1170 <malloc@plt>
    22f2:	49 8d 74 2d 00       	lea    0x0(%r13,%rbp,1),%rsi
    22f7:	48 89 e9             	mov    %rbp,%rcx
    22fa:	48 f7 d9             	neg    %rcx
    22fd:	48 89 f7             	mov    %rsi,%rdi
    2300:	48 89 c2             	mov    %rax,%rdx
    2303:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2308:	48 21 cf             	and    %rcx,%rdi
    230b:	48 89 c8             	mov    %rcx,%rax
    230e:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
    2313:	be 01 00 00 00       	mov    $0x1,%esi
    2318:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
    231d:	4c 8d 2c 29          	lea    (%rcx,%rbp,1),%r13
    2321:	48 01 d5             	add    %rdx,%rbp
    2324:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    2329:	48 21 c5             	and    %rax,%rbp
    232c:	49 21 c5             	and    %rax,%r13
    232f:	48 89 6c 24 28       	mov    %rbp,0x28(%rsp)
    2334:	e8 f7 ed ff ff       	call   1130 <memset@plt>
    2339:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    233e:	be 01 00 00 00       	mov    $0x1,%esi
    2343:	4c 89 ef             	mov    %r13,%rdi
    2346:	e8 e5 ed ff ff       	call   1130 <memset@plt>
    234b:	4c 89 f2             	mov    %r14,%rdx
    234e:	be 01 00 00 00       	mov    $0x1,%esi
    2353:	48 89 ef             	mov    %rbp,%rdi
    2356:	e8 d5 ed ff ff       	call   1130 <memset@plt>
    235b:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
    2362:	00 
    2363:	4d 85 e4             	test   %r12,%r12
    2366:	0f 84 a8 00 00 00    	je     2414 <test_performance+0x1b4>
    236c:	31 d2                	xor    %edx,%edx
    236e:	31 ed                	xor    %ebp,%ebp
    2370:	48 85 db             	test   %rbx,%rbx
    2373:	0f 84 9b 00 00 00    	je     2414 <test_performance+0x1b4>
    2379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2380:	49 89 dc             	mov    %rbx,%r12
    2383:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    2388:	89 54 24 10          	mov    %edx,0x10(%rsp)
    238c:	45 31 f6             	xor    %r14d,%r14d
    238f:	4c 0f af e5          	imul   %rbp,%r12
    2393:	4c 89 f9             	mov    %r15,%rcx
    2396:	49 0f af ef          	imul   %r15,%rbp
    239a:	45 89 f7             	mov    %r14d,%r15d
    239d:	49 89 ce             	mov    %rcx,%r14
    23a0:	48 01 c5             	add    %rax,%rbp
    23a3:	31 c0                	xor    %eax,%eax
    23a5:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
    23aa:	48 8b 6c 24 28       	mov    0x28(%rsp),%rbp
    23af:	90                   	nop
    23b0:	48 83 ec 08          	sub    $0x8,%rsp
    23b4:	49 8d 14 04          	lea    (%r12,%rax,1),%rdx
    23b8:	4d 89 f0             	mov    %r14,%r8
    23bb:	4d 89 f1             	mov    %r14,%r9
    23be:	53                   	push   %rbx
    23bf:	49 0f af c6          	imul   %r14,%rax
    23c3:	48 8d 54 95 00       	lea    0x0(%rbp,%rdx,4),%rdx
    23c8:	4c 89 f1             	mov    %r14,%rcx
    23cb:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    23d0:	49 8d 74 05 00       	lea    0x0(%r13,%rax,1),%rsi
    23d5:	e8 d6 f7 ff ff       	call   1bb0 <amx_gemm_i8i8i32_tile>
    23da:	8b 54 24 78          	mov    0x78(%rsp),%edx
    23de:	01 d0                	add    %edx,%eax
    23e0:	89 44 24 78          	mov    %eax,0x78(%rsp)
    23e4:	41 8d 87 00 02 00 00 	lea    0x200(%r15),%eax
    23eb:	5f                   	pop    %rdi
    23ec:	49 89 c7             	mov    %rax,%r15
    23ef:	41 58                	pop    %r8
    23f1:	48 39 d8             	cmp    %rbx,%rax
    23f4:	72 ba                	jb     23b0 <test_performance+0x150>
    23f6:	8b 54 24 10          	mov    0x10(%rsp),%edx
    23fa:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    23ff:	4d 89 f7             	mov    %r14,%r15
    2402:	8d aa 00 02 00 00    	lea    0x200(%rdx),%ebp
    2408:	48 89 ea             	mov    %rbp,%rdx
    240b:	48 39 c5             	cmp    %rax,%rbp
    240e:	0f 82 6c ff ff ff    	jb     2380 <test_performance+0x120>
    2414:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
    2419:	bf 01 00 00 00       	mov    $0x1,%edi
    241e:	44 8b 74 24 68       	mov    0x68(%rsp),%r14d
    2423:	e8 e8 ec ff ff       	call   1110 <clock_gettime@plt>
    2428:	8b 74 24 3c          	mov    0x3c(%rsp),%esi
    242c:	85 f6                	test   %esi,%esi
    242e:	0f 84 00 01 00 00    	je     2534 <test_performance+0x2d4>
    2434:	4c 89 fd             	mov    %r15,%rbp
    2437:	45 31 e4             	xor    %r12d,%r12d
    243a:	45 89 f7             	mov    %r14d,%r15d
    243d:	0f 1f 00             	nopl   (%rax)
    2440:	48 83 7c 24 18 00    	cmpq   $0x0,0x18(%rsp)
    2446:	c7 44 24 6c 00 00 00 	movl   $0x0,0x6c(%rsp)
    244d:	00 
    244e:	0f 84 c5 00 00 00    	je     2519 <test_performance+0x2b9>
    2454:	31 d2                	xor    %edx,%edx
    2456:	31 c0                	xor    %eax,%eax
    2458:	48 85 db             	test   %rbx,%rbx
    245b:	0f 84 b8 00 00 00    	je     2519 <test_performance+0x2b9>
    2461:	44 89 7c 24 34       	mov    %r15d,0x34(%rsp)
    2466:	49 89 ee             	mov    %rbp,%r14
    2469:	44 89 64 24 38       	mov    %r12d,0x38(%rsp)
    246e:	49 89 c4             	mov    %rax,%r12
    2471:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2478:	49 89 df             	mov    %rbx,%r15
    247b:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    2480:	31 ed                	xor    %ebp,%ebp
    2482:	89 54 24 10          	mov    %edx,0x10(%rsp)
    2486:	4d 0f af fc          	imul   %r12,%r15
    248a:	4d 0f af e6          	imul   %r14,%r12
    248e:	49 01 c4             	add    %rax,%r12
    2491:	31 c0                	xor    %eax,%eax
    2493:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    2498:	4d 89 f4             	mov    %r14,%r12
    249b:	41 89 ee             	mov    %ebp,%r14d
    249e:	48 8b 6c 24 28       	mov    0x28(%rsp),%rbp
    24a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    24a8:	48 83 ec 08          	sub    $0x8,%rsp
    24ac:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
    24b0:	4c 89 e1             	mov    %r12,%rcx
    24b3:	4d 89 e1             	mov    %r12,%r9
    24b6:	53                   	push   %rbx
    24b7:	49 0f af c4          	imul   %r12,%rax
    24bb:	48 8d 54 95 00       	lea    0x0(%rbp,%rdx,4),%rdx
    24c0:	4d 89 e0             	mov    %r12,%r8
    24c3:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    24c8:	49 8d 74 05 00       	lea    0x0(%r13,%rax,1),%rsi
    24cd:	e8 de f6 ff ff       	call   1bb0 <amx_gemm_i8i8i32_tile>
    24d2:	8b 54 24 7c          	mov    0x7c(%rsp),%edx
    24d6:	01 d0                	add    %edx,%eax
    24d8:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
    24dc:	41 8d 86 00 02 00 00 	lea    0x200(%r14),%eax
    24e3:	5a                   	pop    %rdx
    24e4:	49 89 c6             	mov    %rax,%r14
    24e7:	59                   	pop    %rcx
    24e8:	48 39 d8             	cmp    %rbx,%rax
    24eb:	72 bb                	jb     24a8 <test_performance+0x248>
    24ed:	8b 54 24 10          	mov    0x10(%rsp),%edx
    24f1:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    24f6:	4d 89 e6             	mov    %r12,%r14
    24f9:	44 8d a2 00 02 00 00 	lea    0x200(%rdx),%r12d
    2500:	4c 89 e2             	mov    %r12,%rdx
    2503:	49 39 c4             	cmp    %rax,%r12
    2506:	0f 82 6c ff ff ff    	jb     2478 <test_performance+0x218>
    250c:	44 8b 7c 24 34       	mov    0x34(%rsp),%r15d
    2511:	44 8b 64 24 38       	mov    0x38(%rsp),%r12d
    2516:	4c 89 f5             	mov    %r14,%rbp
    2519:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    251d:	41 ff c4             	inc    %r12d
    2520:	41 01 c7             	add    %eax,%r15d
    2523:	44 39 64 24 3c       	cmp    %r12d,0x3c(%rsp)
    2528:	0f 85 12 ff ff ff    	jne    2440 <test_performance+0x1e0>
    252e:	45 89 fe             	mov    %r15d,%r14d
    2531:	49 89 ef             	mov    %rbp,%r15
    2534:	48 8d b4 24 80 00 00 	lea    0x80(%rsp),%rsi
    253b:	00 
    253c:	bf 01 00 00 00       	mov    $0x1,%edi
    2541:	e8 ca eb ff ff       	call   1110 <clock_gettime@plt>
    2546:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
    254d:	00 
    254e:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    2552:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
    2556:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    255b:	45 89 f1             	mov    %r14d,%r9d
    255e:	4d 89 f8             	mov    %r15,%r8
    2561:	48 89 d9             	mov    %rbx,%rcx
    2564:	48 2b 54 24 70       	sub    0x70(%rsp),%rdx
    2569:	49 0f af c7          	imul   %r15,%rax
    256d:	48 8d 35 44 0b 00 00 	lea    0xb44(%rip),%rsi        # 30b8 <_IO_stdin_used+0xb8>
    2574:	c4 e1 f3 2a c2       	vcvtsi2sd %rdx,%xmm1,%xmm0
    2579:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
    2580:	00 
    2581:	48 2b 54 24 78       	sub    0x78(%rsp),%rdx
    2586:	48 0f af c7          	imul   %rdi,%rax
    258a:	bf 02 00 00 00       	mov    $0x2,%edi
    258f:	c4 e1 f3 2a d2       	vcvtsi2sd %rdx,%xmm1,%xmm2
    2594:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2599:	62 f1 f7 08 7b c8    	vcvtusi2sd %rax,%xmm1,%xmm1
    259f:	b8 02 00 00 00       	mov    $0x2,%eax
    25a4:	c4 e2 e9 99 05 6b 0b 	vfmadd132sd 0xb6b(%rip),%xmm2,%xmm0        # 3118 <_IO_stdin_used+0x118>
    25ab:	00 00 
    25ad:	c5 f3 59 0d 73 0b 00 	vmulsd 0xb73(%rip),%xmm1,%xmm1        # 3128 <_IO_stdin_used+0x128>
    25b4:	00 
    25b5:	c5 fb 59 05 63 0b 00 	vmulsd 0xb63(%rip),%xmm0,%xmm0        # 3120 <_IO_stdin_used+0x120>
    25bc:	00 
    25bd:	c5 f3 5e c8          	vdivsd %xmm0,%xmm1,%xmm1
    25c1:	e8 ca eb ff ff       	call   1190 <__printf_chk@plt>
    25c6:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
    25cb:	e8 30 eb ff ff       	call   1100 <free@plt>
    25d0:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
    25d5:	e8 26 eb ff ff       	call   1100 <free@plt>
    25da:	48 8b 84 24 98 00 00 	mov    0x98(%rsp),%rax
    25e1:	00 
    25e2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    25e9:	00 00 
    25eb:	75 1b                	jne    2608 <test_performance+0x3a8>
    25ed:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
    25f2:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
    25f9:	5b                   	pop    %rbx
    25fa:	5d                   	pop    %rbp
    25fb:	41 5c                	pop    %r12
    25fd:	41 5d                	pop    %r13
    25ff:	41 5e                	pop    %r14
    2601:	41 5f                	pop    %r15
    2603:	e9 f8 ea ff ff       	jmp    1100 <free@plt>
    2608:	e8 13 eb ff ff       	call   1120 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000002610 <_fini>:
    2610:	f3 0f 1e fa          	endbr64
    2614:	48 83 ec 08          	sub    $0x8,%rsp
    2618:	48 83 c4 08          	add    $0x8,%rsp
    261c:	c3                   	ret
