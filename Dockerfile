FROM steamcmd/steamcmd:latest

COPY --chown=steam:steam entrypoint.sh /home/steam/entrypoint.sh
RUN chmod +x /home/steam/entrypoint.sh

WORKDIR /home/steam

ENTRYPOINT ["/home/steam/entrypoint.sh"]
