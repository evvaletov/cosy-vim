" Vim syntax file
" Language: COSY INFINITY
" Maintainer: Eremey Valetov
" Latest Revision: 2025-02-08

if exists("b:current_syntax")
  finish
endif

" Case sensitive
syntax case match

" Comments
syntax region cosyComment start=/{/ end=/}/ contains=cosyComment

" Strings
syntax region cosyString start=/'/ skip=/''/ end=/'/ contains=cosyEscapeQuote
syntax match cosyEscapeQuote /''/

" Keywords
syntax keyword cosyKeyword BEGIN END VARIABLE FUNCTION ENDFUNCTION PROCEDURE ENDPROCEDURE
syntax keyword cosyKeyword IF ELSEIF ENDIF WHILE ENDWHILE LOOP ENDLOOP FIT ENDFIT
syntax keyword cosyKeyword DEBUG WRITE READ SAVE INCLUDE PLOOP ENDPLOOP GUIIO GUISET

" Intrinsic functions
syntax keyword cosyIntrinsic RE ST LO CM VE DA CD
syntax keyword cosyAllocation LRE LST LLO LCM LVE LDA LCD LGR
syntax keyword cosySystem TYPE LENGTH VARMEM VARPOI GRIU
syntax keyword cosyMath EXP LOG SIN COS TAN ASIN ACOS ATAN SINH COSH TANH
syntax keyword cosyMath SQRT ISRT ISRT3 SQR ERF WERF
syntax keyword cosyVector VMIN VMAX ABS NORM CONS REAL IMAG CMPLX CONJ
syntax keyword cosyUtility INT NINT NOT TRIM LTRIM

" Intrinsic procedures
syntax keyword cosyProcedure MEMALL MEMFRE MEMDPV MEMWRT SCRLEN CPUSEC PWTIME PNPRO
syntax keyword cosyProcedure PROOT QUIT SLEEP MOS ARGGET OPENF OPENFB CLOSEF REWF
syntax keyword cosyProcedure BACKF READS READB WRITEB READM WRITEM DAINI DANOT
syntax keyword cosyProcedure DANOTW DAEPS MEPSMIN DAFSET DAFILT DAPEW DAREA DAPRV
syntax keyword cosyProcedure DAREV DAFLO CDFLO DAGMD RERAN DARAN DADIU DADMU DADER
syntax keyword cosyProcedure DAINT DAPLU DASCL DATRN DASGN DAPEE DAPEA DACODE DANORO
syntax keyword cosyProcedure DANORS DACLIW DACQLC DAPEP DANOW DAEST MTREE CDF2 CDNF
syntax keyword cosyProcedure CDNFDA CDNFDS LINV LDET LEV MBLOCK LSLINE SUBST RSTCRE
syntax keyword cosyProcedure RECST VELSET VELGET VEDOT VEUNIT VEZERO IMUNIT LTRUE
syntax keyword cosyProcedure LFALSE INTPOL CLEAR

" Graphics procedures
syntax keyword cosyGraphics GRMOVE GRDRAW GRDOT GRTRI GRPOLY GRCURV GRCHAR GRCOLR
syntax keyword cosyGraphics GRWDTH GRPROJ GRZOOM GRMIMA GREPS GRSTYL GROUTF

" Beam physics procedures
syntax keyword cosyBeam OV RP RPP RPE RPR RPM RPS UM SM SNM AM ANM PM PSM WM RM MR
syntax keyword cosyBeam MT PA PT SB SP SBE DL MQ MH MO MD MZ M5 MM MMS EQ EH EO ED
syntax keyword cosyBeam EZ E5 EM EMS MS ES EC ECL ESP DI DP MC WF WC WI RF CMR CML
syntax keyword cosyBeam CMS CMSI CMST CMG CEL CEA CEG GLS GL GP GMS GMP GMF GM FR
syntax keyword cosyBeam FC FC2 FD FD2 FP PS PG PGE BP EP PTY CR SR SSR ER SCDE
syntax keyword cosyBeam ENVEL ENCL TR TRT TRR TRAP AP PRAY WRAY RRAY SRAY LRAY ARAY
syntax keyword cosyBeam PSPI WSPI RSPI SSPI LSPI ASPI TS TSC RFILT GT MCM ECM AR
syntax keyword cosyBeam RR WA WAS WL TSP TSS CSG CQG

" Constants and global variables
syntax keyword cosyConstant AMU AMUMEV EZERO CLIGHT PI MAP RAY SPOS E0 M0 Z0 V0 P0
syntax keyword cosyConstant K0 t0 CHIM CHIE ETA DEGRAD BEAMX BEAMY BEAMT FRNGI FRNGM
syntax keyword cosyConstant SPNX SPNY SPNZ

" Map functions
syntax keyword cosyMap SIGMA ME MA SE OE PB DER INTEG NMON

" Operators
syntax match cosyOperator /%/
syntax match cosyOperator /|/
syntax match cosyOperator /\^/
syntax match cosyOperator /[*\/]/
syntax match cosyOperator /[+\-]/
syntax match cosyOperator /[&<>=]/
syntax match cosyOperator /#/
syntax match cosyOperator /:=/

" Numbers
syntax match cosyNumber /\<\d\+\(\.\d\+\)\?\([EdD][+-]\?\d\+\)\?\>/

" Set highlights
highlight default link cosyComment Comment
highlight default link cosyString String
highlight default link cosyEscapeQuote SpecialChar
highlight default link cosyKeyword Keyword
highlight default link cosyIntrinsic Function
highlight default link cosyAllocation Function
highlight default link cosySystem Function
highlight default link cosyMath Function
highlight default link cosyVector Function
highlight default link cosyUtility Function
highlight default link cosyProcedure Function
highlight default link cosyGraphics Function
highlight default link cosyBeam Function
highlight default link cosyConstant Constant
highlight default link cosyMap Function
highlight default link cosyOperator Operator
highlight default link cosyNumber Number

let b:current_syntax = "cosy"
