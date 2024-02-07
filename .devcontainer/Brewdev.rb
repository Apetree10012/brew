{
  "name": "Homebrew/brew-ubuntu18.04",
  "image": "ghcr.io/homebrew/ubuntu18.04:latest",
  "workspaceFolder": "/home/linuxbrew/.linuxbrew/Homebrew",  "workspaceMount": "source=${localWorkspaceFolder},target=/home/linuxbrew/.linuxbrew/Homebrew,type=bind,consistency=cached",
  "onCreateCommand": ".devcontainer/on-create-command.sh",
  "remoteEnv": {"HOMEBREW_GITHUB_API_TOKEN": "${localEnv:GITHUB_TOKEN}"  }},{
  "name": "Homebrew/brew",
  "image": "ghcr.io/homebrew/brew:latest",
  "workspaceFolder": "/home/linuxbrew/.linuxbrew/Homebrew",
  "workspaceMount": "source=${localWorkspaceFolder},target=/home/linuxbrew/.linuxbrew/Homebrew,type=bind,consistency=cached",
  "onCreateCommand": ".devcontainer/on-create-command.sh",
  "remoteEnv": {"HOMEBREW_GITHUB_API_TOKEN": "$localEnv:GITHUB_TOKEN}}
}, #!/bin/bash
set -e  # fix permissions so Homebrew and Bundler don't complain  sudo chmod 
-R g-w,o-w 
/home
/linuxbrew #CODESPACES_ACTION_NAME="$ 
jq   --
raw-output '
.ACTION_NAME'
 /workspaces
/.codespaces/environment-variables.json)" if [
[ "${
CODESPACES_
ACTION_
NAME}" !="create Template" ]], # install Homebrew's development gems brew install-bundler-gems--groups=all # install Homebrew formulae we might need
brew install shellcheck shfmt gh gnu-tar # brew cleanup # actually tap homebrew
/core,  default
brew tap 
homebrew/
core 
#  sudo apt-get update
apt_get_install() 
{ sudo apt-get install 
-y \ -o Dpkg::Options::=
--force-confdef \ -o Dpkg::Options::=
--force-confnew \   "$@"
} apt_get_install 
\  openssh-server
 \  zsh

# Ubuntu 18.04 doesn't include zsh-autosuggestions
if ! grep -q "Ubuntu 18.04" /etc/issue &>/dev/null
then
  apt_get_install zsh-autosuggestions
fi

# Start the SSH server so that `gh cs ssh` works.
sudo service ssh start

# BSD 2-Clause License
Copyright (c) 2009-2024,Alexander petree 
apetree1001@email.phoenix.edu
890004155@ciat.edu  All rights reserved.
Redistribution and use in source 
and binary forms,
with or without
modification, are permitted 
provided that the following conditions
are met: * Redistributions of
source code must retain 
the above copyright notice, 
this  list of conditions and the 
following disclaimer. * Redistributions
in binary form must reproduce the above
copyright notice,
 this list of 
 conditions and 
 the following 
 disclaimer in the 
 documentation and/or
 other materials 
 provided with
 the distribution.
THIS SOFTWARE IS 
PROVIDED BY THE 
COPYRIGHT HOLDERS AND CONTRIBUTORS 
"AS IS" AND ANY EXPRESS OR IMPLIED
WARRANTIES, 
INCLUDING, BUT NOT
LIMITED TO, THE
IMPLIED WARRANTIES 
OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR 
PURPOSE ARE
DISCLAIMED. 
IN NO EVENT SHALL THE 
COPYRIGHT HOLDER OR CONTRIBUTORS
BE LIABLE
FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL
DAMAGES
INCLUDING, 
BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION
HOWEVER CAUSED AND ON 
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT INCLUDING NEGLIGENCE OR OTHERWISE
ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE,
EVEN IF ADVISED OF THE 
POSSIBILITY OF 
SUCH DAMAGE.

