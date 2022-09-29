CLASS zbc_enumerations DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
TYPES: BEGIN OF ENUM ebool
           BASE TYPE char1,
         true  VALUE 'X',
         false VALUE IS INITIAL,
       END OF ENUM ebool.
ENDCLASS.



CLASS zbc_enumerations IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( |Wert ohne CONV: { true } | ).
    out->write( |Wert mit CONV: { CONV char1( true ) }| ).
  ENDMETHOD.

ENDCLASS.
