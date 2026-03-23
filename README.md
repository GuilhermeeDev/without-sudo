# Sem sudo!
O **without-sudo** é um projeto que torna possível instalar, gerenciar e usar dezenas de software no Linux **sem precisar de sudo**, mesmo em ambientes restritos (servidores compartilhados, máquinas corporativas, contas de usuário limitadas, etc.).

A ideia central é simples, fornecer alternativas de uso mais "liberal" do linux para ambientes linux privativos. Com recursos como:
- Fornecer um gerenciador de pacotes alternativo que roda 100% no diretório do usuário (sem tocar em `/usr`, `/etc` ou qualquer lugar que exija root)  
- Incluir **binários pré-compilados** diretamente no repositório para instalação rápida e sem compilação demorada  

## Dependências
Por ser um projeto localizado em um repositório .git a unica dependência atual do **without-sudo** é o `git` (possivel de burlar se levar o without-sudo no seu pendrive ou em um Google Drive / nuvem qualquer).

## Por que isso é útil?

- Ambientes corporativos ou servidores onde você **não tem acesso a privilégios como sudo**  
- Contas de usuário restritas (ex.: Computadores Institucionais, HPC clusters, máquinas de amigos, VPS baratos)   
- Evitar a necessidade de pedir permissão ao administrador toda vez


## Recursos principais

- **Instalação sem root** — tudo fica dentro de `~/.without-sudo` (ou pasta que você escolher)  
- **Binários pré-compilados** — várias ferramentas comuns já vêm compiladas e prontas para uso (sem esperar horas de build)  
- **Gerenciador de pacotes integrado** — inspirado em modelos como Nix/Guix, mas mais leve e focado em portabilidade  
- **Isolamento opcional** — suporte a namespaces/proot para evitar conflitos com o sistema  
- **Atualizações fáceis** — `wos update` (ou similar) baixa as versões mais recentes  
- **Extensível** — fácil adicionar novos pacotes via receitas simples

## Instalação

```bash
git clone https://github.com/SEU_USUARIO/without-sudo.git ~/.without-sudo
cd ~/.without-sudo
```
```
./install.sh
```