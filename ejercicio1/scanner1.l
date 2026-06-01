%pointer
%option noyywrap

%%

 /* Constante octal: 0 seguido de dígitos octales (o solo 0) */
0[0-7]*         { printf("constante octal: %s\n", yytext); }

 /* Ignorar espacios, tabs y saltos de línea */
[ \t\n]         { }

 /* Constante decimal */
[1-9][0-9]*     { printf("constante decimal: %s\n", yytext); }

 /* Constante hexadecimal */
0[xX][0-9A-Fa-f]+   { printf("constante hexadecimal: %s\n", yytext); }

 /* Identificador */
[A-Za-z_][A-Za-z0-9_]*   { printf("identificador: %s\n", yytext); }

 /* Cualquier carácter no reconocido */
.               { printf("caracter no reconocido: %s\n", yytext); }

%%

int main(void) {
    yylex();
    return 0;
}