# IZU Prolog Odd Number Filter

## Author

- **Name:** Maksim Kalutski
- **Login:** xkalut00

## Task Description

The goal of this task is to implement a Prolog predicate `u20(LIN, LOUT)`, where `LIN` is an input list of integers
and `LOUT` is an output list containing all the odd-valued elements from `LIN`.

## Functionality

The program filters out even numbers, retaining only odd integers in the output list. This is accomplished using
the `filter_odd` function which recursively traverses the list and applies a modulo operation to determine the odd
numbers.

### Example Usage

The predicate can be tested with predefined lists or user inputs:

- **Test Case 1**: `u20([5,-3,2,4,12,-3,1,0,6,-2], LOUT)` produces `LOUT = [5, -3, -3, 1]`.
- **Test Case 2**: `u20([6, -4, 2, 4, 12, 6, -2], LOUT)` produces `LOUT = []`.
- **Test Case 3**: `u20([5, -3, -17, -3, -15], LOUT)` produces `LOUT = [5, -3, -17, -3, -15]`.
- **Interactive Mode**: Run `u20_r` to input a custom list and see the filtered result.

## Implementation Details

- `filter_odd([], []).` Base case for recursion.
- `filter_odd([H|T], [H|Out]) :- H mod 2 =\= 0, filter_odd(T, Out).` Recurses into the tail if the head is odd.
- `filter_odd([H|T], Out) :- H mod 2 =:= 0, filter_odd(T, Out).` Recurses into the tail if the head is even, omitting
  the head.

## Running the Program

To run this program, ensure you have a Prolog interpreter installed (e.g., SWI-Prolog). Load the script and invoke one
of the test predicates or the interactive predicate `u20_r`.
