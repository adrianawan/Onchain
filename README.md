# Web3 Smart Contracts

![Solidity](https://img.shields.io/badge/Solidity-0.8.28-blue)

![Hardhat](https://img.shields.io/badge/Hardhat-3-yellow)

![License](https://img.shields.io/badge/License-MIT-green)

![CI](https://github.com/adrianawan/Onchain/actions/workflows/solidity.yml/badge.svg)

A collection of Ethereum smart contracts built with **Solidity**, **Hardhat 3**, **OpenZeppelin**, and **Hardhat Ignition**.

This repository contains multiple smart contract examples demonstrating common Web3 development patterns, including counters, ERC-20 tokens, and decentralized voting.

---

## Features

### Counter Contract

- Increment counter
- Increment by custom value
- Decrement counter
- Reset counter
- Owner access control (OpenZeppelin Ownable)

### ERC-20 Token

- ERC20 Standard
- Initial Supply
- Owner-only mint function
- OpenZeppelin ERC20

### Voting Contract

- Add candidates
- Start election
- End election
- One vote per wallet
- Prevent double voting
- Determine election winner

---

## Tech Stack

| Technology | Version |
|------------|---------|
| Solidity | 0.8.28 |
| Hardhat | 3 |
| TypeScript | Latest |
| OpenZeppelin | 5.x |
| Viem | Latest |
| Hardhat Ignition | ✓ |
| GitHub Actions | ✓ |

---

## Project Structure

```text
contracts/
├── Counter.sol
├── MyToken.sol
└── Voting.sol

ignition/
└── modules/
    ├── Counter.ts
    ├── MyToken.ts
    └── Voting.ts

test/
├── Counter.ts
├── Counter.t.sol
└── Voting.t.sol
```

---

## Smart Contracts

| Contract | Network | Address |
|----------|---------|----------|
| Counter | Sepolia | `0xb753818E252695376286d5921322ae5101191929` |
| Adrian Token (ADR) | Sepolia | `0xbFDb434420ADFBF0Ca46b7a41B2CCF16AF092B22` |
| Voting | Sepolia | Deploy after completion |

---

## Getting Started

Clone the repository

```bash
git clone https://github.com/adrianawan/Onchain.git
cd Onchain
```

Install dependencies

```bash
npm install
```

Compile contracts

```bash
npx hardhat compile
```

Run tests

```bash
npx hardhat test
```

Deploy Counter

```bash
npx hardhat ignition deploy ./ignition/modules/Counter.ts --network sepolia
```

Deploy ERC20 Token

```bash
npx hardhat ignition deploy ./ignition/modules/MyToken.ts --network sepolia
```

Deploy Voting

```bash
npx hardhat ignition deploy ./ignition/modules/Voting.ts --network sepolia
```

---

## Test Results

✔ Solidity Tests

- Counter
- Voting

✔ Node.js Tests

- Counter (Viem)

✔ GitHub Actions CI

---

## Development Roadmap

- [x] Counter Contract
- [x] ERC20 Token
- [x] Voting Contract
- [x] Unit Testing
- [x] GitHub Actions
- [x] Sepolia Deployment
- [ ] Contract Verification on Etherscan
- [ ] Frontend DApp
- [ ] ERC721 NFT Collection

---

## License

MIT