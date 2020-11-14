       >>SOURCE FORMAT FREE

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN-DATATYPES.
AUTHOR. Connor Brady.
DATE-WRITTEN. November 14th 2020

ENVIRONMENT DIVISION.
DATA DIVISION.
FILE SECTION.

WORKING-STORAGE SECTION.

*> Value sets the default value
01 SampleData PIC X(20) VALUE "AlphaNumeric data".
01 LettersOnly PIC AAA VALUE "ABC".
01 NumbersOnly PIC 9(4) VALUE 1234.
01 SignedInteger PIC S9(4) VALUE -1234.
01 FloatingPoint PIC 9(4)V99 VALUE ZERO.

*> Collection
01 Customer.
       02 Ident    PIC 9(3).
       02 CustomerName PIC X(20).
       02 DOB.
           03 MOB PIC 99.
           03 DOB PIC 99.
           03 YOB PIC 99.



PROCEDURE DIVISION.
*> COBOL is not typed - You (the programmer) needs to enforce types
*> MOVE is used to assign values

MOVE "123Connor Brady        01031999" TO Customer
DISPLAY CustomerName

STOP RUN.
