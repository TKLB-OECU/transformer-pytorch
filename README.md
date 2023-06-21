
# Transformer

This is a pytorch implementation of the
[Transformer](https://arxiv.org/abs/1706.03762) model like
[tensorflow/tensor2tensor](https://github.com/tensorflow/tensor2tensor).

## Prerequisite

I tested it with PyTorch 1.0.0 and Python 3.6.8.

It's using [SpaCy](https://spacy.io/usage/) to tokenize languages for wmt32k
dataset. So, if you want to run `wmt32k` problem which is a de/en translation
dataset, you should download language models first with the following command.

```
$ pip install -U -r requirements.txt
$ python -m spacy download en_core_web_sm
$ python -m spacy download ja_core_news_sm
```

## Usage

1. Train a model.
If you choose either wmt32k or lm1b for your problem set, comment it out if you do not want to use it.
After commenting out, execute the following command

```
source train.sh
```

If you want to try `fast_transformer`, give a `model` argument after installing
[tcop-pytorch](https://github.com/tunz/tcop-pytorch).
```
$ python train.py --problem lm1b --output_dir ./output --data_dir ./lm1b_data --model fast_transformer
```


2. You can translate a single sentence with the trained model.
```
$ python decoder.py --translate --data_dir ./wmt32k_data --model_dir ./output/last/models
```
