%pointer
%option noyywrap

 /* Definición ya dada como ejemplo: */
digitoHexa      [0-9a-fA-F]

 /* TODO 1 — Definir 'digito' como cualquier dígito decimal [0-9] */
digito          [0-9]

 /* TODO 2 — Definir 'letra' como letra mayúscula, minúscula o guión bajo */
letra           [A-Za-z_]

 /* TODO 3 — Definir 'identificador' usando {letra} y {digito} */
identificador   {letra}({letra}|{digito})*

%%

 /* Regla ya dada como ejemplo */
0[xX]{digitoHexa}+  { printf("constante hexadecimal de longitud %d: %s\n", yyleng, yytext); }

 /* TODO 4 — Constante decimal */
[1-9]{digito}*      { printf("constante decimal de longitud %d: %s\n", yyleng, yytext); }

 /* TODO 5 — Identificador */
{identificador}     { printf("identificador de longitud %d: %s\n", yyleng, yytext); }

[ \t\n]             { }
.                   { printf("caracter no reconocido: %s\n", yytext); }

%%

int main(void) {
    yylex();
    return 0;
}