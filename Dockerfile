FROM grafana/grafana:5.4.2
USER root
RUN apt-get update -qq
 && apt-get dist-upgrade -qq -y
 && apt-get install -qq -y jq 
 && apt-get clean -qq -y
 && apt-get autoremove -qq -y
RUN chown -R grafana:grafana /etc/grafana
USER grafana
