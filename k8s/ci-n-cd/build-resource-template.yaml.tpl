apiVersion: beta.q8s.quadrabee.com/v1
kind: ResourceTemplate
metadata:
  name: build-enspirit-website
  namespace: enspirit
spec:
  apiVersion: beta.q8s.quadrabee.com/v1
  kind: BuildJob
  spec:
    gitRepo: "{{{gitRepo}}}"
    gitRef: "{{{gitRef}}}"
    gitKeyFromSecret:
      secretName: enspirit-website-deploy-key
      subPath: id_rsa
    makeTarget: push-images
    docker:
      registry: q8s.quadrabee.com
      user: deploy@enspirit.be
      password: "REPLACEMEWITHPWD"
    env:
      DOCKER_TAG: "{{dockerTag}}"
    slackNotifications:
      webhookUrl: https://hooks.slack.com/services/...
