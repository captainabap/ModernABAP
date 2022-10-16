CLASS zbc_exercises DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PRIVATE SECTION.

    METHODS get_salutation IMPORTING user_id       TYPE zbc_user_id
                           RETURNING VALUE(result) TYPE string.

    METHODS exercise_value_operator
      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

    METHODS exercise_corresponding
      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

    METHODS exercise_filter
      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

    METHODS exercise_reduce
      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.

CLASS zbc_exercises IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
*    SELECT  firstname,
*            lastname,
*            email
*     FROM zbc_users
*     INTO TABLE @DATA(users).
*
*    out->write( users ).
    exercise_reduce( out ).
  ENDMETHOD.

  METHOD get_salutation.
    DATA salutation TYPE string.
    DATA next_birthday TYPE dats.
    DATA year TYPE char4.
    SELECT SINGLE firstname,
                  lastname,
                  gender,
                  date_of_birth
     FROM zbc_users
     WHERE user_id = @user_id
     INTO @DATA(user).

    IF user-gender = 'M' .
      salutation = 'Herr'.
    ELSE.
      salutation = 'Frau'.
    ENDIF.

    IF user-date_of_birth+4 < sy-datum+4.
      year = sy-datum(4) + 1.
    ELSE.
      year = sy-datum(4).
    ENDIF.

    next_birthday = year && user-date_of_birth+4.

    result = |Hallo { salutation
             } { user-firstname
             }, Sie feiern in { next_birthday - sy-datum
             } Tagen Ihren { next_birthday(4) - user-date_of_birth(4) }. Geburtstag!|.

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

  METHOD exercise_corresponding.
    TYPES: BEGIN OF ts_benutzer,
             vorname    TYPE zbc_firstname,
             nachname   TYPE zbc_lastname,
             geb_dat    TYPE zbc_date_of_birth,
             geschlecht TYPE zbc_gender,
           END OF ts_benutzer.
    TYPES: tt_benutzer TYPE STANDARD TABLE OF ts_benutzer.

    SELECT * FROM zbc_users INTO TABLE @DATA(users).

    DATA(benutzer) = CORRESPONDING tt_benutzer(  users MAPPING geb_dat    = date_of_birth
                                                                vorname    = firstname
                                                                nachname   = lastname
                                                                geschlecht = gender ).
    out->write( benutzer ).
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
    SELECT *
      FROM zbc_users
      INTO TABLE @DATA(users)
      UP TO 100 ROWS.

    out->write( reduce string( INIT result type string
                                    separator type string
                               FOR ls_line in users
                               NEXT
                               result   &&= |{ separator }{ ls_line-firstname }|
                               separator  = `, ` ) ) .

  ENDMETHOD.
ENDCLASS.
