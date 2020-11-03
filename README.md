### Build Docker
```
docker build -t ubuntu-aws .
```

### Run AWS nextflow
```
nextflow run test-aws.nf -profile awsbatch -c aws.config -w s3://AWS-Bucket/nextflow-test
```


## GCP
1. Do application default login
```
gcloud auth application-default login
```
2. Add Project Name to the config file ~/.config/gcloud/application_default_credentials.json
```
project_id": "PROJECT-ID",
```

3. Export environment variables
```
export NXF_VER="20.07.1"
export NXF_MODE=google
export NXF_DEBUG=3
export PROJECT="PROJECT-ID"
export GOOGLE_APPLICATION_CREDENTIALS=~/.config/gcloud/application_default_credentials.json
```

4. Run GCP nextflow
```
nextflow run gcp/test-gcp.nf -profile gls -c gcp/gcp.config -w gs://PROJECT_ID/test-sn
```
