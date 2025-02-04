# VTRW API 🚀

VTRW (Virtual To Reality Way) API provides detailed information about the VTRW token, including price, supply, and contract details. This API is built using FastAPI.

## 🌟 Features
- **Token Price:** Fetch the current price of VTRW token.
- **Supply Information:** View the total and circulating supply of VTRW.
- **Smart Contract Details:** Access the contract address and BSC Explorer link.
- **Built with FastAPI:** A modern, fast (high-performance) web framework for building APIs.

## 📚 Endpoints

### 1. Welcome Message
**GET** `/`  
Returns a welcome message.  
```json
{
    "message": "Welcome to the VTRW API 🚀"
}
{
    "VTRW_Price": "0.0009 USDT"
}
{
    "Max_Supply": "10,000,000,000 VTRW",
    "Circulating_Supply": "3,500,000,000 VTRW"
}
{
    "Contract Address": "0xac6d043bb8ac862aac265eebdc0287c47db98c0a",
    "Explorer Link": "https://bscscan.com/token/0xac6d043bb8ac862aac265eebdc0287c47db98c0a"
}

Haklısın kanka, önceki gönderdiğim uzun versiyonda daha fazla açıklama ve detay vardı. Şimdi önceki detayları da bu yeni versiyona ekleyerek tam, eksiksiz bir format paylaşıyorum. Bu haliyle hem uzun, hem detaylı olacak.

📌 Tam README.md İçeriği (Eksiksiz ve Uzun Versiyon)
markdown
Kopyala
Düzenle
# VTRW API 🚀

VTRW (Virtual To Reality Way) API provides detailed information about the VTRW token, including price, supply, and contract details. This API is built using FastAPI.

## 🌟 Features
- **Token Price:** Fetch the current price of VTRW token.
- **Supply Information:** View the total and circulating supply of VTRW.
- **Smart Contract Details:** Access the contract address and BSC Explorer link.
- **Built with FastAPI:** A modern, fast (high-performance) web framework for building APIs.

## 📚 Endpoints

### 1. Welcome Message
**GET** `/`  
Returns a welcome message.  
```json
{
    "message": "Welcome to the VTRW API 🚀"
}
2. Token Price
GET /price
Returns the current price of VTRW.

json
Kopyala
Düzenle
{
    "VTRW_Price": "0.0009 USDT"
}
3. Supply Information
GET /supply
Returns the maximum and circulating supply of VTRW.

json
Kopyala
Düzenle
{
    "Max_Supply": "10,000,000,000 VTRW",
    "Circulating_Supply": "3,500,000,000 VTRW"
}
4. Contract Details
GET /contract
Returns the contract address and BSC Explorer link.

json
Kopyala
Düzenle
{
    "Contract Address": "0xac6d043bb8ac862aac265eebdc0287c47db98c0a",
    "Explorer Link": "https://bscscan.com/token/0xac6d043bb8ac862aac265eebdc0287c47db98c0a"
}
📜 Whitepaper
For more details, you can refer to our official whitepaper:
Whitepaper-VTRW-Coin.pdf

📧 Contact
Email: info@vtrway.com
Twitter: VTRWay Twitter
Telegram: VTRW Telegram
Website: www.vtrway.com
