---
title : "CIP-1694: Cardano enters the Voltaire era"
lead: ""
date: 2022-12-22T08:48:23+00:00
lastmod: 2022-12-22T08:48:23+00:00
draft: false
images: []
---

![image](https://img.cexplorer.io/i/8645fee8d7d502d27bb80c7174bf145a.jpg)

[Read the article on Cardano Explorer](https://cexplorer.io/article/cip-1694-cardano-enters-the-voltaire-era)

The IOG team prepares Cardano to enter the Voltaire era. If the topic of on-chain governance interests you, you should definitely not overlook CIP-1694. This Cardano Improvement Proposal (CIP) defines foundations for decentralized decision-making. This will be the first major step towards decentralised management of the Cardano project which will hand over a significant amount of power to the community.

## TLDR

-   Currently, the 7 governance keys are divided between 3 entities.
-   There will be a document called the Constitution and a committee to oversee governance.
-   There will be a new role of Delegation Representative (DRep), which can be obtained by anyone interested. Stakers can delegate their stake to DReps.
-   In the new governance model, key changes will be decided by the committee, DReps and SPOs.

## What does governance look like today?

Every governance action must be initiated through a special governance transaction. This transaction must be authorized by at least 5 of the 7 governance keys. 3 governance keys are held by IOG, 2 are held by Cardano Foundation and 2 are held by Emurgo.

A governance transaction contains special parameters that describe the details of the required action. These actions concern the modification of Cardano protocol parameters and the movement of ADA coins from the project treasury and reserve.

If the governance transaction is signed with the required number of keys, it will be executed on an epoch boundary. This means that the action is enacted.

One of the important Cardano parameters is the major version of the protocol. Governance transactions initiate a hard fork, i.e. an upgrade of the Cardano protocol. Changing Cardano protocol parameters (for example, the K parameter) does not require major protocol changes and can be initialized at virtually any time.

A hard fork is a special case since if a migration to a new version is to be approved, pool operators and users must install a new version of the client beforehand. The upgrade must also be supported by exchanges, third-party teams building wallets, etc. The hard fork combinator can only be triggered if all relevant parties are ready for it.

Changing a parameter related to a major protocol version is therefore considered a special action in both the old and the new governance model.

Entering the Voltaire era will address some of the shortcomings of the current model. The current model is decentralized, but only 3 entities can participate in the voting. ADA holders cannot vote. Although the team discusses protocol parameter changes with pool operators and the community, only the 3 founding entities have control over the process. Furthermore, there is no document or guidance that defines what principles the decision-making should be based on.

## Constitution and Constitutional Committee

A document called Constitution will be created to define the core values and guiding principles for the governance of the Cardano project. At some later stage, it is possible that part of the document will take the form of a smart contract. In the initial phase, it will be only an off-chain document whose hash will be stored on-chain in the Cardano ledger.

There will be a Constitutional Committee made up of members or entities that will have responsibility for overseeing governance. All governance actions must be in accordance with the Constitution.

It is important to say that the Constitutional Committee will not have any special powers compared to the other actors. The other actors (DReps) can replace the Constitutional Committee members at any time and must approve all governance actions. It can be said that the committee has very similar rights as the other members. One of the reasons for the existence of the committee is to solve the bootstrapping problem. The Commission may act as a mentor or advisor.

The Constitutional Committee may be in one of the following states:

-   a normal state (confidence)
-   a state of non-confidence

If a committee is in a state of "no-confidence", it can no longer participate in any governance actions and must be replaced before any governance action is enacted. Any outstanding governance actions become void immediately after the committee enters a state of "no-confidence". In this case, SPOs and DReps will represent the will of the community.

In the initial phase, committee members will be core members of the organizations that founded Cardano and active members of the community. There is no defined number of committee members or quorum (the number of votes that are required to enact governance actions).

In the confidence state, the commission can be replaced by governance action 2. The new state must be approved by the existing commission and DReps (we'll talk about DReps later). In the no-confidence state, the commission can be replaced by governance action 5 and must be approved by the SPOs and DReps.

Delegation Representative (DRep) is a position that is open to all ADA holders through registration. DRep registration will mimic the existing stake delegation mechanisms (via certificates). Owners of staking keys (essentially stakers) will be able to delegate their stakes to DReps. If someone does not want to actively participate in the governance but is interested in having someone experienced make decisions on his behalf, he can delegate his stake to the chosen DRep to strengthen his position. It is the same principle as delegating ADA to a pool.

In addition to the existing per-stake-credential distribution and the per-stake-pool distribution, a new per-DRep stake distribution will be introduced.

It is worth noting that SPOs can become DReps. There is no reason to prevent them from doing so. However, DReps do not have to be SPOs. This allows anyone to gain a strong position through stake delegation without having to run their own pool.

It is important to note that no identity verification will be required for committee members and DReps. It is expected that something like DID is sufficient for the community. Forcing identity verification would be against the principles of decentralization.

## Governance Actions

In the initial phase, there will be 6 governance actions. A governance action is an on-chain event that will be triggered by a special transaction with a defined deadline after which it cannot be enacted.

Governance action is considered ratified once it receives a sufficient number of YES votes in its favour. If it does not receive the required number of votes, it is considered expired. If an action is ratified, it will be enacted once it has been activated on the network. An action can be dropped even if it has been ratified if the committee goes into a "no-confidence" state.

Let's take a look at the list of events:

1.  Motion of no-confidence
2.  New Constitutional Committee and/or quorum size
3.  Updates to the Constitution
4.  Hard-Fork initiation
5.  Protocol parameter changes
6.  Treasury withdrawals

Any ADA holder may submit a governance action if they provide the required ADA deposit. The deposit will be returned after the vote regardless of the outcome.

Governance actions can be ratified through on-chain voting. Depending on the type of action, different ratification requirements are required. An action will become ratified if some specific combination of the following occurs:

-   The Constitutional Committee approves of the action.
-   The DReps approve of the action.
-   The SPOs approve of the action.

In the case of a Constitutional Committee vote, the required number of members as defined by the quorum must vote YES for the approval of the change. In the case of DReps or SPOs votes, the stake controlled by those who vote YES must meet a certain threshold over the total registered voting stake.

The first governance action, the motion of "no-confidence", is not voted on by the Constitutional Committee but only by DReps and SPOs. Most actions must be approved by the committee, DReps and SPOs. See CIP-1694 for more information.

Voting will be done through on-chain transactions, which must contain, among other things, the governance action ID (each action will have its own ID), role (committee member, DRep or SPO) and vote (YES/NO/ABSTAIN).

Votes can be cast multiple times for each governance action. Correctly submitted votes override any older votes for a given action.

## Conclusion

We highly recommend you find CIP-1694 on GitHub to read the original. You can comment on the CIP and suggest changes.

As we enter the Voltaire era, ADA coins in the treasury, the change in protocol parameters and even the hard-fork will be decided by the community and not by the founding members of Cardano. This is an important step for decentralized project management.

Block production is decentralised at the moment. Once the current 7 governance keys become obsolete, the community will take control of Cardano. This is important from a regulatory perspective, as there will no longer be entities that have control over the management of the project. The IOG may be involved in modifying the source code, but the initiation of the hard fork, i.e. the deployment of the upgrade, will be in the hands of the community. The community will be responsible for Cardano. If regulators wanted to accomplish anything, they would have to communicate with all ADA holders.