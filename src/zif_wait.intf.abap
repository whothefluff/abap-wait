interface zif_wait public.

  methods trigger
            returning
              value(r_self) type ref to zif_wait.

endinterface.
