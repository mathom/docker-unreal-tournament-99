from i386/ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install -y bzip2 curl

RUN useradd -ms /bin/bash ut99server

RUN chown ut99server /var/tmp
RUN chown ut99server /opt
USER ut99server

RUN curl http://ut-files.com/Entire_Server_Download/ut-server-436.tar.gz | tar xz -C /opt && \
    curl http://www.ut-files.com/Patches/utpgpatch451.tar.bz2 | tar xjp -C /opt/ut-server
ADD UnrealTournament.ini /opt/ut-server/System/UnrealTournament.ini

RUN chmod +x /opt/ut-server/ucc

EXPOSE 7777-7781
EXPOSE 27900

CMD ./opt/ut-server/ucc server -nohomedir
