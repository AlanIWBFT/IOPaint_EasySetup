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