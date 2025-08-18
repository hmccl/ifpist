#import "ifpist.typ": *

#show: ifpist.with(
  instituto: [Instituto Federal de Educação, Ciência e Tecnologia do Piauí],
  campus: [Campus Teresina Central],
  curso: [Análise e Desenvolvimento de Sistemas],
  autor: "Cadu Maverick",
  autor-pronome: "M",
  autor-email: "cadumaverick@example.com",
  titulo: [Tá Dando Onda],
  subtitulo: [Surfe!],
  cidade: "Teresina",
  orientador: "Big Z",
  orientador-pronome: "M",
  orientador-bio: [Lenda do surfe.],
  orientador-instituto: [Instituto Federal de Educação, Ciência e Tecnologia do Piauí],
  orientador-email: "bigz@example.com",
  coorientador: "João Frango",
  coorientador-pronome: "M",
  coorientador-bio: [Filósofo do surfe.],
  coorientador-instituto: [Instituto Federal de Educação, Ciência e Tecnologia do Piauí],
  coorientador-email: "joao@example.com",
  resumo: [#lorem(150)],
  palavras: ("surfe", "onda", "praia"),
  abstract: [#lorem(150)],
  keywords: ("surf", "wave", "beach"),
)

= Introdução

#lorem(50)

#lorem(45)

#lorem(20)

#lorem(20)

#quote(attribution: [Platão])[#lorem(30)]

#lorem(45)

= Desenvolvimento

#lorem(100)

#lorem(50)

#lorem(20)

== Metodologia

#lorem(30)

#lorem(40)

#lorem(20)

#figure(
  table(
    columns: 2,
    align: horizon,
    table.header(
      [Estado], [Capital],
    ),
    [Maranhão], [São Luís],
    [Piauí], [Teresina],
    [Ceará], [Fortaleza],
    [Rio Grande do Norte], [Natal],
    [Paraíba], [João Pessoa],
    [Pernambuco], [Recife],
    [Alagoas], [Maceió],
    [Sergipe], [Aracaju],
    [Salvador], [Bahia],
  ),
  caption: [Capitais do Nordeste],
)

#lorem(30)

Alínea e subalínea #footnote[
  Não são automáticas. É necessário usar `enum` para alínea e `list` para subalíneas.
  Além disso, deve-se observar as regras de pontuação.
]:

+ item 1;
+ item 2;
+ item 3.
  - subitem 1;
  - subitem 2.

=== Ferramentas

#lorem(30)

#lorem(50)

$ phi.alt := (1 + sqrt(5)) / 2 $

#lorem(25)

#lorem(10)

#lorem(60)

#lorem(30)

#figure(
  image("ifpi-logo-horizontal.png", width: 50%),
  caption: [IFPI],
)

#lorem(20)

#figure(
```zig
const std = @import("std");

pub fn main() void {
    std.debug.print("Hello world!\n", .{});
}
```,
  caption: [Hello World, ZIG],
)

#lorem(40)

= Considerações Finais

#lorem(200)

#lorem(180)
