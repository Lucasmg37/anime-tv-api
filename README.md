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

<br>

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

Explicação da resposta:
```
video_id: ID do episódio do anime
category_id: este ID é usado para buscar a lista de todos os episódios do anime
category_image: nome único da imagem da capa do anime
```

Formato da resposta:
```ts
interface Episodio {
  video_id: string,
  category_id: string,
  title: string,
  category_image: string,  
}
```

**Limitações: o valor é fixo, você pode buscar apenas 30 e somente os últimos 30 animes lançados.**

<br>

### 3. Buscar os dados de animes por categoria
Para buscar os animes que se encaixam em uma categoria use o endpoint:
```
https://appanimeplus.tk/api-achance.php?categoria=NOME_DA_CATEGORIA
```

A resposta vem no formato:
```js
[
  {
    "id": "33097",
    "category_name": "7 Seeds 2 Dublado (Seven Seeds 2 Dublado)",
    "category_image": "62c1507b8202cd94f44733de18ea736b.jpg"
  },
  {
    "id": "8461",
    "category_name": "7 Seeds Dublado (Seven Seeds Dublado)",
    "category_image": "c2839bed26321da8b466c80a032e4714.jpg"
  },
  { .... }
]
```

Explicação da resposta:
```
id: ID do anime
category_name: título/nome do anime
category_image: nome único da imagem da capa do anime (pode retornar 404, a API é inconsistente)
```

Formato da resposta:
```ts
interface Anime {
  id: string,
  category_name: string,
  category_image: string,
}
```

Todas as categorias disponíveis [podem ser vistas neste arquivo.](/CATEGORIAS.md)    

**Limitações: não há paginação, assim como na primeira. Portanto a quantidade de animes da resposta não é fixo, por exemplo, no momento que estou testando, a categoria `dublado` retornou 340 animes; já a categoria `sci-fi` retornou 562.**

<br>

### 4. Buscar os dados de animes por letra
Utilize o endpoint: 
```
https://appanimeplus.tk/api-achance.php?letra=QUALQUER_LETRA_OU_UTILIZE_#
```
Todas as letras disponíveis são \[A-Z] e também o jogo da velha "#" que simboliza todos os animes que possuem o nome que inicia com um caracter especial

**Limitações: Não há paginação.**

### 5. 
