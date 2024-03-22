FROM steamcmd/steamcmd

COPY --chown=steam:steam entrypoint.sh /home/steam/entrypoint.sh
RUN chmod +x /home/steam/entrypoint.sh

RUN apt-get update && apt-get install -y libcurl4-gnutls-dev:i386

ENTRYPOINT ["/home/steam/entrypoint.sh"]
