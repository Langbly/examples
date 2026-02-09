# Migrate from Google Translate v2 to Langbly

Langbly is a drop-in replacement for the Google Translate v2 API. Same request format, same response shape.

## The 2-Line Change

### Python

```python
# Before
from google.cloud import translate_v2 as translate
client = translate.Client()

# After
from langbly import Langbly
client = Langbly(api_key="your-langbly-key")
```

### JavaScript

```typescript
// Before
import { Translate } from "@google-cloud/translate/build/src/v2";
const client = new Translate();

// After
import { Langbly } from "langbly";
const client = new Langbly({ apiKey: "your-langbly-key" });
```

### cURL / raw HTTP

```bash
# Before
POST https://translation.googleapis.com/language/translate/v2?key=GOOGLE_KEY

# After
POST https://api.langbly.com/language/translate/v2
Authorization: Bearer LANGBLY_KEY
```

The request body and response format are identical.

## What stays the same

- Request body format (`q`, `target`, `source`, `format`)
- Response format (`data.translations[].translatedText`)
- Language codes (ISO 639-1)
- HTML mode (`format: "html"`)
- Batch requests (array of `q` values)
- Language detection endpoint

## What's different (better)

| | Google Translate | Langbly |
|---|---|---|
| Price per 1M chars | $20 | $4 (overage) or $1.99-$3.80 (plan) |
| Translation quality | NMT (2020) | LLM-powered (context-aware) |
| European languages | Generic | Optimized (NL, DE, FR locale rules) |
| Auth | API key in URL | Bearer token in header |
