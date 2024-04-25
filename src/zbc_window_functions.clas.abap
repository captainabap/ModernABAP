CLASS zbc_window_functions DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PRIVATE SECTION.
    TYPES tt_wf TYPE STANDARD TABLE OF zbc_wf WITH DEFAULT KEY.
    METHODS create_testdata.
    METHODS demo_sum IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS demo_sum_order IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS demo_sum_rows  IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS demo_lead      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.



CLASS ZBC_WINDOW_FUNCTIONS IMPLEMENTATION.


  METHOD create_testdata.
    DATA(demo_data) = VALUE tt_wf(
       ( location = 'A' ldate = '20221010' value = '5' )
       ( location = 'A' ldate = '20221011' value = '3' )
       ( location = 'A' ldate = '20221012' value = '8' )
       ( location = 'A' ldate = '20221013' value = '6' )
       ( location = 'B' ldate = '20221010' value = '7' )
       ( location = 'B' ldate = '20221011' value = '8' )
       ( location = 'B' ldate = '20221012' value = '1' )
       ( location = 'C' ldate = '20221010' value = '13' )
       ( location = 'C' ldate = '20221011' value = '3' )
       ( location = 'C' ldate = '20221012' value = '8' )
       ( location = 'C' ldate = '20221013' value = '4' )
       ( location = 'C' ldate = '20221014' value = '2' ) ).

    DELETE FROM zbc_wf.
    INSERT  zbc_wf FROM TABLE @demo_data.
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    create_testdata( ).
    demo_lead( out ).
  ENDMETHOD.


  METHOD demo_sum.
    SELECT location,
           ldate,
           value,
           SUM( value ) OVER( PARTITION BY location ) AS lsum
       FROM zbc_wf
       ORDER BY location,
                ldate

       INTO TABLE @DATA(result).

    out->write( result ).
  ENDMETHOD.


  METHOD demo_sum_order.
    SELECT location,
           ldate,
           value,
           SUM( value ) OVER( PARTITION BY location
                              ORDER BY ldate ) AS lsum
       FROM zbc_wf
       ORDER BY location,
                ldate

       INTO TABLE @DATA(result).

    out->write( result ).
  ENDMETHOD.


  METHOD demo_sum_rows.
    SELECT location,
           ldate,
           value,
           SUM( value ) OVER( PARTITION BY location
                              ORDER BY ldate
                              ROWS BETWEEN 1 PRECEDING
                                       AND 1 FOLLOWING ) AS lsum
       FROM zbc_wf
       ORDER BY location,
                ldate

       INTO TABLE @DATA(result).

    out->write( result ).
  ENDMETHOD.


  METHOD demo_lead.
    SELECT assignee,
           task_key,
           due_date,
           days_between( due_date
                        ,LEAD( due_date )
                           OVER( PARTITION BY assignee
                                 ORDER BY due_date )
                        ) AS delta_dd
      FROM zbc_tasks
      ORDER BY assignee,
               due_date
     INTO TABLE @DATA(result).
    out->write( result ).
  ENDMETHOD.
ENDCLASS.
