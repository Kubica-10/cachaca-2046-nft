# cachaca-2046-nft
ERC721 NFT with redeem (burn) mechanism
# 🍶 Cachaca 2046 – NFT Utility Contract

Smart contract ERC-721 que representa um NFT utilitário, limitado e resgatável, desenvolvido para projetos de colecionáveis físicos, direitos futuros e legado digital.

---

## 📜 Visão Geral

**Cachaca 2046** é um contrato NFT que permite:
- Mint pago (compra)
- Transferência entre carteiras (venda)
- Resgate definitivo (redeem com queima)
- Supply limitado
- Controle total on-chain

Ao ser resgatado, o NFT é **queimado permanentemente**, garantindo uso único do direito associado.

---

## ⚙️ Características Técnicas

- Padrão: ERC-721 Enumerable
- Supply máximo: 100 NFTs
- Preço inicial: 0.01 ETH
- Função de resgate (burn)
- Proteção contra reentrância
- Compatível com OpenSea e marketplaces ERC-721

---

## 🧠 Caso de Uso

Este contrato pode representar:
- Garrafa física envelhecida
- Direito de resgate futuro
- Certificado digital colecionável
- Legado familiar / memorial digital
- NFTs utilitárias com uso único

O significado do NFT é definido pelo projeto, não pelo contrato.

---

## 🧪 Funções Principais

### Mint
Transferência

Venda ou envio entre carteiras via safeTransferFrom.

Redeem

Resgata o NFT, queimando-o permanentemente.
redeem(uint256 tokenId)
Withdraw

Saque do saldo do contrato (somente owner).

🚀 Deploy

Compatível com:

Ethereum

Polygon

Testnets (Sepolia)

Recomendado testar em testnet antes do deploy final.

Withdraw

Saque do saldo do contrato (somente owner).

🚀 Deploy

Compatível com:

Ethereum

Polygon

Testnets (Sepolia)

Recomendado testar em testnet antes do deploy final.

🔐 Segurança

Sem mint infinito

Sem funções ocultas

Owner não pode roubar NFTs

Código simples e auditável

📄 Licença

MIT License
Uso livre com atribuição.

✍️ Autor

Desenvolvido por Helemberg Cubiça de Souza
Projeto independente – Brasil


