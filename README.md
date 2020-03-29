# Gophster docker 🐬
---
### Enviroment

You should have ssh key added to your github. 🔑

---
## Installation

#### Linux 🐧

-   `git clone git@github.com:Gophster/gophster-docker.git`
-   `cd gophster-coker`
-   `make install`

### Windows 🏁

-   Install git bash https://www.techoism.com/how-to-install-git-bash-on-windows/
-   Download port for `make` https://sourceforge.net/projects/ezwinports/files/make-4.3-without-guile-w32-bin.zip/download
-   Extract zip
-   Copy the contents to `C:\Program Files\Git\mingw64\` **merging the folders, but do NOT overwrite/replace any exisiting files.**
-   Open git bash
-   `git clone git@github.com:Gophster/gophster-docker.git`
-   `cd gophster-coker`
-   `make install-win`

---

### Commands 📖

  - `make up` - Start containers
  - `make stop` - Stop cotnainers
  - `make prune` - Remove cotnainers
  - `make ps`  - View running containers
  - `make logs` - See logs
  - `make clone` - Clones API and Frontend into services
  - `make bash-api` - Enter inside api container **(linux)**
  - `make bash-api-win` - Enter inside api container **(windows)**
  - `make bash-frontend` - Enter inside forntend container **(linux)**
  - `make bash-frontend-win` - Enter inside forntend container **(windows)**

---

### Endpoints

#### API="http://api.gophster.localhost"
#### FRONTEND="http://frontend.gophster.localhost"