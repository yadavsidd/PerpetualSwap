module MyModule::PerpetualSwap {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    struct SwapContract has drop, store, key {
        margin_balance: u64,  // Trader's margin balance
        leverage: u8,         // Leverage factor (e.g., 10x, 20x)
    }

    /// Function to open a new perpetual swap position
    public fun open_position(trader: &signer, margin: u64, leverage: u8) {
        let position = SwapContract {
            margin_balance: margin,
            leverage: leverage,
        };
        move_to(trader, position);
    }

    /// Function to close a perpetual swap position
    public fun close_position(trader: &signer) acquires SwapContract {
        let position = borrow_global_mut<SwapContract>(signer::address_of(trader));
        let refund = position.margin_balance; // Return the margin balance
        coin::transfer<AptosCoin>(trader, signer::address_of(trader), refund);
        move_from<SwapContract>(signer::address_of(trader));
    }
}
