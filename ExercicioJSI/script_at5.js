// Método simples

const titulo = document.createElement("h1");
titulo.textContent = "Meu título";
titulo.id = "titulo";

document.body.appendChild(titulo);

// Método complexo

const produto = document.createElement("div");
produto.textContent = "Produto 1";

const nome = document.createElement("h2");
nome.textContent = "Nome: Notebook Dell Inspiron 15";

const descricao = document.createElement("p");
descricao.textContent = "Descrição: Notebook com processador Intel Core i5, 8GB de RAM e 256GB de SSD.";

const preco = document.createElement("p");
preco.textContent = "Preço: R$ 5.000,00";

produto.appendChild(nome);
produto.appendChild(descricao);
produto.appendChild(preco);

document.body.appendChild(produto);
