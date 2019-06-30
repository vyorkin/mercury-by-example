:- module fib4.
:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module int.

:- func fib(int) = int.

fib(N) = ( if N =< 2 then 1 else fib(N - 1) + fib(N - 2) ).

:- import_module list, string.

main(!IO) :-
    io.read_line_as_string(Result, !IO),
    ( if
        Result = ok(String),
        string.to_int(string.strip(String), N)
      then
        io.format("fib(%d) = %d\n", [i(N), i(fib(N))], !IO),
        main(!IO)
      else
        io.format("That isn't a number...\n", [], !IO)
    ).
