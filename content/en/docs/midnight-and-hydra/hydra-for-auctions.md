---
title: 'Hydra for Auctions'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: true
images: []
---

## NFT Marketplaces on Cardano

Cardano makes minting and sending non-fungible tokens (NFTs) cheap and easy, as the accounting system for non-ADA tokens is hosted in the ledger itself (alongside ADA) instead of complicated and bug-prone custom smart contracts. This has led to a vibrant NFT ecosystem on Cardano for art, music, identity, real estate, gaming, service subscriptions, etc.

High-quality marketplaces now exist on Cardano to list, view, and purchase all sorts of NFTs. These NFT marketplaces have very friendly user interfaces that can neatly display images/animations, rarity charts, royalty terms, and other metadata for the NFTs, which can be purchased at the seller’s list price or via a buyer’s alternative offer.

However, the novelty of the digital and non-digital assets being tokenized on Cardano and the relatively small market size makes price discovery a challenge in the NFT sector.

## NFT Auctions on Cardano and Current Constraints

Auctions are an efficient mechanism for price discovery when the items being sold are novel or unique (e.g. artworks), when the most efficient allocations are hard to determine in advance (radio spectrum), or when there are concerns about insider trading and collusion (bankruptcy fire sales). In a traditional marketplace, a seller lists an item at a particular price and the first buyer to match it can purchase the item at that price – if the seller’s price was set too low, then the buyer will immediately re-list the item to sell it for an arbitrage profit. In an auction marketplace, the seller can instead wait for the price to settle in a competitive bidding process before selling the item to the highest bidder.

Auctions should be lively and efficient – bidders enter auctions (often serendipitously) with limited time and attention spans, and they will leave if it takes too long for them to make their bids or observe other bidders’ bids. This bidder experience is hard to implement directly on Cardano’s main network (L1), where L1 transactions take time to be added to a block (~10–60 seconds) and confirmed with a sufficiently low probability of rollback (minutes to hours).

## Running Auctions with Hydra

However, the auction bidding mechanism is a perfect candidate for scaling on L2 via the Hydra technology, as transactions within a Hydra Head have short confirmation delays and immediate finality. A compelling L2-powered auction service can be built on Cardano if it is developed in a way that makes use of Hydra’s strengths.

We envision that the Hydra-based auction framework will become a standard modular component that NFT marketplaces, games, and other Web 3.0 applications will plug into their architectures to add digital asset auctions to their product. Furthermore, it will stimulate a new business ecosystem for professional scalability providers to offer L2 hosting services to these applications, similar to the stakepool ecosystem and the emerging governance ecosystem.

## A Way Forward

One possible path to realizing this vision could progress along the following set of milestones that we believe are feasible to implement using Hydra and its anticipated improvements:

- Delegated Voucher Invitational
- Delegated Voucher Open
- SDK for Delegated Voucher Auctions
- Auctions-as-a-service Single
- Auctions-as-a-service Multi