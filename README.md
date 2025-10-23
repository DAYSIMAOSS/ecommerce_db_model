# Database Design and Business Rules - E-commerce System

Este projeto apresenta a modelagem completa de um banco de dados relacional para um sistema de e-commerce, com base em regras de negócio bem definidas e implementação em Oracle SQL Developer Data Modeler.

O trabalho contempla o modelo lógico, o modelo físico e o script de criação das tabelas (DDL), estruturando entidades como clientes, produtos, vídeos, SAC, funcionários, telefones e listas de desejos.

---

## Estrutura do Projeto

| Arquivo | Descrição |
|----------|------------|
| `arquivo 2_regradenegocio.txt` | Documento textual que descreve as regras de negócio do sistema, como relacionamentos entre clientes, listas de desejos e produtos. |
| `arquivo 3_proj_logico_bd.pdf` | Modelo lógico do banco de dados, com entidades, atributos e relacionamentos normalizados. |
| `arquivo 4_proj_fisico_bd.pdf` | Modelo físico detalhado, com tipos de dados, chaves primárias e estrangeiras e integridade referencial. |
| `arquivo 5_script_bd.sql` | Script DDL completo, responsável pela criação das tabelas, constraints e relacionamentos no Oracle. |

---

## Principais Componentes do Banco de Dados

### Regras de Negócio (exemplo N24)
Um cliente pode ter uma ou várias listas de desejos, e cada lista de desejos deve estar associada a apenas um cliente.  
Cada lista de desejos pode conter vários produtos, e um produto pode estar em várias listas.  
Cada item na lista deve possuir um identificador único dentro da lista.  
:contentReference[oaicite:0]{index=0}

---

### Entidades e Relacionamentos
O modelo contempla entidades como:

- **T_MC_CLIENTE**, **T_MC_PESSOA_FISICA**, **T_MC_PESSOA_JURIDICA** → relacionamento 1:1 (herança)
- **T_MC_LISTA_DESEJOS** → relacionamento 1:N com clientes e produtos
- **T_MC_PRODUTO** e **T_MC_CAT_PRODUTO** → relacionamento 1:N
- **T_MC_FUNC** e **T_MC_DEPAR** → relacionamento 1:N (departamento-funcionário)
- **T_MC_SAC**, **T_MC_VIDEO_PRODUTO**, **T_MC_VIS_VIDEO** → relacionamentos 1:N com clientes e produtos
:contentReference[oaicite:1]{index=1}:contentReference[oaicite:2]{index=2}

---

### Implementação SQL (DDL)
O script SQL (`arquivo 5_script_bd.sql`) cria todas as tabelas e constraints do modelo, incluindo:

- 14 tabelas criadas com relacionamentos normalizados  
- 28 constraints adicionadas (PK, FK, CHECK)  
- Comentários detalhados em cada coluna  
- Documentação automática gerada pelo Oracle SQL Developer Data Modeler  
:contentReference[oaicite:3]{index=3}

Exemplo de trecho do script:
```sql
CREATE TABLE t_mc_cliente (
    cd_cliente NUMBER(10) NOT NULL,
    nm_cliente VARCHAR2(30) NOT NULL,
    tp_cliente CHAR(1) NOT NULL,
    st_cliente CHAR(1) NOT NULL,
    login_cliente VARCHAR2(30) NOT NULL,
    senha_cliente VARCHAR2(30) NOT NULL
);
ALTER TABLE t_mc_cliente ADD CONSTRAINT t_mc_cliente_pk PRIMARY KEY ( cd_cliente );
