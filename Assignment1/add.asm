
add:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	push   0x2f6a(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp *0x2f6b(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 3d 2f 00 00 	bnd jmp *0x2f3d(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001090 <rand@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 05 2f 00 00 	bnd jmp *0x2f05(%rip)        # 3fa0 <rand@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <__cxa_atexit@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fa8 <__cxa_atexit@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <_ZNSolsEPFRSoS_E@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fb0 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <_ZNSt8ios_base4InitC1Ev@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 3fb8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <_ZNSolsEi@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 3fc0 <_ZNSolsEi@GLIBCXX_3.4>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 11c9 <main>
    10ff:	ff 15 d3 2e 00 00    	call   *0x2ed3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt    
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 

0000000000001110 <deregister_tm_clones>:
    1110:	48 8d 3d f9 2e 00 00 	lea    0x2ef9(%rip),%rdi        # 4010 <__TMC_END__>
    1117:	48 8d 05 f2 2e 00 00 	lea    0x2ef2(%rip),%rax        # 4010 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <deregister_tm_clones+0x28>
    1123:	48 8b 05 b6 2e 00 00 	mov    0x2eb6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <deregister_tm_clones+0x28>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <register_tm_clones>:
    1140:	48 8d 3d c9 2e 00 00 	lea    0x2ec9(%rip),%rdi        # 4010 <__TMC_END__>
    1147:	48 8d 35 c2 2e 00 00 	lea    0x2ec2(%rip),%rsi        # 4010 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    %rsi
    1162:	74 14                	je     1178 <register_tm_clones+0x38>
    1164:	48 8b 05 85 2e 00 00 	mov    0x2e85(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <register_tm_clones+0x38>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <__do_global_dtors_aux>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	80 3d c5 2f 00 00 00 	cmpb   $0x0,0x2fc5(%rip)        # 4150 <completed.0>
    118b:	75 2b                	jne    11b8 <__do_global_dtors_aux+0x38>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 32 2e 00 00 	cmpq   $0x0,0x2e32(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0c                	je     11a7 <__do_global_dtors_aux+0x27>
    119b:	48 8b 3d 66 2e 00 00 	mov    0x2e66(%rip),%rdi        # 4008 <__dso_handle>
    11a2:	e8 d9 fe ff ff       	call   1080 <__cxa_finalize@plt>
    11a7:	e8 64 ff ff ff       	call   1110 <deregister_tm_clones>
    11ac:	c6 05 9d 2f 00 00 01 	movb   $0x1,0x2f9d(%rip)        # 4150 <completed.0>
    11b3:	5d                   	pop    %rbp
    11b4:	c3                   	ret    
    11b5:	0f 1f 00             	nopl   (%rax)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <frame_dummy>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	e9 77 ff ff ff       	jmp    1140 <register_tm_clones>

00000000000011c9 <main>:
    11c9:	f3 0f 1e fa          	endbr64 
    11cd:	55                   	push   %rbp
    11ce:	48 89 e5             	mov    %rsp,%rbp
    11d1:	48 83 ec 10          	sub    $0x10,%rsp
    11d5:	e8 b6 fe ff ff       	call   1090 <rand@plt>
    11da:	48 63 d0             	movslq %eax,%rdx
    11dd:	48 69 d2 1f 85 eb 51 	imul   $0x51eb851f,%rdx,%rdx
    11e4:	48 c1 ea 20          	shr    $0x20,%rdx
    11e8:	c1 fa 05             	sar    $0x5,%edx
    11eb:	89 c1                	mov    %eax,%ecx
    11ed:	c1 f9 1f             	sar    $0x1f,%ecx
    11f0:	29 ca                	sub    %ecx,%edx
    11f2:	6b ca 64             	imul   $0x64,%edx,%ecx
    11f5:	29 c8                	sub    %ecx,%eax
    11f7:	89 c2                	mov    %eax,%edx
    11f9:	8d 42 01             	lea    0x1(%rdx),%eax
    11fc:	89 45 f4             	mov    %eax,-0xc(%rbp)
    11ff:	e8 8c fe ff ff       	call   1090 <rand@plt>
    1204:	89 c2                	mov    %eax,%edx
    1206:	48 63 c2             	movslq %edx,%rax
    1209:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    1210:	48 c1 e8 20          	shr    $0x20,%rax
    1214:	c1 f8 02             	sar    $0x2,%eax
    1217:	89 d6                	mov    %edx,%esi
    1219:	c1 fe 1f             	sar    $0x1f,%esi
    121c:	29 f0                	sub    %esi,%eax
    121e:	89 c1                	mov    %eax,%ecx
    1220:	89 c8                	mov    %ecx,%eax
    1222:	c1 e0 02             	shl    $0x2,%eax
    1225:	01 c8                	add    %ecx,%eax
    1227:	01 c0                	add    %eax,%eax
    1229:	89 d1                	mov    %edx,%ecx
    122b:	29 c1                	sub    %eax,%ecx
    122d:	8d 41 01             	lea    0x1(%rcx),%eax
    1230:	89 45 f8             	mov    %eax,-0x8(%rbp)
    1233:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1236:	89 c6                	mov    %eax,%esi
    1238:	48 8d 05 01 2e 00 00 	lea    0x2e01(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    123f:	48 89 c7             	mov    %rax,%rdi
    1242:	e8 89 fe ff ff       	call   10d0 <_ZNSolsEi@plt>
    1247:	48 8b 15 82 2d 00 00 	mov    0x2d82(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    124e:	48 89 d6             	mov    %rdx,%rsi
    1251:	48 89 c7             	mov    %rax,%rdi
    1254:	e8 57 fe ff ff       	call   10b0 <_ZNSolsEPFRSoS_E@plt>
    1259:	8b 45 f8             	mov    -0x8(%rbp),%eax
    125c:	89 c6                	mov    %eax,%esi
    125e:	48 8d 05 db 2d 00 00 	lea    0x2ddb(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1265:	48 89 c7             	mov    %rax,%rdi
    1268:	e8 63 fe ff ff       	call   10d0 <_ZNSolsEi@plt>
    126d:	48 8b 15 5c 2d 00 00 	mov    0x2d5c(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1274:	48 89 d6             	mov    %rdx,%rsi
    1277:	48 89 c7             	mov    %rax,%rdi
    127a:	e8 31 fe ff ff       	call   10b0 <_ZNSolsEPFRSoS_E@plt>
    127f:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1282:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1285:	01 d0                	add    %edx,%eax
    1287:	89 45 fc             	mov    %eax,-0x4(%rbp)
    128a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    128d:	89 c6                	mov    %eax,%esi
    128f:	48 8d 05 aa 2d 00 00 	lea    0x2daa(%rip),%rax        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1296:	48 89 c7             	mov    %rax,%rdi
    1299:	e8 32 fe ff ff       	call   10d0 <_ZNSolsEi@plt>
    129e:	48 8b 15 2b 2d 00 00 	mov    0x2d2b(%rip),%rdx        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    12a5:	48 89 d6             	mov    %rdx,%rsi
    12a8:	48 89 c7             	mov    %rax,%rdi
    12ab:	e8 00 fe ff ff       	call   10b0 <_ZNSolsEPFRSoS_E@plt>
    12b0:	b8 00 00 00 00       	mov    $0x0,%eax
    12b5:	c9                   	leave  
    12b6:	c3                   	ret    

00000000000012b7 <_Z41__static_initialization_and_destruction_0ii>:
    12b7:	f3 0f 1e fa          	endbr64 
    12bb:	55                   	push   %rbp
    12bc:	48 89 e5             	mov    %rsp,%rbp
    12bf:	48 83 ec 10          	sub    $0x10,%rsp
    12c3:	89 7d fc             	mov    %edi,-0x4(%rbp)
    12c6:	89 75 f8             	mov    %esi,-0x8(%rbp)
    12c9:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    12cd:	75 3b                	jne    130a <_Z41__static_initialization_and_destruction_0ii+0x53>
    12cf:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    12d6:	75 32                	jne    130a <_Z41__static_initialization_and_destruction_0ii+0x53>
    12d8:	48 8d 05 72 2e 00 00 	lea    0x2e72(%rip),%rax        # 4151 <_ZStL8__ioinit>
    12df:	48 89 c7             	mov    %rax,%rdi
    12e2:	e8 d9 fd ff ff       	call   10c0 <_ZNSt8ios_base4InitC1Ev@plt>
    12e7:	48 8d 05 1a 2d 00 00 	lea    0x2d1a(%rip),%rax        # 4008 <__dso_handle>
    12ee:	48 89 c2             	mov    %rax,%rdx
    12f1:	48 8d 05 59 2e 00 00 	lea    0x2e59(%rip),%rax        # 4151 <_ZStL8__ioinit>
    12f8:	48 89 c6             	mov    %rax,%rsi
    12fb:	48 8b 05 f6 2c 00 00 	mov    0x2cf6(%rip),%rax        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1302:	48 89 c7             	mov    %rax,%rdi
    1305:	e8 96 fd ff ff       	call   10a0 <__cxa_atexit@plt>
    130a:	90                   	nop
    130b:	c9                   	leave  
    130c:	c3                   	ret    

000000000000130d <_GLOBAL__sub_I_main>:
    130d:	f3 0f 1e fa          	endbr64 
    1311:	55                   	push   %rbp
    1312:	48 89 e5             	mov    %rsp,%rbp
    1315:	be ff ff 00 00       	mov    $0xffff,%esi
    131a:	bf 01 00 00 00       	mov    $0x1,%edi
    131f:	e8 93 ff ff ff       	call   12b7 <_Z41__static_initialization_and_destruction_0ii>
    1324:	5d                   	pop    %rbp
    1325:	c3                   	ret    

Disassembly of section .fini:

0000000000001328 <_fini>:
    1328:	f3 0f 1e fa          	endbr64 
    132c:	48 83 ec 08          	sub    $0x8,%rsp
    1330:	48 83 c4 08          	add    $0x8,%rsp
    1334:	c3                   	ret    
