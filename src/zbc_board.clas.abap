CLASS zbc_board DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ENUM estatus,
             alive ,
             dead ,
           END OF ENUM estatus.

    METHODS write IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

    METHODS constructor IMPORTING size TYPE int4.

    METHODS set IMPORTING x TYPE int4
                          y TYPE int4.

    METHODS set_blinker IMPORTING x TYPE int4
                                  y TYPE int4.

    METHODS next_step.

  PRIVATE SECTION.
    TYPES: BEGIN OF ts_field,
             x           TYPE int4,
             y           TYPE int4,
             status      TYPE estatus,
             next_status TYPE estatus,
           END OF ts_field.
    TYPES tt_fields   TYPE SORTED TABLE OF ts_field WITH UNIQUE KEY x y.
    DATA mt_fields TYPE tt_fields.
    CONSTANTS char_dead TYPE c VALUE '-'.
    CONSTANTS char_alive TYPE c VALUE 'X'.

    METHODS get IMPORTING x             TYPE int4
                          y             TYPE int4
                RETURNING VALUE(result) TYPE estatus.

    METHODS count_neigbours IMPORTING x             TYPE int4
                                      y             TYPE int4
                            RETURNING VALUE(result) TYPE int4.

    METHODS calculate_next_status IMPORTING x             TYPE int4
                                            y             TYPE int4
                                  RETURNING VALUE(result) TYPE estatus.

    METHODS switch_to_next_status.
ENDCLASS.

CLASS zbc_board IMPLEMENTATION.

  METHOD constructor.
    DO size TIMES.
      DATA(x) = sy-index.
      DO size TIMES.
        DATA(y) = sy-index.
        INSERT VALUE #( x = x
                        y = y
                        status = dead ) INTO TABLE mt_fields.
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD write.
    DATA line TYPE string.
    out->write( |\n| ).
    LOOP AT mt_fields INTO DATA(ls_field)
                      GROUP BY ls_field-y ASCENDING
                      INTO DATA(lg_group).
      CLEAR line.
      LOOP AT GROUP lg_group INTO DATA(ls_group).

        line &&= SWITCH char1( ls_group-status WHEN alive THEN char_alive
                                               WHEN dead  THEN char_dead ).
      ENDLOOP.

      out->write( line ).
    ENDLOOP.
  ENDMETHOD.

  METHOD set.
    mt_fields[ x = x
               y = y ]-status = alive.
  ENDMETHOD.

  METHOD get.
    TRY.
        result = mt_fields[ x = x
                            y = y ]-status.
      CATCH cx_root.
        result = dead.
    ENDTRY.
  ENDMETHOD.

  METHOD set_blinker.
    set( x = x     y = y  ).
    set( x = x + 1 y = y  ).
    set( x = x + 2 y = y  ).
  ENDMETHOD.

  METHOD next_step.
    LOOP AT mt_fields ASSIGNING FIELD-SYMBOL(<ls_field>).
      <ls_field>-next_status = calculate_next_status( x = <ls_field>-x
                                                      y = <ls_field>-y ).
    ENDLOOP.
    switch_to_next_status( ).
  ENDMETHOD.

  METHOD calculate_next_status.

    DATA(counter) = count_neigbours( x = x
                                     y = y ).
    DATA(status)  = get( x = x
                         y = y ).

    result = COND estatus(  WHEN counter = 3     THEN alive
                            WHEN counter = 2
                             AND status  = alive  THEN alive
                            ELSE dead ).
  ENDMETHOD.

  METHOD count_neigbours.
    result       = SWITCH int4( get( x = x + 1 y = y     ) WHEN dead THEN 0
                                                            WHEN alive THEN 1 ).
    result      += SWITCH int4( get( x = x + 1 y = y - 1 ) WHEN dead THEN 0
                                                            WHEN alive THEN 1 ).
    result      += SWITCH int4( get( x = x + 1 y = y + 1 ) WHEN dead THEN 0
                                                            WHEN alive THEN 1 ).
    result      += SWITCH int4( get( x = x - 1 y = y     ) WHEN dead THEN 0
                                                            WHEN alive THEN 1 ).
    result      += SWITCH int4( get( x = x - 1 y = y - 1 ) WHEN dead THEN 0
                                                            WHEN alive THEN 1 ).
    result      += SWITCH int4( get( x = x - 1 y = y + 1 ) WHEN dead THEN 0
                                                            WHEN alive THEN 1 ).
    result      += SWITCH int4( get( x = x     y = y - 1 ) WHEN dead THEN 0
                                                            WHEN alive THEN 1 ).
    result      += SWITCH int4( get( x = x     y = y + 1 ) WHEN dead THEN 0
                                                            WHEN alive THEN 1 ).
  ENDMETHOD.

  METHOD switch_to_next_status.
    LOOP AT mt_fields ASSIGNING FIELD-SYMBOL(<line>).
      <line>-status      = <line>-next_status.
      <line>-next_status = dead.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
