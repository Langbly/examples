#!/bin/bash
# Langbly API — cURL examples
# Replace YOUR_API_KEY with your actual key from langbly.com

API_KEY="${LANGBLY_API_KEY:-YOUR_API_KEY}"
BASE_URL="https://api.langbly.com"

echo "=== Translate text ==="
curl -s -X POST "$BASE_URL/language/translate/v2" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"q": "Hello world", "target": "nl"}' | python3 -m json.tool

echo ""
echo "=== Batch translate ==="
curl -s -X POST "$BASE_URL/language/translate/v2" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"q": ["Hello", "Goodbye", "Thank you"], "target": "de"}' | python3 -m json.tool

echo ""
echo "=== Translate HTML ==="
curl -s -X POST "$BASE_URL/language/translate/v2" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"q": "<p>Welcome to our <strong>store</strong></p>", "target": "nl", "format": "html"}' | python3 -m json.tool

echo ""
echo "=== Detect language ==="
curl -s -X POST "$BASE_URL/language/translate/v2/detect" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"q": "Bonjour le monde"}' | python3 -m json.tool
