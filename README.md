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
