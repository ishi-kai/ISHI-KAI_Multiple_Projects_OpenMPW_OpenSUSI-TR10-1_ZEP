# [ZEP](https://www.zep.co.jp/) DESIGN CHIP

[![check](https://github.com/OpenSUSI/TR-1um_MPW_template/actions/workflows/check.yml/badge.svg?branch=main)](https://github.com/OpenSUSI/TR-1um_MPW_template/actions/workflows/check.yml)

- ![フレーム](/images/all_frame.png)


## [一緒にTapeout！教科書知識で作る世界に1つだけのIC](https://www.zep.co.jp/products/opensusi_1/)の回路
[ZEPエンジニアリング社](https://www.zep.co.jp/)主催の[一緒にTapeout！教科書知識で作る世界に1つだけのIC](https://www.zep.co.jp/products/opensusi_1/)で作成したインバータ回路が載っています。  

- ![一緒にTapeout！教科書知識で作る世界に1つだけのIC](https://www.zep.co.jp/wp-content/uploads/2026/06/opensusi_middle_3.png)


### 巨大インバータ回路
対比のために、PMOSのW=1600um,L=2uとNMOSのW=680um,L=2umの巨大インバータ回路を作成しました。  

- ![回路図](/images/inverter_big_cir.png)
- ![レイアウト](/images/inverter_big_layout.png)


### リングオシレータ型VCO
インバータ回路を奇数個接続することで発振させるリングオシレータ型VCOを作成しました。  
ただし、回路としては、6個（偶数個）だけ載せて、最後の一つは受講者のインバータ回路をパッド経由で繋げることで、完成する回路となっています。  
インバータ回路の利用法の一つを学ぶための回路となっています。  

- ![回路図](/images/vco_cir.png)
- ![回路図](/images/vco_inverter_cir.png)
- ![回路図](/images/vco_tb.png)
- ![レイアウト](/images/vco_layout.png)


## ISHI会の回路
[ISHI-KAI_Multiple_Projects_OpenMPW_OpenSUSI-TR10-1](https://github.com/ishi-kai/ISHI-KAI_Multiple_Projects_OpenMPW_OpenSUSI-TR10-1)で実施した回路の一部が相乗りしています。  

### インバータ回路
[2026年06月イベント：初めての半導体設計・製造体験！一日で作るインバータ回路ハンズオン](https://ishi-kai.org/openmpw/shuttle/opensusi-tr10/2026/04/10/shuttle_ISHI-Kai_OpenMPW-OpenSUSI-TR10-1_start.html)での成果となります。  

- [ISHI-KAI_Multiple_Projects_OpenMPW_OpenSUSI-TR10-1](https://github.com/ishi-kai/ISHI-KAI_Multiple_Projects_OpenMPW_OpenSUSI-TR10-1)
    - [インバータ回路：tarry](https://github.com/ishi-kai/ISHI-KAI_Multiple_Projects_OpenMPW_OpenSUSI-TR10-1/tree/main/member_project/inverter/ZEP/tarry/)
    - [インバータ回路：yanzm](https://github.com/ishi-kai/ISHI-KAI_Multiple_Projects_OpenMPW_OpenSUSI-TR10-1/tree/main/member_project/inverter/ZEP/yanzm/)
    - [インバータ回路：Yourein](https://github.com/ishi-kai/ISHI-KAI_Multiple_Projects_OpenMPW_OpenSUSI-TR10-1/tree/main/member_project/inverter/ZEP/Yourein/)
    - [インバータ回路：cat_nekonekone](https://github.com/ishi-kai/ISHI-KAI_Multiple_Projects_OpenMPW_OpenSUSI-TR10-1/tree/main/member_project/inverter/ZEP/cat_nekonekone/)
    - [インバータ回路：makoto645](https://github.com/ishi-kai/ISHI-KAI_Multiple_Projects_OpenMPW_OpenSUSI-TR10-1/tree/main/member_project/inverter/ZEP/makoto645/)
