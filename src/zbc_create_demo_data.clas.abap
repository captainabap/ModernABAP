CLASS zbc_create_demo_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   interfaces if_oo_adt_classrun.
  "! <p class="shorttext synchronized" lang="en">Generate some data for ZBC_TASKS</p>
  "! Generate some data for the table ZBC_TASKS
  methods generate_tasks.
  PRIVATE SECTION.
    METHODS select_tasks importing out type ref to if_oo_adt_classrun_out.
ENDCLASS.



CLASS zbc_create_demo_data IMPLEMENTATION.
  METHOD generate_tasks.
    types tt_zbc_tasks type STANDARD TABLE OF zbc_tasks with default key.

    data(generated_records) = value tt_zbc_tasks(
    ( author  = sy-uname
      task_id = '1'
      summary = 'First Task'
      project = '1'
      Description = 'Analyze This!'
      type = 'BUG' )
    ).

    DELETE from zbc_tasks.

   " insert  zbc_tasks from table @generated_records.

  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
   " generate_tasks( ).
    select_tasks( out ).
  ENDMETHOD.


  METHOD select_tasks.
    select *
      from zbc_tasks
      into table @data(tasks).

       out->write( tasks ).

      ENDMETHOD.

ENDCLASS.
