CLASS zbc_enumerations DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    TYPES: BEGIN OF ENUM eopt
             BASE TYPE char2,
             ebt    VALUE 'BT',
             eeq    VALUE 'EQ',
             eempty VALUE IS INITIAL,

           END OF ENUM eopt.

    METHODS test IMPORTING iv_opt TYPE eopt
                           out    TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.



CLASS zbc_enumerations IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    test( iv_opt =  CONV eopt( 'xy' )
          out = out ).
*   out->write( |Wert ohne CONV: { ebt } | ).
*    out->write( |Wert mit CONV: { CONV char2( ebt ) }| ).
*    out->write( | CONV: { CONV eopt( 'EQ' ) }| ).

  ENDMETHOD.

  METHOD test.
    CASE iv_opt .
      WHEN ebt.
        out->write( |BEtween| ).  .
      WHEN eeq.
        out->write( |Equals| ).
      WHEN eempty.
        out->write( |Empty| ).
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
