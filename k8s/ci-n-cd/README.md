# Continuous Integration & Delivery

## Q8S & CRDs

The q8s environment supports a series of custom CRD (Custom Resource Definition) that provides tools that can be used for CI & CD.

### BuildJob

The BuildJob CRD allows us to easily build docker images from a specific git repository and branch

### ResourceTemplate

The ResourceTemplate CRD allows us to define a template of resources that can be instantiated with variables.

The build-klaro-resource-template.yaml file defines the template of a BuildJob that can be intantiated to build
the entire klaro project, build the docker-images and push them to the private registry

### Webhooks

The Webhook CRD allows us to create an endpoint for GOGS notifications that instantiates the BuildJob template.

After creating the resource (`kubectl apply -f gogs-webhook.yaml`) use the describe command to find the URL to use:

Run `kubectl describe -f gogs-webhook.yaml` and look for the field Status.UID.

The URL to be configured in Gogs is `https://api.q8s.quadrabee.com/webhooks/<UID>`

### SSH Key

In order for the job to be able to pull the code from GOGS, the deploy key has to be created as a Secret.

`kubectl create secret generic klaro-deploy-key --from-file /path/to/id_rsa -n enspirit`
