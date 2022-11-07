      *--------------------------------------------------
      * NAME: Danny Galan
      * COURSE: CSCI 350
      * DATE: Nov. 9, 2022
      * Desc: Showing how the verb move works
      *--------------------------------------------------       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. hello2.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       
       01 THE-NAME         PIC X(10).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

       DISPLAY "Your name is...".

       MOVE "Bob" TO THE-NAME.

       DISPLAY "Hello " THE-NAME.

       PROGRAM-DONE.
       STOP RUN.

