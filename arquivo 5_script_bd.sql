-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-03-19 21:34:14 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE t_mc_cat_produto CASCADE CONSTRAINTS;

DROP TABLE t_mc_cat_video CASCADE CONSTRAINTS;

DROP TABLE t_mc_cliente CASCADE CONSTRAINTS;

DROP TABLE t_mc_depar CASCADE CONSTRAINTS;

DROP TABLE t_mc_func CASCADE CONSTRAINTS;

DROP TABLE t_mc_lista_desejos CASCADE CONSTRAINTS;

DROP TABLE t_mc_pessoa_fisica CASCADE CONSTRAINTS;

DROP TABLE t_mc_pessoa_juridica CASCADE CONSTRAINTS;

DROP TABLE t_mc_produto CASCADE CONSTRAINTS;

DROP TABLE t_mc_sac CASCADE CONSTRAINTS;

DROP TABLE t_mc_tel_cliente CASCADE CONSTRAINTS;

DROP TABLE t_mc_tel_func CASCADE CONSTRAINTS;

DROP TABLE t_mc_video_produto CASCADE CONSTRAINTS;

DROP TABLE t_mc_vis_video CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_mc_cat_produto (
    cd_cat_produto NUMBER(10) NOT NULL,
    ds_cat         VARCHAR2(20) NOT NULL,
    st_cat         CHAR(1) NOT NULL,
    dt_cat_inicio  DATE NOT NULL,
    dt_cat_fim     DATE,
    dur_chamado    NUMBER(5),
    st_chamado     CHAR(1),
    tipo_chamado   VARCHAR2(15),
    ind_chamado    INTEGER
);

COMMENT ON TABLE t_mc_cat_produto IS
    'Tabela categoria do produto. Maiúscula. Relacionamento 1N com a tabela T_MC_PRODUTO. Relacionamento 1N com a tabela T_MC_SAC.';

COMMENT ON COLUMN t_mc_cat_produto.cd_cat_produto IS
    'Código da categoria do produto. Minúscula.Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_cat_produto.ds_cat IS
    'Descrição da categoria.Minúscula.Tipo de dado varchar. Tamanho do dado 20 dígitos. 
Obrigatório';

COMMENT ON COLUMN t_mc_cat_produto.st_cat IS
    'Status da categoria. Minúscula. Tipo de dado char. Tamanho do dado 1 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_cat_produto.dt_cat_inicio IS
    'Data da categoria início. Minúscula. Tipo de dado date. Obrigatório.';

COMMENT ON COLUMN t_mc_cat_produto.dt_cat_fim IS
    'Data do fim da categoria. Minúscula.Tipo de dado date. Tamanho do dado 10 dígitos.';

COMMENT ON COLUMN t_mc_cat_produto.dur_chamado IS
    'Duração da chamada. Minúscula. Tipo de dado numérico. Tamanho do dado 5 dígitos. ';

COMMENT ON COLUMN t_mc_cat_produto.st_chamado IS
    'Status do chamado. Minúscula. Tipo de dado char. Tamanho do dado 1 dígitos.';

COMMENT ON COLUMN t_mc_cat_produto.tipo_chamado IS
    'Tipo do chamado. Minúscula. Tipo de dado varchar. Tamanho do dado 15 dígitos. ';

COMMENT ON COLUMN t_mc_cat_produto.ind_chamado IS
    'Índice do chamado. Minúscula. Tipo de dado Integer. Tamanho do dado 10 dígitos. ';

ALTER TABLE t_mc_cat_produto ADD CONSTRAINT t_mc_cat_produto_pk PRIMARY KEY ( cd_cat_produto );

CREATE TABLE t_mc_cat_video (
    cd_cat_video NUMBER(10) NOT NULL,
    ds_cat_video VARCHAR2(30) NOT NULL
);

COMMENT ON TABLE t_mc_cat_video IS
    'Tabela categoria do vídeo. Relacionamento 1N com a tabela T_MC_VIDEO_PRODUTO.';

COMMENT ON COLUMN t_mc_cat_video.cd_cat_video IS
    'CódigO DA CATEGORIA DO VÍDEO. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_cat_video.ds_cat_video IS
    'Descrição da categoria de vídeo. Minúscula. Tipo de dado varchar. Tamanho do dado 30 dígitos. Obrigatório.';

ALTER TABLE t_mc_cat_video ADD CONSTRAINT t_mc_cat_video_pk PRIMARY KEY ( cd_cat_video );

CREATE TABLE t_mc_cliente (
    cd_cliente     NUMBER(10) NOT NULL,
    nm_cliente     VARCHAR2(30) NOT NULL,
    tp_cliente     CHAR(1) NOT NULL,
    quant_estrelas CHAR(1),
    st_cliente     CHAR(1) NOT NULL,
    login_cliente  VARCHAR2(30) NOT NULL,
    senha_cliente  VARCHAR2(30) NOT NULL
);

COMMENT ON TABLE t_mc_cliente IS
    'Tabela cliente. Relacionamento 1:1 com a tabela T_MC_PESSOA_FISICA herança. Relacinamento 1:1 com a tabela T_MC_PESSOA_JURIDICA herança. Relacionamento 1N identificado com a tabela T_MC_LISTA_DESEJOS. Relacionamento 1N identificado com a tabela T_MC_TEL_CLIENTE. Relacionamento  1N com a tabela T_MC_VIS_VIDEO.'
    ;

COMMENT ON COLUMN t_mc_cliente.cd_cliente IS
    'Código do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_cliente.nm_cliente IS
    'Nome do cliente. InitCap. Tipo de dado varchar. Tamanho do dado 30 dígitos. Chave Obrigatório.';

COMMENT ON COLUMN t_mc_cliente.tp_cliente IS
    'Tipo do cliente. Minúscula. Tipo de dado char. Tamanho do dado 1 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_cliente.quant_estrelas IS
    'Quantidade de estrelas. Minúscula. Tipo de dado char. Tamanho do dado 1 dígitos. opcional.';

COMMENT ON COLUMN t_mc_cliente.st_cliente IS
    'Status do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_cliente.login_cliente IS
    'Login do cliente. Minúscula. Tipo de dado varchar. Tamanho do dado 30 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_cliente.senha_cliente IS
    'Senha do cliente. Minúscula. Tipo de dado varchar. Tamanho do dado 30 dígitos.  Obrigatório.';

ALTER TABLE t_mc_cliente ADD CONSTRAINT t_mc_cliente_pk PRIMARY KEY ( cd_cliente );

CREATE TABLE t_mc_depar (
    cd_depar  NUMBER(3) NOT NULL,
    nm_depart VARCHAR2(30) NOT NULL,
    sg_depart CHAR(3) NOT NULL
);

COMMENT ON TABLE t_mc_depar IS
    'Tabela departamento. Relacionamento 1N com a tabela T_MC_FUNC.';

COMMENT ON COLUMN t_mc_depar.cd_depar IS
    'Código do departamento. Minúscula. Tipo de dado numérico. Tamanho do dado 3 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_depar.nm_depart IS
    'Nome do departamento. Minúscula. Tipo de dado numérico. Tamanho do dado 30 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_depar.sg_depart IS
    'Sigla do departamento. Minúscula. Tipo de dado char. Tamanho do dado 3 dígitos. Obrigatório.';

ALTER TABLE t_mc_depar ADD CONSTRAINT t_mc_depar_pk PRIMARY KEY ( cd_depar );

CREATE TABLE t_mc_func (
    cd_fun              NUMBER(5) NOT NULL,
    t_mc_depar_cd_depar NUMBER(3) NOT NULL,
    nm_func             VARCHAR2(30) NOT NULL,
    cpf_func            NUMBER(11) NOT NULL,
    dt_fun              DATE NOT NULL,
    email_func          VARCHAR2(50) NOT NULL,
    cargo_fun           VARCHAR2(20) NOT NULL
);

COMMENT ON TABLE t_mc_func IS
    'Tabela funcionário. Maiúscula. Relacionamento 1N identificado com a tabela T_MC_TEL_FUNC.';

COMMENT ON COLUMN t_mc_func.cd_fun IS
    'Código do funcionário. Minúscula. Tipo de dado numérico. Tamanho do dado 5 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_func.t_mc_depar_cd_depar IS
    'Código do departamento. Minúscula. Tipo de dado numérico. Tamanho do dado 4 dígitos. Chave Primária e estrangeira. Obrigatório.'
    ;

COMMENT ON COLUMN t_mc_func.nm_func IS
    'Nome do funcionário. Initcap. Tipo de dado varchar. Tamanho do dado 30 dígitos.  Obrigatório.';

COMMENT ON COLUMN t_mc_func.cpf_func IS
    'CPF do funcionário. Minúscula. Tipo de dado numérico. Tamanho do dado 11 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_func.dt_fun IS
    'Data entrada do funcionário. Minúscula. Tipo de dado date. Obrigatório.';

COMMENT ON COLUMN t_mc_func.email_func IS
    'E-mail do funcionário. Minúscula. Tipo de dado varchar. Tamanho do dado 50 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_func.cargo_fun IS
    'Cargo do funcionário. Minúscula. Tipo de dado varchar. Tamanho do dado 20 dígitos. Obrigatório.';

ALTER TABLE t_mc_func ADD CONSTRAINT t_mc_func_pk PRIMARY KEY ( cd_fun );

CREATE TABLE t_mc_lista_desejos (
    t_mc_cliente_cd_cliente NUMBER(10) NOT NULL,
    cd_lista_desejo         NUMBER(4) NOT NULL,
    t_mc_produto_cd_produto NUMBER(10) NOT NULL
);

COMMENT ON TABLE t_mc_lista_desejos IS
    'Tabela lista de desejos do cliente. Maiúscula. Relacionamento 1N  identificado com a tabela T_MC_PRODUTO. Relacionamento indentificado 1N com a tabela T_MC_CLIENTE.'
    ;

COMMENT ON COLUMN t_mc_lista_desejos.t_mc_cliente_cd_cliente IS
    'Código do cliente.Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária  estrageira. Obrigatório.';

COMMENT ON COLUMN t_mc_lista_desejos.cd_lista_desejo IS
    'Código lista de desejos do cliente.Tipo de dado numérico. Tamanho do dado 4 
dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_lista_desejos.t_mc_produto_cd_produto IS
    'Código do produto.Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave estrangeira. Obrigatório.';

ALTER TABLE t_mc_lista_desejos ADD CONSTRAINT t_mc_lista_desejos_pk PRIMARY KEY ( t_mc_cliente_cd_cliente,
                                                                                  cd_lista_desejo );

CREATE TABLE t_mc_pessoa_fisica (
    t_mc_cliente_cd_cliente NUMBER(10) NOT NULL,
    cpf                     NUMBER(11) NOT NULL,
    dt_nasc                 DATE NOT NULL,
    sx_cliente              CHAR(1) NOT NULL,
    gen_cliente             VARCHAR2(10)
);

COMMENT ON TABLE t_mc_pessoa_fisica IS
    'Tabela pessoa física. Maiúscula. Relacionamento 1:1 com herança da tabela T_MC_CLIENTE.';

COMMENT ON COLUMN t_mc_pessoa_fisica.t_mc_cliente_cd_cliente IS
    'Código do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária e estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_pessoa_fisica.cpf IS
    'CPF do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 11 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_pessoa_fisica.dt_nasc IS
    'Data de nascimento do cliente. Minúscula. Tipo de dado date. Obrigatório.';

COMMENT ON COLUMN t_mc_pessoa_fisica.sx_cliente IS
    'Sexo de nascimento do cliente. Minúscula. Tipo de dado char. Tamanho do dado 1 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_pessoa_fisica.gen_cliente IS
    'Gênero do cliente. Minúscula. Tipo de dado varchar. Tamanho do dado 10 dígitos. Opcional.';

ALTER TABLE t_mc_pessoa_fisica ADD CONSTRAINT t_mc_pessoa_fisica_pk PRIMARY KEY ( t_mc_cliente_cd_cliente );

CREATE TABLE t_mc_pessoa_juridica (
    t_mc_cliente_cd_cliente NUMBER(10) NOT NULL,
    cnpj_cliente            NUMBER(14),
    dt_funda_cliente        DATE,
    insc_estadual           NUMBER(9)
);

COMMENT ON TABLE t_mc_pessoa_juridica IS
    'Tabela pessoa jurídica. Maiúscula. Relacionamento 1:1 herança com a tabela T_MC_CLIENTE. ';

COMMENT ON COLUMN t_mc_pessoa_juridica.t_mc_cliente_cd_cliente IS
    'Código do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária e estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_pessoa_juridica.cnpj_cliente IS
    'CNPJ do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 14 dígitos. Opcional.';

COMMENT ON COLUMN t_mc_pessoa_juridica.dt_funda_cliente IS
    'Data da fundação da empresa do cliente. Minúscula. Tipo de dado date. Tamanho do  Opcional.';

COMMENT ON COLUMN t_mc_pessoa_juridica.insc_estadual IS
    'Inscrição estadual da empresa do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 9 dígitos. Opcional';

ALTER TABLE t_mc_pessoa_juridica ADD CONSTRAINT t_mc_pessoa_juridica_pk PRIMARY KEY ( t_mc_cliente_cd_cliente );

CREATE TABLE t_mc_produto (
    cd_produto                      NUMBER(10) NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
    t_mc_cat_produto_cd_cat_produto NUMBER(10) NOT NULL,
    st_produto                      CHAR(1) NOT NULL,
    ds_produto                      VARCHAR2(30) NOT NULL,
    ds_completo                     VARCHAR2(30) NOT NULL,
    cd_barras                       NUMBER(13)
);

COMMENT ON TABLE t_mc_produto IS
    'Tabela Produto. Relacionamento 1N com a tabela T_MC_CAT_PRODUTO. RELACIONAMENTO 1N com a tabela T_MC_VIS_VIDEO. Relacionamento 1N identificado com a tabela T_MC_VIDEO_PRODUTO.'
    ;

COMMENT ON COLUMN t_mc_produto.cd_produto IS
    'Código do produto.Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_produto.t_mc_cat_produto_cd_cat_produto IS
    'Código da categoria do produto.Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_produto.st_produto IS
    'Status do produto.Tipo de dado char. Tamanho do dado 1 dígito.  Obrigatório.';

COMMENT ON COLUMN t_mc_produto.ds_produto IS
    'Descrição do produto.Tipo de dado varchar. Tamanho do dado 30 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_produto.ds_completo IS
    'Descrição completa do produto.Tipo de dado varchar. Tamanho do dado 30 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_produto.cd_barras IS
    'Código de barras.Tipo de dado numérico. Tamanho do dado 13 dígitos. Opcional.';

ALTER TABLE t_mc_produto ADD CONSTRAINT t_mc_produto_pk PRIMARY KEY ( cd_produto );

CREATE TABLE t_mc_sac (
    cd_chamado                      NUMBER(10) NOT NULL,
    t_mc_func_cd_fun                NUMBER(5) NOT NULL, 
--  ERROR: Column name length exceeds maximum allowed length(30) 
    t_mc_cat_produto_cd_cat_produto NUMBER(10) NOT NULL,
    ds_chamado                      VARCHAR2(4000) NOT NULL,
    ds_ret_chamado                  VARCHAR2(4000) NOT NULL,
    dt_hr_abertura                  DATE NOT NULL,
    dt_fim_chamado                  DATE,
    dur_chamado                     NUMBER(5),
    tem_chamado                     NUMBER(4),
    tipo_chamado                    VARCHAR2(15) NOT NULL,
    st_chamado                      CHAR(1),
    ind_satifacao                   INTEGER
);

COMMENT ON TABLE t_mc_sac IS
    'Tabela categoria do produto. Relacionamento 1N com a tabela T_MC_CAT_PRODUTO. Relacionamento 1N T_MC_FUNC.';

COMMENT ON COLUMN t_mc_sac.cd_chamado IS
    'Código do chamado. Miúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_sac.t_mc_func_cd_fun IS
    'Código do funcionário. Miúscula. Tipo de dado numérico. Tamanho do dado 5 dígitos. Chave estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_sac.t_mc_cat_produto_cd_cat_produto IS
    'Código da categoria do produto. Miúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_sac.ds_chamado IS
    'Descrição do chamado. Miúscula. Tipo de dado varchar. Tamanho do dado 4000 
dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_sac.ds_ret_chamado IS
    'Descrição do retorno do chamado. Miúscula. Tipo de dado varchar. Tamanho do dado 4000 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_sac.dt_hr_abertura IS
    'Data e hora da abertura do chamado. Miúscula. Tipo de dado datatime. Obrigatório.';

COMMENT ON COLUMN t_mc_sac.dt_fim_chamado IS
    'Data do fim do chamado. Miúscula. Tipo de dado datatime. Opcional.';

COMMENT ON COLUMN t_mc_sac.dur_chamado IS
    'Duração do chamado. Miúscula. Tipo de dado numérico. Tamanho do dado 5 dígitos. Opcional.';

COMMENT ON COLUMN t_mc_sac.tem_chamado IS
    'tempo do chamado. Miúscula. Tipo de dado numérico. Tamanho do dado 4 dígitos. Opcional.';

COMMENT ON COLUMN t_mc_sac.tipo_chamado IS
    'Tipo do chamado. Miúscula. Tipo de dado varchar. Tamanho do dado 15 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_sac.st_chamado IS
    'Status do chamado. Miúscula. Tipo de dado char. Tamanho do dado 1 dígitos. Opcional.  ';

COMMENT ON COLUMN t_mc_sac.ind_satifacao IS
    'Índice de satisfação. Miúscula. Tipo de dado integer. Opcional. ';

ALTER TABLE t_mc_sac ADD CONSTRAINT t_mc_sac_pk PRIMARY KEY ( cd_chamado );

CREATE TABLE t_mc_tel_cliente (
    t_mc_cliente_cd_cliente NUMBER(10) NOT NULL,
    cd_telefone_cliente     NUMBER(3) NOT NULL,
    ddd_tel_cliente         NUMBER(2) NOT NULL,
    prefixo_cliente         NUMBER(4) NOT NULL,
    sufixo_cliente          NUMBER(4) NOT NULL
);

COMMENT ON TABLE t_mc_tel_cliente IS
    'Tabela telefone do cliente. Relacionamento 1N identificado com a tabela T_MC_CLIENTE. ';

COMMENT ON COLUMN t_mc_tel_cliente.t_mc_cliente_cd_cliente IS
    'Código do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária e estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_tel_cliente.cd_telefone_cliente IS
    'Código do telefone do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado  3 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_tel_cliente.ddd_tel_cliente IS
    'Código DDD do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 2 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_tel_cliente.prefixo_cliente IS
    'Prefixo do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 4 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_tel_cliente.sufixo_cliente IS
    'Sufixo do telefone do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 4 dígitos. Obrigatório.';

ALTER TABLE t_mc_tel_cliente ADD CONSTRAINT t_mc_tel_cliente_pk PRIMARY KEY ( cd_telefone_cliente,
                                                                              t_mc_cliente_cd_cliente );

CREATE TABLE t_mc_tel_func (
    t_mc_func_cd_fun NUMBER(5) NOT NULL,
    cd_telefone      NUMBER(4) NOT NULL,
    ddd_tel_func     NUMBER(2) NOT NULL,
    prefixo_tel_func NUMBER(4) NOT NULL,
    sufixo           NUMBER(4)
);

COMMENT ON TABLE t_mc_tel_func IS
    'Tabela telefone do funcionário. Relacionamento 1N identificado com a tabela T_MC_FUN.';

COMMENT ON COLUMN t_mc_tel_func.t_mc_func_cd_fun IS
    'Código do telefone do funcionário. Minúscula. Tipo de dado numérico. Tamanho do dado 5 dígitos. Chave Primária e estrangeira. Obrigatório.'
    ;

COMMENT ON COLUMN t_mc_tel_func.cd_telefone IS
    'Código do telefone do funcionário. Minúscula. Tipo de dado numérico. Tamanho do dado 4 dígitos. Chave estrangeira. Obrigatório.'
    ;

COMMENT ON COLUMN t_mc_tel_func.ddd_tel_func IS
    'DDD do telefone do funcionário. Minúscula. Tipo de dado numérico. Tamanho do dado 2 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_tel_func.prefixo_tel_func IS
    'Prefixo do telefone do funcionário. Minúscula. Tipo de dado numérico. Tamanho do dado 4 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_tel_func.sufixo IS
    'Sufixo do telefone do funcionário. Minúscula. Tipo de dado numérico. Tamanho do dado 4 dígitos. Opcional';

ALTER TABLE t_mc_tel_func ADD CONSTRAINT t_mc_tel_func_pk PRIMARY KEY ( cd_telefone,
                                                                        t_mc_func_cd_fun );

CREATE TABLE t_mc_video_produto (
    cd_video                    NUMBER(10) NOT NULL,
    t_mc_cat_video_cd_cat_video NUMBER(10) NOT NULL,
    t_mc_produto_cd_produto     NUMBER(10) NOT NULL,
    ds_video                    VARCHAR2(30) NOT NULL,
    st_video                    CHAR(1) NOT NULL,
    dt_video                    DATE NOT NULL
);

COMMENT ON TABLE t_mc_video_produto IS
    'Tabela vídeo do produto. Maiúscula. Relacionamento 1N indentificado com a tabela T_MC_PRODUTO. Relacionamento 1N com a tabela T_MC_CATEGORIA_VIDEO'
    ;

COMMENT ON COLUMN t_mc_video_produto.cd_video IS
    'Código . Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_video_produto.t_mc_cat_video_cd_cat_video IS
    'Código da categoria do vídeo. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_video_produto.t_mc_produto_cd_produto IS
    'Código do produto. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_video_produto.ds_video IS
    'Descrição do vídeo. Minúscula. Tipo de dado varchar. Tamanho do dado 30 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_video_produto.st_video IS
    'Status do vídeo do produto. Minúscula. Tipo de dado char. Tamanho do dado 1 dígitos. Obrigatório.';

COMMENT ON COLUMN t_mc_video_produto.dt_video IS
    'Data. Minúscula. Tipo de dado date. Obrigatório.';

ALTER TABLE t_mc_video_produto ADD CONSTRAINT t_mc_video_produto_pk PRIMARY KEY ( cd_video );

CREATE TABLE t_mc_vis_video (
    cd_vis_video            NUMBER(10) NOT NULL,
    t_mc_cliente_cd_cliente NUMBER(10) NOT NULL,
    t_mc_produto_cd_produto NUMBER(10) NOT NULL,
    dt_hr_visu              DATE NOT NULL
);

COMMENT ON TABLE t_mc_vis_video IS
    'Tabela visualização de vídeo. Relacionamento 1N com a tabela T_MC_CLIENTE. Relacionamento 1N com a tabela T_MC_PODUTO. ';

COMMENT ON COLUMN t_mc_vis_video.cd_vis_video IS
    'Código de visualização do vídeo. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave Primária. Obrigatório.';

COMMENT ON COLUMN t_mc_vis_video.t_mc_cliente_cd_cliente IS
    'Código do cliente. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_vis_video.t_mc_produto_cd_produto IS
    'Código do produto. Minúscula. Tipo de dado numérico. Tamanho do dado 10 dígitos. Chave estrangeira. Obrigatório.';

COMMENT ON COLUMN t_mc_vis_video.dt_hr_visu IS
    'Data e hora da visualização. Minúscula. Tipo de dado datatime. Obrigatório.';

ALTER TABLE t_mc_vis_video ADD CONSTRAINT t_mc_vis_video_pk PRIMARY KEY ( cd_vis_video );

ALTER TABLE t_mc_func
    ADD CONSTRAINT t_mc_func_t_mc_depar_fk FOREIGN KEY ( t_mc_depar_cd_depar )
        REFERENCES t_mc_depar ( cd_depar );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_mc_lista_desejos
    ADD CONSTRAINT t_mc_lista_desejos_t_mc_cliente_fk FOREIGN KEY ( t_mc_cliente_cd_cliente )
        REFERENCES t_mc_cliente ( cd_cliente );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_mc_lista_desejos
    ADD CONSTRAINT t_mc_lista_desejos_t_mc_produto_fk FOREIGN KEY ( t_mc_produto_cd_produto )
        REFERENCES t_mc_produto ( cd_produto );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_mc_pessoa_fisica
    ADD CONSTRAINT t_mc_pessoa_fisica_t_mc_cliente_fk FOREIGN KEY ( t_mc_cliente_cd_cliente )
        REFERENCES t_mc_cliente ( cd_cliente );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_mc_pessoa_juridica
    ADD CONSTRAINT t_mc_pessoa_juridica_t_mc_cliente_fk FOREIGN KEY ( t_mc_cliente_cd_cliente )
        REFERENCES t_mc_cliente ( cd_cliente );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_mc_produto
    ADD CONSTRAINT t_mc_produto_t_mc_cat_produto_fk FOREIGN KEY ( t_mc_cat_produto_cd_cat_produto )
        REFERENCES t_mc_cat_produto ( cd_cat_produto );

ALTER TABLE t_mc_sac
    ADD CONSTRAINT t_mc_sac_t_mc_cat_produto_fk FOREIGN KEY ( t_mc_cat_produto_cd_cat_produto )
        REFERENCES t_mc_cat_produto ( cd_cat_produto );

ALTER TABLE t_mc_sac
    ADD CONSTRAINT t_mc_sac_t_mc_func_fk FOREIGN KEY ( t_mc_func_cd_fun )
        REFERENCES t_mc_func ( cd_fun );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_mc_tel_cliente
    ADD CONSTRAINT t_mc_tel_cliente_t_mc_cliente_fk FOREIGN KEY ( t_mc_cliente_cd_cliente )
        REFERENCES t_mc_cliente ( cd_cliente );

ALTER TABLE t_mc_tel_func
    ADD CONSTRAINT t_mc_tel_func_t_mc_func_fk FOREIGN KEY ( t_mc_func_cd_fun )
        REFERENCES t_mc_func ( cd_fun );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_mc_video_produto
    ADD CONSTRAINT t_mc_video_produto_t_mc_cat_video_fk FOREIGN KEY ( t_mc_cat_video_cd_cat_video )
        REFERENCES t_mc_cat_video ( cd_cat_video );

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE t_mc_video_produto
    ADD CONSTRAINT t_mc_video_produto_t_mc_produto_fk FOREIGN KEY ( t_mc_produto_cd_produto )
        REFERENCES t_mc_produto ( cd_produto );

ALTER TABLE t_mc_vis_video
    ADD CONSTRAINT t_mc_vis_video_t_mc_cliente_fk FOREIGN KEY ( t_mc_cliente_cd_cliente )
        REFERENCES t_mc_cliente ( cd_cliente );

ALTER TABLE t_mc_vis_video
    ADD CONSTRAINT t_mc_vis_video_t_mc_produto_fk FOREIGN KEY ( t_mc_produto_cd_produto )
        REFERENCES t_mc_produto ( cd_produto );

--  ERROR: No Discriminator Column found in Arc Arc_1 - constraint trigger for Arc cannot be generated 

--  ERROR: No Discriminator Column found in Arc Arc_1 - constraint trigger for Arc cannot be generated



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            14
-- CREATE INDEX                             0
-- ALTER TABLE                             28
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                  12
-- WARNINGS                                 0
