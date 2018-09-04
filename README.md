# OpenLMIS HAPI FHIR

This repository adopts one of the example hapi fhir implementations to run as a microservice in OpenLMIS v3. 

## How to use this locally? 

Clone this repository and run `./build.sh`
This will create an openlmis-hapi docker image on your local machine. 
Once this image is created, add the following lines in your openlmis docker-compose.yml file. 

```yaml

hapifhir:
    image: openlmis-hapi
    depends_on: [consul]
    env_file: settings.env
    volumes:
      - 'service-config:/config'
```

With that additional docker compose entry, you can run openlmis v3. After openlmis is run, you would find the FHIR APIs in the following base URL. 

`http://localhost/hapifhir/baseDstu3/Location`
