CLASS zbc_create_demo_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    "! <p class="shorttext synchronized" lang="en">Generate some data for ZBC_TASKS</p>
    "! Generate some data for the table ZBC_TASKS
    METHODS generate_tasks.
  PRIVATE SECTION.
    METHODS select_tasks IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS delete_data.
ENDCLASS.



CLASS zbc_create_demo_data IMPLEMENTATION.
  METHOD generate_tasks.
    TYPES tt_zbc_tasks TYPE STANDARD TABLE OF zbc_tasks WITH DEFAULT KEY.

    DATA(generated_records) = VALUE tt_zbc_tasks(
    ( author  = sy-uname
      task_id = '1'
      summary = 'First Task'
      project = '1'
      Description = 'Analyze This!'
      type = 'BUG' )
    ).

     insert  zbc_tasks from table @generated_records.

  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
   delete_data( ).
   " generate_tasks( ).
    select_tasks( out ).
  ENDMETHOD.


  METHOD select_tasks.
    SELECT task_id,
           status,
           solution
      FROM zbc_tasks
      INTO TABLE @DATA(tasks).

    out->write( tasks ).

  ENDMETHOD.


  METHOD delete_data.


    DELETE FROM zbc_tasks.
    delete from zbc_users.

  ENDMETHOD.

ENDCLASS.
