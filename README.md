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
<br>

<h2>Documentação</h2>

### Table of contents
1. Iniciando
2. Buscar os dados dos últimos animes lançados
3. Buscar os dados de animes por categoria
4. Buscar os dados dos episódios de um anime
5. Buscar os dados de Streaming de um episódio
6. Buscar os dados de um anime por keyword
7. Buscar os dados detalhados de um anime
8. Limitações

### Antes de iniciar
1. Tenha em mente que todas as requisições devem ser feitas usando query params, ou seja, usando o ponto de interrogação, exemplo: `?endpoint=abc`  
2. A URL de base é esta: `https://appanimeplus.tk/api-achance.php`  

Portanto, para buscar as informações do anime com ID 389 é feita a requisição: `https://appanimeplus.tk/api-achance.php?info=389`  

### 1. Buscar os dados do últimos animes lançados
Para buscar os lançamentos, o endpoint é este:
```
https://appanimeplus.tk/api-achance.php?latest
```
Isto irá retornar, no momento em que estou buscando os últimos 30 lançamentos:
```json
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
