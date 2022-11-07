      *--------------------------------------------------
      * NAME: Danny Galan
      * COURSE: CSCI 350
      * DATE: Nov. 9, 2022
      * Desc: showing how conditionals work in COBOL
      *--------------------------------------------------
000700 IDENTIFICATION DIVISION.
000800 PROGRAM-ID. RANGE02.
000900*------------------------------------------------
001000* ASKS USER FOR A NUMBER BETWEEN 10 AND 100
001100* EXCLUSIVE AND PRINTS A MESSAGE IF THE ENTRY
001200* IS IN RANGE.
001300*------------------------------------------------
001400 ENVIRONMENT DIVISION.
001500 DATA DIVISION.
001600 WORKING-STORAGE SECTION.
001700
001800 01  THE-NUMBER          PIC 999.
001900
002000 PROCEDURE DIVISION.
002100 PROGRAM-BEGIN.
002200
002300     PERFORM GET-THE-NUMBER.
002400
002500     PERFORM CHECK-THE-NUMBER.
002600
002700 PROGRAM-DONE.
002800     STOP RUN.
002900
003000 GET-THE-NUMBER.
003100     DISPLAY "Enter a number greater than 10".
003200     DISPLAY "and less than 100. (011-099)".
003300     ACCEPT THE-NUMBER.
003400
003500 CHECK-THE-NUMBER.
003600         IF THE-NUMBER > 10 AND
003700             THE-NUMBER < 100
003800             DISPLAY "The number is in range"
003900         ELSE
004000             DISPLAY "The number is out of range.".
004100