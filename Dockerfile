FROM jonathonf/manjaro:latest

RUN pacman -Syy --noconfirm manjaro-tools

WORKDIR /tmp

ENTRYPOINT [ "buildiso" ]
CMD [ "-p", "gnome" ]
