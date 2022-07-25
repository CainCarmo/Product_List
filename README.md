# Product_List - Desafio IBID 

> Sistema CRUD de Produtos

## 💻 - Linguagens utilzadas
  
#### Front-End

<div display="flex">
  <img height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" /> -
  <img height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" /> -
  <img height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" />
</div>

#### Back-End

<div display="flex">
  <img height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/csharp/csharp-original.svg" />
</div>


## 🖥️ - Telas do Sistema

> ### Tela Inical - Home
<img  src="https://cdn.discordapp.com/attachments/874649192423890980/999349240423796887/unknown.png" />
<br />

> ### Tela de Cadastro de Produtos
<img  src="https://cdn.discordapp.com/attachments/874649192423890980/999349369734172732/unknown.png" />

> ### Tela de Edição de Produtos
<img  src="https://cdn.discordapp.com/attachments/1000527264766758943/1001159756725100565/unknown.png" />

> ### Tela de Exclusão de Produtos
<img  src="https://cdn.discordapp.com/attachments/1000527264766758943/1001159962724143185/unknown.png" />

---

## 📃 - Banco de Dados

> ### Script da Tabela Produto

```sql
CREATE TABLE PRODUCT (
	ID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	DESCRIPTION VARCHAR(255),
	FK_TYPE_ID INT FOREIGN KEY REFERENCES TYPE(ID) NOT NULL,
	PRICE NUMERIC(10, 2) NOT NULL,
	REGIS_DATE DATETIME NOT NULL
);
```

> ### Script da Tabela Tipo

```sql
CREATE TABLE TYPE (
	ID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	NAME VARCHAR(30) NOT NULL
);
```

---
<cite>- by <em>Cainã_Carmo</em></cite>
