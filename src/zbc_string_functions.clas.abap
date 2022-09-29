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
    METHODS concat_options.
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
    out->write( concat_lines_of_expression( VALUE #( ( |A| ) ( |B| ) ) ) ).
  ENDMETHOD.

  METHOD replace_name.
    result = replace( val = text
                      pcre = '(.*)\s(.*)'
                      with = '$2, $1' ).
  ENDMETHOD.

  METHOD concat_options.
    DATA resultstring1 TYPE string.
    DATA resultstring2 TYPE string.
    DATA resultstring3 TYPE string.

    "Option 1: with CONCATENATE
    CONCATENATE 'ABC' 'DEF' 'GHI' INTO resultstring1.

    "Option 2: with the && Operator
    resultstring2 = 'ABC' && 'DEF' && 'GHI'.

    "Option 3: with multiple calculation assignments
    resultstring3 = 'ABC'.
    resultstring3 &&= 'DEF'.
    resultstring3 &&= 'GHI'.
  ENDMETHOD.

ENDCLASS.
