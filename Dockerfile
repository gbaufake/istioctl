from alpine
ARG ISTIOCTL_VERSION
RUN apk add --no-cache curl
RUN \
  curl -fsSLo istio.tar.gz https://github.com/istio/istio/releases/download/$ISTIOCTL_VERSION/istio-$ISTIOCTL_VERSION-linux.tar.gz \
  && tar -xzf istio.tar.gz \
  && mv istio-$ISTIOCTL_VERSION istio \
  && rm istio.tar.gz
ENTRYPOINT ["/istio/bin/istioctl"]

