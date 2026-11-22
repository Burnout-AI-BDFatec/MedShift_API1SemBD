# MedShift

Sistema de apoio à construção e validação de escalas médicas.

O **MedShift** tem como objetivo auxiliar o coordenador de escala hospitalar no cadastro e na consulta de profissionais, na montagem das escalas semanais de plantão e na validação das regras de negócio, identificando inconsistências antes da publicação.

> Projeto desenvolvido pelo grupo **Burnout AI — Banco de Dados, 1º semestre de 2026**.

## 🎯 Objetivo

Desenvolver uma aplicação em VisuAlg que permita:

- cadastrar profissionais da equipe médica;
- consultar os profissionais cadastrados por número identificador;
- montar a escala da semana de trabalho (segunda a sexta-feira), um dia e um turno por vez, na mesma execução;
- impedir escalações incompatíveis com a especialidade, a disponibilidade, os limites de turnos ou o descanso do profissional;
- validar individualmente cada turno e o plantão de 24 horas de cada dia da semana;
- acompanhar a distribuição das escalas e identificar médicos sobrecarregados;
- validar a cobertura dos quinze turnos da semana;
- disponibilizar um menu principal para acesso às funcionalidades.

## 📋 Regras de negócio

O sistema deve respeitar as seguintes regras:

| Código | Regra |
|---|---|
| R1 | Não podem existir médicos com o mesmo identificador. |
| R2 | O médico só pode ser escalado em sua especialidade cadastrada. |
| R3 | Um médico não pode ocupar dois postos no mesmo turno. |
| R4 | Um médico não pode ter mais de dois turnos no mesmo dia. |
| R5 | O médico só pode ser escalado em turnos nos quais está disponível. |
| R6 | Ao atingir a capacidade máxima (140 médicos), novos cadastros devem ser recusados. |
| R7 | Cada um dos quinze turnos da semana deve ter cobertura mínima de 2 clínicos gerais, 1 pediatra e 1 cirurgião. |
| R8 | Um médico não pode ser escalado em mais de seis turnos na semana. |
| R9 | Um médico escalado em um turno da noite não pode ser escalado no turno da manhã do dia seguinte. |

## 🧩 Funcionalidades

- **Menu principal:** acesso às funcionalidades do sistema (cadastrar, consultar, montar escala, validar plantão, relatórios semanais e encerrar).
- **Cadastro de médicos:** registro de profissionais, com identificador gerado automaticamente, especialidade e disponibilidade por turno, e verificação da capacidade máxima.
- **Consulta de médicos:** visualização dos dados de um profissional a partir do seu identificador, com a quantidade de turnos em que está escalado.
- **Montagem da escala semanal:** seleção do dia útil (segunda a sexta) e do turno (manhã, tarde ou noite) para escalar os profissionais, respeitando especialidade, disponibilidade, limites de turnos e descanso.
- **Validação por turno:** verificação da cobertura mínima de um turno específico de um dia da semana, com a lista dos profissionais escalados ou das especialidades que faltam.
- **Validação do plantão do dia:** verificação dos três turnos de um dia da semana, indicando se o plantão pode ser publicado.
- **Relatórios semanais:**
  - maior e menor carga de escalas, com os profissionais de maior carga;
  - média de escalas por profissional cadastrado;
  - quantidade de escalas de cada profissional escalado;
  - profissionais com sobrecarga (acima da média mais um);
  - quantidade e porcentagem de turnos cobertos na semana;
  - turnos incompletos da semana;
  - escalados por dia e turno;
  - validação da cobertura dos quinze turnos da semana.

## 🏃 Escopo da Sprint

### Objetivo

Evoluir o sistema existente para que a escala seja construída e validada para a semana de trabalho (segunda a sexta-feira), mantendo as regras de negócio anteriores e acrescentando os limites semanais, o descanso entre turnos e os relatórios de acompanhamento da semana.

### Entregas planejadas

- [x] Construção de turnos para cada um dos cinco dias úteis, um de cada vez, na mesma execução (US 19)
- [x] Limite de seis turnos por semana e descanso entre turno da noite e turno da manhã seguinte (US 19)
- [x] Validação individual de cada turno de cada dia da semana (US 20)
- [x] Validação do plantão de cada dia da semana (US 21)
- [x] Maior e menor carga de escalas na semana (US 22)
- [x] Média de escalas entre os profissionais cadastrados (US 23)
- [x] Quantidade de escalas por profissional (US 24)
- [x] Profissionais com sobrecarga de escalas (US 25)
- [x] Quantidade e porcentagem de turnos cobertos na semana (US 26)
- [x] Turnos não cobertos e quais são (US 27)
- [x] Relatório de profissionais escalados por dia e turno (US 28)
- [x] Validação da cobertura de todos os turnos da semana (US 29)

## ✅ Critérios para conclusão da Sprint

A Sprint será considerada concluída quando:

- as funcionalidades planejadas estiverem implementadas;
- as regras de negócio R1–R9 estiverem sendo respeitadas;
- as funcionalidades estiverem integradas ao sistema existente;
- os principais cenários tiverem sido testados;
- o sistema estiver preparado para a Sprint Review;
- o Product Backlog estiver atualizado após o feedback da Review anterior;
- o manual do usuário estiver atualizado com as novas funcionalidades.

## 🧪 Cenários da Sprint Review

A apresentação deverá demonstrar:

- construção de escala para um dia e turno selecionados;
- construção de escalas para dias diferentes na mesma execução;
- recusa de um terceiro turno para o mesmo médico no mesmo dia;
- recusa de um sétimo turno para o mesmo médico na semana;
- recusa de escalação na manhã seguinte a um turno da noite;
- recusa de escalação na noite anterior a um turno da manhã já escalado;
- validação de um turno aprovado e de um turno reprovado;
- validação do plantão de um dia da semana;
- relatório de maior e menor carga de escalas;
- média de escalas e quantidade de escalas por profissional;
- identificação de profissionais com sobrecarga;
- quantidade e porcentagem de turnos cobertos na semana;
- validação da semana, com pelo menos um turno incompleto;
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
