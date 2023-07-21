BASE_DIR="D:\Desktop\stable-diffusion-webui-docker"
DATA_DIR="${BASE_DIR}/data"
OUTPUT_DIR="${BASE_DIR}/output"

docker run -d -p 7860:7860 \
--gpus device=0 \
--name testtt \
-v "${DATA_DIR}:/data" \
-v "${OUTPUT_DIR}:/output" \
-e "CLI_ARGS=--allow-code --medvram --xformers --enable-insecure-extension-access --api" \
sd:1.0