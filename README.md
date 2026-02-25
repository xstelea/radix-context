# Radix dApp Context for AI Agents

Curated deep-reference docs designed for AI coding agents (Claude, Cursor, etc.) to understand how to build dApps and Scrypto components on the Radix network.

20 context files covering **Effect**, **Radix DLT / Scrypto**, **TanStack Router**, and **React 19**.

## Usage

```bash
curl -fsSL https://raw.githubusercontent.com/xstelea/radix-context/main/install.sh | bash
```

Or with an explicit target directory:

```bash
curl -fsSL https://raw.githubusercontent.com/xstelea/radix-context/main/install.sh | bash -s -- <target>
```

If you have the repo cloned locally, run `./install.sh <target>` instead. Or copy the `context/` directory and [`AGENTS.md`](./AGENTS.md) manually. `AGENTS.md` follows the [agents.md standard](https://agents.md/) — compatible agents automatically discover it and load relevant context files as needed.

### Context files

#### Effect (8 docs)

| Doc | Description |
|-----|-------------|
| [effect-Context](./context/effect-Context.md) | Dependency injection via `Context.Tag`, typed service containers, and the `R` type parameter |
| [effect-Layer](./context/effect-Layer.md) | Composable, memoized service blueprints — constructors, composition algebra, MemoMap, scope hierarchy |
| [effect-Pipe](./context/effect-Pipe.md) | Standalone `pipe()` vs method `.pipe()`, pipeable interface, `flow`, and `Effect.gen` |
| [effect-Platform](./context/effect-Platform.md) | `@effect/platform` — HTTP client/server, filesystem, terminal, workers, sockets, key-value store |
| [effect-Queue](./context/effect-Queue.md) | Fiber-safe async bounded queues — backpressure, dropping, sliding strategies, shutdown semantics |
| [effect-Rpc](./context/effect-Rpc.md) | `@effect/rpc` — type-safe, transport-agnostic RPC: procedures, groups, middleware, streaming |
| [effect-Schema](./context/effect-Schema.md) | Runtime validation and transformation with full type inference — schemas, combinators, encoding/decoding |
| [effect-atom](./context/effect-atom.md) | `@effect-atom/atom` — reactive state management bridging Effect and React |

#### Radix DLT / Scrypto (10 docs)

| Doc | Description |
|-----|-------------|
| [radix-AccessRule](./context/radix-AccessRule.md) | Access control — `AllowAll`/`DenyAll`/`Protected`, composite requirements, role assignment, SBOR encoding |
| [radix-Account](./context/radix-Account.md) | Account native blueprint — state structure, 30 methods, deposit rules, owner badge system |
| [radix-Gateway](./context/radix-Gateway.md) | `@radix-effects/gateway` — Effect wrapper with tagged errors, 429 retry, pagination, batching |
| [radix-GatewayRustSdk](./context/radix-GatewayRustSdk.md) | `radix-client` Rust crate — typed async/blocking HTTP clients for Gateway and Core APIs |
| [radix-ROLA](./context/radix-ROLA.md) | ROLA — challenge-response auth verifying wallet identity via on-ledger `owner_keys` |
| [radix-Sbor](./context/radix-Sbor.md) | SBOR — wire format, value kinds, schema system, derive macros, depth-limited traversal |
| [radix-SubIntents](./context/radix-SubIntents.md) | Subintents / pre-authorizations — composable partial transactions, multisig and governance |
| [radix-TransactionManifest](./context/radix-TransactionManifest.md) | Transaction manifest — V1/V2 instructions, ManifestBuilder, compiler pipeline, static validation |
| [radix-radix-dapp-toolkit](./context/radix-radix-dapp-toolkit.md) | `@radixdlt/radix-dapp-toolkit` — wallet connection, signing, dual transport, RxJS state |
| [radix-transactions](./context/radix-transactions.md) | `radix-transactions` Rust crate — building, signing, validating transactions (V1/V2, Signer trait) |

#### TanStack / React (2 docs)

| Doc | Description |
|-----|-------------|
| [tanstack-Router](./context/tanstack-Router.md) | TanStack Router — type-safe routing, SSR, file-based routes, search param validation, code splitting |
| [tanstackStart-ConsultationDapp](./context/tanstackStart-ConsultationDapp.md) | Consultation dApp architecture — React 19 + TanStack Start + Effect Atoms + Radix governance |

## Setup

Clone companion source repos (shallow, into `.repos/`):

```bash
./setup.sh
```

This clones 7 repositories:

| Repo | Description |
|------|-------------|
| `consultation_v2` | Radix governance dApp (reference implementation) |
| `radix-dapp-toolkit` | Official TypeScript SDK for Radix Wallet integration |
| `radix-docs` | Radix developer documentation |
| `radix-gateway-api-rust` | Rust Gateway/Core API client (`radix-client` crate) |
| `radixdlt-scrypto` | Scrypto smart contract language + engine |
| `effect` | Effect-TS monorepo — core runtime, schemas, platform, RPC |
| `tanstack-router` | TanStack Router source |

## Tech Stack Covered

- **Effect** — functional TypeScript: services, layers, schemas, RPC, queues, state
- **Radix DLT** — transaction manifests, access rules, accounts, Gateway API, SBOR
- **Scrypto** — Radix smart contract language and engine internals
- **TanStack Router / Start** — type-safe routing and full-stack SSR
- **React 19** — UI layer for the Consultation reference dApp
