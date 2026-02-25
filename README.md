# Radix dApp Context for AI Agents

Curated deep-reference docs designed for AI coding agents (Claude, Cursor, etc.) to understand how to build dApps and Scrypto components on the Radix network.

19 context files covering **Effect.js**, **Radix DLT / Scrypto**, **TanStack Router**, and **React 19**.

## Usage

Point your AI agent at the `context/` directory when working on Radix projects. For example, in Claude Code add to your `CLAUDE.md`:

```
Read the context files in /path/to/context/context/ for Radix, Effect, and TanStack reference.
```

## Setup

Clone companion source repos (shallow, into `.repos/`):

```bash
./setup.sh
```

This clones 6 repositories:

| Repo | Description |
|------|-------------|
| `consultation_v2` | Radix governance dApp (reference implementation) |
| `radix-dapp-toolkit` | Official TypeScript SDK for Radix Wallet integration |
| `radix-docs` | Radix developer documentation |
| `radix-gateway-api-rust` | Rust Gateway/Core API client (`radix-client` crate) |
| `radixdlt-scrypto` | Scrypto smart contract language + engine |
| `tanstack-router` | TanStack Router source |

## Context Files

### Effect.js (8 docs)

| File | Description |
|------|-------------|
| `effect-Context.md` | Dependency injection via typed tags and `Context<R>` |
| `effect-Layer.md` | Composable, memoized service dependency graphs |
| `effect-Pipe.md` | Standalone `pipe` vs `.pipe()` method patterns |
| `effect-Platform.md` | `@effect/platform` — HTTP, filesystem, terminal, workers |
| `effect-Queue.md` | Fiber-safe async bounded queues (backpressure, dropping, sliding) |
| `effect-Rpc.md` | `@effect/rpc` — type-safe transport-agnostic RPC framework |
| `effect-Schema.md` | Runtime validation and transformation with full type inference |
| `effect-atom.md` | Reactive state management for Effect.js + React |

### Radix DLT / Scrypto (9 docs)

| File | Description |
|------|-------------|
| `radix-AccessRule.md` | Access control system — roles, rules, SBOR encoding, authorization |
| `radix-Account.md` | Account native blueprint — 30 methods, deposit rules, owner badges |
| `radix-Gateway.md` | Effect wrapper around the Radix Gateway API |
| `radix-GatewayRustSdk.md` | `radix-client` Rust crate — typed async Gateway/Core API client |
| `radix-Sbor.md` | SBOR binary serialization format used throughout Radix |
| `radix-SubIntents.md` | Subintents / pre-authorizations for multisig and governance |
| `radix-TransactionManifest.md` | Transaction manifest instructions, ManifestBuilder, compiler pipeline |
| `radix-radix-dapp-toolkit.md` | `@radixdlt/radix-dapp-toolkit` — wallet connection, signing, transport |
| `radix-transactions.md` | `radix-transactions` Rust crate — building, signing, validating transactions |

### React / TanStack (2 docs)

| File | Description |
|------|-------------|
| `tanstack-Router.md` | TanStack Router — type-safe routing, SSR, file-based routes, search params |
| `tanstackStart-ConsultationDapp.md` | Consultation dApp architecture — TanStack Start + Radix governance |

## Tech Stack Covered

- **Effect.js** — functional TypeScript: services, layers, schemas, RPC, queues, state
- **Radix DLT** — transaction manifests, access rules, accounts, Gateway API, SBOR
- **Scrypto** — Radix smart contract language and engine internals
- **TanStack Router / Start** — type-safe routing and full-stack SSR
- **React 19** — UI layer for the Consultation reference dApp
