# 🔴 Anomalias

## 1. Anomalia de Inserção

Você não consegue cadastrar um médico ou convênio sem existir uma consulta.

👉 Exemplo:
Quer cadastrar um novo convênio, mas ainda não houve consultas com ele → impossível.

## 2. Anomalia de Atualização

Se o nome de um convênio mudar, você precisa atualizar em várias linhas.

👉 Exemplo:
Unimed → Unimed Brasil
Se esquecer de atualizar uma linha → inconsistência.

## 3. Anomalia de Exclusão

Ao excluir uma consulta, você pode perder dados importantes.

👉 Exemplo:
Se apagar a única consulta de um médico → perde os dados do médico.

🔗 Dependências Funcionais

Principais dependências:

ID_Consulta → Data, Hora, Valor_Consulta
CPF_Paciente → Nome_Paciente, Telefone_Paciente
CRM_Medico → Nome_Medico, Especialidade_Medico
ID_Convenio → Nome_Convenio

⚠️ Problema:
Existem dependências transitivas, como:

ID_Consulta → CPF_Paciente → Nome_Paciente
ID_Consulta → CRM_Medico → Nome_Medico
ID_Consulta → ID_Convenio → Nome_Convenio
