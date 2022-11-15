CLASS zbc_constructor_expr_exercises DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

    METHODS exercise_value_operator
      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

    METHODS exercise_corresponding
      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

    METHODS exercise_filter
      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

    METHODS exercise_reduce
      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.



CLASS ZBC_CONSTRUCTOR_EXPR_EXERCISES IMPLEMENTATION.


  METHOD exercise_corresponding.

    TYPES: BEGIN OF ts_benutzer,
             vorname    TYPE char10,
             nachname   TYPE char10,
             geb_dat    TYPE zbc_date_of_birth,
             geschlecht TYPE zbc_gender,
           END OF ts_benutzer.

    TYPES: tt_benutzer TYPE STANDARD TABLE OF ts_benutzer with default key.
    DATA benutzer TYPE tt_benutzer.

    SELECT * FROM zbc_users INTO TABLE @DATA(users).

*    benutzer = corresponding  tt_benutzer( users MAPPING vorname    = firstname
*                                                          nachname   = lastname
*                                                          geschlecht = gender
*                                                          geb_dat    = date_of_birth ) .

    benutzer = value tt_benutzer( for user
                                   in users
                                   ( vorname = to_upper( user-firstname )
                                     nachname = user-lastname
                                      ) )        .

    out->WRITE( benutzer ).

  ENDMETHOD.


  METHOD exercise_filter.
    DATA users TYPE SORTED TABLE OF zbc_users WITH NON-UNIQUE KEY gender.
    SELECT * FROM zbc_users INTO TABLE @users UP TO 10 ROWS.

    out->write( name = 'Damen: '
                data = FILTER #( users WHERE gender = 'F' ) ).

    out->write( name = 'Herren: '
                data = FILTER #( users WHERE gender = 'M' ) ).

  ENDMETHOD.


  METHOD exercise_reduce.

  ENDMETHOD.


  METHOD exercise_value_operator.
    DATA lt_range TYPE RANGE OF dats.

    lt_range = VALUE #( sign = 'I' option = 'EQ' ( low = '20221031'  )
                                                 ( low = '20230406'  )
                                   option = 'BT' ( low = '20221102'  high = '20221104' )
                                                 ( low = '20221221'  high = '20230107' )
                                                 ( low = '20230530'  high = '20230609' )
                                                 ( low = '20230727'  high = '20230909' ) ).

    SELECT  COUNT( * )
      FROM zbc_tasks
     WHERE due_date IN @lt_range
     INTO @DATA(result).

    out->write( name = 'Anzahl von Aufgaben in den Ferien: ' data = result ).

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

*    exercise_value_operator( out ).
*    exercise_corresponding( out ).
    exercise_filter( out ).
*    exercise_reduce( out ).
  ENDMETHOD.
ENDCLASS.
