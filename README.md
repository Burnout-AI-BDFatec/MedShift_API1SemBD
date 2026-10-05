# MedShift

Sistema de apoio à construção e validação de escalas médicas.

O **MedShift** tem como objetivo auxiliar o coordenador de escala hospitalar na análise de um plantão médico, verificando se a cobertura mínima necessária foi atendida e informando de forma clara os problemas encontrados antes da publicação.

> Projeto desenvolvido pelo grupo **Burnout AI — Banco de Dados, 1º semestre de 2026**.

## 🎯 Objetivo

Construir uma aplicação capaz de:

- receber a quantidade de médicos disponíveis por turno e especialidade;
- validar os dados informados;
- verificar a cobertura mínima necessária para o plantão;
- identificar quais especialidades estão em falta e em quais turnos;
- apresentar um relatório com a quantidade de médicos disponíveis;
- informar se o plantão está apto para publicação;
- disponibilizar um manual de utilização.

## 📋 Regras do plantão

Para que um plantão seja considerado adequadamente coberto, cada turno deve possuir, no mínimo:

| Especialidade | Quantidade mínima por turno |
|---|---:|
| Clínico Geral | 2 |
| Pediatra | 1 |
| Cirurgião | 1 |

Além disso, a soma da quantidade de médicos informada para todos os turnos e especialidades deve ser **menor ou igual a 140 médicos**.

## 📊 Relatórios

A aplicação deve fornecer informações que permitam ao coordenador verificar:

- quantidade total de médicos disponíveis;
- quantidade de médicos por especialidade;
- quantidade de médicos por turno;
- especialidades que não atingiram a cobertura

## 🚧 Escopo da Sprint 1

A Sprint 1 tem duração de **07/09 a 27/09**, totalizando 21 dias.

### Objetivo da Sprint

> Construir uma aplicação que analise o plantão médico e informe se ele está pronto para ser publicado. Caso não esteja, o sistema deve apresentar o motivo.

### Entregas previstas

- [x] Definição das variáveis utilizadas no escopo do código
- [ ] Interface para entrada dos dados
- [ ] Validação de dados inválidos
- [ ] Análise da cobertura mínima
- [ ] Diagnóstico detalhado das falhas por especialidade e turno
- [ ] Relatório de médicos disponíveis
- [ ] Mensagem indicando se o plantão está pronto para publicação
- [ ] Manual de uso
- [ ] Revisão e debug das funcionalidades

## 👥 Equipe

| Nome | Função | GitHub |
|---|---|---|
| Gustavo Neves | Product Owner | <a href="https://github.com/gosNeves"><img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white" alt="GitHub"></a> |
| Guilherme Nanni | Scrum Master | <a href="https://github.com/guilhermenanni"><img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white" alt="GitHub"></a> |
| Davi William | Dev | <a href="https://github.com/testagetac"><img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white" alt="GitHub"></a> |
| Fernando Trone | Dev | <a href="https://github.com/ftrone87"><img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white" alt="GitHub"></a> |
| Jonas Vieira | Dev | <a href="https://github.com/jonasvieiras"><img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white" alt="GitHub"></a> |
| Lucas Roberto | Dev | <a href="https://github.com/Lucas-santos33"><img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white" alt="GitHub"></a> |
| William Diniz | Dev | <a href="https://github.com/WilliamDMCToledo"><img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white" alt="GitHub"></a> |
| Gabriel Kodato | Dev | <a href="https://github.com/Kodatoo"><img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white" alt="GitHub"></a> |

## 📅 Planejamento

- **Projeto:** MedShift
- **Sprints:** 3
- **Duração total:** 3 meses
- **Sprint atual:** Sprint 1
- **Período:** 07/09 a 27/09
- **Grupo:** Burnout AI
