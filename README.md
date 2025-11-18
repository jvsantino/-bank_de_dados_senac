# -banco_de_dados_senac

## 💊 Drogaria Santinos - Gerenciamento de Banco de Dados

Este repositório contém o *schema* inicial para o banco de dados da **Drogaria Santinos**. O objetivo é gerenciar clientes, medicamentos e registrar vendas de forma eficiente.

### 📜 Conteúdo do Repositório

O arquivo principal é `Drogaria Santinos.sql`, que inclui a definição das tabelas (DDL) e alguns dados iniciais (DML).

### 🛠️ Estrutura do Banco de Dados

O banco de dados é composto por três tabelas principais, relacionadas para rastrear as vendas:

#### 1. `Clientes`
Armazena informações cadastrais dos clientes.

| Coluna | Tipo de Dado | Descrição | Restrições |
| :--- | :--- | :--- | :--- |
| **ID_Cliente** | `INT` | Identificador único do cliente. | `PRIMARY KEY`, `AUTO_INCREMENT` |
| **Nome** | `VARCHAR(150)` | Nome completo do cliente. | `NOT NULL` |
| **Endereco** | `TEXT` | Endereço residencial. | |
| **Telefone** | `VARCHAR(20)` | Número de telefone para contato. | |

#### 2. `Medicamentos`
Armazena detalhes sobre os produtos (medicamentos) disponíveis na drogaria.

| Coluna | Tipo de Dado | Descrição | Restrições |
| :--- | :--- | :--- | :--- |
| **ID_Medicamento** | `INT` | Identificador único do medicamento. | `PRIMARY KEY`, `AUTO_INCREMENT` |
| **Nome** | `VARCHAR(150)` | Nome comercial ou genérico do medicamento. | `NOT NULL` |
| **Categoria** | `VARCHAR(50)` | Categoria do produto (ex: analgésico, antiflatulento). | |
| **Descricao** | `TEXT` | Breve descrição ou finalidade do medicamento. | |
| **Estoque** | `INT` | Quantidade disponível em estoque. | |
| **Preco** | `DECIMAL(10, 2)` | Preço unitário de venda. | |

#### 3. `Vendas`
Registra cada transação de venda.

| Coluna | Tipo de Dado | Descrição | Restrições |
| :--- | :--- | :--- | :--- |
| **ID_Venda** | `INT` | Identificador único da venda. | `PRIMARY KEY`, `AUTO_INCREMENT` |
| **ID_Cliente** | `INT` | Referência ao cliente que realizou a compra. | `FOREIGN KEY` para `Clientes` |
| **ID_Medicamento** | `INT` | Referência ao medicamento vendido. | `FOREIGN KEY` para `Medicamentos` |
| **Data_Venda** | `DATE` | Data em que a venda foi realizada. | |
| **Quantidade** | `INT` | Número de unidades vendidas. | |
| **Valor_Total** | `DECIMAL(10, 2)` | Valor total da transação. | |

### 🚀 Como Usar (Instalação)

Para configurar este banco de dados em seu ambiente:

1.  **Escolha um Sistema Gerenciador de Banco de Dados (SGBD):** O *script* utiliza sintaxe SQL padrão (com `AUTO_INCREMENT` típico de MySQL/MariaDB).
2.  **Execute o Arquivo:** Carregue e execute o arquivo `Drogaria Santinos.sql` no seu SGBD.

O *script* fará o seguinte:

* Deletar as tabelas existentes (`Vendas`, `Medicamentos`, `Clientes`) para garantir um estado limpo (`DROP TABLE IF EXISTS`).
* Criar as tabelas conforme a estrutura acima (`CREATE TABLE`).
* Inserir dois medicamentos iniciais na tabela `Medicamentos`:
    * ('Dipirona', 'medicamento', 'Analgésico e antitérmico', 100, 5.00)
    * ('Simeticona', 'medicamento', 'Antiflatulento', 50, 8.50)

### 💡 Próximos Passos (Contribuições)

Sugestões de melhoria e expansão incluem:

* **Implementação de Transações:** Adicionar *triggers* para atualizar automaticamente o `Estoque` após uma `Venda`.
* **Gestão de Fornecedores:** Criar uma tabela para fornecedores.
* **Validação de Dados:** Adicionar *constraints* como `CHECK` para garantir que `Estoque` e `Quantidade` não sejam negativos.

Sinta-se à vontade para enviar *pull requests* com novas funcionalidades!

---
*Desenvolvido para fins de estudo e gerenciamento de dados de drogaria.*

***

Gostaria de adicionar alguma seção específica ao README, como informações de contato ou licença?
