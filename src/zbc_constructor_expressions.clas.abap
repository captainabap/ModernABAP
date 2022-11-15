CLASS zbc_constructor_expressions DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ts_demo,
             date         TYPE dats,
             amount       TYPE p LENGTH 16 DECIMALS 2,
             account      TYPE c LENGTH 10,
             curr         TYPE c LENGTH 3,
             country      TYPE c LENGTH 3,
             country_text TYPE c LENGTH 50,
           END OF ts_demo.

    TYPES tt_demo TYPE SORTED TABLE OF ts_demo WITH UNIQUE DEFAULT KEY
           WITH NON-UNIQUE SORTED KEY a COMPONENTS country .

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
    METHODS demo_exact_calculation
      IMPORTING input TYPE int4.

    METHODS demo_exact_assignment
      IMPORTING input TYPE any.

    METHODS demo_calculation_assignment
      IMPORTING vat TYPE int4.

    METHODS demo_value_operator  .

    METHODS demo_value_table
      .
    METHODS loop_into_data .

    METHODS loop_assigning_fs .
    METHODS bex_variable_exit_classic." importing i_t_var_range type rrs0_t_var_range.
    METHODS bex_variable_exit_modern.

    METHODS for_counter .
    METHODS for_loop    .
    METHODS base_in_value  .
    METHODS new_data_object   .
    METHODS demo_conv   .
    METHODS my_method IMPORTING text TYPE char8.
    METHODS demo_cast    .
    METHODS demo_corresponding    .
    METHODS demo_reduce  .
    METHODS demo_corresponding_lookup .
    METHODS demo_cond .
    METHODS demo_switch .
    METHODS demo_filter .
    METHODS demo_filter_table .
  PRIVATE SECTION.
    DATA out TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.

CLASS zbc_constructor_expressions IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    me->out = out.

*      demo_cast( ).

*     for_counter( ).
*    DATA dec  TYPE p LENGTH 16 DECIMALS 2.
*    dec = 1 / 3.
*    demo_exact_calculation( input = 5 ).
*    demo_exact_calculation( input = 3 ).
*    demo_exact_assignment( input = 5 ).
*    demo_exact_assignment( input = dec ).
*    demo_calculation_assignment( vat = 19 ).
*    demo_value_operator( ).
*    for_counter( ).
*    for_loop( ).
*    base_in_value( ).
*    new_data_object( ).
    demo_reduce( ).

  ENDMETHOD.


  METHOD demo_exact_calculation.
    out->write( |\ndemo_exact_calculation, INPUT = { input }| ).
    TRY.
        DATA(result) = EXACT int4( 10 / input ).
        out->write( |The result is exact { result }| ).

      CATCH cx_sy_conversion_rounding  INTO DATA(lx_conv).
        out->write( |The result was rounded to { lx_conv->value }| ).

    ENDTRY.
  ENDMETHOD.


  METHOD demo_exact_assignment.
    out->write( |\ndemo_exact_assignment, INPUT = { input }| ).
    TRY.
        DATA(value) = EXACT int4( input ).
        out->write( |The value is exact { value }| ).

      CATCH cx_sy_conversion_error  .
        out->write( |The value { input } can not be converted to INT4 without rounding| ).

    ENDTRY.
  ENDMETHOD.


  METHOD demo_calculation_assignment.
    DATA amount TYPE p LENGTH 16 DECIMALS 2.
    amount = '101' .

    amount *= ( vat / 100 ) + 1.

    out->write( |Betrag mit Mwst.: {  amount }| ) .
  ENDMETHOD.


  METHOD demo_value_operator.

    TYPES: BEGIN OF ts_data,
             a     TYPE i,
             b(10) TYPE c,
           END OF ts_data.
    TYPES tt_data TYPE STANDARD TABLE OF ts_data
                  WITH DEFAULT KEY.

    DATA  c     TYPE i.
*    DATA  lt_data TYPE tt_data.
*
*    lt_data = VALUE #( ( a = 1  b = 'ABC'  )
*                       ( a = 13 b = 'Hallo') ).



*    DATA  lt_data TYPE tt_data.
    DATA(lt_data) = VALUE tt_data( ( a = 1  b = 'ABC'  )
                                   ( a = 13 b = 'Hallo' ) ).

    out->write( lt_data ).

  ENDMETHOD.


  METHOD demo_value_table.
    DATA lr_data TYPE RANGE OF dats.

    lr_data = VALUE #( ( low = '10000101' sign = 'I' option = 'GE' )
                       ( low = '99991231' sign = 'I' option = 'LE' ) ).

    SELECT *
      FROM zbc_tasks
      WHERE due_date IN @lr_data
      INTO TABLE @DATA(result).
  ENDMETHOD.


  METHOD loop_into_data.
    SELECT task_key,
           status,
           solution
      FROM zbc_tasks
      INTO TABLE @DATA(tasks).

    LOOP AT tasks INTO DATA(ls_task).

    ENDLOOP.

    DATA lt_tasks TYPE STANDARD TABLE OF zbc_tasks.
    DATA ls_tasks LIKE LINE OF lt_tasks.

    LOOP AT lt_tasks INTO ls_tasks.

    ENDLOOP.
    "    READ TABLE lt_tasks INTO DATA(ls_task) WITH KEY task_id = 10.
    READ TABLE lt_tasks ASSIGNING FIELD-SYMBOL(<ls_task>) WITH KEY task_key = 'BW-22'.
  ENDMETHOD.


  METHOD loop_assigning_fs.

  ENDMETHOD.


  METHOD bex_variable_exit_classic.
*    data: loc_var_range type rrrangeexit,
*          l_s_range type rrrangesid,
*          en_year(4) type c,
*          f_day_year(8) type c,
*          en_mmdd(4) type c,
*          range_low(8) type c.
*
*
*    if i_step = 2.
*
*    loop at i_t_var_range into loc_var_range where vnam = 'zentrydate'.
*
*    clear l_s_range.
*    range_low = loc_var_range-low.
*    en_year = range_low+0(4).
*    en_year = en_year - 1.
*
*    en_mmdd = range_low+4(4).
*
*    clear range_low.
*
*    concatenate en_year '0101' into f_day_year.
*    concatenate en_year en_mmdd into range_low.
*
*    l_s_range-low = f_day_year.
*    l_s_range-high = range_low.
*    l_s_range-sign = 'i'.
*    l_s_range-opt = 'bt'.
*
*    append l_s_range to e_t_range.
*
*ENDLOOP.
*ENDIF.
  ENDMETHOD.


  METHOD bex_variable_exit_modern.
*if i_step = 2.
* try.
*  data(entrydate) = i_t_var_range[ vnam = 'ZENTRYDATE' ]-low.
*
*  data(lastyear) = |{ entrydate(4) - 1 }|.
*  data(monthday) = entrydate+4(4).
*
*  et_range = value #( base et_range
*                    ( low  = lastyear && '0101'
*                      high = lastyear && monthday
*                      sign = 'I'
*                      opt  = 'EQ' ) )
*  catch cx..
*    "Variable not found.
*  endtry.
*endif.
  ENDMETHOD.


  METHOD for_counter.
    TYPES tt_c TYPE STANDARD TABLE OF c WITH DEFAULT KEY.
    DATA chars(29) TYPE c VALUE ' ABCDEFGHIJKLMNOP'.


    out->write( VALUE tt_c(   FOR i = 1
                              THEN  i + 1
                              UNTIL i >= 10
                              ( chars+i(1) ) ) ).
  ENDMETHOD.


  METHOD for_loop.
    SELECT summary,
           task_key
      FROM zbc_tasks
      INTO TABLE @DATA(lt_data)
      UP TO 10 ROWS.

    TYPES tt_tmp LIKE lt_data.

    DATA(lt_tmp) = VALUE tt_tmp( FOR ls_line IN lt_data WHERE ( task_key < 4  )
                                     ( summary = to_upper( ls_line-summary )
                                       task_key = 42 )  ).

    out->write( lt_tmp ).
  ENDMETHOD.


  METHOD base_in_value.
    DATA(first_table) =
        VALUE tt_demo( curr = 'EUR' account = '12322' ( date = sy-datum     amount = 123 )
                                                      ( date = sy-datum + 1 amount = 130 ) ).

    out->write( name = |\nFirst Table| data = first_table ).

    DATA(second_table) =
        VALUE tt_demo( BASE first_table
                       curr = 'EUR' account = '77777' ( date = sy-datum     amount = 12 )
                                                      ( date = sy-datum + 1 amount = 11 ) ).

    out->write( name = |\nSecond Table| data = second_table ).

  ENDMETHOD.


  METHOD new_data_object.
    DATA(lr_tmp) = NEW tt_demo( ( account = '123' amount = '12.34' curr = 'EUR' )
                                ( account = '125' amount = '12.34' curr = 'EUR' ) ).
    ASSIGN lr_tmp->* TO FIELD-SYMBOL(<fs>).
    out->write( <fs> ).
  ENDMETHOD.


  METHOD demo_conv.
    my_method( text = CONV #( syst-datum ) ).
  ENDMETHOD.


  METHOD my_method.
    "Do nothing
  ENDMETHOD.


  METHOD demo_cast.
    DATA ls_task TYPE zbc_tasks.

    DATA(lt_components) = CAST cl_abap_structdescr( cl_abap_structdescr=>describe_by_data( ls_task ) )->get_components(  ) .

    out->write( lt_components ).

  ENDMETHOD.


  METHOD demo_corresponding.
    DATA: BEGIN OF ls_task_small,
            key      TYPE zbc_tasks-task_key,
            title    TYPE zbc_tasks-summary,
            assignee TYPE zbc_tasks-assignee,
          END OF ls_task_small.

    SELECT SINGLE *
      FROM zbc_tasks
      INTO @DATA(ls_task_original) .

    ls_task_small = CORRESPONDING #( BASE ( ls_task_small )
                                     ls_task_original ).
    out->write( ls_task_small ).
  ENDMETHOD.


  METHOD demo_corresponding_lookup.
    DATA lt_lookup TYPE HASHED TABLE OF i_countrytext WITH UNIQUE KEY country.
    DATA(lt_orig) = VALUE tt_demo( ( country = 'DE' )
                                   ( country = 'US' ) ).

    SELECT * FROM i_countrytext WHERE language = 'D' INTO TABLE @lt_lookup.
    out->write( lt_orig ).

    DATA(lt_new) = CORRESPONDING tt_demo( lt_orig FROM lt_lookup
                                                  USING country = country
                                                  MAPPING country_text = countryname  ).
    out->write( lt_new ).
  ENDMETHOD.


  METHOD demo_reduce.
    types tt_string type STANDARD TABLE OF string WITH DEFAULT KEY.
    SELECT  summary
      FROM zbc_tasks
      INTO TABLE @DATA(lt_tasks)
      UP TO 10 ROWS.

    DATA(lv_result) = REDUCE tt_string( INIT  r  TYPE tt_string
                                              i  type int4
                                         FOR ls_line IN lt_tasks
                                         NEXT
                                          i = i + 1
                                          r = value #( base r ( ls_line-summary(i) ) )
                                          ).
    out->write( data = lv_result ).
    out->write( name = |\nTable:| data = lt_tasks ).
  ENDMETHOD.


  METHOD demo_cond.
    DATA(result) = COND tt_demo( WHEN sy-datum = '20220929' THEN VALUE #( ( amount = 10 curr = 'EUR'  ) )
                                 WHEN sy-langu = 'D'        THEN VALUE #( ( amount = 11 curr = 'EUR'  ) )
                                 ELSE                            VALUE #( ( amount = 9 curr = 'USD' ) ) ).
    out->write( result ).
  ENDMETHOD.


  METHOD demo_switch.
    DATA(result) = SWITCH tt_demo( sy-datum WHEN '20220929' THEN VALUE #( ( amount = 10 curr = 'EUR'  ) )
                                            WHEN '20220930' THEN VALUE #( ( amount = 11 curr = 'EUR'  ) )
                                            ELSE                 VALUE #( ( amount = 9 curr = 'USD' ) ) ).
    out->write( result ).
  ENDMETHOD.


  METHOD demo_filter.
    DATA lt_data TYPE SORTED TABLE OF i_countrytext WITH UNIQUE KEY language  country.
    SELECT * FROM i_countrytext INTO TABLE @lt_data.

    out->write( FILTER #( lt_data WHERE language = 'E' ) ).
  ENDMETHOD.


  METHOD demo_filter_table.
    DATA lt_data TYPE SORTED TABLE OF i_countrytext WITH UNIQUE KEY country.
    DATA(lt_filter) = VALUE tt_demo( ( country = 'DE' )
                                   ( country = 'US' ) ).
    SELECT * FROM i_countrytext WHERE language = 'D' INTO TABLE @lt_data.

    DATA(lt_new) = FILTER #( lt_data IN lt_filter USING KEY a WHERE country = country  ).
    out->write( lt_new ).
  ENDMETHOD.
ENDCLASS.
