# Context Reference Index

Deep-analysis reference docs for AI agents. Each doc is a self-contained technical reference built from source-code analysis of vendored repos.

---

## Effect

| Doc | Description |
|-----|-------------|
| [effect-Context](./context/effect-Context.md) | Dependency injection via `Context.Tag`, typed service containers, and the `R` (Requirements) type parameter |
| [effect-Layer](./context/effect-Layer.md) | Composable, memoized service blueprints — constructors, composition algebra (`provide`/`merge`/`provideMerge`), MemoMap, scope hierarchy |
| [effect-Pipe](./context/effect-Pipe.md) | Standalone `pipe()` vs method `.pipe()`, pipeable interface, `flow`, and when to use `Effect.gen` instead |
| [effect-Platform](./context/effect-Platform.md) | `@effect/platform` — unified abstractions for HTTP client/server, filesystem, terminal, workers, sockets, and key-value store |
| [effect-Queue](./context/effect-Queue.md) | Fiber-safe async bounded queues — backpressure, dropping, sliding strategies, producer/consumer patterns, shutdown semantics |
| [effect-Rpc](./context/effect-Rpc.md) | `@effect/rpc` — type-safe, transport-agnostic RPC: procedure definitions with schemas, groups, middleware, streaming, and multi-transport serving |
| [effect-Schema](./context/effect-Schema.md) | Runtime validation and transformation with full type inference — built-in schemas, combinators, encoding/decoding, Effect integration |
| [effect-atom](./context/effect-atom.md) | `@effect-atom/atom` — reactive state management bridging Effect and React: atoms, derived computations, dependency tracking, `Result<A, E>` |

## Radix

| Doc | Description |
|-----|-------------|
| [radix-AccessRule](./context/radix-AccessRule.md) | Access control type hierarchy — `AllowAll`/`DenyAll`/`Protected`, composite requirements, role assignment, SBOR encoding |
| [radix-Account](./context/radix-Account.md) | Account native blueprint — state structure, 30 methods, deposit validation, owner badge system, virtual account derivation |
| [radix-Gateway](./context/radix-Gateway.md) | `@radix-effects/gateway` — Effect wrapper around Gateway API with tagged errors, 429 retry, exhaustive pagination, chunked batching |
| [radix-GatewayRustSdk](./context/radix-GatewayRustSdk.md) | `radix-client` Rust crate — typed async/blocking HTTP clients for Gateway and Core APIs, dual feature flags |
| [radix-Sbor](./context/radix-Sbor.md) | SBOR (Scrypto Binary Object Representation) — wire format, value kinds, schema system, derive macros, depth-limited traversal |
| [radix-SubIntents](./context/radix-SubIntents.md) | Subintents / pre-authorizations — composable partial transactions, `YIELD_TO_CHILD`/`YIELD_TO_PARENT`, multisig and governance patterns |
| [radix-TransactionManifest](./context/radix-TransactionManifest.md) | Transaction manifest system — V1/V2 instruction sets, ManifestBuilder, compiler pipeline, static validation, instruction effects |
| [radix-radix-dapp-toolkit](./context/radix-radix-dapp-toolkit.md) | `@radixdlt/radix-dapp-toolkit` — wallet connection, transaction signing, dual transport (Extension + Relay), RxJS reactive state |
| [radix-transactions](./context/radix-transactions.md) | `radix-transactions` Rust crate — building, signing, validating, and serializing transactions (V1/V2 model, Signer trait) |

## TanStack / React

| Doc | Description |
|-----|-------------|
| [tanstack-Router](./context/tanstack-Router.md) | TanStack Router — type-safe client-side routing with SSR, file-based routing, search param validation, data loading, code splitting |
| [tanstackStart-ConsultationDapp](./context/tanstackStart-ConsultationDapp.md) | Consultation dApp architecture — React 19 + TanStack Start + Effect Atoms + Radix, governance voting UI, full tech stack reference |
