:- module hello1.
:- interface.
:- import_module io.
:- pred main(io::di, io::uo) is det.
:- implementation.

% di - Destructive input.

% uo - Unique output (don't allow copy unique values or reuse dead ones) there
% is always one "live" I/O state at a time. This guarantees that I/O operations
% occur in the intended order.

% is det - Is deterministic.

main(IOState_in, IOState_out) :-
    io.write_string("Hello, World!\n", IOState_in, IOState_out).

% main is a clause of form
% head :- body
% where
% main - definition
% io.write_string - goal

% compilation:
% mmc --make hello1

% Every predicate that performs I/O has to have an `io` type output argument
% describing the state of the world after the call.
% This is how Mercury allows programsto communicate with the outside world without
% hidden side effects which would compromise its mathematical integrity.
