CLASS zbc_inline_declaration DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES chickentype TYPE string.
    TYPES cowtype     TYPE string.
    TYPES dogtype(20)     TYPE c.
    TYPES birdtype(1)    TYPE c.

    INTERFACES if_oo_adt_classrun .

    METHODS SELECT_INTO_table_modern  IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS SELECT_INTO_table_classic IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS factory_classic           IMPORTING out       TYPE REF TO if_oo_adt_classrun_out
                                                some_data TYPE any.
    METHODS factory_modern            IMPORTING out       TYPE REF TO if_oo_adt_classrun_out
                                                some_data TYPE any.

    METHODS my_method
      EXPORTING chicken TYPE chickentype
                cow     TYPE cowtype
                dog     TYPE dogtype
                bird    TYPE birdtype.

    METHODS call_my_method_classic .
    METHODS call_my_method_modern .
ENDCLASS.

CLASS zbc_inline_declaration IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    select_into_table_modern( out ).


  ENDMETHOD.

  METHOD select_into_table_modern.

    SELECT task_id,
           status,
           solution
      FROM zbc_tasks
      INTO TABLE @DATA(tasks).

    out->write( tasks ).

  ENDMETHOD.

  METHOD select_into_table_classic.

    TYPES: BEGIN OF linetype,
             task_id  TYPE zbc_tasks-task_id,
             status   TYPE zbc_tasks-status,
             solution TYPE zbc_tasks-solution,
           END OF linetype.

    DATA tasks TYPE STANDARD TABLE OF linetype
      WITH DEFAULT KEY.

    SELECT task_id,
           status,
           solution
      FROM zbc_tasks
      INTO TABLE @tasks.

    out->write( tasks ).

  ENDMETHOD.

  METHOD factory_classic.

    DATA typedescr TYPE REF TO cl_abap_typedescr .

    typedescr = cl_abap_typedescr=>describe_by_data( some_data ).

  ENDMETHOD.

  METHOD factory_modern.

    DATA(typedescr) = cl_abap_typedescr=>describe_by_data( some_data ).

  ENDMETHOD.

  METHOD my_method.

  ENDMETHOD.

  METHOD call_my_method_classic.
DATA chicken TYPE chickentype  .
DATA cow     TYPE cowtype      .
DATA dog     TYPE dogtype      .
DATA bird    TYPE birdtype     .

my_method( IMPORTING chicken =  chicken
                     cow     =  cow
                     dog     =  dog
                     bird    =  bird ).
  ENDMETHOD.

  METHOD call_my_method_modern.
my_method( IMPORTING chicken = data(chicken)
                     cow     = data(cow)
                     dog     = data(dog)
                     bird    = data(bird) ).
  ENDMETHOD.

ENDCLASS.
