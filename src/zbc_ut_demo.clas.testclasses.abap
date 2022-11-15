

CLASS ltcl_test_delta DEFINITION DEFERRED.

class zbc_ut_demo DEFINITION LOCAL FRIENDS ltcl_test_delta.

CLASS ltcl_test_delta DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA: mo_cut TYPE REF TO zbc_ut_demo.

    METHODS:
      t_calculate_delta_empty FOR TESTING ,
      t_calculate_delta_not_empty FOR TESTING ,
      t_calculate_delta_single_line FOR TESTING ,
      t_calculate_delta_2_lines     FOR TESTING .

    METHODS setup.

    METHODS test_calculate_delta_with_data
      IMPORTING
        it_input    TYPE zbc_ut_demo=>tt_stock
        it_expected TYPE zbc_ut_demo=>tt_delta.
ENDCLASS.

CLASS ltcl_test_delta IMPLEMENTATION.

  METHOD setup.

    mo_cut =  NEW zbc_ut_demo( ).
    mo_cut->mv_irgendwas = 'ABC'.
  ENDMETHOD.

  METHOD t_calculate_delta_empty.
    TRY.
        mo_cut->calculate_delta( VALUE #(  ) ).
        cl_abap_unit_assert=>fail( msg = 'Exception zcx_no_data should be raised' ).
      CATCH zcx_no_data.
    ENDTRY.
  ENDMETHOD.

  METHOD t_calculate_delta_not_empty.
    TRY.
        mo_cut->calculate_delta( VALUE #( (  )  ) ).
      CATCH zcx_no_data.
        cl_abap_unit_assert=>fail( msg = 'Exception zcx_no_data should not be raised' ).
    ENDTRY.
  ENDMETHOD.

  METHOD t_calculate_delta_single_line.

    test_calculate_delta_with_data(
           it_input    = value zbc_ut_demo=>tt_stock( ( location = 'A' date = '20000101' quant  = 100 ) )
           it_expected = value zbc_ut_demo=>tt_delta( ( location = 'A' date = '20000101' delta  =  100 )
                                                      ( location = 'A' date = '20000102' delta  = -100 ) ) ).

  ENDMETHOD.


  METHOD test_calculate_delta_with_data.

    TRY.
        cl_aunit_assert=>assert_equals( act = mo_cut->calculate_delta( it_input  )
                                        exp = it_expected  ).

      CATCH zcx_no_data.
        cl_abap_unit_assert=>fail( msg = 'Exception zcx_no_data should not be raised' ).

    ENDTRY.

  ENDMETHOD.

  METHOD t_calculate_delta_2_lines.

    test_calculate_delta_with_data(
           it_input    = value zbc_ut_demo=>tt_stock( ( location = 'A' date = '20000101' quant  = 100 )
                                                      ( location = 'A' date = '20000102' quant  = 100 ) )

           it_expected = value zbc_ut_demo=>tt_delta( ( location = 'A' date = '20000101' delta  =  100 )
                                                      ( location = 'A' date = '20000103' delta  = -100 ) ) ).
  ENDMETHOD.

ENDCLASS.
