# Issue with Pondo Protocol import
I am trying to deploy import program and want to deploy all dependencies for pondo_protocol.aleo as well.

First deploy import_issue project using 
```
leo deploy --broadcast --twice --yes
```
It will deploy all dependency.
Now when i try to deploy in import_import_issue with same command as above. I get follwing error
```
Warning: Dependency for program `credits.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `validator_oracle.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `delegator1.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `delegator2.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `delegator3.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `delegator4.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `delegator5.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `token_registry.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `pleo_token.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `pondo_protocol_token.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `wrapped_credits.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `pondo_protocol.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `credits.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `credits.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `validator_oracle.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `credits.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `validator_oracle.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `credits.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `validator_oracle.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `credits.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `validator_oracle.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `credits.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `validator_oracle.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `credits.aleo` not found, assuming that it is network dependency.
Warning: Dependency for program `token_registry.aleo` not found, assuming that it is network dependency.
Error [EUTL03710016]: Failed to retrieve from endpoint `http://localhost:3030/testnet/program/pondo_protocol_token.aleo`: http status: 429
```

Even though the dependency exist in the node.
`curl http://localhost:3030/testnet/program/pondo_protocol_token.aleo`
```
"import credits.aleo;\nimport token_registry.aleo;\n\nprogram pondo_protocol_token.aleo;\n\nstruct TokenMetadata:\n    token_id as field;\n    name as u128;\n    symbol as u128;\n    decimals as u8;\n    supply as u128;\n    max_supply as u128;\n    admin as address;\n    external_authorization_required as boolean;\n    external_authorization_party as address;\n\nstruct TokenOwner:\n    account as address;\n    token_id as field;\n\nstruct Balance:\n    token_id as field;\n    account as address;\n    balance as u128;\n    authorized_until as u32;\n\nmapping has_minted:\n    key as u8.public;\n    value as boolean.public;\n\nfunction mint_public:\n    assert.eq self.caller aleo1hmrpe0ts2khluprhex3y46cqqy44pme7lwc40ls9nexftx0xhu8sxxpnd0;\n    call token_registry.aleo/mint_public 1751493913335802797273486270793650302076377624243810059080883537084141842601field aleo1hmrpe0ts2khluprhex3y46cqqy44pme7lwc40ls9nexftx0xhu8sxxpnd0 1000000000000000u128 4294967295u32 into r0;\n    async mint_public r0 into r1;\n    output r1 as pondo_protocol_token.aleo/mint_public.future;\n\nfinalize mint_public:\n    input r0 as token_registry.aleo/mint_public.future;\n    await r0;\n    contains has_minted[0u8] into r1;\n    not r1 into r2;\n    assert.eq r2 true;\n    set true into has_minted[0u8];\n\nfunction burn_public:\n    input r0 as address.public;\n    input r1 as u128.public;\n    input r2 as u128.public;\n    gt r1 0u128 into r3;\n    assert.eq r3 true;\n    gt r2 0u128 into r4;\n    assert.eq r4 true;\n    is.eq self.signer r0 into r5;\n    is.eq self.caller r0 into r6;\n    or r5 r6 into r7;\n    assert.eq r7 true;\n    call token_registry.aleo/burn_public 1751493913335802797273486270793650302076377624243810059080883537084141842601field r0 r1 into r8;\n    call token_registry.aleo/transfer_public 1751493913335802797273486270793650302076377624243810059080883537084141842600field r0 r2 into r9;\n    async burn_public r8 r9 r1 r2 into r10;\n    output r10 as pondo_protocol_token.aleo/burn_public.future;\n\nfinalize burn_public:\n    input r0 as token_registry.aleo/burn_public.future;\n    input r1 as token_registry.aleo/transfer_public.future;\n    input r2 as u128.public;\n    input r3 as u128.public;\n    await r0;\n    await r1;\n    get token_registry.aleo/registered_tokens[1751493913335802797273486270793650302076377624243810059080883537084141842601field] into r4;\n    cast pondo_protocol_token.aleo 1751493913335802797273486270793650302076377624243810059080883537084141842600field into r5 as TokenOwner;\n    hash.bhp256 r5 into r6 as field;\n    get token_registry.aleo/authorized_balances[r6] into r7;\n    mul r4.supply 1000000u128 into r8;\n    div r8 r7.balance into r9;\n    mul r2 1000000u128 into r10;\n    div r10 r3 into r11;\n    lte r9 r11 into r12;\n    assert.eq r12 true;\n\nfunction initialize_token:\n    assert.eq self.caller pondo_protocol.aleo;\n    call token_registry.aleo/register_token 1751493913335802797273486270793650302076377624243810059080883537084141842601field 97240284627655645872219502u128 1347306575u128 6u8 1000000000000000u128 false pondo_protocol_token.aleo into r0;\n    async initialize_token r0 into r1;\n    output r1 as pondo_protocol_token.aleo/initialize_token.future;\n\nfinalize initialize_token:\n    input r0 as token_registry.aleo/register_token.future;\n    await r0;\n"
```