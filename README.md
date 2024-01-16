# abi-decode
## Tx1 calldata
0xa9059cbb0000000000000000000000005494befe3ce72a2ca0001fe0ed0c55b42f8c358f000000000000000000000000000000000000000000000000000000000836d54c

**cast calldata-decode "transfer(address,uint256)" \
  0xa9059cbb0000000000000000000000005494befe3ce72a2ca0001fe0ed0c55b42f8c358f000000000000000000000000000000000000000000000000000000000836d54c**
  
  0x5494befe3CE72A2CA0001fE0Ed0C55B42F8c358f
137811276


**cast 4byte-decode 0xa9059cbb0000000000000000000000005494befe3ce72a2ca0001fe0ed0c55b42f8c358f000000000000000000000000000000000000000000000000000000000836d54c
1) "transfer(address,uint256)"
0x5494befe3CE72A2CA0001fE0Ed0C55B42F8c358f
137811276**





## Tx2 calldata

0xb24614f2000000000000000000000000dac17f958d2ee523a2206206994597c13d831ec70000000000000000000000007c92b8efbcf4ca58a6d877f35ab78aaa0d3d13bf0000000000000000000000000000000000000000000000000000000017d7840000000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000

**cast 4byte-decode 0xb24614f2000000000000000000000000dac17f958d2ee523a2206206994597c13d831ec70000000000000000000000007c92b8efbcf4ca58a6d877f35ab78aaa0d3d13bf0000000000000000000000000000000000000000000000000000000017d7840000000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000**
 "sendToInjective(address,bytes32,uint256,string)"
0xdAC17F958D2ee523a2206206994597C13D831ec7
0x0000000000000000000000007c92b8efbcf4ca58a6d877f35ab78aaa0d3d13bf
400000000


## Exercise

What does this log tell us about what happened?

```json
{
  "address":"0x33fd426905f149f8376e227d0c9d3340aad17af1",
  "topics":["0xc3d58168c5ae7397731d063d5bbf3d657854427343f4c083240f7aacaa2d0f62","0x0000000000000000000000001e0049783f008a0085193e00003d00cd54003c71","0x000000000000000000000000111818a51c4177e8980566beea68fe334be7b76a","0x00000000000000000000000091aa2610067019cb9930106d1fae7998ba1e73ee"], "data":"0x000000000000000000000000000000000000000000000000000000000000003c0000000000000000000000000000000000000000000000000000000000000001",
  "blockHash":"...",
  "blockNumber":"...",
  "transactionHash":"...",
  "transactionIndex":"0x7f",
  "logIndex":"0x22e",
  "removed":false
}
```

**cast 4byte-event 0xc3d58168c5ae7397731d063d5bbf3d657854427343f4c083240f7aacaa2d0f62**
TransferSingle(address,address,address,uint256,uint256)

0x1e0049783f008a0085193e00003d00cd54003c71
0x111818a51c4177e8980566beea68fe334be7b76a
0x91aa2610067019cb9930106d1fae7998ba1e73ee
60,
1





