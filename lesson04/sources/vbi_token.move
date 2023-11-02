module vbi_token::TOKEN {
    use std::option;
    use sui::coin::{Self};
    use sui::tx_context::{Self,TxContext};
    use sui::transfer;
    
    struct TOKEN has drop {}
        
    fun init(witness: TOKEN, ctx: &mut TxContext) {
            let (treasury_cap, metadata) = coin::create_currency<TOKEN>(
                witness,
                2,
                b"EAMON$",
                b"EAMON$",
                b"Token for lesson 04",
                option::none(),
                ctx
            );
            transfer::public_transfer(metadata, tx_context::sender(ctx));
            transfer::public_transfer(treasury_cap, tx_context::sender(ctx));
        }

    }

