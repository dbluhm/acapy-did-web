FROM ghcr.io/hyperledger/aries-cloudagent-python:py3.12-1.0.0

RUN mkdir acapy_did_web && touch acapy_did_web/__init__.py
ADD pyproject.toml README.md pdm.lock ./
RUN pip install -e .

ADD acapy_did_web/ acapy_did_web/
