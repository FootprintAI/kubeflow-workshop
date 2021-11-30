#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import base64
import json
import requests

authservice_session="MTYzODI0ODgzOHxOd3dBTkVKRVRWWlJSRVUzU2tNelVsbE1ORlpFV2tGRFNFTkJVRGRHVmtKUVJGUklSek5LVHpVeVZFdExORlJPVUZNeVVVVlNSMUU9fAehXfQvWeTAZGZpZu2eTVIJZAQb2nJR556dIHjIoEB0"
server_address="http://127.0.0.1:8090"

with open("../pipelines/testdata.jpg", "rb") as f:
    image_content = f.read()
    image_64_encode = base64.encodebytes(image_content).decode('utf-8')
headers = {"Cookie": "authservice_session={}".format(authservice_session),
          "Host": "tensorflow-sample.kubeflow-user-example-com.example.com"}
payload = {"instances":[{"image_bytes": {"b64": image_64_encode}, "key": "1"}]}
resp = requests.post("{}/v1/models/tensorflow-sample:predict".format(server_address), headers=headers, data=json.dumps(payload))
print(resp.text)
