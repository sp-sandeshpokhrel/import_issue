# Issue where either sending _version or not sending makes the transaction pass successfully
With snarkOS v4.0.1 installed using `cargo install --locked --path . --features test_network`
With leo from PR https://github.com/ProvableHQ/leo/pull/28753  with `test_consensus_height` feature on for snarkvm depenedency

## Deploy new_record2 using
```
leo deploy --broadcast --twice
```

## Deploy new_recrod using
```
leo deploy --broadcast --twice
```

## Create record with new_record2 contract
```
leo execute new_record2.aleo/create_record --broadcast
```

## Use this create record in new_record with
One example record is this
```
leo execute new_record.aleo/check_record "{owner:aleo1rhgdu77hgyqd3xjj8ucu3jj9r2krwz6mnzyd80gncr5fxcwlh5rsvzp9px.private,id:1u32.private,_nonce:4831188040890779660686663498536260049695845537573779680715909167343704062725group.public}" --broadcast 
```
It passes successfully on both case where I donot pass _version field or pass the _version field.

## Summary
From my understanding it happens when we use third party record just as input and dont consume it in the importer contract.







