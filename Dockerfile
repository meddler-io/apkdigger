FROM openjdk
LABEL name="apkdigger"
LABEL author="Prakhar Agnihotri"
LABEL email="rounak316@gmail.com"
LABEL repositry="https://github.com/meddler-xyz/apkdigger"


COPY ./scripts/decompile /usr/bin/decompile
COPY ./scripts/recompile /usr/bin/recompile
COPY ./scripts/purge /usr/bin/purge

RUN chmod +x /usr/bin/purge
RUN chmod +x /usr/bin/decompile
RUN chmod +x /usr/bin/recompile

WORKDIR /app
ENTRYPOINT [ "/bin/sh" ]