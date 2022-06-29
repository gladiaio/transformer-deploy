FROM nvcr.io/nvidia/tritonserver:22.03-py3

# see .dockerignore to check what is transfered
COPY . ./

RUN pip3 install -U pip

RUN pip3 install nvidia-pyindex

RUN pip3 install onnxruntime-gpu

RUN pip3 install torch==1.11.0

RUN pip3 install nvidia-tensorrt==8.2.5.1

RUN pip3 install onnx_graphsurgeon

RUN pip3 install polygraphy

RUN pip3 install cupy-cuda113

RUN pip3 install sentence-transformers

RUN pip3 install notebook

RUN pip3 install pytorch-quantization

RUN pip3 install ipywidgets

RUN pip3 install transformers

RUN pip3 install .
