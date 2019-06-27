:- module hello.
:- interface.
:- import_module io.
:- pred main(io::di, io::uo) is det.
:- implementation.

% di - destructive input
% uo - unique output
% is det - is deterministic

main(IOState_in, IOState_out) :-
    io.write_string("Hello, World!\n", IOState_in, IOState_out).
