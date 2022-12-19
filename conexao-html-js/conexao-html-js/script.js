// - post 02- formulario- section com ambos os posts- datas dos posts- textos dos posts- listas com links das redes sociais

let logo = document.getElementById('logo');
console.log(logo);
let autores = document.getElementsByClassName('post-autor');
console.log(autores);
let post02 = document.getElementById('post02');
console.log(post02);
let formulario = document.getElementById('formulario');
console.log(formulario);
let section = document.getElementById('posts');
console.log(section);
let data = document.getElementsByClassName('post-data');
console.log(data);
let texto = document.getElementsByClassName('post-texto');
console.log(texto);
let socialMedia = document.getElementsByClassName('lista_redes');
console.log(socialMedia);

// - O link dentro do texto do primeiro post- A palavra em negrito dentro do texto do segundo post- O input de nome do formulário- Os links da lista de redes no final da página- Os links da navegação (só os links, não os elementos de lista)- Os 4 "Autor:" e "Data:" em negrito nos dois posts

let link = document.querySelector("#post01 a");
console.log(link);
let negrito = document.querySelector("#post02 .post-texto strong");
console.log(negrito);
let nomeForm = document.querySelector("#nome");
console.log(nomeForm);
let linksFooter = document.querySelectorAll("footer .lista_redes a");
console.log(linksFooter);
let linksNav = document.querySelectorAll("nav a");
console.log(linksNav);
let autorForte = document.querySelectorAll(".post-autor strong");
console.log(autorForte);
let dataForte = document.querySelectorAll(".post-data strong");
console.log(dataForte);
