---
title : "Audit the Snapshot"
date: 2020-10-06T08:48:23+00:00
lastmod: 2020-10-06T08:48:23+00:00
draft: false
images: []
weight: 30
---

## Parameters

Registration Deadline: Jan 15, 2024 21:45:00 UTC

Minimum Voting Power:  450 ADA.

## Required Tools

### dbSync

Installation instructions can be found [here](https://github.com/IntersectMBO/cardano-db-sync/blob/master/doc/docker.md).

Ensure dbSync and the PostgreSQL database are running, and the database is synchronized past 21:45:00 UTC on the 20th of January 2024.

Note: *IF your dbSync is not synchronized to at least this date, the results from running a snapshot will be inaccurate.  This is because the snapshot is taken at a time when a rollback on the blockchain is impossible to affect the snapshot data, and therefore it's fully reproducible and stable.  This is guaranteed by placing one full Epoch between the registration deadline and the earliest the final snapshot can be taken.*

### Catalyst Snapshot Tools

Snapshot tools are from the [here](https://github.com/input-output-hk/catalyst-core).  Clone the repo and then build the necessary tools.

### Building the tools

##### snapshot_tool:

```

 cargo build -r -p voting_tools_rs

```

##### catalyst-toolbox:

```

cargo build -r -p catalyst-toolbox

```

## Reproducing the Snapshot

Auditing the Snapshot is simply reproducing a snapshot directly from blockchain data and comparing it with the officially published snapshot data.

### Getting the Registration Deadline slot number

Getting the `slot_no` aligned with the registration deadline.

Query the dbSync database with:

```

select slot_no, time from block
    where slot_no is not null and time <= '2024-01-15 21:45:00'
    order by slot_no desc limit 1 ;

```

The result will be:

```

113788796,2024-01-15 21:44:30.000000

```

Therefore the `slot#` that the snapshot needs to target is: 113788796

### Running the Raw snapshot

The first part of the snapshot accumulates raw registration and staked ada information and validates it according to [CIP-15](https://cips.cardano.org/cip/CIP-15/) and [CIP-36](https://cips.cardano.org/cip/CIP-36/)

Note: *Multiple delegations, as specified by CIP-36, are not supported.  These will be detected as invalid registrations.  Only registrations that contain a single voting key are supported and valid.*

Run (replace your credentials as appropriate):

```

export USERNAME=<Your dbSync postgresql Username>
export PASSWORD=<Your dbSync postgresql Password>
export DBSYNC_POSTGRES="localhost:5432"
./target/release/snapshot_tool --db cexplorer --db-user $USERNAME --db-pass $password --db-host $DBSYNC_POSTGRES --out-file ./cexplorer-113788796.json --min-slot 0 --max-slot 113788796 --network-id mainnet

```

This will produce three files:

- `cexplorer-113788796.json` <- Raw Snapshot Data
- `cexplorer-113788796.unregistered.json` <- Unregistered but staked ADA.
- `cexplorer-113788796.errors.json` <- Errors or Obsolete registrations.

### Processing the snapshot with Fund 11 parameters

This filters registrations for minimum allowed voting power:

Run:

```

./target/release/catalyst-toolbox snapshot --snapshot cexplorer-113788796.json --min-stake-threshold 450000000 --slot-no 113788796 cexplorer-113788796.final.json

```

This produces the final snapshot: `cexplorer-113788796.summary.json`