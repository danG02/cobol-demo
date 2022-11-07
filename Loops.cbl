      *--------------------------------------------------
      * NAME: Danny Galan
      * COURSE: CSCI 350
      * DATE: Nov. 9, 2022
      * Desc: one way to create loops in COBOL
      *--------------------------------------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID. loop.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       
       01 COUNTER     PICTURE IS 99.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

       APPLE.
       PERFORM BANANA WITH TEST AFTER UNTIL COUNTER > 5.
       STOP RUN.
       DISPLAY "Enter the first number".

       BANANA.

       DISPLAY "Counter :" COUNTER.

       ADD 1 TO COUNTER.

       PROGRAM-DONE.
       STOP RUN.

