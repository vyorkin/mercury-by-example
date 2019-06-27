:- module fib2.
:- interface.
:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module int.

:- func fib(int) = int.

% Functions are also defined using clauses.
% Head of a function clause takes the form:
% FuncCall = Result.

% Mercury assuemts that the input arguments to a function
% have mode "in", the result has mode "out", and that
% the function as a whole "is det".

fib(N) = X :-
    ( if N =< 2
      then X = 1
      else X = fib(N - 1) + fib(N - 2)
    ).

main(!IO) :-
    io.write_string("fib(17) = ", !IO),
    io.write_int(fib(17), !IO),
    io.nl(!IO).
