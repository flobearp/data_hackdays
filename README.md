# data_hackdays

Description

## Setup

### Cloning Repository in ML Studio

```bash
git config --global user.name 'your username here'
```

```bash
git config --global user.email 'your email here'
```


Generate an ssh key:
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
Save the key in your home directory.


Use the following command to see your public ssh key:
```bash
cat ~/.ssh/id_ed25519.pub
```

In your github page, go to settings > SSH and GPG Keys Here add your ssh key that you copied to the clipboad in the step prior. Type yes (the whole word) and press enter and you are done

Test you ssh connection by using this command: 
```bash
ssh -T git@github.com
```

### Conda Environment Setup

To setup the conda environment, run the following command:

```bash
$ create_conda_env.sh
```

Use the following command to activate the created conda environment:

```bash
$ conda activate vision
```