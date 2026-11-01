#!/usr/bin/env bash
set -Eeuo pipefail

export DEBIAN_FRONTEND=noninteractive

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
WORK_DIR="${REPO_ROOT}/build/iso"
OUTPUT_DIR="${WORK_DIR}/output"
CONFIG_DIR="${WORK_DIR}/config"

mkdir -p "${OUTPUT_DIR}"

if ! command -v lb >/dev/null 2>&1; then
  echo "[ERROR] live-build is not installed. Install the Debian build dependencies first." >&2
  exit 1
fi

if [[ ! -d "${CONFIG_DIR}" ]]; then
  echo "[ERROR] Missing live-build config directory: ${CONFIG_DIR}" >&2
  exit 1
fi

cd "${WORK_DIR}"

lb config \
  --distribution bookworm \
  --architectures amd64 \
  --binary-images iso-hybrid \
  --bootappend-live "boot=live components timezone=UTC" \
  --archive-areas "main contrib non-free non-free-firmware" \
  --debian-installer none \
  --mode debian \
  --source false

lb build 2>&1 | tee "${OUTPUT_DIR}/build.log"

ISO_PATH=$(find "${WORK_DIR}/binary" -maxdepth 1 -type f -name '*.iso' | head -n 1 || true)
if [[ -z "${ISO_PATH}" ]]; then
  echo "[ERROR] No ISO generated. See ${OUTPUT_DIR}/build.log" >&2
  exit 1
fi

cp "${ISO_PATH}" "${OUTPUT_DIR}/Windows-7e-x86_64-v0.1.0.iso"

echo "[OK] Windows 7e ISO created at ${OUTPUT_DIR}/Windows-7e-x86_64-v0.1.0.iso"
