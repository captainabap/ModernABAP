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

    methods calculate_delta importing it_data type tt_stock
                                returning value(rt_result) type tt_delta.
ENDCLASS.



CLASS zbc_ut_demo IMPLEMENTATION.

  METHOD calculate_delta.
    loop at it_data into data(ls_data).
        insert value ts_delta( date = ls_data-date
                        location = ls_data-location
                        delta = ls_data-quant ) into table rt_result.

        insert value ts_delta( date = ls_data-date + 1
                        location = ls_data-location
                        delta = ls_data-quant * -1 ) into table rt_result.
    endloop.
  ENDMETHOD.

ENDCLASS.
