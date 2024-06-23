size([],0).
size([_|T],L):- size(T,L1),L is L1 + 1.

s([],0).
s([H|T],SUM):- s(T,SUM1),SUM is SUM1 + H.

member(X,[X|_]):- write("Found it successfully!").
member(X,[H|T]):- X=:=H,write("Found it successfully!"); member(X,T).

append([],L2,L2).
append([H|T],L2,[H|L3]):- append(T,L2,L3).

is_Sorted([]).
is_Sorted([_]).
is_Sorted([X,Y|Z]):- X=<Y,is_Sorted([Y|Z]),!.

max(A,B,A):- A > B,!.
max(_,B,B):- !.

max3(A,B,C,R):- A>max(B,C),R is A ,!.
max3(A,B,C,R):- B>max(A,C),R is B,!.
max3(A,B,C,R):- C>max(B,A),R is C,!.

sn(0,0).
sn(X,SUM):- X>0, Y is X-1,sn(Y,SUM1),SUM is SUM1 + X,write(X),write(" ").
sn1():- write("Enter number upto which you want to print and calculate sum:\n"),read(X),sn(X,R),write("Output:\n"),write(R).

fact(1,1).
fact(X,ANS):- X>1,Y is X-1,fact(Y,ANS1),ANS is ANS1*X.
fact1():- write("Enter number whose factorial you want to find\n"),read(Z),fact(Z,R),write("OUTPUT:\n"),write(R).

fibo(2,1).
fibo(1,1).
fibo(X,R):-  X1 is X-1,X2 is X-2,fibo(X1,R1),fibo(X2,R2), R is R1+R2.
fiboprint(0).
fiboprint(N):- N1 is N-1,fiboprint(N1),fibo(N,R),write(" "),write(R).
fibo1():- write("Enter the number of terms of fibonacci sequence: \n"),read(X),fiboprint(X).


cube(X,R):- R is X*
X*X.
cube1():- write("Enter the number:\n"),read(X),cube(X,R),write(R),write("you want to continue: "),read(Y),( Y\=stop,cube1()).


len([],0).
len([_|T],COUNT):- len(T,COUNT1),COUNT is COUNT1+1.

ma([X],X).
ma([H1|T],MAX):- ma(T,MAX1),(H1>MAX1,MAX is H1;MAX is MAX1).


avg([],0).
avg(X,A):- s(X,SUM),len(X,LENGTH),A is SUM/LENGTH.

find_mem(L):- write("Enter the element you want to seach for:\n"),read(X),member(X,L).

f_insert([],X,[X]).
f_insert(A,X,[X|A]).

k_insert(L,X,1,[X|L]).
k_insert([H|T],X,K,[H|T1]):- K>1,K1 is K-1,k_insert(T,X,K1,T1).

vowel(a).
vowel(e).
vowel(i).
vowel(o).
vowel(u).
v_count([],0).
v_count([H|T],C):- v_count(T,C1),(vowel(H),C is C1+1;C is C1).

pos_sum([],0).
pos_sum([H|T],C):- pos_sum(T,C1),(H>0,C is C1 + H;C is C1).


sq_sum([],0).
sq_sum([H|T],C):- sq_sum(T,C1),C is C1 + H*H.

k_del([_|T],1,T).
k_del([H|T],P,[H|T1]):- P>1,P1 is P-1,k_del(T,P1,T1).

gcd(A,0,A).
gcd(A,B,R):- A1 is A mod B,gcd(B,A1,R),!.

gcd_list([],0).
gcd_list([H|[]],H).
gcd_list([H1,H2|T],R):- gcd(H1,H2,R1),gcd_list([R1|T],R),!.


login(shubham,123).
login(rohit,234).
login(rishu,345).
login(adi,456).
user2(U,X):- login(U,X),write("log in successfully!");write("invalid password"),write("enter password again"),read(Y),user2(U,Y).
login3():- write("enter username: "),read(X),write("enter password: "),read(Y),login(X,_),user2(X,Y);write("invalid username"),login3().


freq([],X,0).
freq([H|T],X,C):-( (H=:= X,freq(T,X,C1),C is C1 + 1,!);( freq(T,X,C1),C is C1),!).
