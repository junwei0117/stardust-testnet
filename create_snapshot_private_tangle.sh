#!/bin/bash
rm snapshots/stardust-testnet/full_snapshot.bin
rm snapshots/stardust-testnet/delta_snapshot.bin
rm snapshots/private_tangle2/full_snapshot.bin
rm snapshots/private_tangle2/delta_snapshot.bin
rm snapshots/private_tangle3/full_snapshot.bin
rm snapshots/private_tangle3/delta_snapshot.bin
rm snapshots/private_tangle4/full_snapshot.bin
rm snapshots/private_tangle4/delta_snapshot.bin
mkdir -p snapshots/stardust-testnet/
mkdir -p snapshots/private_tangle2/
mkdir -p snapshots/private_tangle3/
mkdir -p snapshots/private_tangle4/
go run ../main.go tool snap-gen stardust-testnet 60200bad8137a704216e84f8f9acfe65b972d9f4155becb4815282b03cef99fe 1000000000 snapshots/stardust-testnet/full_snapshot.bin
cp snapshots/stardust-testnet/full_snapshot.bin snapshots/private_tangle2/
cp snapshots/stardust-testnet/full_snapshot.bin snapshots/private_tangle3/
cp snapshots/stardust-testnet/full_snapshot.bin snapshots/private_tangle4/
