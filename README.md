# IFPIST

Template em Typst para o modelo de artigo do IFPI.

Veja o arquivo [exemplo](https://github.com/hmccl/ifpist/blob/main/main.pdf).

## Configuração

| Variável | Valor padrão | Tipo | Descrição |
| --- | --- | --- | --- |
| `instituto` | [Instituto Federal de Educação, Ciência e Tecnologia do Piauí] | [content] | Instituto. |
| `campus` | [Campus Teresina Central] | [content] | Campus. |
| `curso` | [Análise e Desenvolvimento de Sistemas] | [content] | Curso. |
| `cidade` | "Teresina" | [string] | Cidade. |
| `autor` | "" | [string] | Nome do autor. |
| `autor-pronome` | "" | [string] | Pronome do autor. "M" ou "F" para masculino ou feminino, respectivamente. Escolhe o gênero na nota de rodapé do autor. |
| `autor-email` | "" | [string] | E-mail do autor. |
| `titulo` | [] | [content] | Título do artigo. |
| `subtitulo` | none | [content] | Opcional. Subtítulo do artigo. |
| `tipo-trabalho` | "TCC" | [string] | Tipo do documento. "EP" ou "TCC" para Elaboração de Projeto ou Trabalho de Conclusão de Curso, respectivamente. Altera texto da folha de rosto. |
| `orientador` | "" | [string] | Nome do orientador. |
| `orientador-pronome` | "" | [string] | Pronome do orientador. "M" ou "F" para masculino ou feminino, respectivamente. Escolhe o gênero na folha de rosto. |
| `orientador-bio` | [] | [content] | Currículo sucinto do orientador. |
| `orientador-instituto` | [Instituto Federal de Educação, Ciência e Tecnologia do Piauí] | [content] | Instituto do orientador. |
| `orientador-email` | "" | [string] | E-mail do orientador. |
| `coorientador` | none | [string] | Opcional. Nome do coorientador. Os dados do coorientador dependem dessa variável. |
| `coorientador-pronome` | none | [string] | Pronome do coorientador. "M" ou "F" para masculino ou feminino, respectivamente. Escolhe o gênero na folha de rosto. |
| `coorientador-bio` | none | [content] | Currículo sucinto do coorientador. |
| `coorientador-instituto` | [Instituto Federal de Educação, Ciência e Tecnologia do Piauí] | [content] | Instituto do coorientador. |
| `coorientador-email` | none | [string] | E-mail do coorientador. |
| `resumo` | [] | [content] | Resumo do artigo. |
| `palavras` | () | [array] | Palavras-chave do artigo. |
| `abstract` | [] | [content] | Resumo do artigo em inglês. |
| `keywords` | () | [array] | Palavras-chave do artigo em inglês. |
| `data` | datetime.today() | [datetime] | Data de apresentação do artigo. |

## Observações

**Não há garantia que o template siga todas as regras do manual.**

- A família de fontes utilizada é a padrão do Typst
- O espaçamento entre linhas foi aproximado
- O espaçamento dos títulos de seção foi aproximado
- A fonte para as figuras requer o uso de uma função auxiliar
- A formatação de tabelas complexas requer ajuste manual
- As regras das alíneas e subalíneas requerem ajuste manual
- A formatação do sumário foi implementada, mas não foi utilizada
- Elementos pós-textuais requerem o uso de uma função auxiliar
- A formatação da parte pós-textual é básica, portanto ajustes para cada elemento são necessários
- A escolha do tipo de trabalho altera a folha de rosto, no entanto outros ajustes são manuais, como a inclusão ou exclusão de elementos pré- e pós-textuais
- Há uma função auxiliar para rascunhos no documento

## Referências

- [Manual de Trabalhos Acadêmicos](https://www.ifpi.edu.br/area-do-estudante/bibliotecas/manual-de-trabalhos-academicos)
- [Manual de Trabalhos Acadêmicos do IFPI (2024)](https://www.ifpi.edu.br/area-do-estudante/bibliotecas/MANUALDETRABALHOSACADMICOS2024.pdf)
- [Modelo Artigo (TCC)](https://www.ifpi.edu.br/area-do-estudante/bibliotecas/copy_of_ARTIGOTEMPLATE.pdf)

[content]: https://typst.app/docs/reference/foundations/content/
[string]: https://typst.app/docs/reference/foundations/str/
[array]: https://typst.app/docs/reference/foundations/array/
[datetime]: https://typst.app/docs/reference/foundations/datetime/
