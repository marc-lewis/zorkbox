# Docker + frotz + zork

A basic docker app to play zork on ubuntu using [frotz](https://davidgriffith.gitlab.io/frotz/)

If you want to play zork:

- `docker-compose up -d`
- `docker exec -it zorkbox bash`
- `.run_zork.sh`

## Zork manual

How to play zork: http://infodoc.plover.net/manuals/zork1.pdf


## Issues
Zork saves and restores into the directory from where frotz is executed. The app will start in the local_saves dir which is mounted as a volume so that saves can be pulled out of the container for portability.
