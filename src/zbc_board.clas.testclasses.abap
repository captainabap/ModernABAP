*"* use this source file for your ABAP unit test classes


CLASS ltc_board DEFINITION DEFERRED  .

CLASS zbc_board DEFINITION LOCAL FRIENDS ltc_board.

CLASS ltc_board DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA cut TYPE REF TO zbc_board.
    METHODS:
      test_blinker FOR TESTING ,
      test_set FOR TESTING ,
      test_blinker_next for testing,
      test_count_2 for testing,
      test_count_3 for testing,
      setup .
ENDCLASS.


CLASS ltc_board IMPLEMENTATION.

  METHOD setup.
    cut = NEW zbc_board( 3 ).
  ENDMETHOD.

  METHOD test_blinker.
    cut->set_blinker( x = 1
                      y = 2 ).
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = cut->mt_fields
        exp                  = value zbc_board=>tt_fields( ( x = 1 y = 1 status = zbc_board=>dead )
                                                           ( x = 2 y = 1 status = zbc_board=>dead )
                                                           ( x = 3 y = 1 status = zbc_board=>dead )
                                                           ( x = 1 y = 2 status = zbc_board=>alive )
                                                           ( x = 2 y = 2 status = zbc_board=>alive )
                                                           ( x = 3 y = 2 status = zbc_board=>alive )
                                                           ( x = 1 y = 3 status = zbc_board=>dead )
                                                           ( x = 2 y = 3 status = zbc_board=>dead )
                                                           ( x = 3 y = 3 status = zbc_board=>dead )
                                                          )

       ignore_hash_sequence = abap_true
    ).
  ENDMETHOD.


  METHOD test_set.
        cut->set( x = 2
                  y = 2 ).
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = cut->mt_fields
        exp                  = value zbc_board=>tt_fields( ( x = 1 y = 1 status = zbc_board=>dead )
                                                           ( x = 2 y = 1 status = zbc_board=>dead )
                                                           ( x = 3 y = 1 status = zbc_board=>dead )
                                                           ( x = 1 y = 2 status = zbc_board=>dead )
                                                           ( x = 2 y = 2 status = zbc_board=>alive )
                                                           ( x = 3 y = 2 status = zbc_board=>dead )
                                                           ( x = 1 y = 3 status = zbc_board=>dead )
                                                           ( x = 2 y = 3 status = zbc_board=>dead )
                                                           ( x = 3 y = 3 status = zbc_board=>dead )
                                                          )

       ignore_hash_sequence = abap_true
    ).
  ENDMETHOD.

  METHOD test_blinker_next.
    cut->set_blinker( x = 1
                      y = 2 ).
    cut->next_step( ).
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = cut->mt_fields
        exp                  = value zbc_board=>tt_fields( next_status = zbc_board=>dead
                                                           ( x = 1 y = 1 status = zbc_board=>dead )
                                                           ( x = 2 y = 1 status = zbc_board=>alive )
                                                           ( x = 3 y = 1 status = zbc_board=>dead )
                                                           ( x = 1 y = 2 status = zbc_board=>dead )
                                                           ( x = 2 y = 2 status = zbc_board=>alive )
                                                           ( x = 3 y = 2 status = zbc_board=>dead )
                                                           ( x = 1 y = 3 status = zbc_board=>dead )
                                                           ( x = 2 y = 3 status = zbc_board=>alive )
                                                           ( x = 3 y = 3 status = zbc_board=>dead )
                                                          )

       ignore_hash_sequence = abap_true
    ).
  ENDMETHOD.

  METHOD test_count_2.
    cut->set_blinker( x = 1
                      y = 2 ).
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = cut->count_neigbours(   x = 1
                                                       y = 1 )
        exp                  = 2 ).
  ENDMETHOD.

  METHOD test_count_3.
    cut->set_blinker( x = 1
                      y = 2 ).
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = cut->count_neigbours(   x = 2
                                                       y = 1 )
        exp                  = 3 ).
  ENDMETHOD.

ENDCLASS.
