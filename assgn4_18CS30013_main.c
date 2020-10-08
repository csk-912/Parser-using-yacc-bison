#include <stdio.h>
#include "y.tab.h"

int main() 
{
    extern int yydebug;
    yydebug = 1;
    yyparse();
    return 0;
}