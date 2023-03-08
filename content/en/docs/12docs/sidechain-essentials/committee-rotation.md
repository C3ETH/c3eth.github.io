---
title : "Committee rotation"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

A sidechain is initialized by an SPO, or 'chain creator' who publishes the sidechain Plutus contract implementations including committee registration scripts. These registration scripts allow other SPOs to register or de-register as a candidate in the committee. The SPO also runs a sidechain validator node which starts the sidechain when a quorum of validators is reached.

![ Committee Rotation](https://user-images.githubusercontent.com/10556209/208516415-b1a36189-c411-4145-b3dd-742c99d85586.png)

The sidechain is validated by an SPO committee where each SPO is a candidate running a sidechain validator node. In each epoch, a committee is randomly selected and handed over to the next.

![ Committee Rotation](https://user-images.githubusercontent.com/10556209/208516422-3d8bbbd6-7f7e-4f2a-9d50-1a5c2e57e6ae.png)