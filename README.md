# abap-wait

Wait object with commit-free implementation

## Use

Create an instance of _ZIF_WAIT_:
```abap
data(wait) = cast zif_wait( new zcl_wait( 42 ) ).
```
Success
```abap
wait->trigger( ).
```