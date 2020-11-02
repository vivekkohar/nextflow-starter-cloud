### Build Docker
```
docker build -t ubuntu-aws .
```

### Run AWS nextflow
```
nextflow run test-aws.nf -profile awsbatch -c aws.config -w s3://AWS-Bucket/nextflow-test
```

### Run GCP nextflow
```
nextflow run test-gcp.nf -profile gls -c aws.config
```
