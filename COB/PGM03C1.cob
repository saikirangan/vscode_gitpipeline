       IDENTIFICATION DIVISION.                                         00010004
       PROGRAM-ID. PGM03C1.                                             00020004
       DATA DIVISION.                                                   00030004
       LINKAGE SECTION.                                                 00040004
       01 LC-NUMBER-A PIC 9(5).                                         00050004
       01 LC-NUMBER-B PIC 9(5).                                         00060004
       01 LC-RESULT-C PIC 9(6).                                         00070004
       PROCEDURE DIVISION USING LC-NUMBER-A, LC-NUMBER-B, LC-RESULT-C.  00080004
       MAIN-ROUTINE.                                                    00090004
            DISPLAY 'Program C is performing arithmetic operations'.    00100004
            DISPLAY LC-NUMBER-A.                                        00110004
            DISPLAY LC-NUMBER-B.                                        00120004
            COMPUTE LC-RESULT-C = LC-NUMBER-A - LC-NUMBER-B             00130004
            DISPLAY 'Program C completed arithmetic operations'.        00140004
            DISPLAY 'Result from Program C: ' LC-RESULT-C.              00150004
            GOBACK.                                                     00160004