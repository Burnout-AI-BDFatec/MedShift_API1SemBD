# MedShift

Sistema de apoio à construção e validação de escalas médicas.

O **MedShift** tem como objetivo auxiliar o coordenador de escala hospitalar no cadastro e na consulta de profissionais, na montagem dos plantões e na validação das regras de negócio, identificando inconsistências antes da publicação.

> Projeto desenvolvido pelo grupo **Burnout AI — Banco de Dados, 1º semestre de 2026**.

## 🎯 Objetivo

Desenvolver uma aplicação em VisuAlg que permita:

- cadastrar profissionais da equipe médica;
- consultar os profissionais cadastrados;
- localizar um profissional por identificador;
- identificar médicos escalados, suas especialidades e a quantidade de plantões;
- montar e validar a escala médica;
- avisar sobre sobrecarga de plantões;
- impedir escalações incompatíveis com a especialidade ou disponibilidade do profissional;
- validar a cobertura dos três turnos;
- apresentar um resumo do dia;
- disponibilizar um menu principal para acesso às funcionalidades.

## 📋 Regras de negócio

O sistema deve respeitar as seguintes regras:

| Código | Regra |
|---|---|
| R1 | Não podem existir médicos com o mesmo identificador. |
| R2 | O médico só pode ser escalado em sua especialidade cadastrada. |
| R3 | Um médico não pode ocupar dois postos no mesmo turno. |
| R4 | Um médico não pode ter mais de dois plantões no mesmo dia. |
| R5 | O médico só pode ser escalado em turnos nos quais está disponível. |
| R6 | Ao atingir a capacidade máxima, novos cadastros devem ser recusados. |
| R7 | A cobertura deve ser validada para cada um dos três turnos. |

## 🧩 Funcionalidades previstas

- **Menu principal:** acesso às funcionalidades do sistema.
- **Cadastro de médicos:** registro de profissionais, com verificação de identificadores duplicados e da capacidade máxima.
- **Consulta de médicos:** visualização dos profissionais cadastrados.
- **Busca por identificador:** localização de um profissional pelo seu identificador.
- **Montagem e validação do plantão:** escalação de profissionais respeitando especialidade, disponibilidade e limites de plantões.
- **Controle da quantidade de plantões:** acompanhamento da quantidade de plantões atribuídos a cada profissional e identificação de sobrecarga.
- **Validação dos três turnos:** verificação da cobertura de cada turno e identificação de turnos insuficientes.
- **Resumo do dia:** apresentação de informações sobre os plantões e os profissionais escalados.

## 🏃 Escopo da Sprint

### Objetivo

Adicionar as funcionalidades previstas no backlog ao sistema existente, mantendo as regras de negócio definidas e garantindo a integração entre elas.

### Entregas planejadas

- [x] Menu principal
- [x] Cadastro da equipe médica
- [x] Consulta dos profissionais cadastrados
- [x] Busca de profissionais por identificador
- [x] Montagem e validação do plantão
- [x] Controle da quantidade de plantões
- [x] Validação da cobertura dos três turnos
- [x] Resumo do dia

Os itens estão listados como entregas planejadas; marque-os como concluídos somente após verificar sua implementação.

## ✅ Critérios para conclusão da Sprint

A Sprint será considerada concluída quando:

- as funcionalidades planejadas estiverem implementadas;
- as regras de negócio R1–R7 estiverem sendo respeitadas;
- as funcionalidades estiverem integradas;
- os principais cenários tiverem sido testados;
- o sistema estiver preparado para a Sprint Review;
- o Product Backlog estiver atualizado após o feedback da Review anterior.

## 🧪 Cenários da Sprint Review

A apresentação deverá demonstrar:

- cadastro de múltiplos profissionais;
- recusa de cadastro com identificador duplicado;
- escalação válida;
- recusa de escalação em especialidade incompatível;
- recusa de um terceiro plantão no mesmo dia;
- validação dos três turnos;
- identificação de pelo menos um turno com cobertura insuficiente;
- resumo da quantidade de plantões por profissional;
- busca por identificador existente e inexistente;
- Product Backlog atualizado.

## 👥 Equipe

| Nome | Função | GitHub |
|---|---|---|
| Gustavo Neves | Product Owner | [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/gosNeves) |
| Guilherme Nanni | Scrum Master | [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/guilhermenanni) |
| Davi William | Dev | [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/testagetac) |
| Fernando Trone | Dev | [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/ftrone87) |
| Jonas Vieira | Dev | [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/jonasvieiras) |
| Lucas Roberto | Dev | [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/Lucas-santos33) |
| William Diniz | Dev | [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/WilliamDMCToledo) |
| Gabriel Kodato | Dev | [![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/Kodatoo) |

## 📅 Planejamento do projeto

- **Projeto:** MedShift
- **Grupo:** Burnout AI
- **Sprints planejadas:** 3
- **Duração total prevista:** 3 meses


