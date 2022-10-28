CLASS zbc_internal_tables DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.
    TYPES tt_user TYPE STANDARD TABLE OF zbc_users WITH DEFAULT KEY .

    METHODS get_user_table RETURNING VALUE(result) TYPE tt_user.
    METHODS demo_table_expressions IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS demo_write_with_te  IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS demo_table_functions IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS demo_grouping IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS demo_loop_step IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.



CLASS ZBC_INTERNAL_TABLES IMPLEMENTATION.


  METHOD demo_table_expressions.
    SELECT *
      FROM zbc_users
      INTO TABLE @DATA(lt_user).

    TRY.
        DATA(ls_first_row) = lt_user[ 1 ].

        DATA(lv_firstname) = lt_user[ 1 ]-firstname.

        DATA(lv_lastname) = lt_user[ firstname = 'Jörg' ]-lastname.

        out->write( lv_lastname ).

      CATCH cx_sy_itab_line_not_found INTO DATA(lx_not_found).
        out->write( |Nothing found :( | ).
    ENDTRY.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    demo_table_expressions( out ).
    demo_table_functions( out ).
    demo_grouping( out ).
    demo_write_with_te( out ).
    demo_loop_step( out ).
  ENDMETHOD.


  METHOD demo_table_functions.
    SELECT *
  FROM zbc_users
  INTO TABLE @DATA(lt_user).

    out->write( |Binky steht in Zeile { line_index( lt_user[ firstname = 'Binky' ]  ) }| ).
  ENDMETHOD.


  METHOD demo_write_with_te.
    DATA(lt_data) = get_user_table( ).

    lt_data[ user_id = 1 ]-firstname = 'Olaf'.

    DATA(ls_data) = lt_data[ 2 ].
    ls_data-firstname = 'Teddy'.

    ASSIGN lt_data[ 3 ] TO FIELD-SYMBOL(<ls_data>).
    <ls_data>-firstname = 'Anke'.

    out->write( lt_data ).

  ENDMETHOD.


  METHOD demo_grouping.
    DATA(lt_user) =  get_user_table( ) .
    DELETE lt_user FROM 10.

    LOOP AT lt_user INTO DATA(ls_user)
                    GROUP BY ls_user-gender
                    INTO DATA(ls_grouping).

      out->write( |At begin of gender { ls_grouping } | ).

      LOOP AT GROUP ls_grouping INTO DATA(ls_group).
        out->write( |   { ls_group-firstname }| ).
      ENDLOOP.

      out->write( |At end of gender { ls_grouping } | ).
    ENDLOOP.
  ENDMETHOD.


  METHOD get_user_table.
    SELECT *
      FROM zbc_users
      INTO TABLE @result.
  ENDMETHOD.


  METHOD demo_loop_step.
    DATA(lt_user) =  get_user_table( ) .
    LOOP AT lt_user INTO DATA(ls_user) STEP 10.
      out->write( |Benutzer: { ls_user-user_id }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
