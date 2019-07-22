FROM grafana/grafana:latest

ENV GF_PLUGIN_DIR=/var/lib/grafana-plugins
ENV GF_PATHS_PLUGINS=/var/lib/grafana-plugins

USER root

RUN mkdir -p /var/lib/grafana-plugins
RUN grafana-cli plugins upgrade-all
RUN grafana-cli plugins install briangann-gauge-panel
RUN grafana-cli plugins install btplc-trend-box-panel 
RUN grafana-cli plugins install camptocamp-prometheus-alertmanager-datasource
RUN grafana-cli plugins install citilogics-geoloop-panel 
RUN grafana-cli plugins install digiapulssi-breadcrumb-panel 
RUN grafana-cli plugins install digiapulssi-organisations-panel 
RUN grafana-cli plugins install digrich-bubblechart-panel 
RUN grafana-cli plugins install grafana-piechart-panel 
RUN grafana-cli plugins install jdbranham-diagram-panel 
RUN grafana-cli plugins install mtanda-heatmap-epoch-panel 
RUN grafana-cli plugins install mtanda-histogram-panel 
RUN grafana-cli plugins install natel-discrete-panel 
RUN grafana-cli plugins install natel-plotly-panel 
RUN grafana-cli plugins install satellogic-3d-globe-panel 
RUN grafana-cli plugins install savantly-heatmap-panel 
RUN grafana-cli plugins install udoprog-heroic-datasource 
RUN grafana-cli plugins install vertamedia-clickhouse-datasource 
RUN grafana-cli plugins install vonage-status-panel

ADD grafana.ini /usr/share/grafana/conf/defaults.ini
