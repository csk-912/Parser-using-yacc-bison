a.out: lex.yy.o y.tab.o assgn4_18CS30013_main.o
	gcc lex.yy.o y.tab.o assgn4_18CS30013_main.o -lfl
	./a.out < assgn4_18CS30013_test.c
assgn4_18CS30013_main.o: assgn4_18CS30013_main.c
	gcc -c assgn4_18CS30013_main.c
lex.yy.o: lex.yy.c
	gcc -c lex.yy.c -lfl
y.tab.o: y.tab.c
	gcc -c y.tab.c
lex.yy.c: assgn4_18CS30013.l y.tab.h
	flex assgn4_18CS30013.l
y.tab.c: assgn4_18CS30013.y
	bison -dty assgn4_18CS30013.y 
y.tab.h: assgn4_18CS30013.y
	bison -dty assgn4_18CS30013.y
clean:
	rm lex.yy.c y.tab.c y.tab.h lex.yy.o y.tab.o assgn4_18CS30013_main.o a.out