# 5G_OAI-Free5GC
Test with OAI RAN and Free5GC core

## Project Description

In this repository, we developed an environment for simulating UE and ENB using l2NFAPI simulator from Open Air interface connected into 5g core from free5gcore. This work is on-going.

For more information:
* [free5gc](https://www.free5gc.org/)
* [Open Air Interface](https://www.openairinterface.org/)

## Dependencies

* [Docker](https://docs.docker.com/install/)
* [Docker Compose](https://docs.docker.com/compose/install/)

## Run a scenario

### Download Images

Firstly download all images running the script download-images.sh:

```sh
bash download-images.sh
```

### Core

First, start the Free5GC core:

Open the core folder and:

1. Start the core services: `docker-compose up -d`
2. Go to the webapp (localhost:3000) and register the UE device.

To access the webapp:

* User: admin
* Password: 1423

Register the UE:

* IMSI: 208930000000001
* Subscriber Key: 8baf473f2f8fd09487cccbd7097c6862
* Operator Key: e734f8734007d6c5ce7a0508809e7e9c

### RAN

In the ran folder:

1. Start the scenario: `docker-compose up -d`
2. Access the UE pod and make sure the `oaitun_ue1` tunnel is configure when running `ifconfig`.

### Enviroment Test

1. Access the UE container:
```sh
docker exec -it ran_ru_nfapi_1 bash
```

2. Ping from nterface oaitun_ue1 from inside container:
```sh
 ping -I oaitun_uem1 1.1.1.1
 ```




