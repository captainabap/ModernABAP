CLASS lhc_zi_00_tasks_r DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Task RESULT result.
    METHODS validate_status FOR VALIDATE ON SAVE
      IMPORTING keys FOR Task~validate_status.
    METHODS set_default_status FOR DETERMINE ON SAVE
      IMPORTING keys FOR Task~set_default_status.

ENDCLASS.

CLASS lhc_zi_00_tasks_r IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD validate_status.

    SELECT DISTINCT status
       FROM zbc_statust
       INTO TABLE @DATA(status).

    READ ENTITIES OF zi_00_tasks_r IN LOCAL MODE
      ENTITY Task
        FIELDS ( status ) "the field to validate
        WITH CORRESPONDING #( keys )
      RESULT DATA(tasks).


    LOOP AT tasks INTO DATA(task) .
      IF NOT line_exists( status[ status = task-status ] ).

        APPEND VALUE #( %tky = task-%tky ) TO failed-Task.

        APPEND VALUE #( %tky = task-%tky
                %msg  = new_message(
                                   id = 'errorId'
                                   number = '123'
                                   v1 = |Status "{ task-status }" invalid|
                                   severity = if_abap_behv_message=>severity-error
                                               )
                                %element-status = if_abap_behv=>mk-on
                             ) TO reported-Task.
      ENDIF.
    ENDLOOP.


  ENDMETHOD.

  METHOD set_default_status.

    DATA: lt_update TYPE TABLE FOR UPDATE zi_00_tasks_r\\Task.

    READ ENTITIES OF zi_00_tasks_r IN LOCAL MODE
    ENTITY Task
      FIELDS ( status ) "the field to validate
      WITH CORRESPONDING #( keys )
    RESULT DATA(tasks).

    LOOP AT tasks INTO DATA(ls_task)
            WHERE status IS INITIAL.

      APPEND INITIAL LINE TO lt_update ASSIGNING FIELD-SYMBOL(<update>).
      <update> = VALUE #(
          %tky = ls_task-%tky
          status = 'NEW'
          %control-Status = if_abap_behv=>mk-on
       ).

    ENDLOOP.

    MODIFY ENTITIES OF zi_00_tasks_r IN LOCAL MODE
    ENTITY Task
      UPDATE FROM lt_update.

  ENDMETHOD.

ENDCLASS.
