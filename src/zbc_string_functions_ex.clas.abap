CLASS zbc_string_functions_ex DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS ZBC_STRING_FUNCTIONS_EX IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    SELECT *
      FROM zbc_users
      INTO TABLE @DATA(lt_users).

    LOOP AT lt_users INTO DATA(ls_users).
      out->write( |{ ls_users-user_id WIDTH = 13
                   } - { substring( val = ls_users-firstname len = 1 )
                   }. { ls_users-lastname
                   } ({ ls_users-date_of_birth DATE = USER })|
      ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
