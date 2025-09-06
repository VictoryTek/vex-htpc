# Test this Just file: /usr/bin/just --justfile files/justfiles/generate_iso.just --choose

# Generate ISO for VexOS
[group('Apps')]
generate-iso-vex-htpc:
    #!/usr/bin/env bash
    set -euo pipefail
    echo "Creating ISO directory..."
    mkdir -p ~/iso
    echo "Changing to ISO directory..."
    cd ~/iso
    echo "Generating ISO..."
    bluebuild generate-iso --iso-name Vex-HTPC-42.iso --driver podman image ghcr.io/victorytek/vex-htpc:latest
    echo "ISO generated successfully in ~/iso/"