# python-docker-container

A basic python docker container (e.g. to use on GCP Compute Engine or AWS EC2).

Add the list of python packages which you wish to be installed in the container to [./requirements.txt](./requirements.txt).

You can build the container and deploy it to Google Cloud Platform as follows: 
(it can then be used by Compute Engine, Cloud Run etc.)

```bash
make build_push_container_to_google_artifact_registry \
GCP_PROJECT_ID="your google cloud project id here" \
GCP_REGION="e.g. europe-west2" \
GCP_ARTIFACT_REG_REPO_NAME="the name of the repository to save the image to on google cloud artifact registry" \
CONTAINER_NAME="choose whatever name you like for your container here"
```