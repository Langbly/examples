# Langbly Examples

Code examples and migration guides for the [Langbly](https://langbly.com) translation API.

## Examples

| Example | Language | Description |
|---------|----------|-------------|
| [curl](./curl/) | cURL | Basic API calls with curl |
| [python-quickstart](./python-quickstart/) | Python | Getting started with the Python SDK |
| [js-quickstart](./js-quickstart/) | TypeScript | Getting started with the JS/TS SDK |
| [migrate-google](./migrate-google/) | Python + JS | Migrate from Google Translate v2 |

## Quick Start (cURL)

```bash
# Translate text
curl -X POST https://api.langbly.com/language/translate/v2 \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"q": "Hello world", "target": "nl"}'

# Response:
# {"data":{"translations":[{"translatedText":"Hallo wereld","detectedSourceLanguage":"en"}]}}
```

## Links

- [API Docs](https://langbly.com/docs)
- [Python SDK](https://github.com/Langbly/langbly-python)
- [JS/TS SDK](https://github.com/Langbly/langbly-js)
- [Pricing](https://langbly.com/pricing)
