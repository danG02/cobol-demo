      *--------------------------------------------------
      * NAME: Danny Galan
      * COURSE: CSCI 350
      * DATE: Nov. 9, 2022
      * Desc: hello world program in COBOL
      *--------------------------------------------------
       program-id. helloWorld.

       environment division.
       configuration section.

       data division.
       working-storage section.
       linkage section.

       procedure division.
       DISPLAY 'Hello, World! My name is Danny'.
       DISPLAY 55.
       DISPLAY 12.607.
           
           goback.

       end program helloWorld.
