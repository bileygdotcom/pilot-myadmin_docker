ARG BASE_IMAGE="bileyg/packhaus"
ARG TAG="0.5"
FROM ${BASE_IMAGE}:${TAG}
LABEL project="Pilot-myAdmin"\
      version="0.5" \
      mantainer="bileyg"\
      company="Ascon Complex"
COPY ["build","/root/.wine/drive_c/Program Files/ASCON/Pilot-myAdmin"]
COPY ["plic","/home/plic"]
COPY ["Fonts", "/root/.wine/drive_c/Windows/Fonts"]
ENTRYPOINT ["wine","/root/.wine/drive_c/Program Files/ASCON/Pilot-myAdmin/Ascon.Pilot.MyAdmin.exe"]
