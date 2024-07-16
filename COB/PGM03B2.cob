       IDENTIFICATION DIVISION.                                         00010005
       PROGRAM-ID. PGM03B2.                                             00020005
       DATA DIVISION.                                                   00030005
       LINKAGE SECTION.                                                 00040005
       01 LS-NUMBER-A PIC 9(5).                                         00050005
       01 LS-NUMBER-B PIC 9(5).                                         00060005
       01 LS-RESULT-B PIC 9(6).                                         00070005
       01 LS-RESULT-C PIC 9(6).                                         00080005
       PROCEDURE DIVISION USING LS-NUMBER-A, LS-NUMBER-B, LS-RESULT-B,  00090005
                              LS-RESULT-C.                              00100005
       MAIN-ROUTINE.                                                    00110005
            DISPLAY 'Program B is performing arithmetic operations'.    00120005
            COMPUTE LS-RESULT-B = LS-NUMBER-A / LS-NUMBER-B.            00130005
            DISPLAY 'Program B completed arithmetic operations'.        00140005
            DISPLAY 'Result from Program B: ' LS-RESULT-B.              00150005
            DISPLAY 'Program B is calling Program C'                    00160005
            CALL 'PGM03C1' USING LS-NUMBER-A, LS-NUMBER-B,              00170005
                                                         LS-RESULT-C.   00180005
            DISPLAY 'Result received from Program C: ' LS-RESULT-C.     00190005
            GOBACK.                                                     00200005