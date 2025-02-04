from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Welcome to the VTRW API 🚀"}

@app.get("/price")
def get_price():
    return {"VTRW_Price": "0.0009 USDT"}

@app.get("/supply")
def get_supply():
    return {
        "Max_Supply": "10,000,000,000 VTRW",
        "Circulating_Supply": "3,500,000,000 VTRW"
    }

@app.get("/contract")
def get_contract():
    return {
        "Contract Address": "0xac6d043bb8ac862aac265eebdc0287c47db98c0a",
        "Explorer Link": "https://bscscan.com/token/0xac6d043bb8ac862aac265eebdc0287c47db98c0a"
    }
@app.get("/contact")
def get_contact():
    return {
        "Email": "info@vtrway.com",
        "Twitter": "https://twitter.com/VTRWay",
        "Telegram": "https://t.me/vtrwcoin",
        "Website": "https://www.vtrway.com/"
    }
