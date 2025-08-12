#let ifpist(
  instituto: [],
  campus: [],
  curso: [],
  autor: "",
  titulo: [],
  subtitulo: none,
  cidade: "",
  orientador: "",
  coorientador: none,
  resumo: [],
  palavras: (),
  abstract: [],
  keywords: (),
  body,
) = {
  // Regras gerais
  // Metadados
  set document(author: autor, title: titulo)
  // Margens
  set page(margin: (top: 3cm, bottom: 2cm, left: 3cm, right: 2cm))
  // Tamanho da fonte e idioma
  set text(
    size: 12pt,
    lang: "pt",
  )
  // Parágrafo para Capa, Folha de Rosto e Abstract
  set par(leading: 0.75em, spacing: 0.80em, justify: true)

  // Capa
  page([
    #align(center)[
      #figure(
        image("ifpi-logo-vertical.png", width: 36%)
      )
      #text(weight: "bold")[
        #upper(instituto) \
        #upper(campus) \
        #upper(curso) \
        #v(1fr)
        #upper(autor) \
        #v(1fr)
        #if subtitulo != none [
          #text(upper(titulo) + [: ] + subtitulo) \
        ] else [
          #upper(titulo) \
        ]
        #v(3fr)
        #upper(cidade) \
        #datetime.today().year() \
      ]
    ]
  ])

  // Folha de Rosto
  page([
    #align(center)[
      #upper(autor) \
      #v(1fr)
      #if subtitulo != none [
        #text(upper(titulo) + [: ] + subtitulo) \
      ] else [
        #upper(titulo) \
      ]
      #v(1fr)
      #align(left)[
        #pad(left: 50%)[
          #{
            [
              Trabalho de Conlusão de Curso
              apresentado como exigência parcial para obtenção
              do diploma do curso de
            ] + curso + [ do ] + instituto + [, ] + campus + [.]
          } \
          \
          #{
            [Orientador: ] + orientador + [.]
          } \
          #{
            if coorientador != none [
              #text([Coorientador: ] + coorientador + [.])
            ]
          } \
        ]
      ]
      #v(3fr)
      #upper(cidade) \
      #datetime.today().year() \
    ]
  ])

  // Resumo e Abstract
  // Notas de rodapé para Resumo e Abstract
  show footnote: set text(size: 10pt)
  page([
    #align(center)[
      #if subtitulo != none [
        #text(weight: "bold")[#smallcaps(titulo + [: ] + subtitulo)]
      ] else [
        #text(weight: "bold")[#smallcaps(titulo)]
      ]
    ]
    #align(right)[
      #text(autor)#footnote(autor) \
      #text(orientador)#footnote(orientador) \
      #if coorientador != none [#text(coorientador)#footnote(coorientador)]
    ]
    #align(center)[#text(weight: "bold")[#smallcaps("Resumo")]] \
    #text(resumo) \
    #text(weight: "semibold")[
      Palavras-chave: #text(weight: "regular")[
        #for value in palavras {
          value + if value == palavras.last() [.] else [; ]
        }
      ]
    ] \
    #align(center)[#text(lang: "en", weight: "bold")[#smallcaps("Abstract")]] \
    #text(lang: "en", abstract) \
    #text(lang: "en", weight: "semibold")[
      Keywords: #text(weight: "regular")[
        #for value in keywords {
          value + if value == keywords.last() [.] else [; ]
        }
      ]
    ] \
    \
    #text(weight: "medium")[Data de aprovação: #datetime.today().display("[day]/[month]/[year]")] \
  ])

  // Sumário
  // outline()

  // Formatação para o Corpo
  // Numeração
  set page(numbering: "1", number-align: top + right)
  // Título da seção
  set heading(numbering: "1.1")
  show heading: it => [
    #set text(size: 12pt)
    #block(
      spacing: 2em,
      smallcaps(it),
    )
  ]
  show heading.where(level: 1): it => [
    #pagebreak(weak: true)
    #it
  ]
  // Parágrafos
  set par(
    leading: 0.75em,
    spacing: 0.80em,
    justify: true,
    first-line-indent: (
      amount: 1.25cm,
      all: true,
    ),
  )
  // Citação
  set block(spacing: 2em)
  set quote(block: true)
  show quote.where(block: true): set par(leading: 0.5em, spacing: 0.55em)
  show quote: set pad(left: 4cm)
  show quote: set text(size: 10pt)
  // Alínea e Subalínea
  set enum(numbering: "a)")
  set enum(indent: 1.25cm)
  set list(marker: [ -- ])
  set list(indent: 0.75cm)
  // Figures
  show figure: set figure.caption(position: top, separator: [ --- ])
  show figure.caption: set text(size: 12pt)
  show footnote: set text(size: 10pt)
  // Tabelas
  show table: set text(size: 10pt)
  // Equações
  set math.equation(numbering: "(1)")
  // Código fonte
  show raw: set text(size: 10pt)
  show raw.where(block: true): set par(leading: 0.5em, spacing: 0.55em)
  show raw.where(block: true): block.with(stroke: luma(170), inset: 10pt)

  // Corpo
  body
}
