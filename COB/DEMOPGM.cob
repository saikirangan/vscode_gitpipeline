       IDENTIFICATION DIVISION.                                         00010000
       PROGRAM-ID. DEMOPGM.                                             020000
       DATA DIVISION.                                                   00030000
       WORKING-STORAGE SECTION.                                         00040000
       01  WS-STRING  PIC A(30).                                        00050000
       01  WS-NAME1   PIC A(5).                                         00060000
       01  WS-NAME2   PIC A(5).                                         00070000
       01  WS-NAME    PIC A(10).                                        00080000
       PROCEDURE DIVISION.                                              00090000
           ACCEPT WS-NAME1.                                             00100000
           ACCEPT WS-NAME2.                                             00110000
             DISPLAY WS-NAME1.                                          00120000
             DISPLAY WS-NAME2.                                          00130000
           STRING WS-NAME1 DELIMITED BY SPACE                           00140000
            WS-NAME2 DELIMITED BY SPACE                                 00150000
            INTO WS-STRING                                              00160000
           END-STRING.                                                  00170000
            DISPLAY WS-STRING.                                          00180000
            STOP RUN.