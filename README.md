# Steinbock Linz Umschraubtermine online Kalender

Automatisch aktualisierender Kalender Link der Umschraubtermine von der Steinbock Boulderhalle in Linz:

https://www.dersteinbock-linz.at/

Einfach folgenden Kalener Link in deiner Kalenderapp hinzufügen:

http://localhost:8000

## Deployment

Der Server läuft als Docker Container und lauscht auf Port `8000`.

Das Image wird automatisch via GitHub Actions gebaut und nach GHCR gepusht:

```bash
docker run -p 8000:8000 ghcr.io/lukas-heiligenbrunner/steinbock-kalender:latest
```

- Push auf `master` veröffentlicht das `:latest` Image.
- Ein git Tag `vX.Y.Z` veröffentlicht ein versioniertes Image (z.B. `:1.2.3` und `:1.2`).
