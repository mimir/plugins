# MimIR Plugin Registry

This repository lists third-party plugins for the MimIR compiler infrastructure.

Plugins are **not officially maintained as part of the core project**.
They are developed independently and may break when MimIR evolves.

Each plugin entry specifies the last known compatible MimIR API version.

## Plugin Compatibility

Plugins are compatible based on the **MimIR Plugin API version**:

- Compatibility is defined by `major.minor`
- Patch versions are ignored for compatibility
- If the API version changes, plugins may require updates

Example:

- MimIR `0.2` can load plugins built for `0.2`
- MimIR `0.3` will reject plugins built for `0.2`

## Registry Format

Each plugin entry includes:

- **Name**: Plugin identifier
- **Repository**: Source URL (git)
- **Description**: Short explanation of what the plugin does
- **Maintainer**: Author or team (optional)
- **Compatible MimIR Version**: Last tested API version
- **Notes**: Optional remarks (experimental, deprecated, etc.)

---

## Registered Plugins

| Name     | Repository                       | Description                                   | Maintainer       | Compatible MimIR | Notes                   |
| -------- | -------------------------------- | --------------------------------------------- | ---------------- | ---------------- | ----------------------- |
|          |                                  |                                               |                  |                  |                         |

---

## Contributing a Plugin

To register a plugin:

1. Fork this repository
2. Add your plugin entry to the table above
4. Open a pull request

Plugins must be buildable with at least one supported MimIR version.

## Compatibility Policy

Plugins are expected to track MimIR `master`.

This registry only records the **last known working API version**, not long-term guarantees.

Breaking changes may occur frequently during early development (0.x series).

## Notes

- This registry does not build, distribute, or validate plugins.
- It is purely informational.
- Load plugins at your own risk.
