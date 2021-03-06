#!/bin/bash

#Download Free5GC core images:

docker pull zanattabruno/mongo:4.4.8
docker pull zanattabruno/core_webapp
docker pull zanattabruno/core_upf
docker pull zanattabruno/core_smf
docker pull zanattabruno/core_hss
docker pull zanattabruno/core_amf
docker pull zanattabruno/core_pcrf

#Download OAI RAN images:

docker pull zanattabruno/cudurunfapi_ru_nfapi
docker pull zanattabruno/cudurunfapi_du_nfapi
docker pull zanattabruno/cudurunfapi_cu_nfapi
