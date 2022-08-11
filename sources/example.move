module example::example {
    use liquidswap::router;
    use aptos_framework::aptos_coin;

    public entry fun get_aptos_usdt_exchange_rate(aptos_amount: u64) {
        let _get_exchange_rate = router::get_amount_out<
                aptos_coin::AptosCoin,
                liquidswap_lp::coins::USDT,
                liquidswap_lp::lp::LP<aptos_coin::AptosCoin, liquidswap_lp::coins::USDT>
        >(
            @0x43417434fd869edee76cca2a4d2301e528a1551b1d719b75c350c3c97d15b8b9,
            aptos_amount,
        );
    }
}
