```
docker run \
    --rm \
    --name terraforming \
    -e AWS_ACCESS_KEY_ID=***** \
    -e AWS_SECRET_ACCESS_KEY=***** \
    -e AWS_REGION=ap-northeast-1 \
    quay.io/dtan4/terraforming:latest \
    terraforming r53r > hostname.tf
```
