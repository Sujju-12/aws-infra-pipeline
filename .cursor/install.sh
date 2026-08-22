#!/usr/bin/env bash
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

if [[ ! -d .venv ]]; then
  python3 -m venv .venv
fi

.venv/bin/pip install -q -U pip
.venv/bin/pip install -q -r requirements.txt -r requirements-dev.txt

if [[ ! -f node_modules/aws-cdk/package.json ]]; then
  npm install --no-save aws-cdk@2
fi
