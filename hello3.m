:- module hello3.
:- interface.
:- import_module io.
:- pred main(io::di, io::uo) is det.
:- implementation.

% This code is transformed by the compiler into
% something equivalent to the hello2.m

main(!IO) :-
    io.write_string("Hello, ", !IO),
    io.write_string("World!", !IO),
    io.nl(!IO).
