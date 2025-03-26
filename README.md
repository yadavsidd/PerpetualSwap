# **Perpetual Swap Contracts on Aptos**

## **📌 Description**
Perpetual Swap Contracts are a type of financial derivative that allows traders to speculate on asset prices without an expiration date. This Move smart contract enables users to open and close leveraged trading positions securely on the Aptos blockchain.

## **🎯 Vision**
The goal of this project is to provide a decentralized, trustless, and transparent trading mechanism for perpetual contracts on Aptos. By leveraging Move's security features, this contract ensures safe and efficient trading experiences for users.

## **🚀 Future Scope**
- **Funding Rate Mechanism**: Implement periodic payments between long and short positions.
- **Risk Management**: Introduce liquidation mechanisms based on margin balance.
- **Multi-Asset Support**: Extend the contract to support various cryptocurrencies.
- **Integration with DeFi Protocols**: Enable yield farming and lending features for margin balances.

## **📜 Contract Details**
### **1️⃣ SwapContract Struct**
```move
struct SwapContract has store, key {
    margin_balance: u64,  // Trader's margin balance
    leverage: u8,         // Leverage factor (e.g., 10x, 20x)
}
```
- **margin_balance**: The amount of collateral locked by the trader.
- **leverage**: The leverage factor used in the trade.

### **2️⃣ Functions**
#### **🔹 Open Position**
```move
public fun open_position(trader: &signer, margin: u64, leverage: u8)
```
- Allows a trader to open a new leveraged trading position.
- Stores the margin balance and leverage information in the contract.

#### **🔹 Close Position**
```move
public fun close_position(trader: &signer) acquires SwapContract
```
- Returns the trader's margin balance upon closing the position.
- Transfers the funds back to the trader’s wallet.

## **📜 Usage Instructions**
1. **Compile the Contract:**  
   ```bash
   aptos move compile --named-addresses MyModule=default
   ```
2. **Publish the Contract:**  
   ```bash
   aptos move publish --named-addresses MyModule=default
   ```
3. **Interact with the Contract:**  
   - Open a position by calling `open_position`.
   - Close a position by calling `close_position`.

## **🤝 Contributing**
Feel free to contribute by raising issues, suggesting improvements, or submitting pull requests.

## **📧 Contact**
For any queries or collaborations, reach out to **Siddhant**.


#Contract Address

0x8248a80cc2bc823c0971f996833d78f8cbd7d7092bdfeccc0588fa4e1a0409b7

#Transaction

![image](https://github.com/user-attachments/assets/ab5b78c7-960f-4bd6-880f-3228f888d200)

