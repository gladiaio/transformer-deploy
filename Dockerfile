FROM nvcr.io/nvidia/tritonserver:22.03-py3

# see .dockerignore to check what is transfered
COPY . ./

RUN pip3 install -U pip

RUN pip3 install nvidia-pyindex \
    onnxruntime-gpu \
    torch==1.11.0 \
    nvidia-tensorrt==8.2.5.1 \
    onnx_graphsurgeon \
    polygraphy \
    cupy-cuda113 \
    sentence-transformers \
    notebook \
    pytorch-quantization \
    ipywidgets \
    transformers

RUN pip3 install .
