---
apiVersion: v1
kind: ConfigMap
metadata:
  name: enspirit-website-config-map
  namespace: enspirit
data:
  PASSENGER_APP_ENV: production
  TALKTOME_EMAIL_DELIVERY: smtp
  TALKTOME_SMTP_ADDRESS: smtp.mandrillapp.com
  # Due to google cloud's restrictions we cannot use the port 587
  # But mandrillapp supports an additional port (2525)
  TALKTOME_SMTP_PORT: "2525"
  TALKTOME_SMTP_DOMAIN: enspirit.be
  TALKTOME_SMTP_USER: "Enspirit SPRL"
  TALKTOME_SMTP_PASSWORD: "<pwd>"
