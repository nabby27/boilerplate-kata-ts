# Kata Boilerplate TS

Template for katas in TypeScript

## Requirements

---

- make (optional)
- docker
- docker-compose

or

- node
- npm

## How does it work

---

This project is built with docker-compose and make. You can run the commands directly with npm but **it is highly recommended to use `make` with `docker-compose`** because you make sure to run it with the same version. `Make` raises the container with docker-compose, executes the task and removes the container, in this way the local machine is clean once you execute the commands.

## Example commands

---

- with make

```sh
make test
```

- with docker-compose

```sh
docker-compose run --rm boilerplate_kata_ts npm run test
```

- with npm

```sh
npm run test
```

## Make commands

---

```sh
make build # compile project to js
```

```sh
make install # install all project dependencies
make install ARGS="date-fns" # install new dependencie
make install ARGS="-D typescript" # install new dev dependencies
```

```sh
make eslint-check # run eslint check
make eslint-fix # run eslint fix
```

```sh
make test # run jest test
make test-watch # run jest test with watch all files
make test-watch-coverage # run jest test with watch all files asn see coverage
make test-coverage # run jest test coverage
make test-all # run eslint fix and jest test coverage
```
