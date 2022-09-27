CLASS zbc_string_functions DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES tt_string TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
    INTERFACES if_oo_adt_classrun.

    METHODS concat_lines_of_expression IMPORTING intab         TYPE tt_string
                                       RETURNING VALUE(result) TYPE string.
    METHODS concat_lines_of_statement IMPORTING intab         TYPE tt_string
                                      RETURNING VALUE(result) TYPE string.
    METHODS replace_name IMPORTING text          TYPE string
                         RETURNING VALUE(result) TYPE string.
ENDCLASS.



CLASS zbc_string_functions IMPLEMENTATION.


  METHOD concat_lines_of_expression.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    result = concat_lines_of( table = intab sep = '-' ).
  ENDMETHOD.

  METHOD concat_lines_of_statement.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    CONCATENATE LINES OF intab
           INTO result
           SEPARATED BY '-'.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    out->write( replace_name( 'Peter Pan' ) ).
  ENDMETHOD.

  method replace_name.
    result = replace( val = text
                      pcre = '(.*)\s(.*)'
                      with = '$2, $1' ).
  endmethod.

ENDCLASS.
