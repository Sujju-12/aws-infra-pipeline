#!/usr/bin/env bash
set -euo pipefail

cd "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [[ ! -d .venv ]]; then
  python3 -m venv .venv
fi

.venv/bin/pip install -q -U pip
.venv/bin/pip install -q -r requirements.txt -r requirements-dev.txt

if [[ ! -f node_modules/aws-cdk/package.json ]]; then
  npm install --no-save aws-cdk@2
fi
