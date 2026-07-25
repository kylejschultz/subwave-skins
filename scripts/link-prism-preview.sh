#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="$repo_dir/skins/prism"
target_dir="${SUBWAVE_WEB_PRISM_DIR:-/Volumes/dockerDisk/openclaw/subwave/repo/web/components/skins/prism}"
trash_dir="${HOME}/.Trash/subwave-prism-link-backups-$(date +%Y%m%d-%H%M%S)"

mkdir -p "$target_dir" "$trash_dir"

for file in PrismSkin.tsx Prism.module.css; do
  source_file="$source_dir/$file"
  target_file="$target_dir/$file"

  if [[ ! -f "$source_file" ]]; then
    echo "Missing source file: $source_file" >&2
    exit 1
  fi

  if [[ -e "$target_file" || -L "$target_file" ]]; then
    mv "$target_file" "$trash_dir/$file"
  fi

  ln "$source_file" "$target_file"
done

echo "Linked Prism preview files:"
ls -li "$source_dir"/PrismSkin.tsx "$target_dir"/PrismSkin.tsx
ls -li "$source_dir"/Prism.module.css "$target_dir"/Prism.module.css
