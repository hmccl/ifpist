# IFPIST

Template em Typst para o modelo de artigo do IFPI.

Veja o arquivo [exemplo.](https://github.com/hmccl/ifpist/blob/main/main.pdf)

## Configuração

| Variável | Valor padrão | Tipo | Descrição |
| --- | --- | --- | --- |
| `instituto` | [Instituto Federal de Educação, Ciência e Tecnologia do Piauí] | [content] | Instituto. |
| `campus` | [Campus Teresina Central] | [content] | Campus. |
| `curso` | [Análise e Desenvolvimento de Sistemas] | [content] | Curso. |
| `cidade` | "Teresina" | [string] | Cidade. |
| `autor` | "" | [string] | Nome do autor. |
| `autor-pronome` | "" | [string] | Pronome do autor. "M" ou "F", para masculino e feminino, respectivamente. Escolhe o gênero na nota de rodapé do autor. |
| `autor-email` | "" | [string] | E-mail do autor. |
| `titulo` | [] | [content] | Título do artigo. |
| `subtitulo` | none | [content] | Opcional. Subtítulo do artigo. |
| `orientador` | "" | [string] | Nome do orientador. |
| `orientador-pronome` | "" | [string] | Pronome do orientador. "M" ou "F", para masculino e feminino, respectivamente. Escolhe o gênero na folha de rosto. |
| `orientador-bio` | [] | [content] | Currículo sucinto do orientador. |
| `orientador-instituto` | [Instituto Federal de Educação, Ciência e Tecnologia do Piauí] | [content] | Instituto do orientador. |
| `orientador-email` | "" | [string] | E-mail do orientador. |
| `coorientador` | none | [string] | Opcional. Nome do coorientador. Os dados do coorientador dependem dessa variável. |
| `coorientador-pronome` | none | [string] | Pronome do coorientador. "M" ou "F", para masculino e feminino, respectivamente. Escolhe o gênero na folha de rosto. |
| `coorientador-bio` | none | [content] | Currículo sucinto do coorientador. |
| `coorientador-instituto` | [Instituto Federal de Educação, Ciência e Tecnologia do Piauí] | [content] | Instituto do coorientador. |
| `coorientador-email` | none | [string] | E-mail do coorientador. |
| `resumo` | [] | [content] | Resumo do artigo. |
| `palavras` | () | [array] | Palavras-chave do artigo. |
| `abstract` | [] | [content] | Resumo do artigo em inglês. |
| `keywords` | () | [array] | Palavras-chave do artigo em inglês. |
| `data` | datetime.today() | [datetime] | Data de apresentação do artigo. |


## Dependências

É necessário instalar as famílias de fontes `STIX Two Text`, `STIX Two Math` e `Inconsolata`.

## TODO

- [ ] Implementar referências (10pt e espaçamento simples).
- [ ] Implementar fonte debaixo das figuras (10pt).
- [ ] Implementar formatação de tabelas.
- [ ] Implementar sumário (caso seja obrigatório).

## Observações

O template não segue todas as regras do manual.

- O espaçamento entre as linhas é diferente do espaçamento do manual.

Espaçamento entre linhas é complexo. O manual faz referência ao
espaçamento do Microsoft Word, no entanto a forma como o
Typst faz o cáculo é diferente. Assim, foi feita uma aproximação.

- A fonte é diferente da fonte do manual.

Times New Roman e Arial são as fontes permitidas pelo manual. Essa fonte não é livre.
É possível utilizar fontes que se assemelham à fonte pedida.
É possível substituir a fonte Times New Roman pela família de fontes STIX Two.
É possível substituir a fonte Arial pela família de fontes TeX Gyre Heros.

## Referências

- [Manual de Trabalhos Acadêmicos](https://www.ifpi.edu.br/area-do-estudante/bibliotecas/manual-de-trabalhos-academicos)
- [Manual de Trabalhos Acadêmicos do IFPI (2024)](https://www.ifpi.edu.br/area-do-estudante/bibliotecas/MANUALDETRABALHOSACADMICOS2024.pdf)
- [Modelo Artigo (TCC)](https://www.ifpi.edu.br/area-do-estudante/bibliotecas/copy_of_ARTIGOTEMPLATE.pdf)

[content]: https://typst.app/docs/reference/foundations/content/
[string]: https://typst.app/docs/reference/foundations/str/
[array]: https://typst.app/docs/reference/foundations/array/
[datetime]: https://typst.app/docs/reference/foundations/datetime/
