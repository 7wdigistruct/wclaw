#!/usr/bin/env bash
# Build everything and assemble the plugin.
#
# Steps:
#   1. Build the web frontend (required — assets are embedded in the binary)
#   2. Compile the Rust binary (release)
#   3. Copy binary into plugin/bin/
#
# Usage: ./build.sh

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"

# -- 1. Web frontend ----------------------------------------------------------
echo "==> Building web frontend..."
(cd "${REPO_ROOT}/web" && bun install --silent && bun run build)

# -- 2. Rust binary ------------------------------------------------------------
echo "==> Building wclaw (release)..."
cargo build --release --manifest-path "${REPO_ROOT}/Cargo.toml"

# -- 3. Copy into plugin -------------------------------------------------------
mkdir -p "${REPO_ROOT}/plugin/bin"
cp "${REPO_ROOT}/target/release/wclaw" "${REPO_ROOT}/plugin/bin/wclaw"
chmod +x "${REPO_ROOT}/plugin/bin/wclaw"

echo ""
echo "Done. Plugin ready at: plugin/"
echo ""
echo "To test locally:"
echo "  claude --plugin-dir ${REPO_ROOT}/plugin"