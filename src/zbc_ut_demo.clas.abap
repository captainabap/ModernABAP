CLASS zbc_ut_demo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    types: begin of ts_stock,
             location type char20,
             date     type dats,
             quant    type int4,
           end of ts_stock.
    types tt_stock type sorted table of ts_stock
                   WITH UNIQUE KEY location date .

    types: begin of ts_delta,
             location type char20,
             date     type dats,
             delta    type int4,
           end of ts_delta.
    types tt_delta type sorted table of ts_delta
                   WITH UNIQUE KEY location date .

private SECTION.
    data mv_irgendwas type string.
    methods calculate_delta importing it_data type tt_stock
                            returning value(rt_result) type tt_delta
                            raising zcx_no_data.
ENDCLASS.



CLASS ZBC_UT_DEMO IMPLEMENTATION.


  METHOD calculate_delta.

    if it_data is initial.
      RAISE EXCEPTION type zcx_no_data.
    endif.

    loop at it_data into data(ls_data).
      insert  value #( location = ls_data-location
                       date     = ls_data-date
                       delta    = ls_data-quant )     into table rt_result.

      insert  value #( location = ls_data-location
                       date     = ls_data-date + 1
                       delta    = -1 * ls_data-quant )     into table rt_result.
    endloop.

  ENDMETHOD.
ENDCLASS.
