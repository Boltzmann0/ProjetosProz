const h1 = document.getElementById("titulo");
const ul = document.querySelector("ul");
const a = document.querySelector("a");
const ol = document.getElementById("lista-ordenada");

h1.innerText = "Título da página";
a.innerText = "Produção";

ul.innerHTML = `
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
`;

ol.innerHTML = `
  <li><a href="https://www.google.com">Google</a></li>
  <li><a href="https://www.facebook.com">Facebook</a></li>
  <li><a href="https://www.youtube.com">YouTube</a></li>
`;
