*&---------------------------------------------------------------------*
*& Report ztest_value_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest_value_2.

START-OF-SELECTION.

TRY..
    DATA(lv_exact) = EXACT #(  3 * (  1 / 3 ) ).
  CATCH cx_sy_conversion_rounding INTO DATA(lo_ausnahme).
    DATA(lv_gerundet) = lo_ausnahme->value.
ENDTRY.

write lv_gerundet.

write:/ lo_ausnahme->TEXTID, lo_ausnahme->VALUE, lo_ausnahme->OPERATION.
