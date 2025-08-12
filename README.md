# Issue while deploying program with pondo_protocol.aleo depenedency

Used leo from commit `d63611d`

While doing leo deploy with following command(change private-key in .env):

```
leo deploy --broadcast
```

I get following error everytime after all proofs are generated and leo tries to broadcast the first program:

```
Error [ECLI0377032]: Failed to broadcast transaction: http status: 500
```
