FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime

# copy requirements.txt
COPY requirements.txt .

RUN while read requirement; do pip install $requirement; done < requirements.txt
