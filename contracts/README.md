# <h1 align="center"> ![Brahma Console](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/docs/images/banner.png) </h1>

![Github Actions Status](https://github.com/brahma-fi/console-core-v2/actions/workflows/ci.yml/badge.svg)

## Introduction

This repository contains the core smart contracts for Brahma Console. The repository uses foundry as development environment for compilation, testing and deployment tasks.

## Getting Started

Clone this repository including dependencies using:

```sh
git clone --recurse-submodules https://github.com/brahma-fi/console-core-v2
```

Run either commands to install JS dependencies used to create new deployments

```sh
yarn
```

OR

```sh
npm i
```

## Know More

## Building and Running

```sh
forge build
```

## Structure

[src](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/src): contains all the source code of contracts used for console. <br>
[docs](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/docs): contains all the documentation related architecture flow of contracts. <br>
[test](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/test): contains unit and integration tests<br>
[script](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/script): contains deployment scripts<br>
[offchain](https://github.com/code-423n4/2023-10-brahma/blob/main/contracts/offchain): contains latest deployment records <br>

## Running Tests and Coverage Reports

Make sure you have lcov / genhtml installed for coverage reports in HTML

Alternatively you can skip the HTML gen command and use `lcov.info` file with any lcov parser

```sh
cp .env.example .env
make test_all
make coverage
```

## Building Slither Security Report

Make sure slither and solc v0.8.19 is installed and available in current execution environment

```sh
make slither
```

A `slither.md` file should be created in the project root folder

## Development and Contribution

Feel free to submit a PR or connect with devs at [Discord](https://discord.com/invite/brahma)

This project uses [Foundry](https://getfoundry.sh). See the [book](https://book.getfoundry.sh/getting-started/installation.html) for instructions on how to install and use Foundry.
