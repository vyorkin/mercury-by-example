:- module fib1.
:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module int.

% "int" module - defines all the operations on integers

:- pred fib(int::in, int::out) is det.

% Define a predicate "fib" taking two "int" arguments,
% an input and an output, which always succeeds and
% always computes the same output given the same input

fib(N, X) :-
    ( if N =< 2
      then X = 1
      else fib(N - 1, A), fib(N - 2, B), X = A + B
    ).

main(!IO) :-
    fib(17, X),
    io.write_string("fib(17, ", !IO),
    io.write_int(X, !IO),
    io.write_string(")\n", !IO).
