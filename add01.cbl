      *--------------------------------------------------
      * NAME: Danny Galan
      * COURSE: CSCI 350
      * DATE: Nov. 9, 2022
      * Desc: adding varibles in cobol
      *--------------------------------------------------       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. addo1.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       
       01 FIRST-NUMBER     PICTURE IS 99.
       01 SECOND-NUMBER    PICTURE IS 99.
       01 THE-RESULT       PICTURE IS 999.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

       DISPLAY "Enter the first number".

       ACCEPT FIRST-NUMBER.

       DISPLAY "Enter the second number".

       ACCEPT SECOND-NUMBER.

       COMPUTE THE-RESULT = FIRST-NUMBER + SECOND-NUMBER.

       DISPLAY "The result is:".
       DISPLAY THE-RESULT.

       PROGRAM-DONE.
       STOP RUN.

