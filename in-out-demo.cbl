      *--------------------------------------------------
      * NAME: Danny Galan
      * COURSE: CSCI 350
      * DATE: Nov. 9, 2022
      * Desc: Creating a file that holds first name and last name in COBOL
      *--------------------------------------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IODEMO.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL PHONE-BOOK
      *or  SELECT PHONE-BOOK
           ASSIGN to "phone.csv"
           ORGANIZATION IS SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD PHONE-BOOK
           LABEL RECORDS ARE STANDARD.
           01 PHONE-RECORD.
               05 PHONE-LAST-NAME      PIC X(20).
               05 PHONE-FIRST-NAME     PIC X(20).
               05 PHONE-NUMBER         PIC X(15).

       WORKING-STORAGE SECTION.
       
       01 PROMT-1                      PIC X(9) VALUE "Last Name".
       01 PROMT-2                      PIC X(10) VALUE "First Name".
       01 PROMT-3                      PIC X(10) VALUE "Number".

       01 YES-NO                       PIC X.
       01 ENTRY-OK                     PIC X.

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.

           PERFORM OPENING-PROCEDURE.
           MOVE "Y" TO YES-NO.
           PERFORM ADD-RECORDS
               UNTIL YES-NO = "N".
           PERFORM CLOSING-PROCEDURE.

       PROGRAM-DONE.
       STOP RUN.
      * OPENING AND CLOSING

       OPENING-PROCEDURE.
           OPEN EXTEND PHONE-BOOK.
       CLOSING-PROCEDURE.
           CLOSE PHONE-BOOK.

       ADD-RECORDS.
           MOVE "N" TO ENTRY-OK.
           PERFORM GET-FIELDS
               UNTIL ENTRY-OK = "Y".
           PERFORM ADD-THIS-RECORD.
           PERFORM GO-AGAIN.

       GET-FIELDS.
           MOVE SPACE TO PHONE-RECORD.
           DISPLAY PROMT-1 " ? ".
           ACCEPT PHONE-LAST-NAME.
           DISPLAY PROMT-2 " ? ".
           ACCEPT PHONE-FIRST-NAME.
           DISPLAY PROMT-3 " ? ".
           ACCEPT PHONE-NUMBER.
           PERFORM VALIDATE-FIELDS.
           VALIDATE-FIELDS.
               MOVE "Y" TO ENTRY-OK.
               IF PHONE-LAST-NAME = SPACE
                   DISPLAY "LAST NAME MUST BE ENTERED!"
                   MOVE "N" TO ENTRY-OK.
               
               ADD-THIS-RECORD.
                   WRITE PHONE-RECORD.
           
           GO-AGAIN.
               DISPLAY "GO AGAIN?".
               ACCEPT YES-NO.
               IF YES-NO = "y"
                   MOVE "Y" TO YES-NO.
               IF YES-NO NOT = "Y"
                   MOVE "N" TO YES-NO.

            

