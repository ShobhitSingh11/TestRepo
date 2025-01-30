import base64
import os

for name, value in os.environ.items():
    base64_encoded = base64.b64encode(value.encode())
    print(f"{name}={base64_encoded}")
