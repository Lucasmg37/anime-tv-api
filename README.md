<p align="center">
  <img src="/assets/animetv.png" width="70">
</p>
<h2 align="center">Anime TV API</h2>
<p align="center">
  Anime TV é um  <a href="https://play.google.com/store/apps/details?id=br.com.animetvon&hl=pt_BR">aplicativo da Play Store</a> utilizado para Stream de animes totalmente grátis mas com anúncios. E este repositório é a documentação não oficial da API utilizada para buscar os dados dos animes.
</p>

<br>

<blockquote>
  <h2>AVISO IMPORTANTE</h2>
  <h4>Este repositório tem como e SOMENTE o objetivo de ESTUDO. Eu não sou responsável por nada sobre este aplicativo ou pela sua API, apenas utilizei um simples processo de descompilação neste aplicativo para entender seu funcionamento com objetivo de ESTUDO, <a href="/MORE.md">para saber mais clique aqui</a></h4>
</blockquote>

<br>

## Considerações
As limitações foram concluídas somente olhando e testando os endpoints do código fonte do aplicativo **portanto pode estar errada.** Então se quiser checar você mesmo, e tentar descobrir se a limitação está incorreta, sinta-se totalmente à vontade, todo o código que utilizei de base está na pasta `/app` deste repositório.

## Documentação

### Table of contents
1. Iniciando
2. Buscar os dados dos últimos animes lançados
3. Buscar os dados de animes por categoria
4. Buscar os dados de animes por letra
5. Buscar os dados dos episódios de um anime
6. Buscar os dados de Streaming de um episódio
7. Buscar os dados de um anime por keyword
8. Buscar os dados detalhados de um anime

### 1. Iniciando
1. Tenha em mente que todas as requisições devem ser feitas usando query params, ou seja, usando o ponto de interrogação, exemplo: `?endpoint=abc`  
2. A URL de base é esta: `https://appanimeplus.tk/api-achance.php`  
3. A URL de base das imagens é esta: `https://cdn.appanimeplus.tk/img/`

> A URL de base é a URL que você utilizará para buscar os dados em JSON

> A URL de base das imagens é a URL das imagens completa, por exemplo, você verá que a API retorna o nome único da imagem, por exemplo: `5bd529d5b07b647a8863cf71e98d651a.jpg`,
> e então, para poder buscar a imagem, utilize a URL de base + este nome único da imagem, usando o mesmo exemplo, neste caso a URL ficará: `https://cdn.appanimeplus.tk/img/5bd529d5b07b647a8863cf71e98d651a.jpg`

### 2. Buscar os dados do últimos animes lançados
Para buscar os últimos lançamentos, o endpoint é este:
```
https://appanimeplus.tk/api-achance.php?latest
```
Isto irá retornar, no momento em que estou buscando os últimos 30 lançamentos:
```js
[
  {
    "video_id": "433312",
    "category_id": "33193",
    "title": "Deca Dence Episodio 04",
    "category_image": "1a551b7323fefa14d9b4ac09bd73ee49.jpg"
  },
  {
    "video_id": "433311",
    "category_id": "33184",
    "title": "Re:Zero kara Hajimeru Isekai Seikatsu 2 Episodio 04",
    "category_image": "4a61f90089bdb5a4965c92b9b825afc5.jpg"
  },
  { .... }
]
```
Limitações: o valor é fixo, você pode buscar apenas 30 e somente os últimos 30 animes lançados.

### 3. Buscar os dados de animes por categoria
Para buscar os animes que se encaixam em uma categoria use o endpoint:
```
https://appanimeplus.tk/api-achance.php?categoria=NOME_DA_CATEGORIA
```
Todas as categorias disponíveis podem ser lidas neste arquivo CATEGORIAS.txt
