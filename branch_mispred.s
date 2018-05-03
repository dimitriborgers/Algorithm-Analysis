	.file	"branch_mispred.c"
	.text
.Ltext0:
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	perf_event_open
	.type	perf_event_open, @function
perf_event_open:
.LFB91:
	.file 1 "branch_mispred.c"
	.loc 1 39 0
	.cfi_startproc
.LVL0:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 40 0
	movq	%r8, %r9
	xorl	%eax, %eax
	movl	%ecx, %r8d
.LVL1:
	movl	%edx, %ecx
.LVL2:
	movl	%esi, %edx
.LVL3:
	movq	%rdi, %rsi
.LVL4:
	movl	$298, %edi
.LVL5:
	call	syscall
.LVL6:
	.loc 1 41 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE91:
	.size	perf_event_open, .-perf_event_open
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Failed to get time stamp"
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	get_timestamp
	.type	get_timestamp, @function
get_timestamp:
.LFB93:
	.loc 1 206 0
	.cfi_startproc
.LVL7:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 209 0
	xorl	%esi, %esi
	leaq	16(%rsp), %rdi
	.loc 1 206 0
	movsd	%xmm0, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	.loc 1 209 0
	call	gettimeofday
.LVL8:
	testl	%eax, %eax
	jne	.L4
	.loc 1 210 0
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	24(%rsp), %xmm0
	mulsd	.LC2(%rip), %xmm0
	cvtsi2sdq	16(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	subsd	8(%rsp), %xmm0
.L5:
	.loc 1 215 0
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L9
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
.LVL9:
.LBB122:
.LBB123:
.LBB124:
.LBB125:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	$.LC3, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL10:
	movsd	.LC1(%rip), %xmm0
	jmp	.L5
.L9:
.LBE125:
.LBE124:
.LBE123:
.LBE122:
	.loc 1 215 0
	call	__stack_chk_fail
.LVL11:
	.cfi_endproc
.LFE93:
	.size	get_timestamp, .-get_timestamp
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	createData
	.type	createData, @function
createData:
.LFB94:
	.loc 1 223 0
	.cfi_startproc
.LVL12:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	3000(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r12
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 223 0
	movsd	%xmm0, 8(%rsp)
.LVL13:
	.p2align 4,,10
	.p2align 3
.L11:
	.loc 1 228 0
	call	rand
.LVL14:
	pxor	%xmm0, %xmm0
	movsd	8(%rsp), %xmm1
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC5(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	seta	(%rbx)
	.loc 1 234 0
	addq	$1, %rbx
.LVL15:
	.loc 1 227 0
	cmpq	%rbp, %rbx
	jne	.L11
	.loc 1 236 0
	movb	$0, 3000(%r12)
	.loc 1 238 0
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rbx, %rax
.LVL16:
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL17:
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	createData, .-createData
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	createOffsets
	.type	createOffsets, @function
createOffsets:
.LFB95:
	.loc 1 246 0
	.cfi_startproc
.LVL18:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	400000000(%rdi), %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LVL19:
	.p2align 4,,10
	.p2align 3
.L15:
.LBB126:
	.loc 1 249 0 discriminator 3
	call	rand
.LVL20:
	.loc 1 250 0 discriminator 3
	pxor	%xmm0, %xmm0
	addq	$4, %rbx
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC5(%rip), %xmm0
	mulsd	.LC7(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LVL21:
	movl	%eax, -4(%rbx)
.LBE126:
	.loc 1 248 0 discriminator 3
	cmpq	%rbp, %rbx
	jne	.L15
	.loc 1 253 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL22:
	ret
	.cfi_endproc
.LFE95:
	.size	createOffsets, .-createOffsets
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"Opening performance counter"
.LC10:
	.string	"argument error!"
.LC11:
	.string	"Loop start!"
.LC13:
	.string	"branch_mispred.c"
.LC14:
	.string	"rc"
.LC15:
	.string	"Loop stop!"
.LC16:
	.string	"Elapsed time: %.9lf seconds\n"
.LC17:
	.string	"CPU Cycles:           %lu \n"
.LC18:
	.string	"Instructions:         %lu \n"
.LC19:
	.string	"IPC:                  %lf\n"
.LC20:
	.string	"Branch misses:        %lu \n"
.LC21:
	.string	"Branch instructions:  %lu \n"
.LC23:
	.string	"Branch mispred. rate: %lf%%\n"
.LC25:
	.string	"overall selectivity = %10.9f\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC26:
	.string	"theoretical selectivity = %10.9f\n"
	.section	.rodata.str1.1
.LC27:
	.string	"w"
.LC28:
	.string	"/dev/null"
.LC29:
	.string	"%d "
	.section	.text.unlikely
.LCOLDB30:
	.section	.text.startup,"ax",@progbits
.LHOTB30:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB92:
	.loc 1 52 0
	.cfi_startproc
.LVL23:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebp
	movq	%rsi, %rbx
	subq	$12200, %rsp
	.cfi_def_cfa_offset 12256
	.loc 1 64 0
	movl	$0, attr(%rip)
	.loc 1 66 0
	andb	$-2, attr+40(%rip)
	.loc 1 52 0
	movq	%fs:40, %rax
	movq	%rax, 12184(%rsp)
	xorl	%eax, %eax
.LVL24:
	.loc 1 65 0
	movq	$0, attr+8(%rip)
	.loc 1 67 0
	call	getpid
.LVL25:
.LBB127:
.LBB128:
	.loc 1 40 0
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	movl	%eax, %edx
	movl	%r8d, %ecx
	xorl	%eax, %eax
.LVL26:
	movl	$attr, %esi
	movl	$298, %edi
	call	syscall
.LVL27:
.LBE128:
.LBE127:
	.loc 1 68 0
	testl	%eax, %eax
.LBB130:
.LBB129:
	.loc 1 40 0
	movq	%rax, %r15
.LVL28:
.LBE129:
.LBE130:
	.loc 1 68 0
	js	.L54
.LVL29:
.L19:
	.loc 1 74 0
	andb	$-2, attr+152(%rip)
	.loc 1 72 0
	movl	$0, attr+112(%rip)
	.loc 1 73 0
	movq	$5, attr+120(%rip)
	.loc 1 75 0
	call	getpid
.LVL30:
.LBB131:
.LBB132:
	.loc 1 40 0
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	movl	%eax, %edx
	movl	%r8d, %ecx
	xorl	%eax, %eax
.LVL31:
	movl	$attr+112, %esi
.LVL32:
	movl	$298, %edi
	call	syscall
.LVL33:
.LBE132:
.LBE131:
	.loc 1 76 0
	testl	%eax, %eax
.LBB134:
.LBB133:
	.loc 1 40 0
	movq	%rax, 16(%rsp)
.LVL34:
.LBE133:
.LBE134:
	.loc 1 76 0
	js	.L55
.LVL35:
.L20:
	.loc 1 82 0
	andb	$-2, attr+264(%rip)
	.loc 1 80 0
	movl	$0, attr+224(%rip)
	.loc 1 81 0
	movq	$4, attr+232(%rip)
	.loc 1 83 0
	call	getpid
.LVL36:
.LBB135:
.LBB136:
	.loc 1 40 0
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	movl	%eax, %edx
	movl	%r8d, %ecx
	xorl	%eax, %eax
.LVL37:
	movl	$attr+224, %esi
.LVL38:
	movl	$298, %edi
	call	syscall
.LVL39:
.LBE136:
.LBE135:
	.loc 1 84 0
	testl	%eax, %eax
.LBB138:
.LBB137:
	.loc 1 40 0
	movq	%rax, 24(%rsp)
.LVL40:
.LBE137:
.LBE138:
	.loc 1 84 0
	js	.L56
.LVL41:
.L21:
	.loc 1 90 0
	andb	$-2, attr+376(%rip)
	.loc 1 88 0
	movl	$0, attr+336(%rip)
	.loc 1 89 0
	movq	$1, attr+344(%rip)
	.loc 1 91 0
	call	getpid
.LVL42:
.LBB139:
.LBB140:
	.loc 1 40 0
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	movl	%eax, %edx
	movl	%r8d, %ecx
	xorl	%eax, %eax
.LVL43:
	movl	$attr+336, %esi
.LVL44:
	movl	$298, %edi
	call	syscall
.LVL45:
.LBE140:
.LBE139:
	.loc 1 92 0
	testl	%eax, %eax
.LBB142:
.LBB141:
	.loc 1 40 0
	movq	%rax, 32(%rsp)
.LVL46:
.LBE141:
.LBE142:
	.loc 1 92 0
	js	.L57
.LVL47:
.L22:
	.loc 1 97 0
	cmpl	$5, %ebp
	jne	.L58
.LVL48:
.LBB143:
.LBB144:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.loc 3 28 0
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	call	strtod
.LVL49:
.LBE144:
.LBE143:
.LBB146:
.LBB147:
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
.LBE147:
.LBE146:
.LBB150:
.LBB145:
	movsd	%xmm0, 64(%rsp)
.LBE145:
.LBE150:
.LBB151:
.LBB148:
	call	strtod
.LVL50:
.LBE148:
.LBE151:
.LBB152:
.LBB153:
	movq	24(%rbx), %rdi
	xorl	%esi, %esi
.LBE153:
.LBE152:
.LBB156:
.LBB149:
	movsd	%xmm0, 56(%rsp)
.LBE149:
.LBE156:
.LBB157:
.LBB154:
	call	strtod
.LVL51:
.LBE154:
.LBE157:
.LBB158:
.LBB159:
	movq	32(%rbx), %rdi
	xorl	%esi, %esi
.LBE159:
.LBE158:
.LBB162:
.LBB155:
	movsd	%xmm0, 48(%rsp)
.LBE155:
.LBE162:
.LBB163:
.LBB160:
	call	strtod
.LVL52:
.LBE160:
.LBE163:
	.loc 1 109 0
	movl	$400000000, %edi
.LBB164:
.LBB161:
	.loc 3 28 0
	movsd	%xmm0, 40(%rsp)
.LBE161:
.LBE164:
	.loc 1 109 0
	call	malloc
.LVL53:
	.loc 1 110 0
	movl	$400000000, %edi
	.loc 1 109 0
	movq	%rax, %rbx
.LVL54:
	.loc 1 110 0
	call	malloc
.LVL55:
	.loc 1 111 0
	movl	$400000000, %edi
	.loc 1 110 0
	movq	%rax, %r14
.LVL56:
	.loc 1 111 0
	call	malloc
.LVL57:
	.loc 1 112 0
	movl	$400000000, %edi
	.loc 1 111 0
	movq	%rax, %r13
.LVL58:
	.loc 1 112 0
	call	malloc
.LVL59:
	.loc 1 113 0
	movl	$400000000, %edi
	.loc 1 112 0
	movq	%rax, %r12
	movq	%rax, 8(%rsp)
.LVL60:
	.loc 1 113 0
	call	malloc
.LVL61:
	.loc 1 116 0
	xorl	%edi, %edi
	.loc 1 113 0
	movq	%rax, %rbp
.LVL62:
	.loc 1 116 0
	call	time
.LVL63:
	.loc 1 117 0
	movl	%eax, %edi
	call	srand
.LVL64:
	.loc 1 120 0
	leaq	144(%rsp), %rdi
	movsd	64(%rsp), %xmm0
	call	createData
.LVL65:
	.loc 1 121 0
	leaq	3152(%rsp), %rdi
	movsd	56(%rsp), %xmm0
	call	createData
.LVL66:
	.loc 1 122 0
	leaq	6160(%rsp), %rdi
	movsd	48(%rsp), %xmm0
	call	createData
.LVL67:
	.loc 1 123 0
	movsd	40(%rsp), %xmm0
	leaq	9168(%rsp), %rdi
	call	createData
.LVL68:
	.loc 1 126 0
	movq	%rbx, %rdi
	call	createOffsets
.LVL69:
	.loc 1 127 0
	movq	%r14, %rdi
	call	createOffsets
.LVL70:
	.loc 1 128 0
	movq	%r13, %rdi
	call	createOffsets
.LVL71:
	.loc 1 129 0
	movq	%r12, %rdi
	call	createOffsets
.LVL72:
.LBB165:
.LBB166:
	.loc 2 104 0
	movl	$.LC11, %edi
	call	puts
.LVL73:
.LBE166:
.LBE165:
	.loc 1 133 0
	movq	stdout(%rip), %rdi
	call	fflush
.LVL74:
	.loc 1 134 0
	pxor	%xmm0, %xmm0
	call	get_timestamp
.LVL75:
	movsd	%xmm0, 72(%rsp)
.LVL76:
	.loc 1 137 0
#APP
# 137 "branch_mispred.c" 1
	nop;
# 0 "" 2
.LVL77:
#NO_APP
.LBB167:
.LBB168:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/unistd.h"
	.loc 4 44 0
	leaq	80(%rsp), %rsi
.LVL78:
	movl	$8, %edx
	movl	%r15d, %edi
	call	read
.LVL79:
.LBE168:
.LBE167:
	.loc 1 138 0
	testl	%eax, %eax
	je	.L59
.LVL80:
.LBB169:
.LBB170:
	.loc 4 44 0
	movl	16(%rsp), %edi
	leaq	88(%rsp), %rsi
.LVL81:
	movl	$8, %edx
	call	read
.LVL82:
.LBE170:
.LBE169:
	.loc 1 139 0
	testl	%eax, %eax
	je	.L60
.LVL83:
.LBB171:
.LBB172:
	.loc 4 44 0
	movl	24(%rsp), %edi
	leaq	96(%rsp), %rsi
.LVL84:
	movl	$8, %edx
	call	read
.LVL85:
.LBE172:
.LBE171:
	.loc 1 140 0
	testl	%eax, %eax
	je	.L61
.LVL86:
.LBB173:
.LBB174:
	.loc 4 44 0
	movl	32(%rsp), %edi
	leaq	104(%rsp), %rsi
.LVL87:
	movl	$8, %edx
	call	read
.LVL88:
.LBE174:
.LBE173:
	.loc 1 141 0
	testl	%eax, %eax
	je	.L62
	.loc 1 142 0
#APP
# 142 "branch_mispred.c" 1
	nop;
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
.LVL89:
	.loc 1 55 0
	xorl	%r12d, %r12d
.LVL90:
	.p2align 4,,10
	.p2align 3
.L30:
	.loc 1 147 0
	movslq	0(%r13,%rax,4), %rdx
	cmpb	$0, 6160(%rsp,%rdx)
	je	.L29
	.loc 1 147 0 is_stmt 0 discriminator 1
	movslq	(%r14,%rax,4), %rdx
	cmpb	$0, 3152(%rsp,%rdx)
	je	.L29
	.loc 1 147 0 discriminator 2
	movslq	(%rbx,%rax,4), %rdx
	cmpb	$0, 144(%rsp,%rdx)
	je	.L29
	.loc 1 149 0 is_stmt 1
	movq	8(%rsp), %rcx
	.loc 1 148 0
	movslq	%r12d, %rdx
	movl	%eax, 0(%rbp,%rdx,4)
	.loc 1 149 0
	movslq	(%rcx,%rax,4), %rdx
	movsbl	9168(%rsp,%rdx), %edx
	addl	%edx, %r12d
.LVL91:
	.p2align 4,,10
	.p2align 3
.L29:
	addq	$1, %rax
.LVL92:
	.loc 1 146 0 discriminator 2
	cmpq	$100000000, %rax
	jne	.L30
	.loc 1 154 0
#APP
# 154 "branch_mispred.c" 1
	nop;
# 0 "" 2
.LVL93:
#NO_APP
.LBB175:
.LBB176:
	.loc 4 44 0
	leaq	112(%rsp), %rsi
.LVL94:
	movl	$8, %edx
	movl	%r15d, %edi
	call	read
.LVL95:
.LBE176:
.LBE175:
	.loc 1 155 0
	testl	%eax, %eax
	je	.L63
.LVL96:
.LBB177:
.LBB178:
	.loc 4 44 0
	movl	16(%rsp), %edi
	leaq	120(%rsp), %rsi
.LVL97:
	movl	$8, %edx
	call	read
.LVL98:
.LBE178:
.LBE177:
	.loc 1 156 0
	testl	%eax, %eax
	je	.L64
.LVL99:
.LBB179:
.LBB180:
	.loc 4 44 0
	movl	24(%rsp), %edi
	leaq	128(%rsp), %rsi
.LVL100:
	movl	$8, %edx
	call	read
.LVL101:
.LBE180:
.LBE179:
	.loc 1 157 0
	testl	%eax, %eax
	je	.L65
.LVL102:
.LBB181:
.LBB182:
	.loc 4 44 0
	movl	32(%rsp), %edi
	leaq	136(%rsp), %rsi
.LVL103:
	movl	$8, %edx
	call	read
.LVL104:
.LBE182:
.LBE181:
	.loc 1 158 0
	testl	%eax, %eax
	je	.L66
	.loc 1 160 0
#APP
# 160 "branch_mispred.c" 1
	nop;
# 0 "" 2
	.loc 1 163 0
#NO_APP
	movl	%r15d, %edi
	call	close
.LVL105:
	.loc 1 164 0
	movl	16(%rsp), %edi
	call	close
.LVL106:
	.loc 1 165 0
	movl	24(%rsp), %edi
	call	close
.LVL107:
	.loc 1 166 0
	movl	32(%rsp), %edi
	call	close
.LVL108:
	.loc 1 168 0
	movsd	72(%rsp), %xmm0
	call	get_timestamp
.LVL109:
.LBB183:
.LBB184:
	.loc 2 104 0
	movl	$.LC15, %edi
.LBE184:
.LBE183:
	.loc 1 168 0
	movsd	%xmm0, 16(%rsp)
.LVL110:
.LBB186:
.LBB185:
	.loc 2 104 0
	call	puts
.LVL111:
.LBE185:
.LBE186:
.LBB187:
.LBB188:
	movsd	16(%rsp), %xmm0
	movl	$.LC16, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL112:
.LBE188:
.LBE187:
.LBB189:
.LBB190:
	movq	112(%rsp), %rdx
	subq	80(%rsp), %rdx
	movl	$.LC17, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL113:
.LBE190:
.LBE189:
.LBB191:
.LBB192:
	movq	136(%rsp), %rdx
	subq	104(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC18, %esi
	movl	$1, %edi
	call	__printf_chk
.LVL114:
.LBE192:
.LBE191:
.LBB193:
.LBB194:
	movq	136(%rsp), %rdx
	testq	%rdx, %rdx
	js	.L35
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L36:
	movq	104(%rsp), %rax
	testq	%rax, %rax
	js	.L37
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L38:
	movq	112(%rsp), %rax
	subq	80(%rsp), %rax
	subsd	%xmm1, %xmm0
	js	.L39
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L40:
	divsd	%xmm1, %xmm0
	movl	$.LC19, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL115:
.LBE194:
.LBE193:
.LBB196:
.LBB197:
	movq	120(%rsp), %rdx
	subq	88(%rsp), %rdx
	movl	$.LC20, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
.LVL116:
.LBE197:
.LBE196:
.LBB198:
.LBB199:
	movq	128(%rsp), %rdx
	subq	96(%rsp), %rdx
	xorl	%eax, %eax
	movl	$.LC21, %esi
	movl	$1, %edi
	call	__printf_chk
.LVL117:
.LBE199:
.LBE198:
.LBB200:
.LBB201:
	movq	120(%rsp), %rdx
	testq	%rdx, %rdx
	js	.L41
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L42:
	movq	88(%rsp), %rax
	testq	%rax, %rax
	js	.L43
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L44:
	subsd	%xmm1, %xmm0
	movq	128(%rsp), %rax
	subq	96(%rsp), %rax
	mulsd	.LC22(%rip), %xmm0
	js	.L45
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L46:
	divsd	%xmm1, %xmm0
	movl	$.LC23, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL118:
.LBE201:
.LBE200:
.LBB203:
.LBB204:
	movl	$10, %edi
	call	putchar
.LVL119:
.LBE204:
.LBE203:
.LBB205:
.LBB206:
	pxor	%xmm0, %xmm0
	movl	$.LC25, %esi
	movl	$1, %edi
	movl	$1, %eax
	cvtsi2sd	%r12d, %xmm0
	divsd	.LC24(%rip), %xmm0
	call	__printf_chk
.LVL120:
.LBE206:
.LBE205:
.LBB207:
.LBB208:
	movsd	56(%rsp), %xmm0
	movl	$.LC26, %esi
	movl	$1, %edi
	movl	$1, %eax
	mulsd	64(%rsp), %xmm0
	mulsd	48(%rsp), %xmm0
	mulsd	40(%rsp), %xmm0
	call	__printf_chk
.LVL121:
.LBE208:
.LBE207:
	.loc 1 184 0
	movl	$.LC27, %esi
	movl	$.LC28, %edi
	call	fopen
.LVL122:
	.loc 1 185 0
	testl	%r12d, %r12d
	.loc 1 184 0
	movq	%rax, 16(%rsp)
.LVL123:
	.loc 1 185 0
	jle	.L49
	leal	-1(%r12), %eax
.LVL124:
	movq	%rbp, %r15
	leaq	4(%rbp,%rax,4), %r12
.LVL125:
	.p2align 4,,10
	.p2align 3
.L48:
.LBB209:
.LBB210:
	.loc 2 97 0 discriminator 3
	movl	(%r15), %ecx
	movq	16(%rsp), %rdi
	xorl	%eax, %eax
	movl	$.LC29, %edx
	movl	$1, %esi
	addq	$4, %r15
	call	__fprintf_chk
.LVL126:
.LBE210:
.LBE209:
	.loc 1 185 0 discriminator 3
	cmpq	%r15, %r12
	jne	.L48
.L49:
	.loc 1 188 0
	movq	16(%rsp), %rdi
	call	fclose
.LVL127:
	.loc 1 191 0
	movq	%rbx, %rdi
	call	free
.LVL128:
	.loc 1 192 0
	movq	%r14, %rdi
	call	free
.LVL129:
	.loc 1 193 0
	movq	%r13, %rdi
	call	free
.LVL130:
	.loc 1 194 0
	movq	8(%rsp), %rdi
	call	free
.LVL131:
	.loc 1 196 0
	movq	%rbp, %rdi
	call	free
.LVL132:
	.loc 1 198 0
	xorl	%eax, %eax
.LVL133:
.L24:
	.loc 1 199 0
	movq	12184(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L67
	addq	$12200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL134:
.L35:
	.cfi_restore_state
.LBB211:
.LBB195:
	.loc 2 104 0
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L36
.L37:
	movq	%rax, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L38
.L39:
	movq	%rax, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L40
.LVL135:
.L41:
.LBE195:
.LBE211:
.LBB212:
.LBB202:
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L42
.L43:
	movq	%rax, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L44
.L45:
	movq	%rax, %rdx
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L46
.LVL136:
.L55:
.LBE202:
.LBE212:
	.loc 1 77 0
	movl	$.LC9, %edi
	call	perror
.LVL137:
	jmp	.L20
.LVL138:
.L57:
	.loc 1 93 0
	movl	$.LC9, %edi
	call	perror
.LVL139:
	jmp	.L22
.LVL140:
.L54:
	.loc 1 69 0
	movl	$.LC9, %edi
	call	perror
.LVL141:
	jmp	.L19
.LVL142:
.L56:
	.loc 1 85 0
	movl	$.LC9, %edi
	call	perror
.LVL143:
	jmp	.L21
.L58:
.LVL144:
.LBB213:
.LBB214:
	.loc 2 104 0
	movl	$.LC10, %edi
	call	puts
.LVL145:
.LBE214:
.LBE213:
	.loc 1 99 0
	orl	$-1, %eax
	jmp	.L24
.LVL146:
.L60:
	.loc 1 139 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.5159, %ecx
	movl	$139, %edx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.LVL147:
.L64:
	.loc 1 156 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.5159, %ecx
	movl	$156, %edx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.LVL148:
.L66:
	.loc 1 158 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.5159, %ecx
	movl	$158, %edx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.LVL149:
.L67:
	.loc 1 199 0
	call	__stack_chk_fail
.LVL150:
.L63:
	.loc 1 155 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.5159, %ecx
	movl	$155, %edx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.LVL151:
.L59:
	.loc 1 138 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.5159, %ecx
	movl	$138, %edx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.LVL152:
.L65:
	.loc 1 157 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.5159, %ecx
	movl	$157, %edx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.LVL153:
.L62:
	.loc 1 141 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.5159, %ecx
	movl	$141, %edx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.LVL154:
.L61:
	.loc 1 140 0 discriminator 1
	movl	$__PRETTY_FUNCTION__.5159, %ecx
	movl	$140, %edx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	call	__assert_fail
.LVL155:
	.cfi_endproc
.LFE92:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE30:
	.section	.text.startup
.LHOTE30:
	.section	.rodata
	.type	__PRETTY_FUNCTION__.5159, @object
	.size	__PRETTY_FUNCTION__.5159, 5
__PRETTY_FUNCTION__.5159:
	.string	"main"
	.comm	attr,448,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	-1074790400
	.align 8
.LC2:
	.long	2696277389
	.long	1051772663
	.align 8
.LC5:
	.long	0
	.long	1040187392
	.align 8
.LC7:
	.long	0
	.long	1084715008
	.align 8
.LC22:
	.long	0
	.long	1079574528
	.align 8
.LC24:
	.long	0
	.long	1100470148
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.file 11 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 12 "/usr/include/stdint.h"
	.file 13 "/usr/include/asm-generic/int-ll64.h"
	.file 14 "/usr/include/linux/perf_event.h"
	.file 15 "/usr/include/unistd.h"
	.file 16 "/usr/include/stdlib.h"
	.file 17 "<built-in>"
	.file 18 "/usr/include/time.h"
	.file 19 "/usr/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1d1d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF204
	.byte	0xc
	.long	.LASF205
	.long	.LASF206
	.long	.Ldebug_ranges0+0x240
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF8
	.byte	0x5
	.byte	0xd8
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x6
	.byte	0x83
	.long	0x6c
	.uleb128 0x4
	.long	.LASF10
	.byte	0x6
	.byte	0x84
	.long	0x6c
	.uleb128 0x4
	.long	.LASF11
	.byte	0x6
	.byte	0x85
	.long	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x6
	.byte	0x8b
	.long	0x6c
	.uleb128 0x4
	.long	.LASF14
	.byte	0x6
	.byte	0x8d
	.long	0x6c
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF15
	.byte	0x6
	.byte	0xac
	.long	0x6c
	.uleb128 0x6
	.byte	0x8
	.long	0xc4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x4
	.long	.LASF17
	.byte	0x7
	.byte	0x30
	.long	0xd6
	.uleb128 0x7
	.long	.LASF47
	.byte	0xd8
	.byte	0x8
	.byte	0xf1
	.long	0x253
	.uleb128 0x8
	.long	.LASF18
	.byte	0x8
	.byte	0xf2
	.long	0x30
	.byte	0
	.uleb128 0x8
	.long	.LASF19
	.byte	0x8
	.byte	0xf7
	.long	0xbe
	.byte	0x8
	.uleb128 0x8
	.long	.LASF20
	.byte	0x8
	.byte	0xf8
	.long	0xbe
	.byte	0x10
	.uleb128 0x8
	.long	.LASF21
	.byte	0x8
	.byte	0xf9
	.long	0xbe
	.byte	0x18
	.uleb128 0x8
	.long	.LASF22
	.byte	0x8
	.byte	0xfa
	.long	0xbe
	.byte	0x20
	.uleb128 0x8
	.long	.LASF23
	.byte	0x8
	.byte	0xfb
	.long	0xbe
	.byte	0x28
	.uleb128 0x8
	.long	.LASF24
	.byte	0x8
	.byte	0xfc
	.long	0xbe
	.byte	0x30
	.uleb128 0x8
	.long	.LASF25
	.byte	0x8
	.byte	0xfd
	.long	0xbe
	.byte	0x38
	.uleb128 0x8
	.long	.LASF26
	.byte	0x8
	.byte	0xfe
	.long	0xbe
	.byte	0x40
	.uleb128 0x9
	.long	.LASF27
	.byte	0x8
	.value	0x100
	.long	0xbe
	.byte	0x48
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.value	0x101
	.long	0xbe
	.byte	0x50
	.uleb128 0x9
	.long	.LASF29
	.byte	0x8
	.value	0x102
	.long	0xbe
	.byte	0x58
	.uleb128 0x9
	.long	.LASF30
	.byte	0x8
	.value	0x104
	.long	0x28b
	.byte	0x60
	.uleb128 0x9
	.long	.LASF31
	.byte	0x8
	.value	0x106
	.long	0x291
	.byte	0x68
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.value	0x108
	.long	0x30
	.byte	0x70
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.value	0x10c
	.long	0x30
	.byte	0x74
	.uleb128 0x9
	.long	.LASF34
	.byte	0x8
	.value	0x10e
	.long	0x73
	.byte	0x78
	.uleb128 0x9
	.long	.LASF35
	.byte	0x8
	.value	0x112
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF36
	.byte	0x8
	.value	0x113
	.long	0x5e
	.byte	0x82
	.uleb128 0x9
	.long	.LASF37
	.byte	0x8
	.value	0x114
	.long	0x297
	.byte	0x83
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.value	0x118
	.long	0x2a7
	.byte	0x88
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.value	0x121
	.long	0x7e
	.byte	0x90
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.value	0x129
	.long	0xb1
	.byte	0x98
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.value	0x12a
	.long	0xb1
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.value	0x12b
	.long	0xb1
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.value	0x12c
	.long	0xb1
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.value	0x12e
	.long	0x37
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.value	0x12f
	.long	0x30
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.value	0x131
	.long	0x2ad
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF207
	.byte	0x8
	.byte	0x96
	.uleb128 0x7
	.long	.LASF48
	.byte	0x18
	.byte	0x8
	.byte	0x9c
	.long	0x28b
	.uleb128 0x8
	.long	.LASF49
	.byte	0x8
	.byte	0x9d
	.long	0x28b
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x8
	.byte	0x9e
	.long	0x291
	.byte	0x8
	.uleb128 0x8
	.long	.LASF51
	.byte	0x8
	.byte	0xa2
	.long	0x30
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x25a
	.uleb128 0x6
	.byte	0x8
	.long	0xd6
	.uleb128 0xb
	.long	0xc4
	.long	0x2a7
	.uleb128 0xc
	.long	0x94
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x253
	.uleb128 0xb
	.long	0xc4
	.long	0x2bd
	.uleb128 0xc
	.long	0x94
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c3
	.uleb128 0xd
	.long	0xc4
	.uleb128 0x4
	.long	.LASF52
	.byte	0x7
	.byte	0x66
	.long	0xb3
	.uleb128 0x6
	.byte	0x8
	.long	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x4
	.long	.LASF54
	.byte	0x9
	.byte	0x62
	.long	0x89
	.uleb128 0x7
	.long	.LASF55
	.byte	0x10
	.byte	0xa
	.byte	0x1e
	.long	0x310
	.uleb128 0x8
	.long	.LASF56
	.byte	0xa
	.byte	0x20
	.long	0x9b
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0xa
	.byte	0x21
	.long	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF58
	.uleb128 0x7
	.long	.LASF59
	.byte	0x8
	.byte	0xb
	.byte	0x37
	.long	0x33c
	.uleb128 0x8
	.long	.LASF60
	.byte	0xb
	.byte	0x39
	.long	0x30
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0xb
	.byte	0x3a
	.long	0x30
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x317
	.uleb128 0xe
	.long	0x33c
	.uleb128 0x4
	.long	.LASF62
	.byte	0xc
	.byte	0x37
	.long	0x42
	.uleb128 0x4
	.long	.LASF63
	.byte	0xd
	.byte	0x19
	.long	0x30
	.uleb128 0x4
	.long	.LASF64
	.byte	0xd
	.byte	0x1a
	.long	0x57
	.uleb128 0x4
	.long	.LASF65
	.byte	0xd
	.byte	0x1e
	.long	0x310
	.uleb128 0xf
	.long	.LASF73
	.byte	0x4
	.long	0x57
	.byte	0xe
	.byte	0x1c
	.long	0x3ae
	.uleb128 0x10
	.long	.LASF66
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x1
	.uleb128 0x10
	.long	.LASF68
	.byte	0x2
	.uleb128 0x10
	.long	.LASF69
	.byte	0x3
	.uleb128 0x10
	.long	.LASF70
	.byte	0x4
	.uleb128 0x10
	.long	.LASF71
	.byte	0x5
	.uleb128 0x10
	.long	.LASF72
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	.LASF74
	.byte	0x4
	.long	0x57
	.byte	0xe
	.byte	0x2c
	.long	0x401
	.uleb128 0x10
	.long	.LASF75
	.byte	0
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.uleb128 0x10
	.long	.LASF77
	.byte	0x2
	.uleb128 0x10
	.long	.LASF78
	.byte	0x3
	.uleb128 0x10
	.long	.LASF79
	.byte	0x4
	.uleb128 0x10
	.long	.LASF80
	.byte	0x5
	.uleb128 0x10
	.long	.LASF81
	.byte	0x6
	.uleb128 0x10
	.long	.LASF82
	.byte	0x7
	.uleb128 0x10
	.long	.LASF83
	.byte	0x8
	.uleb128 0x10
	.long	.LASF84
	.byte	0x9
	.uleb128 0x10
	.long	.LASF85
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF86
	.byte	0x4
	.long	0x57
	.byte	0xe
	.byte	0x9c
	.long	0x46c
	.uleb128 0x10
	.long	.LASF87
	.byte	0
	.uleb128 0x10
	.long	.LASF88
	.byte	0x1
	.uleb128 0x10
	.long	.LASF89
	.byte	0x2
	.uleb128 0x10
	.long	.LASF90
	.byte	0x3
	.uleb128 0x10
	.long	.LASF91
	.byte	0x4
	.uleb128 0x10
	.long	.LASF92
	.byte	0x5
	.uleb128 0x10
	.long	.LASF93
	.byte	0x6
	.uleb128 0x10
	.long	.LASF94
	.byte	0x7
	.uleb128 0x10
	.long	.LASF95
	.byte	0x8
	.uleb128 0x10
	.long	.LASF96
	.byte	0x9
	.uleb128 0x10
	.long	.LASF97
	.byte	0xa
	.uleb128 0x10
	.long	.LASF98
	.byte	0xb
	.uleb128 0x10
	.long	.LASF99
	.byte	0xc
	.uleb128 0x10
	.long	.LASF100
	.byte	0xd
	.uleb128 0x10
	.long	.LASF101
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0xe
	.value	0x123
	.long	0x48e
	.uleb128 0x12
	.long	.LASF102
	.byte	0xe
	.value	0x124
	.long	0x368
	.uleb128 0x12
	.long	.LASF103
	.byte	0xe
	.value	0x125
	.long	0x368
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0xe
	.value	0x153
	.long	0x4b0
	.uleb128 0x12
	.long	.LASF104
	.byte	0xe
	.value	0x154
	.long	0x35d
	.uleb128 0x12
	.long	.LASF105
	.byte	0xe
	.value	0x155
	.long	0x35d
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0xe
	.value	0x159
	.long	0x4d2
	.uleb128 0x12
	.long	.LASF106
	.byte	0xe
	.value	0x15a
	.long	0x368
	.uleb128 0x12
	.long	.LASF107
	.byte	0xe
	.value	0x15b
	.long	0x368
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0xe
	.value	0x15d
	.long	0x4f4
	.uleb128 0x12
	.long	.LASF108
	.byte	0xe
	.value	0x15e
	.long	0x368
	.uleb128 0x12
	.long	.LASF109
	.byte	0xe
	.value	0x15f
	.long	0x368
	.byte	0
	.uleb128 0x13
	.long	.LASF110
	.byte	0x70
	.byte	0xe
	.value	0x112
	.long	0x773
	.uleb128 0x9
	.long	.LASF111
	.byte	0xe
	.value	0x117
	.long	0x35d
	.byte	0
	.uleb128 0x9
	.long	.LASF112
	.byte	0xe
	.value	0x11c
	.long	0x35d
	.byte	0x4
	.uleb128 0x9
	.long	.LASF113
	.byte	0xe
	.value	0x121
	.long	0x368
	.byte	0x8
	.uleb128 0x14
	.long	0x46c
	.byte	0x10
	.uleb128 0x9
	.long	.LASF114
	.byte	0xe
	.value	0x128
	.long	0x368
	.byte	0x18
	.uleb128 0x9
	.long	.LASF115
	.byte	0xe
	.value	0x129
	.long	0x368
	.byte	0x20
	.uleb128 0x15
	.long	.LASF116
	.byte	0xe
	.value	0x12b
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x3f
	.byte	0x28
	.uleb128 0x15
	.long	.LASF117
	.byte	0xe
	.value	0x12c
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x3e
	.byte	0x28
	.uleb128 0x15
	.long	.LASF118
	.byte	0xe
	.value	0x12d
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x3d
	.byte	0x28
	.uleb128 0x15
	.long	.LASF119
	.byte	0xe
	.value	0x12e
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x3c
	.byte	0x28
	.uleb128 0x15
	.long	.LASF120
	.byte	0xe
	.value	0x12f
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x3b
	.byte	0x28
	.uleb128 0x15
	.long	.LASF121
	.byte	0xe
	.value	0x130
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x3a
	.byte	0x28
	.uleb128 0x15
	.long	.LASF122
	.byte	0xe
	.value	0x131
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0x28
	.uleb128 0x15
	.long	.LASF123
	.byte	0xe
	.value	0x132
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0x28
	.uleb128 0x15
	.long	.LASF124
	.byte	0xe
	.value	0x133
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x37
	.byte	0x28
	.uleb128 0x15
	.long	.LASF125
	.byte	0xe
	.value	0x134
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x36
	.byte	0x28
	.uleb128 0x15
	.long	.LASF126
	.byte	0xe
	.value	0x135
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x35
	.byte	0x28
	.uleb128 0x15
	.long	.LASF127
	.byte	0xe
	.value	0x136
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x34
	.byte	0x28
	.uleb128 0x15
	.long	.LASF128
	.byte	0xe
	.value	0x137
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x33
	.byte	0x28
	.uleb128 0x15
	.long	.LASF129
	.byte	0xe
	.value	0x138
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x32
	.byte	0x28
	.uleb128 0x15
	.long	.LASF130
	.byte	0xe
	.value	0x139
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x31
	.byte	0x28
	.uleb128 0x15
	.long	.LASF131
	.byte	0xe
	.value	0x144
	.long	0x368
	.byte	0x8
	.byte	0x2
	.byte	0x2f
	.byte	0x28
	.uleb128 0x15
	.long	.LASF132
	.byte	0xe
	.value	0x145
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x2e
	.byte	0x28
	.uleb128 0x15
	.long	.LASF133
	.byte	0xe
	.value	0x146
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x2d
	.byte	0x28
	.uleb128 0x15
	.long	.LASF134
	.byte	0xe
	.value	0x148
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x2c
	.byte	0x28
	.uleb128 0x15
	.long	.LASF135
	.byte	0xe
	.value	0x149
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x2b
	.byte	0x28
	.uleb128 0x15
	.long	.LASF136
	.byte	0xe
	.value	0x14b
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x2a
	.byte	0x28
	.uleb128 0x15
	.long	.LASF137
	.byte	0xe
	.value	0x14c
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x29
	.byte	0x28
	.uleb128 0x15
	.long	.LASF138
	.byte	0xe
	.value	0x14d
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x28
	.byte	0x28
	.uleb128 0x15
	.long	.LASF139
	.byte	0xe
	.value	0x14e
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x27
	.byte	0x28
	.uleb128 0x15
	.long	.LASF140
	.byte	0xe
	.value	0x14f
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x26
	.byte	0x28
	.uleb128 0x15
	.long	.LASF141
	.byte	0xe
	.value	0x150
	.long	0x368
	.byte	0x8
	.byte	0x1
	.byte	0x25
	.byte	0x28
	.uleb128 0x15
	.long	.LASF142
	.byte	0xe
	.value	0x151
	.long	0x368
	.byte	0x8
	.byte	0x25
	.byte	0
	.byte	0x28
	.uleb128 0x14
	.long	0x48e
	.byte	0x30
	.uleb128 0x9
	.long	.LASF143
	.byte	0xe
	.value	0x158
	.long	0x35d
	.byte	0x34
	.uleb128 0x14
	.long	0x4b0
	.byte	0x38
	.uleb128 0x14
	.long	0x4d2
	.byte	0x40
	.uleb128 0x9
	.long	.LASF144
	.byte	0xe
	.value	0x161
	.long	0x368
	.byte	0x48
	.uleb128 0x9
	.long	.LASF145
	.byte	0xe
	.value	0x167
	.long	0x368
	.byte	0x50
	.uleb128 0x9
	.long	.LASF146
	.byte	0xe
	.value	0x16c
	.long	0x35d
	.byte	0x58
	.uleb128 0x9
	.long	.LASF147
	.byte	0xe
	.value	0x16e
	.long	0x352
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF148
	.byte	0xe
	.value	0x177
	.long	0x368
	.byte	0x60
	.uleb128 0x9
	.long	.LASF149
	.byte	0xe
	.value	0x17c
	.long	0x35d
	.byte	0x68
	.uleb128 0x9
	.long	.LASF150
	.byte	0xe
	.value	0x17d
	.long	0x35d
	.byte	0x6c
	.byte	0
	.uleb128 0x16
	.long	.LASF153
	.byte	0x2
	.byte	0x66
	.long	0x30
	.byte	0x3
	.long	0x790
	.uleb128 0x17
	.long	.LASF151
	.byte	0x2
	.byte	0x66
	.long	0x790
	.uleb128 0x18
	.byte	0
	.uleb128 0xe
	.long	0x2bd
	.uleb128 0x19
	.long	.LASF158
	.byte	0x1
	.byte	0xce
	.long	0x29
	.byte	0x1
	.long	0x7bb
	.uleb128 0x17
	.long	.LASF152
	.byte	0x1
	.byte	0xce
	.long	0x29
	.uleb128 0x1a
	.string	"tp"
	.byte	0x1
	.byte	0xcf
	.long	0x2eb
	.byte	0
	.uleb128 0x16
	.long	.LASF154
	.byte	0x4
	.byte	0x22
	.long	0x2c8
	.byte	0x3
	.long	0x7ed
	.uleb128 0x17
	.long	.LASF155
	.byte	0x4
	.byte	0x22
	.long	0x30
	.uleb128 0x17
	.long	.LASF156
	.byte	0x4
	.byte	0x22
	.long	0xb1
	.uleb128 0x17
	.long	.LASF157
	.byte	0x4
	.byte	0x22
	.long	0x37
	.byte	0
	.uleb128 0x19
	.long	.LASF159
	.byte	0x3
	.byte	0x1a
	.long	0x29
	.byte	0x3
	.long	0x809
	.uleb128 0x17
	.long	.LASF160
	.byte	0x3
	.byte	0x1a
	.long	0x2bd
	.byte	0
	.uleb128 0x16
	.long	.LASF161
	.byte	0x2
	.byte	0x5f
	.long	0x30
	.byte	0x3
	.long	0x831
	.uleb128 0x17
	.long	.LASF162
	.byte	0x2
	.byte	0x5f
	.long	0x837
	.uleb128 0x17
	.long	.LASF151
	.byte	0x2
	.byte	0x5f
	.long	0x790
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcb
	.uleb128 0xe
	.long	0x831
	.uleb128 0x19
	.long	.LASF163
	.byte	0x1
	.byte	0x25
	.long	0x30
	.byte	0x1
	.long	0x883
	.uleb128 0x1b
	.string	"hw"
	.byte	0x1
	.byte	0x25
	.long	0x883
	.uleb128 0x1b
	.string	"pid"
	.byte	0x1
	.byte	0x26
	.long	0x2e0
	.uleb128 0x1b
	.string	"cpu"
	.byte	0x1
	.byte	0x26
	.long	0x30
	.uleb128 0x1b
	.string	"grp"
	.byte	0x1
	.byte	0x26
	.long	0x30
	.uleb128 0x17
	.long	.LASF164
	.byte	0x1
	.byte	0x26
	.long	0x42
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4f4
	.uleb128 0x1c
	.long	0x83c
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x90a
	.uleb128 0x1d
	.long	0x84c
	.long	.LLST0
	.uleb128 0x1d
	.long	0x856
	.long	.LLST1
	.uleb128 0x1d
	.long	0x861
	.long	.LLST2
	.uleb128 0x1d
	.long	0x86c
	.long	.LLST3
	.uleb128 0x1d
	.long	0x877
	.long	.LLST4
	.uleb128 0x1e
	.quad	.LVL6
	.long	0x1bea
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x12a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x795
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d8
	.uleb128 0x1d
	.long	0x7a5
	.long	.LLST5
	.uleb128 0x20
	.long	0x7b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.long	0x9ad
	.uleb128 0x1d
	.long	0x7a5
	.long	.LLST6
	.uleb128 0x22
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.uleb128 0x23
	.long	0x7b0
	.uleb128 0x24
	.long	0x773
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.byte	0x1
	.byte	0xd4
	.uleb128 0x1d
	.long	0x783
	.long	.LLST7
	.uleb128 0x1e
	.quad	.LVL10
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL8
	.long	0x1c01
	.long	0x9ca
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.quad	.LVL11
	.long	0x1c0c
	.byte	0
	.uleb128 0x27
	.long	.LASF167
	.byte	0x1
	.byte	0xdf
	.long	0xbe
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3f
	.uleb128 0x28
	.long	.LASF165
	.byte	0x1
	.byte	0xdf
	.long	0x29
	.long	.LLST8
	.uleb128 0x28
	.long	.LASF166
	.byte	0x1
	.byte	0xdf
	.long	0xbe
	.long	.LLST9
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.long	0x30
	.long	.LLST10
	.uleb128 0x29
	.string	"r"
	.byte	0x1
	.byte	0xe1
	.long	0x29
	.long	.LLST11
	.uleb128 0x26
	.quad	.LVL14
	.long	0x1c15
	.byte	0
	.uleb128 0x27
	.long	.LASF168
	.byte	0x1
	.byte	0xf6
	.long	0x30
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa9
	.uleb128 0x2a
	.string	"off"
	.byte	0x1
	.byte	0xf6
	.long	0x2d3
	.long	.LLST12
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0xf7
	.long	0x30
	.long	.LLST13
	.uleb128 0x22
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.uleb128 0x29
	.string	"r"
	.byte	0x1
	.byte	0xf9
	.long	0x29
	.long	.LLST14
	.uleb128 0x26
	.quad	.LVL20
	.long	0x1c15
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF169
	.byte	0x1
	.byte	0x34
	.long	0x30
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b63
	.uleb128 0x28
	.long	.LASF170
	.byte	0x1
	.byte	0x34
	.long	0x30
	.long	.LLST15
	.uleb128 0x28
	.long	.LASF171
	.byte	0x1
	.byte	0x34
	.long	0x1b63
	.long	.LLST16
	.uleb128 0x2b
	.string	"t1"
	.byte	0x1
	.byte	0x35
	.long	0x1b69
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12112
	.uleb128 0x2b
	.string	"t2"
	.byte	0x1
	.byte	0x35
	.long	0x1b69
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9104
	.uleb128 0x2b
	.string	"t3"
	.byte	0x1
	.byte	0x35
	.long	0x1b69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6096
	.uleb128 0x2b
	.string	"t4"
	.byte	0x1
	.byte	0x35
	.long	0x1b69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3088
	.uleb128 0x1a
	.string	"s1"
	.byte	0x1
	.byte	0x36
	.long	0x29
	.uleb128 0x1a
	.string	"s2"
	.byte	0x1
	.byte	0x36
	.long	0x29
	.uleb128 0x1a
	.string	"s3"
	.byte	0x1
	.byte	0x36
	.long	0x29
	.uleb128 0x1a
	.string	"s4"
	.byte	0x1
	.byte	0x36
	.long	0x29
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x37
	.long	0x30
	.long	.LLST17
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.byte	0x37
	.long	0x30
	.long	.LLST18
	.uleb128 0x2c
	.long	.LASF172
	.byte	0x1
	.byte	0x39
	.long	0x29
	.long	.LLST19
	.uleb128 0x2c
	.long	.LASF173
	.byte	0x1
	.byte	0x39
	.long	0x29
	.long	.LLST20
	.uleb128 0x29
	.string	"fp"
	.byte	0x1
	.byte	0x3a
	.long	0x831
	.long	.LLST21
	.uleb128 0x29
	.string	"o1"
	.byte	0x1
	.byte	0x3b
	.long	0x2d3
	.long	.LLST22
	.uleb128 0x29
	.string	"o2"
	.byte	0x1
	.byte	0x3b
	.long	0x2d3
	.long	.LLST23
	.uleb128 0x29
	.string	"o3"
	.byte	0x1
	.byte	0x3b
	.long	0x2d3
	.long	.LLST24
	.uleb128 0x29
	.string	"o4"
	.byte	0x1
	.byte	0x3b
	.long	0x2d3
	.long	.LLST25
	.uleb128 0x2c
	.long	.LASF174
	.byte	0x1
	.byte	0x3b
	.long	0x2d3
	.long	.LLST26
	.uleb128 0x2d
	.long	.LASF175
	.byte	0x1
	.byte	0x3d
	.long	0x1b7a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12176
	.uleb128 0x2d
	.long	.LASF176
	.byte	0x1
	.byte	0x3d
	.long	0x1b7a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12144
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.byte	0x3e
	.long	0x1b8a
	.long	.LLST27
	.uleb128 0x29
	.string	"rc"
	.byte	0x1
	.byte	0x3e
	.long	0x30
	.long	.LLST28
	.uleb128 0x2c
	.long	.LASF177
	.byte	0x1
	.byte	0x74
	.long	0x57
	.long	.LLST29
	.uleb128 0x2e
	.long	.LASF178
	.long	0x1baa
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5159
	.uleb128 0x2f
	.long	0x83c
	.quad	.LBB127
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x43
	.long	0xcad
	.uleb128 0x1d
	.long	0x877
	.long	.LLST30
	.uleb128 0x1d
	.long	0x86c
	.long	.LLST31
	.uleb128 0x1d
	.long	0x861
	.long	.LLST31
	.uleb128 0x1d
	.long	0x856
	.long	.LLST33
	.uleb128 0x1d
	.long	0x84c
	.long	.LLST34
	.uleb128 0x1e
	.quad	.LVL27
	.long	0x1bea
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x12a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	attr
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x83c
	.quad	.LBB131
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x4b
	.long	0xd25
	.uleb128 0x1d
	.long	0x877
	.long	.LLST35
	.uleb128 0x1d
	.long	0x86c
	.long	.LLST36
	.uleb128 0x1d
	.long	0x861
	.long	.LLST36
	.uleb128 0x1d
	.long	0x856
	.long	.LLST38
	.uleb128 0x1d
	.long	0x84c
	.long	.LLST39
	.uleb128 0x1e
	.quad	.LVL33
	.long	0x1bea
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x12a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	attr+112
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x83c
	.quad	.LBB135
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x53
	.long	0xd9d
	.uleb128 0x1d
	.long	0x877
	.long	.LLST40
	.uleb128 0x1d
	.long	0x86c
	.long	.LLST41
	.uleb128 0x1d
	.long	0x861
	.long	.LLST41
	.uleb128 0x1d
	.long	0x856
	.long	.LLST43
	.uleb128 0x1d
	.long	0x84c
	.long	.LLST44
	.uleb128 0x1e
	.quad	.LVL39
	.long	0x1bea
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x12a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	attr+224
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x83c
	.quad	.LBB139
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x5b
	.long	0xe15
	.uleb128 0x1d
	.long	0x877
	.long	.LLST45
	.uleb128 0x1d
	.long	0x86c
	.long	.LLST46
	.uleb128 0x1d
	.long	0x861
	.long	.LLST46
	.uleb128 0x1d
	.long	0x856
	.long	.LLST48
	.uleb128 0x1d
	.long	0x84c
	.long	.LLST49
	.uleb128 0x1e
	.quad	.LVL45
	.long	0x1bea
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x12a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	attr+336
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x7ed
	.quad	.LBB143
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x67
	.long	0xe49
	.uleb128 0x1d
	.long	0x7fd
	.long	.LLST50
	.uleb128 0x1e
	.quad	.LVL49
	.long	0x1c21
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x7ed
	.quad	.LBB146
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x68
	.long	0xe7d
	.uleb128 0x1d
	.long	0x7fd
	.long	.LLST51
	.uleb128 0x1e
	.quad	.LVL50
	.long	0x1c21
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x7ed
	.quad	.LBB152
	.long	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0x69
	.long	0xeb1
	.uleb128 0x1d
	.long	0x7fd
	.long	.LLST52
	.uleb128 0x1e
	.quad	.LVL51
	.long	0x1c21
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x7ed
	.quad	.LBB158
	.long	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0x6a
	.long	0xee5
	.uleb128 0x1d
	.long	0x7fd
	.long	.LLST53
	.uleb128 0x1e
	.quad	.LVL52
	.long	0x1c21
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB165
	.quad	.LBE165-.LBB165
	.byte	0x1
	.byte	0x84
	.long	0xf25
	.uleb128 0x1d
	.long	0x783
	.long	.LLST54
	.uleb128 0x1e
	.quad	.LVL73
	.long	0x1c3d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x7bb
	.quad	.LBB167
	.quad	.LBE167-.LBB167
	.byte	0x1
	.byte	0x8a
	.long	0xf7d
	.uleb128 0x1d
	.long	0x7e1
	.long	.LLST55
	.uleb128 0x1d
	.long	0x7d6
	.long	.LLST56
	.uleb128 0x1d
	.long	0x7cb
	.long	.LLST57
	.uleb128 0x1e
	.quad	.LVL79
	.long	0x1c4c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12176
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x7bb
	.quad	.LBB169
	.quad	.LBE169-.LBB169
	.byte	0x1
	.byte	0x8b
	.long	0xfd9
	.uleb128 0x1d
	.long	0x7e1
	.long	.LLST58
	.uleb128 0x1d
	.long	0x7d6
	.long	.LLST59
	.uleb128 0x1d
	.long	0x7cb
	.long	.LLST60
	.uleb128 0x1e
	.quad	.LVL82
	.long	0x1c4c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -12240
	.byte	0x94
	.byte	0x4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12168
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x7bb
	.quad	.LBB171
	.quad	.LBE171-.LBB171
	.byte	0x1
	.byte	0x8c
	.long	0x1035
	.uleb128 0x1d
	.long	0x7e1
	.long	.LLST61
	.uleb128 0x1d
	.long	0x7d6
	.long	.LLST62
	.uleb128 0x1d
	.long	0x7cb
	.long	.LLST63
	.uleb128 0x1e
	.quad	.LVL85
	.long	0x1c4c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -12232
	.byte	0x94
	.byte	0x4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12160
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x7bb
	.quad	.LBB173
	.quad	.LBE173-.LBB173
	.byte	0x1
	.byte	0x8d
	.long	0x1091
	.uleb128 0x1d
	.long	0x7e1
	.long	.LLST64
	.uleb128 0x1d
	.long	0x7d6
	.long	.LLST65
	.uleb128 0x1d
	.long	0x7cb
	.long	.LLST66
	.uleb128 0x1e
	.quad	.LVL88
	.long	0x1c4c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -12224
	.byte	0x94
	.byte	0x4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12152
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x7bb
	.quad	.LBB175
	.quad	.LBE175-.LBB175
	.byte	0x1
	.byte	0x9b
	.long	0x10e9
	.uleb128 0x1d
	.long	0x7e1
	.long	.LLST67
	.uleb128 0x1d
	.long	0x7d6
	.long	.LLST68
	.uleb128 0x1d
	.long	0x7cb
	.long	.LLST69
	.uleb128 0x1e
	.quad	.LVL95
	.long	0x1c4c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12144
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x7bb
	.quad	.LBB177
	.quad	.LBE177-.LBB177
	.byte	0x1
	.byte	0x9c
	.long	0x1145
	.uleb128 0x1d
	.long	0x7e1
	.long	.LLST70
	.uleb128 0x1d
	.long	0x7d6
	.long	.LLST71
	.uleb128 0x1d
	.long	0x7cb
	.long	.LLST72
	.uleb128 0x1e
	.quad	.LVL98
	.long	0x1c4c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -12240
	.byte	0x94
	.byte	0x4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12136
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x7bb
	.quad	.LBB179
	.quad	.LBE179-.LBB179
	.byte	0x1
	.byte	0x9d
	.long	0x11a1
	.uleb128 0x1d
	.long	0x7e1
	.long	.LLST73
	.uleb128 0x1d
	.long	0x7d6
	.long	.LLST74
	.uleb128 0x1d
	.long	0x7cb
	.long	.LLST75
	.uleb128 0x1e
	.quad	.LVL101
	.long	0x1c4c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -12232
	.byte	0x94
	.byte	0x4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12128
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x7bb
	.quad	.LBB181
	.quad	.LBE181-.LBB181
	.byte	0x1
	.byte	0x9e
	.long	0x11fd
	.uleb128 0x1d
	.long	0x7e1
	.long	.LLST76
	.uleb128 0x1d
	.long	0x7d6
	.long	.LLST77
	.uleb128 0x1d
	.long	0x7cb
	.long	.LLST78
	.uleb128 0x1e
	.quad	.LVL104
	.long	0x1c4c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -12224
	.byte	0x94
	.byte	0x4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12120
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x773
	.quad	.LBB183
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0xaa
	.long	0x1239
	.uleb128 0x1d
	.long	0x783
	.long	.LLST79
	.uleb128 0x1e
	.quad	.LVL111
	.long	0x1c3d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB187
	.quad	.LBE187-.LBB187
	.byte	0x1
	.byte	0xab
	.long	0x1289
	.uleb128 0x1d
	.long	0x783
	.long	.LLST80
	.uleb128 0x1e
	.quad	.LVL112
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x91
	.sleb128 -12240
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB189
	.quad	.LBE189-.LBB189
	.byte	0x1
	.byte	0xac
	.long	0x12ce
	.uleb128 0x1d
	.long	0x783
	.long	.LLST81
	.uleb128 0x1e
	.quad	.LVL113
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB191
	.quad	.LBE191-.LBB191
	.byte	0x1
	.byte	0xad
	.long	0x1313
	.uleb128 0x1d
	.long	0x783
	.long	.LLST82
	.uleb128 0x1e
	.quad	.LVL114
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x773
	.quad	.LBB193
	.long	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.byte	0xae
	.long	0x1354
	.uleb128 0x1d
	.long	0x783
	.long	.LLST83
	.uleb128 0x1e
	.quad	.LVL115
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB196
	.quad	.LBE196-.LBB196
	.byte	0x1
	.byte	0xaf
	.long	0x1399
	.uleb128 0x1d
	.long	0x783
	.long	.LLST84
	.uleb128 0x1e
	.quad	.LVL116
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB198
	.quad	.LBE198-.LBB198
	.byte	0x1
	.byte	0xb0
	.long	0x13de
	.uleb128 0x1d
	.long	0x783
	.long	.LLST85
	.uleb128 0x1e
	.quad	.LVL117
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x773
	.quad	.LBB200
	.long	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0xb1
	.long	0x141f
	.uleb128 0x1d
	.long	0x783
	.long	.LLST86
	.uleb128 0x1e
	.quad	.LVL118
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB203
	.quad	.LBE203-.LBB203
	.byte	0x1
	.byte	0xb2
	.long	0x1457
	.uleb128 0x1d
	.long	0x783
	.long	.LLST87
	.uleb128 0x1e
	.quad	.LVL119
	.long	0x1c71
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB205
	.quad	.LBE205-.LBB205
	.byte	0x1
	.byte	0xb3
	.long	0x149c
	.uleb128 0x1d
	.long	0x783
	.long	.LLST88
	.uleb128 0x1e
	.quad	.LVL120
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB207
	.quad	.LBE207-.LBB207
	.byte	0x1
	.byte	0xb4
	.long	0x1504
	.uleb128 0x1d
	.long	0x783
	.long	.LLST89
	.uleb128 0x1e
	.quad	.LVL121
	.long	0x1bf6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x1f
	.byte	0x91
	.sleb128 -12200
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x91
	.sleb128 -12192
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1e
	.byte	0x91
	.sleb128 -12208
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1e
	.byte	0x91
	.sleb128 -12216
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x809
	.quad	.LBB209
	.quad	.LBE209-.LBB209
	.byte	0x1
	.byte	0xba
	.long	0x155b
	.uleb128 0x1d
	.long	0x824
	.long	.LLST90
	.uleb128 0x1d
	.long	0x819
	.long	.LLST91
	.uleb128 0x1e
	.quad	.LVL126
	.long	0x1c80
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -12240
	.byte	0x6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x773
	.quad	.LBB213
	.quad	.LBE213-.LBB213
	.byte	0x1
	.byte	0x62
	.long	0x159b
	.uleb128 0x1d
	.long	0x783
	.long	.LLST92
	.uleb128 0x1e
	.quad	.LVL145
	.long	0x1c3d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL25
	.long	0x1ca0
	.uleb128 0x26
	.quad	.LVL30
	.long	0x1ca0
	.uleb128 0x26
	.quad	.LVL36
	.long	0x1ca0
	.uleb128 0x26
	.quad	.LVL42
	.long	0x1ca0
	.uleb128 0x25
	.quad	.LVL53
	.long	0x1cac
	.long	0x15ea
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x17d78400
	.byte	0
	.uleb128 0x25
	.quad	.LVL55
	.long	0x1cac
	.long	0x1605
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x17d78400
	.byte	0
	.uleb128 0x25
	.quad	.LVL57
	.long	0x1cac
	.long	0x1620
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x17d78400
	.byte	0
	.uleb128 0x25
	.quad	.LVL59
	.long	0x1cac
	.long	0x163b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x17d78400
	.byte	0
	.uleb128 0x25
	.quad	.LVL61
	.long	0x1cac
	.long	0x1656
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x17d78400
	.byte	0
	.uleb128 0x25
	.quad	.LVL63
	.long	0x1cb8
	.long	0x166d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.quad	.LVL64
	.long	0x1cc3
	.uleb128 0x25
	.quad	.LVL65
	.long	0x9d8
	.long	0x169f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x91
	.sleb128 -12192
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12112
	.byte	0
	.uleb128 0x25
	.quad	.LVL66
	.long	0x9d8
	.long	0x16c4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x91
	.sleb128 -12200
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -9104
	.byte	0
	.uleb128 0x25
	.quad	.LVL67
	.long	0x9d8
	.long	0x16e8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x91
	.sleb128 -12208
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6096
	.byte	0
	.uleb128 0x25
	.quad	.LVL68
	.long	0x9d8
	.long	0x170c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x91
	.sleb128 -12216
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3088
	.byte	0
	.uleb128 0x25
	.quad	.LVL69
	.long	0xa3f
	.long	0x1724
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL70
	.long	0xa3f
	.long	0x173c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL71
	.long	0xa3f
	.long	0x1754
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL72
	.long	0xa3f
	.long	0x176c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL74
	.long	0x1ccf
	.uleb128 0x25
	.quad	.LVL75
	.long	0x795
	.long	0x179a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL105
	.long	0x1cda
	.long	0x17b2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL106
	.long	0x1cda
	.long	0x17ce
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -12240
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x25
	.quad	.LVL107
	.long	0x1cda
	.long	0x17ea
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -12232
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x25
	.quad	.LVL108
	.long	0x1cda
	.long	0x1806
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x91
	.sleb128 -12224
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x25
	.quad	.LVL109
	.long	0x795
	.long	0x1823
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x91
	.sleb128 -12184
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0
	.uleb128 0x25
	.quad	.LVL122
	.long	0x1ce6
	.long	0x184f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.byte	0
	.uleb128 0x25
	.quad	.LVL127
	.long	0x1cf2
	.long	0x186a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -12240
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.quad	.LVL128
	.long	0x1cfd
	.long	0x1882
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL129
	.long	0x1cfd
	.long	0x189a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL130
	.long	0x1cfd
	.long	0x18b2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL131
	.long	0x1cfd
	.long	0x18cd
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -12248
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.quad	.LVL132
	.long	0x1cfd
	.long	0x18e5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL137
	.long	0x1d09
	.long	0x1904
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x25
	.quad	.LVL139
	.long	0x1d09
	.long	0x1923
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x25
	.quad	.LVL141
	.long	0x1d09
	.long	0x1942
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x25
	.quad	.LVL143
	.long	0x1d09
	.long	0x1961
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x25
	.quad	.LVL147
	.long	0x1d15
	.long	0x19a0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x8b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5159
	.byte	0
	.uleb128 0x25
	.quad	.LVL148
	.long	0x1d15
	.long	0x19df
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x9c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5159
	.byte	0
	.uleb128 0x25
	.quad	.LVL149
	.long	0x1d15
	.long	0x1a1e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x9e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5159
	.byte	0
	.uleb128 0x26
	.quad	.LVL150
	.long	0x1c0c
	.uleb128 0x25
	.quad	.LVL151
	.long	0x1d15
	.long	0x1a6a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x9b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5159
	.byte	0
	.uleb128 0x25
	.quad	.LVL152
	.long	0x1d15
	.long	0x1aa9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x8a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5159
	.byte	0
	.uleb128 0x25
	.quad	.LVL153
	.long	0x1d15
	.long	0x1ae8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x9d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5159
	.byte	0
	.uleb128 0x25
	.quad	.LVL154
	.long	0x1d15
	.long	0x1b27
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x8d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5159
	.byte	0
	.uleb128 0x1e
	.quad	.LVL155
	.long	0x1d15
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x8c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5159
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbe
	.uleb128 0xb
	.long	0xc4
	.long	0x1b7a
	.uleb128 0x31
	.long	0x94
	.value	0xbb8
	.byte	0
	.uleb128 0xb
	.long	0x347
	.long	0x1b8a
	.uleb128 0xc
	.long	0x94
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x30
	.long	0x1b9a
	.uleb128 0xc
	.long	0x94
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x2c3
	.long	0x1baa
	.uleb128 0xc
	.long	0x94
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x1b9a
	.uleb128 0x32
	.long	.LASF179
	.byte	0x7
	.byte	0xa8
	.long	0x291
	.uleb128 0x32
	.long	.LASF180
	.byte	0x7
	.byte	0xa9
	.long	0x291
	.uleb128 0xb
	.long	0x4f4
	.long	0x1bd5
	.uleb128 0xc
	.long	0x94
	.byte	0x3
	.byte	0
	.uleb128 0x33
	.long	.LASF181
	.byte	0x1
	.byte	0x31
	.long	0x1bc5
	.uleb128 0x9
	.byte	0x3
	.quad	attr
	.uleb128 0x34
	.long	.LASF182
	.long	.LASF182
	.byte	0xf
	.value	0x425
	.uleb128 0x35
	.long	.LASF183
	.long	.LASF183
	.byte	0x2
	.byte	0x57
	.uleb128 0x35
	.long	.LASF184
	.long	.LASF184
	.byte	0xb
	.byte	0x47
	.uleb128 0x36
	.long	.LASF208
	.long	.LASF208
	.uleb128 0x34
	.long	.LASF185
	.long	.LASF185
	.byte	0x10
	.value	0x176
	.uleb128 0x35
	.long	.LASF186
	.long	.LASF186
	.byte	0x10
	.byte	0xa4
	.uleb128 0x37
	.uleb128 0xf
	.byte	0x9e
	.uleb128 0xd
	.byte	0x4c
	.byte	0x6f
	.byte	0x6f
	.byte	0x70
	.byte	0x20
	.byte	0x73
	.byte	0x74
	.byte	0x61
	.byte	0x72
	.byte	0x74
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x38
	.long	.LASF187
	.long	.LASF188
	.byte	0x11
	.byte	0
	.long	.LASF187
	.uleb128 0x38
	.long	.LASF154
	.long	.LASF189
	.byte	0x4
	.byte	0x19
	.long	.LASF154
	.uleb128 0x37
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xc
	.byte	0x4c
	.byte	0x6f
	.byte	0x6f
	.byte	0x70
	.byte	0x20
	.byte	0x73
	.byte	0x74
	.byte	0x6f
	.byte	0x70
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x2
	.byte	0xa
	.byte	0
	.uleb128 0x38
	.long	.LASF190
	.long	.LASF191
	.byte	0x11
	.byte	0
	.long	.LASF190
	.uleb128 0x35
	.long	.LASF192
	.long	.LASF192
	.byte	0x2
	.byte	0x55
	.uleb128 0x37
	.uleb128 0x13
	.byte	0x9e
	.uleb128 0x11
	.byte	0x61
	.byte	0x72
	.byte	0x67
	.byte	0x75
	.byte	0x6d
	.byte	0x65
	.byte	0x6e
	.byte	0x74
	.byte	0x20
	.byte	0x65
	.byte	0x72
	.byte	0x72
	.byte	0x6f
	.byte	0x72
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x34
	.long	.LASF193
	.long	.LASF193
	.byte	0xf
	.value	0x277
	.uleb128 0x34
	.long	.LASF194
	.long	.LASF194
	.byte	0x10
	.value	0x1d2
	.uleb128 0x35
	.long	.LASF195
	.long	.LASF195
	.byte	0x12
	.byte	0xc0
	.uleb128 0x34
	.long	.LASF196
	.long	.LASF196
	.byte	0x10
	.value	0x178
	.uleb128 0x35
	.long	.LASF197
	.long	.LASF197
	.byte	0x7
	.byte	0xf2
	.uleb128 0x34
	.long	.LASF198
	.long	.LASF198
	.byte	0xf
	.value	0x164
	.uleb128 0x34
	.long	.LASF199
	.long	.LASF199
	.byte	0x7
	.value	0x110
	.uleb128 0x35
	.long	.LASF200
	.long	.LASF200
	.byte	0x7
	.byte	0xed
	.uleb128 0x34
	.long	.LASF201
	.long	.LASF201
	.byte	0x10
	.value	0x1e3
	.uleb128 0x34
	.long	.LASF202
	.long	.LASF202
	.byte	0x7
	.value	0x34e
	.uleb128 0x35
	.long	.LASF203
	.long	.LASF203
	.byte	0x13
	.byte	0x45
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL5
	.value	0x1
	.byte	0x55
	.quad	.LVL5
	.quad	.LVL6-1
	.value	0x1
	.byte	0x54
	.quad	.LVL6-1
	.quad	.LFE91
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL4
	.value	0x1
	.byte	0x54
	.quad	.LVL4
	.quad	.LVL6-1
	.value	0x1
	.byte	0x51
	.quad	.LVL6-1
	.quad	.LFE91
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0
	.quad	.LVL3
	.value	0x1
	.byte	0x51
	.quad	.LVL3
	.quad	.LVL6-1
	.value	0x1
	.byte	0x52
	.quad	.LVL6-1
	.quad	.LFE91
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x52
	.quad	.LVL2
	.quad	.LVL6-1
	.value	0x1
	.byte	0x58
	.quad	.LVL6-1
	.quad	.LFE91
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x58
	.quad	.LVL1
	.quad	.LVL6-1
	.value	0x1
	.byte	0x59
	.quad	.LVL6-1
	.quad	.LFE91
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL7
	.quad	.LVL8-1
	.value	0x1
	.byte	0x61
	.quad	.LVL8-1
	.quad	.LFE93
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL9
	.quad	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL9
	.quad	.LVL10
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x61
	.quad	.LVL13
	.quad	.LFE94
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x55
	.quad	.LVL13
	.quad	.LVL17
	.value	0x1
	.byte	0x53
	.quad	.LVL17
	.quad	.LFE94
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL14
	.quad	.LVL16
	.value	0x13
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x1
	.byte	0x55
	.quad	.LVL19
	.quad	.LVL22
	.value	0x7
	.byte	0x76
	.sleb128 -400000000
	.byte	0x9f
	.quad	.LVL22
	.quad	.LFE95
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x13
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x3e000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL23
	.quad	.LVL25-1
	.value	0x1
	.byte	0x55
	.quad	.LVL25-1
	.quad	.LVL62
	.value	0x1
	.byte	0x56
	.quad	.LVL62
	.quad	.LVL136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL146
	.value	0x1
	.byte	0x56
	.quad	.LVL146
	.quad	.LFE92
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL23
	.quad	.LVL25-1
	.value	0x1
	.byte	0x54
	.quad	.LVL25-1
	.quad	.LVL54
	.value	0x1
	.byte	0x53
	.quad	.LVL54
	.quad	.LVL136
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL146
	.value	0x1
	.byte	0x53
	.quad	.LVL146
	.quad	.LFE92
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL24
	.quad	.LVL90
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL90
	.quad	.LVL91
	.value	0x1
	.byte	0x50
	.quad	.LVL91
	.quad	.LVL92
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.quad	.LVL123
	.quad	.LVL125
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL147
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL151
	.quad	.LVL152
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL153
	.quad	.LFE92
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL24
	.quad	.LVL90
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL90
	.quad	.LVL125
	.value	0x1
	.byte	0x5c
	.quad	.LVL134
	.quad	.LVL136
	.value	0x1
	.byte	0x5c
	.quad	.LVL136
	.quad	.LVL147
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL147
	.quad	.LVL149
	.value	0x1
	.byte	0x5c
	.quad	.LVL150
	.quad	.LVL151
	.value	0x1
	.byte	0x5c
	.quad	.LVL151
	.quad	.LVL152
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL152
	.quad	.LVL153
	.value	0x1
	.byte	0x5c
	.quad	.LVL153
	.quad	.LFE92
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL76
	.quad	.LVL79-1
	.value	0x1
	.byte	0x61
	.quad	.LVL79-1
	.quad	.LVL133
	.value	0x4
	.byte	0x91
	.sleb128 -12184
	.quad	.LVL134
	.quad	.LVL136
	.value	0x4
	.byte	0x91
	.sleb128 -12184
	.quad	.LVL146
	.quad	.LVL149
	.value	0x4
	.byte	0x91
	.sleb128 -12184
	.quad	.LVL150
	.quad	.LFE92
	.value	0x4
	.byte	0x91
	.sleb128 -12184
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL110
	.quad	.LVL111-1
	.value	0x1
	.byte	0x61
	.quad	.LVL111-1
	.quad	.LVL123
	.value	0x4
	.byte	0x91
	.sleb128 -12240
	.quad	.LVL134
	.quad	.LVL136
	.value	0x4
	.byte	0x91
	.sleb128 -12240
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL123
	.quad	.LVL124
	.value	0x1
	.byte	0x50
	.quad	.LVL124
	.quad	.LVL133
	.value	0x4
	.byte	0x91
	.sleb128 -12240
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL54
	.quad	.LVL55-1
	.value	0x1
	.byte	0x50
	.quad	.LVL55-1
	.quad	.LVL133
	.value	0x1
	.byte	0x53
	.quad	.LVL134
	.quad	.LVL136
	.value	0x1
	.byte	0x53
	.quad	.LVL146
	.quad	.LVL149
	.value	0x1
	.byte	0x53
	.quad	.LVL150
	.quad	.LFE92
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL56
	.quad	.LVL57-1
	.value	0x1
	.byte	0x50
	.quad	.LVL57-1
	.quad	.LVL133
	.value	0x1
	.byte	0x5e
	.quad	.LVL134
	.quad	.LVL136
	.value	0x1
	.byte	0x5e
	.quad	.LVL146
	.quad	.LVL149
	.value	0x1
	.byte	0x5e
	.quad	.LVL150
	.quad	.LFE92
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL58
	.quad	.LVL59-1
	.value	0x1
	.byte	0x50
	.quad	.LVL59-1
	.quad	.LVL133
	.value	0x1
	.byte	0x5d
	.quad	.LVL134
	.quad	.LVL136
	.value	0x1
	.byte	0x5d
	.quad	.LVL146
	.quad	.LVL149
	.value	0x1
	.byte	0x5d
	.quad	.LVL150
	.quad	.LFE92
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL60
	.quad	.LVL61-1
	.value	0x1
	.byte	0x50
	.quad	.LVL61-1
	.quad	.LVL90
	.value	0x1
	.byte	0x5c
	.quad	.LVL90
	.quad	.LVL133
	.value	0x4
	.byte	0x91
	.sleb128 -12248
	.quad	.LVL134
	.quad	.LVL136
	.value	0x4
	.byte	0x91
	.sleb128 -12248
	.quad	.LVL146
	.quad	.LVL147
	.value	0x1
	.byte	0x5c
	.quad	.LVL147
	.quad	.LVL149
	.value	0x4
	.byte	0x91
	.sleb128 -12248
	.quad	.LVL150
	.quad	.LVL151
	.value	0x4
	.byte	0x91
	.sleb128 -12248
	.quad	.LVL151
	.quad	.LVL152
	.value	0x1
	.byte	0x5c
	.quad	.LVL152
	.quad	.LVL153
	.value	0x4
	.byte	0x91
	.sleb128 -12248
	.quad	.LVL153
	.quad	.LFE92
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL62
	.quad	.LVL63-1
	.value	0x1
	.byte	0x50
	.quad	.LVL63-1
	.quad	.LVL133
	.value	0x1
	.byte	0x56
	.quad	.LVL134
	.quad	.LVL136
	.value	0x1
	.byte	0x56
	.quad	.LVL146
	.quad	.LVL149
	.value	0x1
	.byte	0x56
	.quad	.LVL150
	.quad	.LFE92
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL28
	.quad	.LVL29
	.value	0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.quad	.LVL34
	.quad	.LVL35
	.value	0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL40
	.quad	.LVL41
	.value	0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL46
	.quad	.LVL47
	.value	0x5
	.byte	0x93
	.uleb128 0xc
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL136
	.quad	.LVL137-1
	.value	0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL138
	.quad	.LVL139-1
	.value	0x5
	.byte	0x93
	.uleb128 0xc
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL140
	.quad	.LVL141-1
	.value	0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.quad	.LVL142
	.quad	.LVL143-1
	.value	0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL79
	.quad	.LVL82-1
	.value	0x1
	.byte	0x50
	.quad	.LVL82
	.quad	.LVL85-1
	.value	0x1
	.byte	0x50
	.quad	.LVL85
	.quad	.LVL88-1
	.value	0x1
	.byte	0x50
	.quad	.LVL88
	.quad	.LVL89
	.value	0x1
	.byte	0x50
	.quad	.LVL95
	.quad	.LVL98-1
	.value	0x1
	.byte	0x50
	.quad	.LVL98
	.quad	.LVL101-1
	.value	0x1
	.byte	0x50
	.quad	.LVL101
	.quad	.LVL104-1
	.value	0x1
	.byte	0x50
	.quad	.LVL104
	.quad	.LVL105-1
	.value	0x1
	.byte	0x50
	.quad	.LVL146
	.quad	.LVL147-1
	.value	0x1
	.byte	0x50
	.quad	.LVL147
	.quad	.LVL148-1
	.value	0x1
	.byte	0x50
	.quad	.LVL148
	.quad	.LVL149-1
	.value	0x1
	.byte	0x50
	.quad	.LVL150
	.quad	.LVL151-1
	.value	0x1
	.byte	0x50
	.quad	.LVL151
	.quad	.LVL152-1
	.value	0x1
	.byte	0x50
	.quad	.LVL152
	.quad	.LVL153-1
	.value	0x1
	.byte	0x50
	.quad	.LVL153
	.quad	.LVL154-1
	.value	0x1
	.byte	0x50
	.quad	.LVL154
	.quad	.LVL155-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL63
	.quad	.LVL64-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL25
	.quad	.LVL28
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL25
	.quad	.LVL28
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL25
	.quad	.LVL26
	.value	0x1
	.byte	0x50
	.quad	.LVL26
	.quad	.LVL27-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL25
	.quad	.LVL28
	.value	0xa
	.byte	0x3
	.quad	attr
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL30
	.quad	.LVL34
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL30
	.quad	.LVL34
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x50
	.quad	.LVL31
	.quad	.LVL33-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL30
	.quad	.LVL32
	.value	0xa
	.byte	0x3
	.quad	attr+112
	.byte	0x9f
	.quad	.LVL32
	.quad	.LVL33-1
	.value	0x1
	.byte	0x54
	.quad	.LVL33-1
	.quad	.LVL34
	.value	0xa
	.byte	0x3
	.quad	attr+112
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL36
	.quad	.LVL40
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL36
	.quad	.LVL40
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL36
	.quad	.LVL37
	.value	0x1
	.byte	0x50
	.quad	.LVL37
	.quad	.LVL39-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL36
	.quad	.LVL38
	.value	0xa
	.byte	0x3
	.quad	attr+224
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL39-1
	.value	0x1
	.byte	0x54
	.quad	.LVL39-1
	.quad	.LVL40
	.value	0xa
	.byte	0x3
	.quad	attr+224
	.byte	0x9f
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL42
	.quad	.LVL46
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL42
	.quad	.LVL46
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL42
	.quad	.LVL43
	.value	0x1
	.byte	0x50
	.quad	.LVL43
	.quad	.LVL45-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL42
	.quad	.LVL44
	.value	0xa
	.byte	0x3
	.quad	attr+336
	.byte	0x9f
	.quad	.LVL44
	.quad	.LVL45-1
	.value	0x1
	.byte	0x54
	.quad	.LVL45-1
	.quad	.LVL46
	.value	0xa
	.byte	0x3
	.quad	attr+336
	.byte	0x9f
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL48
	.quad	.LVL49-1
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL49
	.quad	.LVL50-1
	.value	0x2
	.byte	0x73
	.sleb128 16
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL50
	.quad	.LVL51-1
	.value	0x2
	.byte	0x73
	.sleb128 24
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL51
	.quad	.LVL52-1
	.value	0x2
	.byte	0x73
	.sleb128 32
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL72
	.quad	.LVL73
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+7212
	.sleb128 0
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL77
	.quad	.LVL79
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL77
	.quad	.LVL78
	.value	0x5
	.byte	0x91
	.sleb128 -12176
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL79-1
	.value	0x1
	.byte	0x54
	.quad	.LVL79-1
	.quad	.LVL79
	.value	0x5
	.byte	0x91
	.sleb128 -12176
	.byte	0x9f
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL77
	.quad	.LVL79
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL80
	.quad	.LVL82
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL80
	.quad	.LVL81
	.value	0x5
	.byte	0x91
	.sleb128 -12168
	.byte	0x9f
	.quad	.LVL81
	.quad	.LVL82-1
	.value	0x1
	.byte	0x54
	.quad	.LVL82-1
	.quad	.LVL82
	.value	0x5
	.byte	0x91
	.sleb128 -12168
	.byte	0x9f
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL80
	.quad	.LVL82
	.value	0x4
	.byte	0x91
	.sleb128 -12240
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL83
	.quad	.LVL85
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL83
	.quad	.LVL84
	.value	0x5
	.byte	0x91
	.sleb128 -12160
	.byte	0x9f
	.quad	.LVL84
	.quad	.LVL85-1
	.value	0x1
	.byte	0x54
	.quad	.LVL85-1
	.quad	.LVL85
	.value	0x5
	.byte	0x91
	.sleb128 -12160
	.byte	0x9f
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL83
	.quad	.LVL85
	.value	0x4
	.byte	0x91
	.sleb128 -12232
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL86
	.quad	.LVL88
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL86
	.quad	.LVL87
	.value	0x5
	.byte	0x91
	.sleb128 -12152
	.byte	0x9f
	.quad	.LVL87
	.quad	.LVL88-1
	.value	0x1
	.byte	0x54
	.quad	.LVL88-1
	.quad	.LVL88
	.value	0x5
	.byte	0x91
	.sleb128 -12152
	.byte	0x9f
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL86
	.quad	.LVL88
	.value	0x4
	.byte	0x91
	.sleb128 -12224
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL93
	.quad	.LVL95
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL93
	.quad	.LVL94
	.value	0x5
	.byte	0x91
	.sleb128 -12144
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL95-1
	.value	0x1
	.byte	0x54
	.quad	.LVL95-1
	.quad	.LVL95
	.value	0x5
	.byte	0x91
	.sleb128 -12144
	.byte	0x9f
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL93
	.quad	.LVL95
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL96
	.quad	.LVL98
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL96
	.quad	.LVL97
	.value	0x5
	.byte	0x91
	.sleb128 -12136
	.byte	0x9f
	.quad	.LVL97
	.quad	.LVL98-1
	.value	0x1
	.byte	0x54
	.quad	.LVL98-1
	.quad	.LVL98
	.value	0x5
	.byte	0x91
	.sleb128 -12136
	.byte	0x9f
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL96
	.quad	.LVL98
	.value	0x4
	.byte	0x91
	.sleb128 -12240
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL99
	.quad	.LVL100
	.value	0x5
	.byte	0x91
	.sleb128 -12128
	.byte	0x9f
	.quad	.LVL100
	.quad	.LVL101-1
	.value	0x1
	.byte	0x54
	.quad	.LVL101-1
	.quad	.LVL101
	.value	0x5
	.byte	0x91
	.sleb128 -12128
	.byte	0x9f
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL99
	.quad	.LVL101
	.value	0x4
	.byte	0x91
	.sleb128 -12232
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL102
	.quad	.LVL104
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST77:
	.quad	.LVL102
	.quad	.LVL103
	.value	0x5
	.byte	0x91
	.sleb128 -12120
	.byte	0x9f
	.quad	.LVL103
	.quad	.LVL104-1
	.value	0x1
	.byte	0x54
	.quad	.LVL104-1
	.quad	.LVL104
	.value	0x5
	.byte	0x91
	.sleb128 -12120
	.byte	0x9f
	.quad	0
	.quad	0
.LLST78:
	.quad	.LVL102
	.quad	.LVL104
	.value	0x4
	.byte	0x91
	.sleb128 -12224
	.quad	0
	.quad	0
.LLST79:
	.quad	.LVL110
	.quad	.LVL111
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+7259
	.sleb128 0
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL111
	.quad	.LVL112
	.value	0xa
	.byte	0x3
	.quad	.LC16
	.byte	0x9f
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL112
	.quad	.LVL113
	.value	0xa
	.byte	0x3
	.quad	.LC17
	.byte	0x9f
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL113
	.quad	.LVL114
	.value	0xa
	.byte	0x3
	.quad	.LC18
	.byte	0x9f
	.quad	0
	.quad	0
.LLST83:
	.quad	.LVL114
	.quad	.LVL115
	.value	0xa
	.byte	0x3
	.quad	.LC19
	.byte	0x9f
	.quad	.LVL134
	.quad	.LVL135
	.value	0xa
	.byte	0x3
	.quad	.LC19
	.byte	0x9f
	.quad	0
	.quad	0
.LLST84:
	.quad	.LVL115
	.quad	.LVL116
	.value	0xa
	.byte	0x3
	.quad	.LC20
	.byte	0x9f
	.quad	0
	.quad	0
.LLST85:
	.quad	.LVL116
	.quad	.LVL117
	.value	0xa
	.byte	0x3
	.quad	.LC21
	.byte	0x9f
	.quad	0
	.quad	0
.LLST86:
	.quad	.LVL117
	.quad	.LVL118
	.value	0xa
	.byte	0x3
	.quad	.LC23
	.byte	0x9f
	.quad	.LVL135
	.quad	.LVL136
	.value	0xa
	.byte	0x3
	.quad	.LC23
	.byte	0x9f
	.quad	0
	.quad	0
.LLST87:
	.quad	.LVL118
	.quad	.LVL119
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+7275
	.sleb128 0
	.quad	0
	.quad	0
.LLST88:
	.quad	.LVL119
	.quad	.LVL120
	.value	0xa
	.byte	0x3
	.quad	.LC25
	.byte	0x9f
	.quad	0
	.quad	0
.LLST89:
	.quad	.LVL120
	.quad	.LVL121
	.value	0xa
	.byte	0x3
	.quad	.LC26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST90:
	.quad	.LVL125
	.quad	.LVL126
	.value	0xa
	.byte	0x3
	.quad	.LC29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST91:
	.quad	.LVL125
	.quad	.LVL126
	.value	0x4
	.byte	0x91
	.sleb128 -12240
	.quad	0
	.quad	0
.LLST92:
	.quad	.LVL144
	.quad	.LVL145
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+7307
	.sleb128 0
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB127
	.quad	.LBE127
	.quad	.LBB130
	.quad	.LBE130
	.quad	0
	.quad	0
	.quad	.LBB131
	.quad	.LBE131
	.quad	.LBB134
	.quad	.LBE134
	.quad	0
	.quad	0
	.quad	.LBB135
	.quad	.LBE135
	.quad	.LBB138
	.quad	.LBE138
	.quad	0
	.quad	0
	.quad	.LBB139
	.quad	.LBE139
	.quad	.LBB142
	.quad	.LBE142
	.quad	0
	.quad	0
	.quad	.LBB143
	.quad	.LBE143
	.quad	.LBB150
	.quad	.LBE150
	.quad	0
	.quad	0
	.quad	.LBB146
	.quad	.LBE146
	.quad	.LBB151
	.quad	.LBE151
	.quad	.LBB156
	.quad	.LBE156
	.quad	0
	.quad	0
	.quad	.LBB152
	.quad	.LBE152
	.quad	.LBB157
	.quad	.LBE157
	.quad	.LBB162
	.quad	.LBE162
	.quad	0
	.quad	0
	.quad	.LBB158
	.quad	.LBE158
	.quad	.LBB163
	.quad	.LBE163
	.quad	.LBB164
	.quad	.LBE164
	.quad	0
	.quad	0
	.quad	.LBB183
	.quad	.LBE183
	.quad	.LBB186
	.quad	.LBE186
	.quad	0
	.quad	0
	.quad	.LBB193
	.quad	.LBE193
	.quad	.LBB211
	.quad	.LBE211
	.quad	0
	.quad	0
	.quad	.LBB200
	.quad	.LBE200
	.quad	.LBB212
	.quad	.LBE212
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB92
	.quad	.LFE92
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF153:
	.string	"printf"
.LASF19:
	.string	"_IO_read_ptr"
.LASF177:
	.string	"iseed"
.LASF31:
	.string	"_chain"
.LASF132:
	.string	"mmap_data"
.LASF8:
	.string	"size_t"
.LASF189:
	.string	"__read_alias"
.LASF105:
	.string	"wakeup_watermark"
.LASF14:
	.string	"__suseconds_t"
.LASF148:
	.string	"sample_regs_intr"
.LASF37:
	.string	"_shortbuf"
.LASF119:
	.string	"exclusive"
.LASF198:
	.string	"close"
.LASF52:
	.string	"ssize_t"
.LASF125:
	.string	"comm"
.LASF111:
	.string	"type"
.LASF89:
	.string	"PERF_SAMPLE_BRANCH_HV_SHIFT"
.LASF92:
	.string	"PERF_SAMPLE_BRANCH_ANY_RETURN_SHIFT"
.LASF83:
	.string	"PERF_COUNT_HW_STALLED_CYCLES_BACKEND"
.LASF25:
	.string	"_IO_buf_base"
.LASF115:
	.string	"read_format"
.LASF130:
	.string	"watermark"
.LASF78:
	.string	"PERF_COUNT_HW_CACHE_MISSES"
.LASF58:
	.string	"long long unsigned int"
.LASF103:
	.string	"sample_freq"
.LASF85:
	.string	"PERF_COUNT_HW_MAX"
.LASF79:
	.string	"PERF_COUNT_HW_BRANCH_INSTRUCTIONS"
.LASF191:
	.string	"__builtin_putchar"
.LASF123:
	.string	"exclude_idle"
.LASF201:
	.string	"free"
.LASF5:
	.string	"signed char"
.LASF126:
	.string	"freq"
.LASF98:
	.string	"PERF_SAMPLE_BRANCH_CALL_STACK_SHIFT"
.LASF178:
	.string	"__PRETTY_FUNCTION__"
.LASF206:
	.string	"/home/djb2195/Stage3"
.LASF165:
	.string	"selectivity"
.LASF32:
	.string	"_fileno"
.LASF104:
	.string	"wakeup_events"
.LASF20:
	.string	"_IO_read_end"
.LASF207:
	.string	"_IO_lock_t"
.LASF186:
	.string	"strtod"
.LASF120:
	.string	"exclude_user"
.LASF7:
	.string	"long int"
.LASF18:
	.string	"_flags"
.LASF69:
	.string	"PERF_TYPE_HW_CACHE"
.LASF15:
	.string	"__ssize_t"
.LASF167:
	.string	"createData"
.LASF188:
	.string	"__builtin_puts"
.LASF35:
	.string	"_cur_column"
.LASF114:
	.string	"sample_type"
.LASF124:
	.string	"mmap"
.LASF137:
	.string	"exclude_callchain_user"
.LASF0:
	.string	"double"
.LASF183:
	.string	"__printf_chk"
.LASF73:
	.string	"perf_type_id"
.LASF68:
	.string	"PERF_TYPE_TRACEPOINT"
.LASF39:
	.string	"_offset"
.LASF86:
	.string	"perf_branch_sample_type_shift"
.LASF163:
	.string	"perf_event_open"
.LASF138:
	.string	"mmap2"
.LASF76:
	.string	"PERF_COUNT_HW_INSTRUCTIONS"
.LASF40:
	.string	"__pad1"
.LASF41:
	.string	"__pad2"
.LASF59:
	.string	"timezone"
.LASF136:
	.string	"exclude_callchain_kernel"
.LASF49:
	.string	"_next"
.LASF72:
	.string	"PERF_TYPE_MAX"
.LASF157:
	.string	"__nbytes"
.LASF53:
	.string	"long long int"
.LASF181:
	.string	"attr"
.LASF48:
	.string	"_IO_marker"
.LASF179:
	.string	"stdin"
.LASF142:
	.string	"__reserved_1"
.LASF150:
	.string	"__reserved_2"
.LASF4:
	.string	"unsigned int"
.LASF108:
	.string	"bp_len"
.LASF161:
	.string	"fprintf"
.LASF116:
	.string	"disabled"
.LASF117:
	.string	"inherit"
.LASF162:
	.string	"__stream"
.LASF144:
	.string	"branch_sample_type"
.LASF1:
	.string	"long unsigned int"
.LASF64:
	.string	"__u32"
.LASF185:
	.string	"rand"
.LASF23:
	.string	"_IO_write_ptr"
.LASF182:
	.string	"syscall"
.LASF66:
	.string	"PERF_TYPE_HARDWARE"
.LASF122:
	.string	"exclude_hv"
.LASF204:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O3 -fstack-protector-strong"
.LASF166:
	.string	"data"
.LASF112:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF190:
	.string	"putchar"
.LASF70:
	.string	"PERF_TYPE_RAW"
.LASF96:
	.string	"PERF_SAMPLE_BRANCH_NO_TX_SHIFT"
.LASF195:
	.string	"time"
.LASF27:
	.string	"_IO_save_base"
.LASF88:
	.string	"PERF_SAMPLE_BRANCH_KERNEL_SHIFT"
.LASF184:
	.string	"gettimeofday"
.LASF141:
	.string	"context_switch"
.LASF60:
	.string	"tz_minuteswest"
.LASF38:
	.string	"_lock"
.LASF143:
	.string	"bp_type"
.LASF33:
	.string	"_flags2"
.LASF55:
	.string	"timeval"
.LASF75:
	.string	"PERF_COUNT_HW_CPU_CYCLES"
.LASF180:
	.string	"stdout"
.LASF155:
	.string	"__fd"
.LASF152:
	.string	"start_time"
.LASF174:
	.string	"answer"
.LASF202:
	.string	"perror"
.LASF187:
	.string	"puts"
.LASF146:
	.string	"sample_stack_user"
.LASF139:
	.string	"comm_exec"
.LASF12:
	.string	"sizetype"
.LASF56:
	.string	"tv_sec"
.LASF121:
	.string	"exclude_kernel"
.LASF24:
	.string	"_IO_write_end"
.LASF62:
	.string	"uint64_t"
.LASF100:
	.string	"PERF_SAMPLE_BRANCH_CALL_SHIFT"
.LASF67:
	.string	"PERF_TYPE_SOFTWARE"
.LASF102:
	.string	"sample_period"
.LASF95:
	.string	"PERF_SAMPLE_BRANCH_IN_TX_SHIFT"
.LASF87:
	.string	"PERF_SAMPLE_BRANCH_USER_SHIFT"
.LASF175:
	.string	"val1"
.LASF176:
	.string	"val2"
.LASF47:
	.string	"_IO_FILE"
.LASF147:
	.string	"clockid"
.LASF156:
	.string	"__buf"
.LASF160:
	.string	"__nptr"
.LASF45:
	.string	"_mode"
.LASF168:
	.string	"createOffsets"
.LASF199:
	.string	"fopen"
.LASF51:
	.string	"_pos"
.LASF34:
	.string	"_old_offset"
.LASF84:
	.string	"PERF_COUNT_HW_REF_CPU_CYCLES"
.LASF80:
	.string	"PERF_COUNT_HW_BRANCH_MISSES"
.LASF30:
	.string	"_markers"
.LASF203:
	.string	"__assert_fail"
.LASF196:
	.string	"srand"
.LASF133:
	.string	"sample_id_all"
.LASF159:
	.string	"atof"
.LASF106:
	.string	"bp_addr"
.LASF2:
	.string	"unsigned char"
.LASF77:
	.string	"PERF_COUNT_HW_CACHE_REFERENCES"
.LASF110:
	.string	"perf_event_attr"
.LASF26:
	.string	"_IO_buf_end"
.LASF11:
	.string	"__pid_t"
.LASF6:
	.string	"short int"
.LASF36:
	.string	"_vtable_offset"
.LASF194:
	.string	"malloc"
.LASF17:
	.string	"FILE"
.LASF192:
	.string	"__fprintf_chk"
.LASF173:
	.string	"stop"
.LASF63:
	.string	"__s32"
.LASF140:
	.string	"use_clockid"
.LASF135:
	.string	"exclude_guest"
.LASF9:
	.string	"__off_t"
.LASF57:
	.string	"tv_usec"
.LASF197:
	.string	"fflush"
.LASF149:
	.string	"aux_watermark"
.LASF65:
	.string	"__u64"
.LASF16:
	.string	"char"
.LASF113:
	.string	"config"
.LASF82:
	.string	"PERF_COUNT_HW_STALLED_CYCLES_FRONTEND"
.LASF99:
	.string	"PERF_SAMPLE_BRANCH_IND_JUMP_SHIFT"
.LASF107:
	.string	"config1"
.LASF91:
	.string	"PERF_SAMPLE_BRANCH_ANY_CALL_SHIFT"
.LASF109:
	.string	"config2"
.LASF208:
	.string	"__stack_chk_fail"
.LASF93:
	.string	"PERF_SAMPLE_BRANCH_IND_CALL_SHIFT"
.LASF118:
	.string	"pinned"
.LASF10:
	.string	"__off64_t"
.LASF129:
	.string	"task"
.LASF21:
	.string	"_IO_read_base"
.LASF94:
	.string	"PERF_SAMPLE_BRANCH_ABORT_TX_SHIFT"
.LASF29:
	.string	"_IO_save_end"
.LASF151:
	.string	"__fmt"
.LASF158:
	.string	"get_timestamp"
.LASF145:
	.string	"sample_regs_user"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF44:
	.string	"__pad5"
.LASF97:
	.string	"PERF_SAMPLE_BRANCH_COND_SHIFT"
.LASF13:
	.string	"__time_t"
.LASF131:
	.string	"precise_ip"
.LASF46:
	.string	"_unused2"
.LASF171:
	.string	"argv"
.LASF71:
	.string	"PERF_TYPE_BREAKPOINT"
.LASF101:
	.string	"PERF_SAMPLE_BRANCH_MAX_SHIFT"
.LASF205:
	.string	"branch_mispred.c"
.LASF61:
	.string	"tz_dsttime"
.LASF28:
	.string	"_IO_backup_base"
.LASF74:
	.string	"perf_hw_id"
.LASF164:
	.string	"flags"
.LASF81:
	.string	"PERF_COUNT_HW_BUS_CYCLES"
.LASF154:
	.string	"read"
.LASF170:
	.string	"argc"
.LASF54:
	.string	"pid_t"
.LASF193:
	.string	"getpid"
.LASF172:
	.string	"start"
.LASF169:
	.string	"main"
.LASF22:
	.string	"_IO_write_base"
.LASF127:
	.string	"inherit_stat"
.LASF90:
	.string	"PERF_SAMPLE_BRANCH_ANY_SHIFT"
.LASF200:
	.string	"fclose"
.LASF50:
	.string	"_sbuf"
.LASF134:
	.string	"exclude_host"
.LASF128:
	.string	"enable_on_exec"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
