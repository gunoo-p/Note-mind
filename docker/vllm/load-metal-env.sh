export VLLM_API_KEY="$(python3 -c 'from pathlib import Path; print(dict(line.split ("=",
1) for line in Path("docker/vllm/.env").read_text().splitlines() if line and not
line.startswith("#") and "=" in line) ["VLLM_API_KEY"])')"
export VLLM_ENABLE_V1_MULTIPROCESSING=0
export VLLM_METAL_USE_PAGED_ATTENTION=1
export VLLM_METAL_MEMORY_FRACTION=0.3