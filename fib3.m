:- module fib3.
:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module int.

:- func fib(int) = int.

% By using an "if-then-else" "expression we can move
% the entire body into the head of the clause.

fib(N) = ( if N =< 2 then 1 else fib(N - 1) + fib(N - 2)).

main(!IO) :-
    io.write_string("fib(17) = ", !IO),
    io.write_int(fib(17), !IO),
    io.nl(!IO).
