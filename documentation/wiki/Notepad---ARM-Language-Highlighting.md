# Notepad++ ARM Language Highlighting
See code block for XML to import to Notepad++. To use, just import in the User-Defined languages dialog box--will associate .s files with it automatically.

<details>
<summary>Light Model XML (click to drop down!)</summary>
<br>

```xml
<NotepadPlus>
    <UserLang name="ARM ASM" ext="S" udlVersion="2.1">
        <Settings>
            <Global caseIgnored="no" allowFoldOfComments="no" foldCompact="no" forcePureLC="0" decimalSeparator="0" />
            <Prefix Keywords1="no" Keywords2="no" Keywords3="no" Keywords4="no" Keywords5="yes" Keywords6="no" Keywords7="yes" Keywords8="yes" />
        </Settings>
        <KeywordLists>
            <Keywords name="Comments">00@ 01 02 03/* 04*/</Keywords>
            <Keywords name="Numbers, prefix1"></Keywords>
            <Keywords name="Numbers, prefix2">0x 0b $</Keywords>
            <Keywords name="Numbers, extras1"></Keywords>
            <Keywords name="Numbers, extras2"></Keywords>
            <Keywords name="Numbers, suffix1">A B C D E F a b c d e f</Keywords>
            <Keywords name="Numbers, suffix2"></Keywords>
            <Keywords name="Numbers, range"></Keywords>
            <Keywords name="Operators1">+ - * / , : ( ) $ = &lt;&lt; &gt; &gt;&gt; ;</Keywords>
            <Keywords name="Operators2"></Keywords>
            <Keywords name="Folders in code1, open"></Keywords>
            <Keywords name="Folders in code1, middle"></Keywords>
            <Keywords name="Folders in code1, close"></Keywords>
            <Keywords name="Folders in code2, open"></Keywords>
            <Keywords name="Folders in code2, middle"></Keywords>
            <Keywords name="Folders in code2, close"></Keywords>
            <Keywords name="Folders in comment, open"></Keywords>
            <Keywords name="Folders in comment, middle"></Keywords>
            <Keywords name="Folders in comment, close"></Keywords>
            <Keywords name="Keywords1">r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 sp fp x0 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 w0 w1 w2 w3 w4 w5 w6 w7 w8 w9 w10 w11 w12 w13 w14 w15 w16 w17 w18 w19 w20 w21 w22 w23 w24 w25 w26 w27 w28 w29 w30 w31 lr pc ip sp fp sl sb tr a1 a2 a3 a4 v1 v2 v3 v4 v5 v6 v7 v8</Keywords>
            <Keywords name="Keywords2">adc add adr adrl and asr b bfc bfi bic bkpt blockquote blx bx bxj cbz cbnz cdp cdp2 clrex clz cmn cmp cps cpy dbg dmb dsb eor eret isb it ldc ldc2 ldm ldr ldrb ldrbt ldrd ldrex ldrexb ldrexh ldrexd ldrh ldrht ldrsb ldrsbt ldrsh ldrsht ldrt lsl lsr mar mcr mcr2 mcrr mcrr2 mia miaph mla mls mov movt mov32 mra mrc mrc2 mrrc mrrc2 mrs msr mul mvn neg nop orn norr pkhbt phktb pld pldw pli pop push qadd qdadd qdsub qsub qadd8 qadd16 qasx qsub8 qsub16 qasx rbit rev rev16 revsh rfe ror rrx rsb rsc sadd8 sadd16 sasx sbc sbfx sdiv sel setend sev shadd8 shadd16 shasx shsub8 shsub16 shsax smc smla smlad smal smal smlald smalw smlsd smlsld smmla smmls smmul smaud smusd smul smull smulw sbs srs ssat ssat16 ssub8 ssub16 ssax stc stc2 stm street strb strbt strd strex strexb strexh strexd strh strht strt sub subs svc swi swp swpb sxtab stxab16 sxth stxb sxth sxtb16 sys tbb tbh teq tst uadd8 uadd16 uasx ubfx udiv uhadd8 uhadd16 uhasx uhsub8 uhsub16 uhsax umaal umlal umull uqadd8 uqadd16 uqasx uqsub8 uqsub16 uqsax uqsub16 uqsax usad8 usada8 usat usat16 usub8 usub16 usax uxtab uxtab16 uxtah uxtb uxth uxt16 v* wfe wfi yield ldmfd stmfd str ldr bl pushne beq blt moveq movne movlt movge movgt movle orr ldrgtb strgtb subgt bgt bge ble bne bpl bmi rsbeq movs subhs</Keywords>
            <Keywords name="Keywords3">f2xm1 fabs fadd faddp fbld fbstp fchs fclex fcom fcomp fcompp fdecstp fdisi fdiv fdivp fdivr fdivrp feni ffree fiadd ficom ficomp fidiv fidivr fild fimul fincstp finit fist fistp fisub fisubr fld fld1 fldcw fldenv fldenvw fldl2e fldl2t fldlg2 fldln2 fldpi fldz fmul fmulp fnclex fndisi fneni fninit fnop fnsave fnsavew fnstcw fnstenv fnstenvw fnstsw fpatan fprem fptan frndint frstor frstorw fsave fsavew fscale fsqrt fst fstcw fstenv fstenvw fstp fstsw fsub fsubp fsubr fsubrp ftst fwait fxam fxch fxtract fyl2x fyl2xp1 fsetpm fcos fldenvd fnsaved fnstenvd fprem1 frstord fsaved fsin fsincos fstenvd fucom fucomp fucompp fcomi fcomip ffreep fcmovb fcmove fcmovbe fcmovu fcmovnb fcmovne fcmovnbe fcmovnu</Keywords>
            <Keywords name="Keywords4">.text .data .rodata .section .macro .endm .mexit .if .else .endif .elif .while .wend .include .incbin .function .procedure .endfunc .endp .assert .info .opt .ttl .subt .arm .thumb .thumbx .code16 .code32 .alias .align .area .attr .end .entry .equ .export .global .exportas .get .import .extern .keep .nofp .require .require8 .preserve8 .rout .set .req .pool .bss .int .byte .ascii</Keywords>
            <Keywords name="Keywords5">.w .n .gbla .gbll .gbls .lcla .lcll .lcls .seta .setl .sets .reloc .rn .rlist .cn .cps .qn .dn .sn .ltorg .map .field .space .fill .dcb .dcd .dcdu .dcdo .dcfd .dcfdu .dcfs .dcfsu .dci .dcq .dcqu .dcw .dcwu .common</Keywords>
            <Keywords name="Keywords6">vaba vabl vabd vabdl vabs vacge vacgt vacle vaclt vaddsd vaddhn vand vbic vbif vbit vbsl vceo vceq vcge vcgt vcle vcls vcnt vclt vclz vcvt vdup veor vext vfma vfms vhadd vhsub vld vmax vmin vmla vmls vmov vmovl vmovu vmovun vmul vmvn vneg vorn vorr vpadal vpadd vpmax vpmin vqabs vqadd vqdmlal vqdmlsl vqdmull vqdmulh vqmovun vqmovn vqneg nqrdmulh vqrshl vqrshrn vqrshrun vqshl vqshrn vqshrun vqsub vraddhn vrecpe vrecps vrev vrhadd vrshr vrshrn vrsqte vrsqte vrsqrts vrsra vrsubhn vshl vshr vshrn vsli vsra vsri vst vsub vsubhn vswp vtbl vtbx vtrn vtst vuzp vzip vldm vldr vmov vmrs vmsr vpop vpush vstm vstr vabs vaddhn vcmp vcmpe</Keywords>
            <Keywords name="Keywords7">#</Keywords>
            <Keywords name="Keywords8">[ ]</Keywords>
            <Keywords name="Delimiters">00&quot; 01 02&quot; 03&apos; 04\ 05&apos; 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23</Keywords>
        </KeywordLists>
        <Styles>
            <WordsStyle name="DEFAULT" fgColor="000000" bgColor="FFFFFF" fontName="&#x6C10;&#x773F;&#x0185;" fontStyle="0" nesting="0" />
            <WordsStyle name="COMMENTS" fgColor="B4B4B4" bgColor="FFFFFF" fontName="EEEE05565CDC31]" fontStyle="0" nesting="0" />
            <WordsStyle name="LINE COMMENTS" fgColor="0080FF" bgColor="FFFFFF" fontName="size_t size" fontStyle="0" nesting="0" />
            <WordsStyle name="NUMBERS" fgColor="FF8000" bgColor="FFFFFF" fontName="ner" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS1" fgColor="008000" bgColor="FFFFFF" fontName="&#x4328;&#x5715;&#x7FF9;" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS2" fgColor="B50B0B" bgColor="FFFFFF" fontName="&#xA6A0;&#x7752;&#x0185;" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS3" fgColor="000080" bgColor="FFE0FF" fontName="&#x8540;&#x755D;&#x7FF9;" fontStyle="0" nesting="0" />
            <WordsStyle name="KEYWORDS4" fgColor="990099" bgColor="FFFFFF" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS5" fgColor="800000" bgColor="FFFFFF" fontName="getmaxcolor" fontStyle="0" nesting="0" />
            <WordsStyle name="KEYWORDS6" fgColor="00AAAA" bgColor="FFFFFF" fontName="Overload" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS7" fgColor="0000FF" bgColor="FFFFFF" fontName="&#x0A7F;&#x959E;&#x0685;&#x9000;&#x1E88;&#x8A62;&#x7FF9;" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS8" fgColor="0000C4" bgColor="FFFFFF" fontName="loa" fontStyle="1" nesting="0" />
            <WordsStyle name="OPERATORS" fgColor="0000FF" bgColor="FFFFFF" fontName="ord" fontStyle="1" nesting="0" />
            <WordsStyle name="FOLDER IN CODE1" fgColor="000000" bgColor="FFFFFF" fontName="&#xC5B0;&#xA339;&#x7FF9;" fontStyle="0" nesting="0" />
            <WordsStyle name="FOLDER IN CODE2" fgColor="000000" bgColor="FFFFFF" fontStyle="0" nesting="0" />
            <WordsStyle name="FOLDER IN COMMENT" fgColor="800000" bgColor="FFFFFF" fontName="&#x1000;&#x5500;&#x6573;&#x7372;&#x3C00;&#x0900;&#x0400;&#xEF00;&#x00BE;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS1" fgColor="FF0DFF" bgColor="FFFFFF" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS2" fgColor="808040" bgColor="FFFFFF" fontName="&#xC5B0;&#xA339;&#x7FF9;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS3" fgColor="000000" bgColor="FFFFFF" fontName="&#x1000;&#x5500;&#x6573;&#x7372;&#x3C00;&#x0900;&#x0400;&#xEF00;&#x00BE;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS4" fgColor="000000" bgColor="FFFFFF" fontName="&#xC555;&#x9460;&#x3F4C;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS5" fgColor="000000" bgColor="FFFFFF" fontName="&#xC5C9;&#x94EC;&#x2B48;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS6" fgColor="000000" bgColor="FFFFFF" fontName="&#xC5B3;&#x9486;&#x3173;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS7" fgColor="FF0000" bgColor="FFFFFF" fontName="&#xC52A;&#x940F;&#x4285;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS8" fgColor="000000" bgColor="FFFFFF" fontName="&#xC538;&#x943D;&#x4469;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
        </Styles>
    </UserLang>
</NotepadPlus>
```

</details>

<details>
<summary>Dark Mode XML (click to drop down!)</summary>
<br>

```xml
<NotepadPlus>
    <UserLang name="ARM ASM" ext="S" udlVersion="2.1">
        <Settings>
            <Global caseIgnored="no" allowFoldOfComments="no" foldCompact="no" forcePureLC="0" decimalSeparator="0" />
            <Prefix Keywords1="no" Keywords2="no" Keywords3="no" Keywords4="no" Keywords5="yes" Keywords6="no" Keywords7="yes" Keywords8="yes" />
        </Settings>
        <KeywordLists>
            <Keywords name="Comments">00@ 01 02 03/* 04*/</Keywords>
            <Keywords name="Numbers, prefix1"></Keywords>
            <Keywords name="Numbers, prefix2">0x 0b $</Keywords>
            <Keywords name="Numbers, extras1"></Keywords>
            <Keywords name="Numbers, extras2"></Keywords>
            <Keywords name="Numbers, suffix1">A B C D E F a b c d e f</Keywords>
            <Keywords name="Numbers, suffix2"></Keywords>
            <Keywords name="Numbers, range"></Keywords>
            <Keywords name="Operators1">+ - * / , : ( ) $ = &lt;&lt; &gt; &gt;&gt; ;</Keywords>
            <Keywords name="Operators2"></Keywords>
            <Keywords name="Folders in code1, open"></Keywords>
            <Keywords name="Folders in code1, middle"></Keywords>
            <Keywords name="Folders in code1, close"></Keywords>
            <Keywords name="Folders in code2, open"></Keywords>
            <Keywords name="Folders in code2, middle"></Keywords>
            <Keywords name="Folders in code2, close"></Keywords>
            <Keywords name="Folders in comment, open"></Keywords>
            <Keywords name="Folders in comment, middle"></Keywords>
            <Keywords name="Folders in comment, close"></Keywords>
            <Keywords name="Keywords1">r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 sp fp x0 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 w0 w1 w2 w3 w4 w5 w6 w7 w8 w9 w10 w11 w12 w13 w14 w15 w16 w17 w18 w19 w20 w21 w22 w23 w24 w25 w26 w27 w28 w29 w30 w31 lr pc ip sp fp sl sb tr a1 a2 a3 a4 v1 v2 v3 v4 v5 v6 v7 v8</Keywords>
            <Keywords name="Keywords2">adc add adr adrl and asr b bfc bfi bic bkpt blockquote blx bx bxj cbz cbnz cdp cdp2 clrex clz cmn cmp cps cpy dbg dmb dsb eor eret isb it ldc ldc2 ldm ldr ldrb ldrbt ldrd ldrex ldrexb ldrexh ldrexd ldrh ldrht ldrsb ldrsbt ldrsh ldrsht ldrt lsl lsr mar mcr mcr2 mcrr mcrr2 mia miaph mla mls mov movt mov32 mra mrc mrc2 mrrc mrrc2 mrs msr mul mvn neg nop orn norr pkhbt phktb pld pldw pli pop push qadd qdadd qdsub qsub qadd8 qadd16 qasx qsub8 qsub16 qasx rbit rev rev16 revsh rfe ror rrx rsb rsc sadd8 sadd16 sasx sbc sbfx sdiv sel setend sev shadd8 shadd16 shasx shsub8 shsub16 shsax smc smla smlad smal smal smlald smalw smlsd smlsld smmla smmls smmul smaud smusd smul smull smulw sbs srs ssat ssat16 ssub8 ssub16 ssax stc stc2 stm street strb strbt strd strex strexb strexh strexd strh strht strt sub subs svc swi swp swpb sxtab stxab16 sxth stxb sxth sxtb16 sys tbb tbh teq tst uadd8 uadd16 uasx ubfx udiv uhadd8 uhadd16 uhasx uhsub8 uhsub16 uhsax umaal umlal umull uqadd8 uqadd16 uqasx uqsub8 uqsub16 uqsax uqsub16 uqsax usad8 usada8 usat usat16 usub8 usub16 usax uxtab uxtab16 uxtah uxtb uxth uxt16 v* wfe wfi yield ldmfd stmfd str ldr bl pushne beq blt moveq movne movlt movge movgt movle orr ldrgtb strgtb subgt bgt bge ble bne bpl bmi rsbeq movs subhs</Keywords>
            <Keywords name="Keywords3">f2xm1 fabs fadd faddp fbld fbstp fchs fclex fcom fcomp fcompp fdecstp fdisi fdiv fdivp fdivr fdivrp feni ffree fiadd ficom ficomp fidiv fidivr fild fimul fincstp finit fist fistp fisub fisubr fld fld1 fldcw fldenv fldenvw fldl2e fldl2t fldlg2 fldln2 fldpi fldz fmul fmulp fnclex fndisi fneni fninit fnop fnsave fnsavew fnstcw fnstenv fnstenvw fnstsw fpatan fprem fptan frndint frstor frstorw fsave fsavew fscale fsqrt fst fstcw fstenv fstenvw fstp fstsw fsub fsubp fsubr fsubrp ftst fwait fxam fxch fxtract fyl2x fyl2xp1 fsetpm fcos fldenvd fnsaved fnstenvd fprem1 frstord fsaved fsin fsincos fstenvd fucom fucomp fucompp fcomi fcomip ffreep fcmovb fcmove fcmovbe fcmovu fcmovnb fcmovne fcmovnbe fcmovnu</Keywords>
            <Keywords name="Keywords4">.text .data .rodata .section .macro .endm .mexit .if .else .endif .elif .while .wend .include .incbin .function .procedure .endfunc .endp .assert .info .opt .ttl .subt .arm .thumb .thumbx .code16 .code32 .alias .align .area .attr .end .entry .equ .export .global .exportas .get .import .extern .keep .nofp .require .require8 .preserve8 .rout .set .req .pool .bss .int .byte .ascii</Keywords>
            <Keywords name="Keywords5">.w .n .gbla .gbll .gbls .lcla .lcll .lcls .seta .setl .sets .reloc .rn .rlist .cn .cps .qn .dn .sn .ltorg .map .field .space .fill .dcb .dcd .dcdu .dcdo .dcfd .dcfdu .dcfs .dcfsu .dci .dcq .dcqu .dcw .dcwu .common</Keywords>
            <Keywords name="Keywords6">vaba vabl vabd vabdl vabs vacge vacgt vacle vaclt vaddsd vaddhn vand vbic vbif vbit vbsl vceo vceq vcge vcgt vcle vcls vcnt vclt vclz vcvt vdup veor vext vfma vfms vhadd vhsub vld vmax vmin vmla vmls vmov vmovl vmovu vmovun vmul vmvn vneg vorn vorr vpadal vpadd vpmax vpmin vqabs vqadd vqdmlal vqdmlsl vqdmull vqdmulh vqmovun vqmovn vqneg nqrdmulh vqrshl vqrshrn vqrshrun vqshl vqshrn vqshrun vqsub vraddhn vrecpe vrecps vrev vrhadd vrshr vrshrn vrsqte vrsqte vrsqrts vrsra vrsubhn vshl vshr vshrn vsli vsra vsri vst vsub vsubhn vswp vtbl vtbx vtrn vtst vuzp vzip vldm vldr vmov vmrs vmsr vpop vpush vstm vstr vabs vaddhn vcmp vcmpe</Keywords>
            <Keywords name="Keywords7">#</Keywords>
            <Keywords name="Keywords8">[ ]</Keywords>
            <Keywords name="Delimiters">00&quot; 01 02&quot; 03&apos; 04\ 05&apos; 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23</Keywords>
        </KeywordLists>
        <Styles>
            <WordsStyle name="DEFAULT" fgColor="FFFFFF" bgColor="000000" fontName="&#x6C10;&#x773F;&#x0185;" fontStyle="0" nesting="0" />
            <WordsStyle name="COMMENTS" fgColor="B4B4B4" bgColor="000000" fontName="EEEE05565CDC31]" fontStyle="0" nesting="0" />
            <WordsStyle name="LINE COMMENTS" fgColor="0080FF" bgColor="000000" fontName="size_t size" fontStyle="0" nesting="0" />
            <WordsStyle name="NUMBERS" fgColor="FF8000" bgColor="000000" fontName="ner" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS1" fgColor="00B000" bgColor="000000" fontName="&#x4328;&#x5715;&#x7FF9;" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS2" fgColor="B50B0B" bgColor="000000" fontName="&#xA6A0;&#x7752;&#x0185;" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS3" fgColor="000080" bgColor="3C3C3C" fontName="&#x8540;&#x755D;&#x7FF9;" fontStyle="0" nesting="0" />
            <WordsStyle name="KEYWORDS4" fgColor="D700D7" bgColor="000000" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS5" fgColor="FF0000" bgColor="000000" fontName="getmaxcolor" fontStyle="0" nesting="0" />
            <WordsStyle name="KEYWORDS6" fgColor="00AAAA" bgColor="000000" fontName="Overload" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS7" fgColor="0000FF" bgColor="000000" fontName="&#x0A7F;&#x959E;&#x0685;&#x9000;&#x1E88;&#x8A62;&#x7FF9;" fontStyle="1" nesting="0" />
            <WordsStyle name="KEYWORDS8" fgColor="0000C4" bgColor="000000" fontName="loa" fontStyle="1" nesting="0" />
            <WordsStyle name="OPERATORS" fgColor="0000FF" bgColor="000000" fontName="ord" fontStyle="1" nesting="0" />
            <WordsStyle name="FOLDER IN CODE1" fgColor="000000" bgColor="FFFFFF" fontName="&#xC5B0;&#xA339;&#x7FF9;" fontStyle="0" nesting="0" />
            <WordsStyle name="FOLDER IN CODE2" fgColor="000000" bgColor="FFFFFF" fontStyle="0" nesting="0" />
            <WordsStyle name="FOLDER IN COMMENT" fgColor="800000" bgColor="FFFFFF" fontName="&#x1000;&#x5500;&#x6573;&#x7372;&#x3C00;&#x0900;&#x0400;&#xEF00;&#x00BE;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS1" fgColor="FF0DFF" bgColor="000000" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS2" fgColor="808040" bgColor="000000" fontName="&#xC5B0;&#xA339;&#x7FF9;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS3" fgColor="000000" bgColor="FFFFFF" fontName="&#x1000;&#x5500;&#x6573;&#x7372;&#x3C00;&#x0900;&#x0400;&#xEF00;&#x00BE;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS4" fgColor="000000" bgColor="FFFFFF" fontName="&#xC555;&#x9460;&#x3F4C;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS5" fgColor="000000" bgColor="FFFFFF" fontName="&#xC5C9;&#x94EC;&#x2B48;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS6" fgColor="000000" bgColor="FFFFFF" fontName="&#xC5B3;&#x9486;&#x3173;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS7" fgColor="FF0000" bgColor="FFFFFF" fontName="&#xC52A;&#x940F;&#x4285;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
            <WordsStyle name="DELIMITERS8" fgColor="000000" bgColor="FFFFFF" fontName="&#xC538;&#x943D;&#x4469;&#x8000;&#xD708;&#x2F19;&#x7FF7;" fontStyle="0" nesting="0" />
        </Styles>
    </UserLang>
</NotepadPlus>
```
</details>