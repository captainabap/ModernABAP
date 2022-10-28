CLASS zbc_new_sql DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    METHODS sql_functions IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS with_clause   IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    METHODS UNION_all   IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.



CLASS ZBC_NEW_SQL IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    sql_functions( out ).
    union_all( out ).
    " with_clause( out ).
  ENDMETHOD.


  METHOD sql_functions.
    SELECT  ltrim( task_id, '0' ) AS task_id,
            task_key,
            left( summary, 10 ) AS summary,
            CASE status WHEN 'FIXED' THEN '😀'
                        WHEN 'INPROGRE' THEN '😀'
                        WHEN 'CANCELED' THEN '🤔'
                        WHEN 'POSTPONE' THEN '🥵'
                        ELSE '🤠' END AS status,
            project,
            author,
            due_date,
            dats_add_days( due_date, -14 ) AS reminder_date,
            solution,
            priority  ,
            CASE WHEN due_date > @sy-datum
                    THEN division( 10
                                 , abs( days_between( @sy-datum
                                                     , due_date ) )
                                 , 4 ) * priority
                    ELSE priority END AS weighted_priority,
            product
      FROM zbc_tasks
      ORDER BY author,
               weighted_priority DESCENDING

      INTO TABLE @DATA(result).
    out->write( result ).
  ENDMETHOD.


  METHOD with_clause.
    WITH +cnt AS ( SELECT assignee ,
                          COUNT( * ) AS task_cnt
                     FROM zbc_tasks
                     GROUP BY assignee )
    SELECT  ltrim( task_id, '0' ) AS task_id,
            task_key,
            left( summary, 10 ) AS summary,
            status,
            t~assignee,
            c~task_cnt,
            due_date,
            product
      FROM zbc_tasks AS t
      INNER JOIN +cnt AS c
      ON t~assignee = c~assignee
      ORDER BY t~assignee

      INTO TABLE @DATA(result).
    out->write( result ).
  ENDMETHOD.


  METHOD union_all.
    select task_id
      from zbc_tasks where task_id < '0000000005'

      union all

    select cast( '0000000001' as NUMC( 10 ) ) as task_id
      from zbc_wf

    into table @data(result).

    out->write( result ).
  ENDMETHOD.
ENDCLASS.
