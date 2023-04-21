FROM python:3.9-slim-buster

# Install dependencies git was required
RUN apt-get update && \
    apt-get install -y ffmpeg git

# Install JupyterLab, FFMPEG-Python, and PyTorch
RUN pip install --upgrade  jupyterlab ffmpeg-python torch==1.10.1 torchvision torchaudio -f https://download.pytorch.org/whl/cu111/torch_stable.html tqdm tiktoken numba
 
# https://github.com/openai/whisper
# Install whisper
RUN pip install --upgrade --no-deps --force-reinstall git+https://github.com/openai/whisper.git

# Set the working directory
WORKDIR /app
ENV JUPYTER_PORT 8888


# Launch JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]
