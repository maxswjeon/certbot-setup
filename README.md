# Certbot Setup with Cloudflare and external docker volume

This setup is used by [me](https://github.com/maxswjeon) in those servers
- [Home Server](https://home.codingbear.kr)
- [Yonsei Computer Club](https://ycc.club)

## How to deploy
1. Create Cloudflare API Token with those credentials
  - For all zones or specific zones
    - Zone:Read
    - DNS:Edit
  - (Recommended) Client IP Address Filtering
    - Is in SERVER_IP/32 or SERVER_IP_RANGE
2. Create folder named `cloudflare`
3. Create file named `cloudflare/credentials` with this content
  ```
  dns_cloudflare_api_token = "${CLOUDFLARE_API_TOKEN}"
  ```
4. Create a external docker volume with this command
  ```bash
  docker volume create certificates
  ```
5. Deploy with this command
  - if docker compose is installed with docker-compose-plugin  
    ```bash
    docker compose up -d
    ```
  - if docker compose is installed with docker-compose binary with curl  
    ```bash
    docker-compose up -d
    ```
## Scripts
### `issue.sh`
Issues RSA and ECC certificates for given domain and the wildcard

#### Usage
```bash
./issue.sh DOMAIN
```

### `issue_single.sh`
Issues RSA and ECC certificates for given domain only

#### Usage
```bash
./issue_single.sh DOMAIN
```
