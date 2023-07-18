#!/bin/bash
set -e

apt-get install -y python3-venv

python3 -m venv /path/to/virtualenv
source /path/to/virtualenv/bin/activate
pip install git+https://github.com/eduNEXT/tvm.git

tvm project init aspects-nau v15.3.5
cd /path/to/tvm/aspects-nau
source /path/to/tvm/aspects-nau/.tvm/bin/activate

pip install git+https://github.com/openedx/tutor-contrib-aspects

pip install --upgrade tutor[full]

tutor plugins enable aspects

tutor config save

tutor images build openedx

tutor dev do init
