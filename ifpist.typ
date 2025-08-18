#let ifpist(
  // Dados da instituição
  instituto: [Instituto Federal de Educação, Ciência e Tecnologia do Piauí],
  campus: [Campus Teresina Central],
  curso: [Análise e Desenvolvimento de Sistemas],
  cidade: "Teresina",
  // Dados do autor
  autor: "",
  autor-pronome: "",
  autor-email: "",
  // Título
  titulo: [],
  subtitulo: none,
  // Dados do orientador
  orientador: "",
  orientador-pronome: "",
  orientador-bio: [],
  orientador-instituto: [Instituto Federal de Educação, Ciência e Tecnologia do Piauí],
  orientador-email: "",
  // Dados do coorientador (opcional)
  coorientador: none,
  coorientador-pronome: none,
  coorientador-bio: none,
  coorientador-instituto: [Instituto Federal de Educação, Ciência e Tecnologia do Piauí],
  coorientador-email: none,
  // Resumo e palavras-chave (pt e en)
  resumo: [],
  palavras: (),
  abstract: [],
  keywords: (),
  // Corpo do texto
  body,
) = {
  // Regras gerais
  // Metadados
  set document(author: autor, title: titulo)
  // Margens
  set page(margin: (top: 3cm, bottom: 2cm, left: 3cm, right: 2cm))
  // Tamanho da fonte e idioma
  set text(
    font: "STIX Two Text",
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
            if orientador-pronome == "M" [
              #text([Orientador: ] + orientador + [.])
            ] else if orientador-pronome == "F" [
              #text([Orientadora: ] + orientador + [.])
            ]
          } \
          #{
            if coorientador != none [
              #if coorientador-pronome == "M" [
                #text([Coorientador: ] + coorientador + [.])
              ] else if coorientador-pronome == "M" [
                #text([Coorientadora: ] + coorientador + [.])
              ]
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
  set footnote.entry(indent: 0em)
  show footnote.entry: set text(size: 10pt)
  page([
    #align(center)[
      #if subtitulo != none [
        #text(weight: "bold")[#smallcaps(titulo + [: ] + subtitulo)]
      ] else [
        #text(weight: "bold")[#smallcaps(titulo)]
      ]
    ]
    #let autor-bio = if autor-pronome == "M" [Graduando em ] else if autor-pronome == "F" [Graduanda em ]
    #let autor-footnote = autor-bio + curso + [. ] + instituto + [. ] + link("mailto:" + autor-email)
    #let orientador-footnote = orientador-bio + [ ] + orientador-instituto + [. ] + link("mailto:" + orientador-email)
    #let coorientador-footnote = coorientador-bio + [ ] + coorientador-instituto + [. ] + link("mailto:" + coorientador-email)
    #align(right)[
      #text(autor) #footnote(autor-footnote) \
      #text(orientador) #footnote(orientador-footnote) \
      #if coorientador != none [#text(coorientador) #footnote(coorientador-footnote)]
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
  set footnote.entry(indent: 0em)
  show footnote.entry: set text(size: 10pt)
  // Tabelas
  show table: set text(size: 10pt)
  // Equações
  set math.equation(numbering: "(1)")
  show math.equation: set text(font: "STIX Two Math")
  // Código fonte
  set raw(theme: none)
  show raw: set text(font:"Inconsolata", size: 10pt)
  show raw.where(block: true): set par(leading: 0.5em, spacing: 0.55em)
  show raw.where(block: true): block.with(stroke: 0.5pt + black, inset: 10pt)

  // Corpo
  body
}
