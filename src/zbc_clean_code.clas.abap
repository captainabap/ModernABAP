CLASS zbc_clean_code DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES t_rgb TYPE c LENGTH 7.
    CONSTANTS: BEGIN OF cs_color,
                 red   TYPE t_rgb VALUE '#FF0000',
                 green TYPE t_rgb VALUE '#00FF00',
                 blue  TYPE t_rgb VALUE '#0000FF',
               END OF cs_color.
    METHODS declarations.
ENDCLASS.



CLASS ZBC_CLEAN_CODE IMPLEMENTATION.


  METHOD declarations.

  ENDMETHOD.
ENDCLASS.
