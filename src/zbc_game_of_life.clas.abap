CLASS zbc_game_of_life DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    data mo_board type ref to zbc_board.

  PRIVATE SECTION.
    DATA out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.

CLASS zbc_game_of_life IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    mo_board = new zbc_board( 6 ).
    mo_board->set_blinker( x = 2 y = 3  ).
    mo_board->set( x = 4 y = 2 ).
    mo_board->set( x = 3 y = 1 ).
    mo_board->write( out ).
  do 5 times.
    mo_board->next_step( ).
    mo_board->write( out ).
    enddo.
  ENDMETHOD.

ENDCLASS.
