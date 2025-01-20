CLASS zcl_behv_msg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_message .
    INTERFACES if_abap_behv_message .
    INTERFACES if_t100_dyn_msg .
    INTERFACES if_t100_message .
    METHODS constructor IMPORTING iv_message TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mv_message TYPE string.
ENDCLASS.



CLASS zcl_behv_msg IMPLEMENTATION.


  METHOD if_message~get_longtext.
    result = mv_message.
  ENDMETHOD.


  METHOD if_message~get_text.
    result = mv_message.
  ENDMETHOD.

  METHOD constructor.
    mv_message = iv_message.
    if_abap_behv_message~m_severity = if_abap_behv_message~severity-error.
  ENDMETHOD.

ENDCLASS.
