---
title: "Universal Anonymous Signatures: bridging past, present, and future of anonymous authentication"
description: "Recently, we got the paper 'Foundations of Anonymous Signatures: Formal Definitions, Simplified Requirements, and a Construction Based on General Assumptions' accepted into FC'24 – the 2024 edition of the Financial Cryptography conference. This paper presents Universal Anonymous Signatures (UAS)."
date: 2024-01-24T09:19:42+01:00
lastmod: 2024-01-24T09:19:42+01:00
draft: false
weight: 50
images: []
categories: ["IOHK"]
tags: ["security", "performance", "SEO"]
contributors: ["Jesus Diaz Vico"]
pinned: false
homepage: false
menu:
  blog:
    parent: "IOHK"
---

Recently, we got the paper 'Foundations of Anonymous Signatures: Formal Definitions, Simplified Requirements, and a Construction Based on General Assumptions' accepted into FC'24 – the 2024 edition of the Financial Cryptography conference. This paper presents **Universal Anonymous Signatures (UAS)**.

We are really excited about it as, besides bridging several subfields in the domain of anonymous authentication, UAS sets the path towards what we believe could be (part of) the future of Self-Sovereign Identity and something we will definitely push for integration within the Atala offering.

But enough of an introduction. What is UAS about?

## A bit of history

In 1985, David Chaum first thought of a cryptographic credential that people could use without actually leaking their identity, but still giving service providers assurance that they are talking to a legitimate person. Many variants were proposed, usually leveraging the concept of attested attributes – which credential owners can selectively choose whether or not to reveal. This is known as Anonymous Credential (AC) schemes.

In 1991, Chaum and van Heyst proposed group signatures (GS), which allow members of a group that hold a membership credential to do something similar to ACs. These membership credentials usually don’t have attributes, but GS schemes-produced signatures can be processed by a trusted entity, which can extract the identifier of the otherwise anonymous signer.

Both AC and GS schemes rely on authorities issuing the credentials needed to authenticate or sign. Such an entity was removed in 2001, when Rivest, Shamir and Tauman ideated Ring Signature (RS) schemes, which can be seen as a sort of group signature that cannot be de-anonymized and does not require issuers.

So, in barely 16 years, the cryptographic community found itself with three different-but-similar ways to allow users to anonymously authenticate themselves. And since 2001, many more variants have been proposed, sometimes finding intermediate points. These include RS schemes that allow linking signatures, or group signatures in which only users can link their own signatures).

## What does UAS solve?

Actually, it is not just that AC, GS, and RS schemes (and their many variants) have some things in common. Their very raisons d’être are closely related. Allowing users to authenticate anonymously, while still letting service providers have some sort of control over the information they can extract. From a theoretical point of view, this is reflected in the fact that the security models typically look very much alike. For instance, one always needs to think about anonymity properties, which capture what can be learned from a signature. And about unforgeability properties, which have traceability and non-frameability variants, precisely stating what sort of unforgeability assurance verifiers (service providers) and users can expect, respectively. Also, there are ways to build these schemes from very similar building blocks.

However, for some reason, up to now, AC, GS, RS, and others, have been studied independently. Moreover, even though within some concrete branch, like GS, there exist reference security models like the 'Foundations of Group Signatures' line of work, this is not always the case. Even having referent models, these security models are usually tied to a concrete **privacy-vs-utility tradeoff**.

#### A practical example

Let’s say that you have an AC scheme that allows you to selectively disclose arbitrary attributes at credential presentation time. But then, you want to reuse it in a scenario where you also need to link presentations from the same user (maybe you want to reward this user with some fidelity points, or maybe this user is spamming you and you want to block them!). In short, you want to add some type of auditability. This a priori simple change requires a new security model! Sure, if you know how to do it, you can extend the previous one and, if you are lucky, the construction you had before can also be updated easily. But if you have ever implemented these sorts of things, you already know this is usually too much to hope for.

#### A dynamic model for privacy-vs-utility tradeoffs in anonymous authentication

Requiring one security model per concrete privacy-vs-utility tradeoff is obviously not ideal. And it is precisely what we wanted to fix, as these sort of close-but-different requirements are quite common in practice. So, what we have done is to come up with UAS, a generic security model that can be tweaked here and there, so that you can adapt it to the needs of your use case – in terms of the required privacy-vs-utility tradeoff. In a bit more detail, looking closely, there are three points in which one may want to adapt this type of anonymous authentication schemes:

- At issuance time: when a user requests a credential, they may be required to provide previously obtained endorsement credentials that meet property A or B – or they may not even be required to provide a credential at all!
- At signing time: when a user wants to produce an anonymous signature (or present their credential), the verifier may require to learn that the credential attributes meet certain criteria.
- At auditing time: auditors may require that some information can be extracted after the signature is created. There may also be no auditors at all!

We capture these varying tradeoffs via 'functional placeholders' (programmers can think of it as abstract functions) at these three points, which are embedded within a security framework that basically follows the anonymity-unforgeability template mentioned above. The most important thing for engineers is that, given a construction that is proven secure in our model, they would only need to specify the concrete functions needed at each step –issuance, signing, and auditing –, and that’s it! Security follows from the security of the main construction.

#### What does this have to do with GS, AC, or RS?

Fair question! We wanted to be certain that our claimed general model is actually general. So, how did we do it? Well, we proved that, by giving concrete functions at issuance, signing, and auditing time, our generic construction can behave as a GS, AC, or RS scheme. More specifically, we prove that such a variant of our construction is a secure GS, AC, or RS scheme, under their well known security models).

Of course, papers are finite, so we only prove that basic GS, AC, and RS can be built from a generic construction of UAS. We also sketch proofs for more advanced variants, such as GS with message-dependent-opening, Multimodal Private Signatures, and Revocable Anonymous Credentials. It is easy to imagine many other variants. Anonymous Credentials with extended auditing capabilities, for instance, or even anonymous signature schemes with a privacy-vs-utility tradeoff that has not yet been considered in the academic space.

## What is (or can be) next?

The first thing you may have noticed is that this is a fairly theoretical work. While everything looks just fine on paper, the problems might appear while coding. A legitimate concern is what penalty is paid efficiency-wise from having a construction that can be adapted to suit many different use cases. This is a very reasonable concern. After all, schemes designed with one single purpose in mind tend to be more efficient. To better evaluate this, we are working on a prototype. Initially, we want to have a library that can abstract out the internal details, and let developers focus on the implementation of the concrete functional placeholders they are interested in. Then, test how efficient the result is, from our (currently only) generic construction. This will probably be good enough for some applications, but not all.

The paper gives a generic construction based on BBS+, encryption, and generic (non-interactive) ZK proofs. This will most certainly be ok if what we want to achieve is selective-disclosure type of claims, but this will likely not suit if we want to prove more expressive predicates, for instance. So, the next step is to think about alternative generic constructions that are better suited for more expressive requirements.

Also, from a theoretical point of view, we have many ideas for the future. Allowing issuers and auditors to change their functions, for example. Right now, while many issuers or auditors can coexist, each of them commits to a function. Or adapt the model to the fully dynamic setting, and many more.

## How do we plan to integrate UAS into Atala?

As stated, we are working on an implementation based on our generic construction from BBS+, encryption (ElGamal), and ZK proofs (basic Sigma protocols). This will be our starting point, allowing us to test this new technology in the SSI stack provided by Atala. By integrating UAS within Atala’s Open Enterprise Agent stack, we will be able to leverage all the tooling Atala includes, and start testing how UAS behaves in production-ready environments (with SSI-specific agents, nodes, communication protocols, etc), and also adapt it to the market and engineering teams needs.

Keep an eye on upcoming updates!