# 🧩 MimIR Plugin Registry

Welcome to the **MimIR Plugin Registry**!
This repository lists third-party plugins for the **MimIR compiler infrastructure**.

Plugins are developed independently and are **not maintained as part of the MimIR core repository**.

---

## 🧰 Registered Plugins

| 🏷️ Name | 🔗 Repository | 🧠 Description | 👤 Maintainer | ✅ Version | 🗒️ Notes |
| ------- | ------------- | -------------- | ------------- | ---------- | -------- |
| `eqsat`   | https://github.com/ashiven/eqsat | This plugin integrates the [egg](https://github.com/egraphs-good/egg) and [slotted-egraphs](https://github.com/memoryleak47/slotted-egraphs) libraries into MimIR to enable optimizing programs through the process of [equality saturation](https://en.wikipedia.org/wiki/E-graph#Equality_saturation). | Jannik Novak [@ashiven](https://github.com/Ashiven) | `0.1` |          |

---

## 📋 Registry Format

Each plugin entry includes:

- 🏷️ **Name**: Plugin identifier
- 🔗 **Repository**: Source URL (git)
- 🧠 **Description**: Short explanation of what the plugin does
- 👤 **Maintainer**: Author or team
- ✅ **Version**: Last known working MimIR version (`major.minor`)
- 🗒️ **Notes**: Optional remarks (experimental, deprecated, etc.)

---

## 🔗 Plugin Compatibility

MimIR provides a plugin interface that is versioned using the MimIR release version.

Plugins declare which MimIR version they are compatible with (`major.minor`).
MimIR may refuse to load plugins built for incompatible versions.

### ⚠️ Important Notes

- MimIR `master` is under active development and may introduce breaking changes at any time.
- Plugins are expected to target **tagged MimIR releases** (e.g. `0.1`, `0.2`, ...).
- Compatibility with `master` is **not guaranteed**.
- This registry records the **last known compatible MimIR version** for each plugin.

---

## ✍️ Contributing a Plugin

Want your plugin listed here? Great.

To register a plugin:

1. Fork this repository
2. Add your plugin entry to the table above
3. Ensure your plugin exports the required entrypoint (`mim_get_plugin()`)
4. Open a pull request

Plugins should be buildable against at least one released MimIR version.

---

## 🏛️ Compatibility Policy

- MimIR releases (`0.1`, `0.2`, ...) define the plugin API compatibility boundary.
- Plugins should target released versions, not `master`.
- When MimIR introduces breaking plugin API changes, the MimIR version is bumped.

This registry does **not** guarantee that plugins remain compatible with future MimIR releases.

---

## 📌 Notes

- This registry does not build, distribute, or validate plugins.
- It is purely informational.
- Use plugins at your own risk.
