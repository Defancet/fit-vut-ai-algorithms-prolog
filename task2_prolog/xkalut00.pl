% Zadani c. 20:
% Napiste program resici ukol dany predikatem u20(LIN,LOUT), kde LIN je  
% vstupni celociselny seznam a LOUT je vystupni seznam obsahujici vsechny  
% prvky seznamu LIN, ktere maji liche hodnoty. 

% Testovaci predikaty:                          	% LOUT        
u20_1:- u20([5,-3,2,4,12,-3,1,0,6,-2],LOUT), 
        write(LOUT).					% [5,-3,-3,1]
u20_2:- u20([6, -4, 2, 4, 12, 6, -2], LOUT),
        write(LOUT).					% []
u20_3:- u20([5, -3, -17, -3, -15], LOUT),
	write(LOUT).					% [5,-3,-17,-3,-15]
u20_r:- write('Zadej LIN: '),read(LIN),
        u20(LIN,LOUT),write(LOUT).

% Reseni:
u20(LIN,LOUT):- filter_odd(LIN,LOUT).

filter_odd([], []).
filter_odd([H|T], [H|Out]) :- H mod 2 =\= 0, filter_odd(T, Out).
filter_odd([H|T], Out) :- H mod 2 =:= 0, filter_odd(T, Out).
