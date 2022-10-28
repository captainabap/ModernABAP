CLASS zbc_dmo_task DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    TYPES: BEGIN OF  ENUM estatus
             STRUCTURE status
             BASE TYPE zbc_task_status,
             new        VALUE 'NEW',
             fixed      VALUE 'FIXED',
             inprogress VALUE 'INPROGES',
             canceled   VALUE 'CANCELED',
             test       VALUE 'TEST',
             retest     VALUE 'RETEST',
             postponed  VALUE 'POSTPONE',
             initial    VALUE IS INITIAL,
           END OF ENUM estatus STRUCTURE status.

      methods set_status importing iv_status type estatus
                                   out type ref to if_oo_adt_classrun_out.

ENDCLASS.



CLASS ZBC_DMO_TASK IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    set_status(
      iv_status = status-canceled
      out       = out
    ).
  ENDMETHOD.


  METHOD set_status.
    out->write( |Konvertiert: { conv zbc_task_status(   status-inprogress ) }|
              && |\nUnkonvertiert: { status-inprogress }| ).
  ENDMETHOD.
ENDCLASS.
