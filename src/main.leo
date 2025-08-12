// import wrapped_credits.aleo;
// import validator_oracle.aleo;
// import paleo_token.aleo;
// import pondo_protocol_token.aleo;
// import delegator1.aleo;
// import delegator2.aleo;
// import delegator3.aleo;
// import delegator4.aleo;
// import delegator5.aleo;
// todo: put at top of amm_oracle contract revert back to original: import pondo_protocol.aleo; 
import pondo_protocol.aleo; // todo: change to pondo_protocol.aleo for mainnet

program import_program.aleo {

    @admin(address="aleo1wfaqpfc57m0wxmr9l6r8a5g95c0cthe54shzmcyu6wf6tqvady9syt27xt")
    async constructor() {}

    transition main () -> u32 {
        return 1u32;
    }  
}