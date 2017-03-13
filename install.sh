# /bin/bash


# Install X Code Develoeper tools. This includes git.
xcode-select --install

# Install pip (Python's package manager). Installing to local user only to bypass System Integrity Protection.
easy_install --user pip

# Update PATH for this session only.
export PATH="$HOME/Library/Python/2.7/bin:$PATH"

# Install ansible.
pip install --user --upgrade ansible

# Clone MacBuild Repo
git clone https://github.com/aaranmcguire/MacBuild

# Run ansuble (-K option requests sudo password).
ansible-playbook ./MacBuild/main.yml -K