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

Firstly download all imgaes ruuning script download-images.sh:

```sh
bash download-images.sh
```





<!---
### Core

First, start the Free5GC core:

Open the core folder and:

1. Start the core services: `docker-compose docker-compose up -d`
3. Go to the webapp (localhost:3000) and register the UE device.

To access the webapp:

* User: admin
* Password: 1423

Register the UE:

* IMSI: 208930000000001
* Subscriber Key: 8baf473f2f8fd09487cccbd7097c6862
* Operator Key: e734f8734007d6c5ce7a0508809e7e9c

### RAN

In the ran folder:

1. First build the base images by running the `build_all.sh` script.
2. Enter the scenario folder you wish to execute. e.g.: `cu-du-ru-nfapi`
3. Start the scenario: `docker-compose build && docker-compose up -d`
4. Access the UE pod and make sure the `oaitun_ue1` tunnel is configure when running `ifconfig`.

__PS__: Sometimes the tunnel `oaitun_ue1` may not be configured, try stopping the ran containers with `docker-compose stop` and starting them again docker-compose up -d`. If the issue isn't solved, check the AMF logs.

__PS__: Current tested scenarios are: `cu-du-ru-nfapi` and `nfapi`.


## Configurations

conf2uedata: once it is executed it generates a couple ue files, that's why we use `-o` option pointing to the build
folder. Once the `uesofmodem` is executed it looks at those generated files in the same folder it is located.

RU in the RCC(DU) file: says to the RCC(DU) where the RRU is being executed.

-->

