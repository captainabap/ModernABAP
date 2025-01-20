CLASS zcl_rap_create_task DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_rap_create_task IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    MODIFY ENTITY zi_00_tasks_r
        CREATE  FIELDS ( taskkey assignee author summary description status )
          WITH  VALUE #( (     %cid = 'TMP'
                               %key-taskkey = |T{ sy-uzeit }|
                               assignee     = sy-uname
                               author       = sy-uname
                               summary      = 'Create a new Task from ABAP'
                               description  = |Create a new Task using the \n MODIFY ENTRY Statement. \n test!|
                               status       = 'NEW' ) )
                             REPORTED DATA(create_rep)
                             FAILED DATA(create_fail) .

    LOOP AT  create_rep-zi_00_tasks_r  INTO DATA(ls_create_rep).
      out->write( ls_create_rep-%msg->if_message~get_text( ) ).
    ENDLOOP.

    COMMIT ENTITIES RESPONSE OF zi_00_tasks_r REPORTED DATA(lt_reported)
                                             FAILED   DATA(lt_failed).

    LOOP AT  lt_reported-zi_00_tasks_r  INTO DATA(ls_data).
      out->write( ls_data-%msg->if_message~get_text( ) ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
