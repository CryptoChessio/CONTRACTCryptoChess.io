from brownie import accounts, config, EasyToken

initail_supply = 10000000000 
token_name = "Test Token"
token_symbol = "TEST"

def main():
    account = accounts[0]
    erc20 = TokenERC20.deploy(
        initail_supply, 
        token_name, 
        token_symbol, 
        {"from": account}
    )