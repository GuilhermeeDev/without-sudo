#!/bin/bash

# Repositório contendo dotfiles de customização
git clone https://github.com/daniruiz/dotfiles.git 

cat > cleaner.sh << EOF
echo "Apagando pastas inuteis"
rm -rf ~/Downloads ~/Modelos ~/Imagens ~/Músicas ~/Vídeos ~/Público
rm -rf 'Área de trabalho'

EOF

cat > install-homebrew.sh << EOF
#!/bin/bash
mkdir -p homebrew && curl -L https://github.com/Homebrew/brew/tarball/main | tar xz --strip-components 1 -C homebrew
mkdir -p ~/linuxbrew ~/linuxbrew/.linuxbrew ~/linuxbrew/.linuxbrew/Cellar
eval "$(homebrew/bin/brew shellenv)" && brew update --force --quiet && chmod -R go-w "$(brew --prefix)/share/zsh"

echo 'eval "$(homebrew/bin/brew shellenv)"' >> ~/.bashrc
EOF

cat > brew-utils-packages.sh << EOF
#!/bin/bash
brew install golang asdf fzf

# Adicionando PATH do asdf
echo 'export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' >> ~/.bashrc

EOF
