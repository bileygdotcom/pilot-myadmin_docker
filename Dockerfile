ARG BASE_IMAGE="bileyg/packhaus"
ARG TAG="0.8"
#ENV VERSION="${VERSION}"
FROM ${BASE_IMAGE}:${TAG}
LABEL project="Pilot-myAdmin"\
      version="22.35.0" \
      mantainer="bileyg"\
      company="Ascon Complex"
COPY ["build","/root/.wine/drive_c/Program Files/ASCON/Pilot-myAdmin"]
COPY ["plic","/home/plic"]
COPY ["Fonts", "/root/.wine/drive_c/Windows/Fonts"]
ENTRYPOINT ["wine","/root/.wine/drive_c/Program Files/ASCON/Pilot-myAdmin/Ascon.Pilot.MyAdmin.exe"]
