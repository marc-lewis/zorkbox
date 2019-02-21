# Docker + frotz + zork

A basic docker app to play zork on ubuntu using [frotz](https://davidgriffith.gitlab.io/frotz/)

If you want to play zork:

- `docker-compose up -d`
- `docker exec -it zorkbox bash`
- `.run_zork.sh`

# Issues
- Zork saves into wherever frotz is called from. When the container is exec'd into the dir will be local_save, and zork is run from there. It's not ideal.
