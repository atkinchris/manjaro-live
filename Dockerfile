FROM jonathonf/manjaro:latest

RUN pacman -Syu --noconfirm --noprogressbar \
    base-devel \
    manjaro-tools \
    && pacman -Scc --noconfirm --noprogressbar

# RUN /usr/bin/useradd -m builder && \
#     echo 'builder ALL=(root) NOPASSWD:/usr/bin/pacman' > /etc/sudoers.d/makepkg

VOLUME ['/output']

ENTRYPOINT ["buildiso"]
CMD ["-p", "xfce"]
