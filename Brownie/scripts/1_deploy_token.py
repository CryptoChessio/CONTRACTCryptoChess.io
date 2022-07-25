from brownie import accounts, config, EasyToken

def main():
    account = accounts[0]
    erc20 = TokenERC20.deploy(
        {"from": account}
    )