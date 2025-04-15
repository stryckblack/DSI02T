<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tabela de Preço</title>
  <link rel="stylesheet" href="styleprojetofinal.css">
</head>

<body>
  <div class="container">
    <header>
      <h1>Tabela de Preços</h1>
    </header>

    <!-- Grid de Produtos --> 
    <section class="produtos-grid">
      <div class="produto">
        <img src="IMG/122.jfif" alt="Blusa manga longa">
        <p>Blusa Manga Longa: R$ 99,00</p>
      </div>
      <div class="produto">
        <img src="IMG/127.jfif" alt="Polo em Jacquard">
        <p>Polo em Jacquard: R$ 119,00</p>
      </div>
      <div class="produto">
        <img src="IMG/126.jfif" alt="Blusa Oversized">
        <p>Blusa Oversized: R$ 120,00</p>
      </div>
      <div class="produto">
        <img src="c:\Users\William\Downloads\atividade ]-20250111T223700Z-001\124.jfif" alt="Vestido Floral">
        <p>Vestido Floral: R$ 99,00</p>
      </div>
      <div class="produto">
        <img src="IMG/129.jfif" alt="Camiseta Polo">
        <p>Camiseta Polo: R$ 129,00</p>
      </div>
      <div class="produto">
        <img src="IMG/128.jfif" alt="Blusa Cropped">
        <p>Blusa Cropped em Ribana: R$ 150,00</p>
      </div>
      <div class="produto">
        <img src="IMG/123.jfif" alt="Vestido Longo Midi">
        <p>Vestido Longo Midi: R$ 149,99</p>
      </div>
      <div class="produto">
        <img src="IMG/125.jfif" alt="Vestido Sarindinha">
        <p>Vestido Sarindinha: R$ 109,90</p>
      </div>
      <div class="produto">
        <img src="IMG/WhatsApp Image 2025-04-15 at 16.04.39.jpeg" alt="Blusa de Gola Alta">
        <p>Blusa Manga Longa de Gola Alta: R$ 119,90</p>
      </div>
    </section>


    <div class="container">
        <div class="card-produto">
          <div class="imagem">
            <img src="IMG/127.jfif" alt="Camiseta Polo">
          </div>
          <div class="info">
            <div class="logo">LOCAL<br><span>FASHION</span></div>
            <h2 class="titulo">CAMISETA POLO</h2>
            <p class="preco">R$ 129,00</p>
            <p class="parcelamento">7x de 18,50 sem juros</p>
    
            <label>COR:</label>
            <div class="cor-opcao"></div>
    
            <label>TAMANHO:</label>
            <div class="tamanhos">
              <span>PP</span>
              <span>P</span>
              <span>M</span>
              <span>G</span>
              <span>GG</span>
              <span>G1</span>
            </div>
    
            <div class="botoes">
              <button class="comprar">COMPRAR</button>
              <button class="adicionar">ADICIONAR AO CARRINHO</button>
            </div>
          </div>
        </div>
      </div>

    <!-- Promoção -->
    <section class="promo-container">
      <div class="promo-left">
        <p class="promocao-label">PROMOÇÃO</p>
        <h2 class="produto-nome">CAMISA BRANCA DE ALGODÃO</h2>
        <p class="produto-desc">De Alta Qualidade</p>
        <div class="preco">
          <span class="valor">R$ 59,90</span>
        </div>
        <p class="parcelamento">ou 2x de R$ 29,95</p>
        <a href="#" class="link-site">www.localfashion.com.br</a>
        <p class="instagram">@localfashion</p>
      </div>
      <div class="promo-right">
        <img src="IMG/WhatsApp Image 2025-04-15 at 16.26.40 (1).jpeg" alt="Imagem promocional">
      </div>
    </section>

    <!-- Pagamento -->
    <section class="pagamento">
      <h2>💵 PAGAMENTO</h2>
      <div class="opcao">💳 Mastercard | Visa | Elo | Hipercard | Amex | BB</div>
      <div class="opcao pix">
        <span>🔷 Pix</span>
        <span class="desconto">DESCONTO 5%</span>
      </div>
      <div class="opcao">🏷️ Boleto Bancário</div>
      <button class="finalizar" disabled>FINALIZAR COMPRA</button>
    </section>

    <!-- Carrinho -->
    <section class="carrinho">
      <header>
        <div class="logo">
          <span class="logo-text">LOCAL<br>FASHION</span>
          <span class="logo-icon">👜</span>
        </div>
      </header>

      <h2>MEU CARRINHO</h2>
      <table>
        <thead>
          <tr>
            <th>PRODUTO</th>
            <th>ENTREGA</th>
            <th>PREÇO</th>
            <th>QUANTIDADE</th>
            <th>TOTAL</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td colspan="5" class="espaco-linha"></td>
          </tr>
        </tbody>
      </table>

      <div class="cupom">
        <label for="cupom">CUPOM DE DESCONTO:</label>
        <input type="text" id="cupom" placeholder="Código">
        <button>ADICIONAR</button>
      </div>

      <div class="botoes">
        <button class="comprar">COMPRAR MAIS</button>
        <button class="fechar">FECHAR PEDIDO</button>
      </div>
    </section>
  </div>


</body>

</html>
