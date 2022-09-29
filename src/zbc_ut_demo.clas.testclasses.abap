*"* use this source file for your ABAP unit test classes

class ltc_calculate_delta definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      t_single_quant for testing raising cx_static_check.
endclass.


class ltc_calculate_delta implementation.

  method t_single_quant.
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act = new zbc_ut_demo( )->calculate_delta( it_data = value #(
                location = 'A' ( date = '20200101' quant = 10 )  ) )
        exp = value zbc_ut_demo=>tt_delta(
                location = 'A' ( date = '20200101' delta = 10 )
                               ( date = '20200102' delta = -10 ) )
    ).
  endmethod.

endclass.
