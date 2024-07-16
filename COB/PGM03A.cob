       IDENTIFICATION DIVISION.                                         00010005
       PROGRAM-ID. PGM03A.                                              00020005
       DATA DIVISION.                                                   00030005
       WORKING-STORAGE SECTION.                                         00040005
       01 WS-NUMBER-A PIC 9(5).                                         00050005
       01 WS-NUMBER-B PIC 9(5).                                         00060005
       01 WS-RESULT-B PIC 9(6).                                         00070005
       01 WS-RESULT-C PIC 9(6).                                         00080005
       01 WS-RETURN-CODE PIC 99.                                        00090005
       PROCEDURE DIVISION.                                              00100005
       MAIN-ROUTINE.                                                    00110005
            DISPLAY 'Enter Number A:'                                   00120005
            ACCEPT WS-NUMBER-A.                                         00130005
            DISPLAY 'Enter Number B:'                                   00140005
            ACCEPT WS-NUMBER-B.                                         00150005
            DISPLAY 'Program A is calling Program B'.                   00160005
            CALL 'PGM03B2' USING WS-NUMBER-A, WS-NUMBER-B,              00170005
                                          WS-RESULT-B, WS-RESULT-C.     00180005
            DISPLAY 'Result received from Program B: ' WS-RESULT-B.     00190005
            DISPLAY 'Result received from Program C: ' WS-RESULT-C.     00200005
                                                                        00210005
            DISPLAY 'Final Results:'                                    00220005
            DISPLAY 'Result from Program B: ' WS-RESULT-B.              00230005
            DISPLAY 'Result from Program C: ' WS-RESULT-C.              00240005
            IF WS-RESULT-B = WS-RESULT-C                                00250005
               MOVE 0 TO WS-RETURN-CODE                                 00260005
            ELSE                                                        00270005
               MOVE 12 TO WS-RETURN-CODE                                00280005
            END-IF                                                      00290005
            DISPLAY 'Return Code: ' WS-RETURN-CODE                      00300005
            GOBACK.                                                     00310005