### Build Docker
```
docker build -t ubuntu-aws .
```

### RUN Nextflow
```
nextflow run test-aws.nf -profile awsbatch -c aws.config -w s3://AWS-Bucket/nextflow-test
```
