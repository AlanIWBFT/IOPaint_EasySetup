# IOPaint

This repository forks https://github.com/Sanster/IOPaint and focuses on easier setup.

## Steps

1. Install `pnpm` and `uv`
2. In `./webapp`, run
```bash
$ pnpm install
$ pnpm build
```
3. Now you can run `uv sync` to install python dependencies, then run `uv run main.py start` to start the application.

## CUDA

`torch` in this repo is configured to be `pytorch-cu130`. Run `uv run main.py start --device cuda` to get CUDA support.

## Download all models

Run `uv run main.py download-all-models --model-dir .\models`.

## win_start.ps1

It launches IOPaint with all plugins enabled:

```powershell
uv run main.py start `
    --inbrowser `
    --device cuda `
    --model-dir .\models `
    --enable-interactive-seg --interactive-seg-device cuda `
    --enable-remove-bg --remove-bg-device cuda `
    --enable-anime-seg `
    --enable-realesrgan --realesrgan-device cuda `
    --enable-gfpgan --gfpgan-device cuda `
    --enable-restoreformer --restoreformer-device cuda
```