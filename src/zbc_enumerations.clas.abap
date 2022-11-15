CLASS zbc_enumerations DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

TYPES: BEGIN OF ENUM ebool
           BASE TYPE char2,
         bt value 'BT',
         eq  VALUE 'EQ',
         empty VALUE IS INITIAL,

       END OF ENUM ebool.
ENDCLASS.



CLASS ZBC_ENUMERATIONS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( |Wert ohne CONV: { BT } | ).
    out->write( |Wert mit CONV: { CONV char2( BT ) }| ).
  ENDMETHOD.
ENDCLASS.
