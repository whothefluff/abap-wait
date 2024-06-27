class zcl_wait definition
               public
               create public.

  public section.

    interfaces: zif_wait.

    aliases: trigger for zif_wait~trigger.

    methods constructor
              importing
                i_seconds type i.

  protected section.

    data a_second_int type i.

endclass.
class zcl_wait implementation.

  method constructor.

    me->a_second_int = i_seconds.

  endmethod.
  method zif_wait~trigger.

    call function 'ENQUE_SLEEP'
      exporting
        seconds        = me->a_second_int
      exceptions
        others         = 1.

    r_self = cond #( when sy-subrc eq 0
                     then me
                     else throw zcx_no_check( ) ).

  endmethod.

endclass.
