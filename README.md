# VTRW API 🚀

VTRW (Virtual To Reality Way) API provides detailed information about the VTRW token, including price, supply, contract details, and official documentation. This API is built using FastAPI.

## 🌟 Features
- Token Price: Fetch the current price of VTRW token.
- Supply Information: View the total and circulating supply of VTRW.
- Smart Contract Details: Access the contract address and BSC Explorer link.
- Official Whitepaper and Contact Information Included.
- Built with FastAPI: A modern, fast (high-performance) web framework for building APIs.

## API Responses
```json
{
    "message": "Welcome to the VTRW API 🚀",
    "VTRW_Price": "0.0009 USDT",
    "Supply": {
        "Max_Supply": "10,000,000,000 VTRW",
        "Circulating_Supply": "3,500,000,000 VTRW"
    },
    "Contract": {
        "Contract Address": "0xac6d043bb8ac862aac265eebdc0287c47db98c0a",
        "Explorer Link": "https://bscscan.com/token/0xac6d043bb8ac862aac265eebdc0287c47db98c0a"
    },
    "Whitepaper": {
        "Document": "Whitepaper-VTRW-Coin.pdf",
        "Link": "https://www.vtrway.com/Whitepaper-VTRW-Coin.pdf"
    },
    "Contact": {
        "Email": "info@vtrway.com",
        "Twitter": "https://twitter.com/VTRWay",
        "Telegram": "https://t.me/vtrwcoin",
        "Website": "https://www.vtrway.com/"
    },
# VTRW API 🚀

VTRW (Virtual To Reality Way) API provides detailed information about the VTRW token, including price, supply, contract details, and official documentation. This API is built using FastAPI.

🌟 Features  
- Token Price: Fetch the current price of VTRW token.  
- Supply Information: View the total and circulating supply of VTRW.  
- Smart Contract Details: Access the contract address and BSC Explorer link.  
- Official Whitepaper and Contact Information Included.  
- Built with FastAPI: A modern, fast (high-performance) web framework for building APIs.  

📌 How to Use the API  
VTRW API provides public endpoints for fetching token-related data.  

### 1️⃣ Install Dependencies  
If you are running the API locally, install required packages:  
```sh
pip install fastapi uvicorn  
