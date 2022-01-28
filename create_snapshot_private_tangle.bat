#!/bin/bash
del /f /q /s "snapshots\stardust-testnet\full_snapshot.bin"
del /f /q /s "snapshots\stardust-testnet\delta_snapshot.bin"
del /f /q /s "snapshots\private_tangle2\full_snapshot.bin"
del /f /q /s "snapshots\private_tangle2\delta_snapshot.bin"
del /f /q /s "snapshots\private_tangle3\full_snapshot.bin"
del /f /q /s "snapshots\private_tangle3\delta_snapshot.bin"
del /f /q /s "snapshots\private_tangle4\full_snapshot.bin"
del /f /q /s "snapshots\private_tangle4\delta_snapshot.bin"
mkdir "snapshots\stardust-testnet\"
mkdir "snapshots\private_tangle2\"
mkdir "snapshots\private_tangle3\"
mkdir "snapshots\private_tangle4\"
go run "..\main.go" tool snap-gen stardust-testnet 60200bad8137a704216e84f8f9acfe65b972d9f4155becb4815282b03cef99fe 1000000000 "snapshots\stardust-testnet\full_snapshot.bin"
copy "snapshots\stardust-testnet\full_snapshot.bin" "snapshots\private_tangle2\"
copy "snapshots\stardust-testnet\full_snapshot.bin" "snapshots\private_tangle3\"
copy "snapshots\stardust-testnet\full_snapshot.bin" "snapshots\private_tangle4\"