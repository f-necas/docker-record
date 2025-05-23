# docker-record

Edit index/records.json
Lauch docker comp
Go to http://localhost:8080/geonetwork/srv/eng/catalog.search#/home
User admin/admin

## To get records

- While connected in admin, go to Admin Console > Harvesting > Harvest from > OGC CSW 2.0.2
- Fill: 
  - Node name : Test
  - Service Url: https://<distant-gn-instance>/geonetwork/srv/eng/csw?SERVICE=CSW&VERSION=2.0.2&REQUEST=GetCapabilities
  - Typical Output Schema: ISO 19115-3
- Save
- Run harvester
- Wait...

When everything is up and running, you can test the API with curl commands.
For record http://localhost:8080/geonetwork/srv/eng/catalog.search#/metadata/ed34db28-5dd4-480f-bf29-dc08f0086131
```bash
curl 'http://localhost:8080/geonetwork/srv/api/search/records/_search?bucket=bucket' \
  -H 'accept: application/json' \
  -H 'content-type: application/json' \
  --data-raw '{"query":{"ids":{"values":["ed34db28-5dd4-480f-bf29-dc08f0086131"]}}}'
```

To update records.json:
- run `docker compose up init-records`
- In Geonetwork interface (while being connected as admin), Go to Admin COnsole > Tools > Delete index and reindex