:- module hello2.
:- interface.
:- import_module io.
:- pred main(io::di, io::uo) is det.
:- implementation.

main(IOState_in, IOState_out) :-
    io.write_string("Hello, ", IOState_in, IOState_1),
    io.write_string("World!", IOState_1, IOState_2),
    io.nl(IOState_2, IOState_out).
