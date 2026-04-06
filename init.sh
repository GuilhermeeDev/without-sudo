#!/bin/bash

# Mudando o tema do Debian para escuro
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.mate.interface gtk-theme 'Adwaita-dark'

# dotfiles de customização (extra)
git clone https://github.com/daniruiz/dotfiles.git 

cat > install-homebrew.sh << EOF
#!/bin/bash
mkdir -p homebrew && curl -L https://github.com/Homebrew/brew/tarball/main | tar xz --strip-components 1 -C homebrew
mkdir -p ~/linuxbrew ~/linuxbrew/.linuxbrew ~/linuxbrew/.linuxbrew/Cellar
eval "$(homebrew/bin/brew shellenv)" && brew update --force --quiet && chmod -R go-w "$(brew --prefix)/share/zsh"
echo 'eval "$(homebrew/bin/brew shellenv)"' >> ~/.bashrc
EOF

cat > brew-utils-packages.sh << EOF
#!/bin/bash
brew install golang asdf fzf podman

# Adicionando PATH do asdf
echo 'export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' >> ~/.bashrc
EOF
