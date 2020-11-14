       >>SOURCE FORMAT FREE

*> PROGRAM DETAILS
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
AUTHOR. Connor Brady.
DATE-WRITTEN. November 14th 2020.

ENVIRONMENT DIVISION.

DATA DIVISION.
FILE SECTION.

*> PROGRAMING VARIABLES
*> COBOL Does not enforce types - The programmer does this
WORKING-STORAGE SECTION.
01 UserName PIC X(30).
01 UserPreBalance PIC 9(18) VALUE ZEROS.
01 UserTransactionValue PIC 9(18) VALUE ZEROS.
01 UserNewBalance PIC 9(18) VALUES 0.
01 NINumber PIC X(10).

01 TaxRate CONSTANT AS 20.

*> OTHER TYPES
*> ZERO, ZEROS
*> SPACE SPACES
*> HIGH-VALUE HIGH-VALUES
*> LOW-VALUE LOW-VALUES

*> PROGRAM TO RUN
PROCEDURE DIVISION.

DISPLAY "Name " WITH NO ADVANCING
ACCEPT UserName

DISPLAY "NI Number: " WITH NO ADVANCING
ACCEPT NINumber

DISPLAY "Editing " UserName 
DISPLAY "NI Number: " NINumber

DISPLAY "Enter user's current balance: " WITH NO ADVANCING
ACCEPT UserPreBalance

DISPLAY "Enter new transaction amount: " WITH NO ADVANCING
ACCEPT UserTransactionValue

DISPLAY "PreBalance: " UserPreBalance
DISPLAY "Transaction: " UserTransactionValue 

COMPUTE UserNewBalance = UserPreBalance + UserTransactionValue

DISPLAY "User new balance = " UserNewBalance

STOP RUN.

*> OTHER NOTES
*> WITH NO ADVANCING - No newline on display
