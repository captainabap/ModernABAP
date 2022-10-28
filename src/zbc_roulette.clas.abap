CLASS zbc_roulette DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  types: begin of enum ecouleur
              STRUCTURE couleur,
           zero,
           rouge,
           noire,
         end of enum ecouleur structure couleur.

  types: begin of enum epair
              STRUCTURE pair,
           zero,
           pair,
           impair,
         end of enum epair structure pair.

  types: begin of ts_result,
           result type int4,
           couleur  type ecouleur,
           pair   type epair,
         end of ts_result.
class-data go_random type ref to CL_ABAP_RANDOM_INT.
         class-data gt_result type SORTED TABLE OF ts_result with UNIQUE key result.

         class-methods class_constructor.

         methods get_result exporting result type int4
                                      pair   type epair
                                      couleur type ecouleur.
ENDCLASS.



CLASS ZBC_ROULETTE IMPLEMENTATION.


  METHOD class_constructor.
    gt_result = value #( ( result = 0 couleur = couleur-zero  pair = pair-zero   )
                         ( result = 1 couleur = couleur-noire pair = pair-impair )
                         ( result = 2 couleur = couleur-noire pair = pair-pair )
                         ( result = 3 couleur = couleur-noire pair = pair-impair )
                         ( result = 4 couleur = couleur-noire pair = pair-pair ) ).
    go_random = CL_ABAP_RANDOM_INT=>create( min = 0 max = 4 ).
  ENDMETHOD.


  METHOD get_result.
    data(ls_result) = gt_result[ result = go_random->get_next( ) ].
    result  = ls_result-result.
    pair    = ls_result-pair.
    couleur = ls_result-couleur.
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

    get_result(
    ).

    get_result(
      IMPORTING
        result  = data(result)
        pair    = data(pair)
        couleur = data(couleur)
    ).
    out->write( |Zahl: { result }, { pair }, { couleur }| ).
  ENDMETHOD.
ENDCLASS.
