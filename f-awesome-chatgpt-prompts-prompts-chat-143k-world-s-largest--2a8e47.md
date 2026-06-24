# f/awesome-chatgpt-prompts / prompts.chat — 143k★ World's Largest Prompt Library (GitHub)

Source: https://github.com/f/awesome-chatgpt-prompts
Category: awesome-prompts-collections

---

The world's largest open-source prompt library for AI
  Works with ChatGPT, Claude, Gemini, Llama, Mistral, and more
formerly known as Awesome ChatGPT Prompts
  [🌐 Browse Prompts](https://prompts.chat/prompts) •
  [📖 Read the Book](https://fka.gumroad.com/l/art-of-chatgpt-prompting) •
  [📄 View on GitHub](https://raw.githubusercontent.com/f/prompts.chat/main/PROMPTS.md) •
  [🚀 Self-Host](https://github.com#-self-hosting)
  
    🏆 Featured in [Forbes](https://www.forbes.com/sites/tjmccue/2023/01/19/chatgpt-success-completely-depends-on-your-prompt/) ·
    🎓 Referenced by [Harvard](https://www.huit.harvard.edu/news/ai-prompts), [Columbia](https://etc.cuit.columbia.edu/news/columbia-prompt-library-effective-academic-ai-use) ·
    📄 [40+ academic citations](https://scholar.google.com/citations?user=AZ0Dg8YAAAAJ&hl=en) ·
    ❤️ [Most liked dataset](https://huggingface.co/datasets/fka/prompts.chat) on Hugging Face
    ⭐ 143k+ GitHub stars ·
    🏅 [GitHub Staff Pick](https://spotlights-feed.github.com/spotlights/prompts-chat/index/) ·
    🚀 First prompt library (Dec 2022)
  
  Loved by AI pioneers:
  
    [Greg Brockman](https://x.com/gdb/status/1602072566671110144) (OpenAI Co-Founder) ·
    [Wojciech Zaremba](https://x.com/woj_zaremba/status/1601362952841760769) (OpenAI Co-Founder) ·
    [Clement Delangue](https://x.com/clementdelangue/status/1830976369389642059) (Hugging Face CEO) ·
    [Thomas Dohmke](https://x.com/ashtom/status/1887250944427237816) (Former GitHub CEO)
  
A curated collection of prompt examples for AI chat models. Originally created for ChatGPT, these prompts work great with any modern AI assistant.
| Browse Prompts | Data Formats | 
|---|---|
| [prompts.chat](https://prompts.chat/prompts) | [prompts.csv](https://github.com/f/prompts.chat/blob/main/prompts.csv) | 
| [PROMPTS.md](https://raw.githubusercontent.com/f/prompts.chat/main/PROMPTS.md) | [Hugging Face Dataset](https://huggingface.co/datasets/fka/prompts.chat) | 
Want to contribute? Add prompts at [prompts.chat/prompts/new](https://prompts.chat/prompts/new) — they sync here automatically.
Learn prompt engineering with our free, interactive guide — 25+ chapters covering everything from basics to advanced techniques like chain-of-thought reasoning, few-shot learning, and AI agents.
[Start Reading →](https://fka.gumroad.com/l/art-of-chatgpt-prompting) (Source: [https://github.com/f/prompts.chat/tree/main/src/content/book](https://github.com/f/prompts.chat/tree/main/src/content/book))
An interactive, game-based adventure to teach children (ages 8-14) how to communicate with AI through fun puzzles and stories.
Deploy your own private prompt library with custom branding, themes, and authentication.
Quick Start:
npx prompts.chat new my-prompt-library
cd my-prompt-libraryManual Setup:
git clone https://github.com/f/prompts.chat.git
cd prompts.chat
npm install && npm run setupThe setup wizard configures branding, theme, authentication (GitHub/Google/Azure AD), and features.
Recommended database: prompts.chat uses PostgreSQL. For a hosted database, we recommend [Neon](https://get.neon.com/VqfnMo4).
📖 [Full Self-Hosting Guide](https://github.com/f/prompts.chat/blob/main/SELF-HOSTING.md) • 🐳 [Docker Guide](https://github.com/f/prompts.chat/blob/main/DOCKER.md)
npx prompts.chat/plugin marketplace add f/prompts.chat
/plugin install prompts.chat@prompts.chat
Use prompts.chat as an MCP server in your AI tools.
Remote (recommended):
{
  "mcpServers": {
    "prompts.chat": {
      "url": "https://prompts.chat/api/mcp"
    }
  }
}Local:
{
  "mcpServers": {
    "prompts.chat": {
      "command": "npx",
      "args": ["-y", "prompts.chat", "mcp"]
    }
  }
}
  Built with [Windsurf](https://wind.surf/prompts-chat) and [Devin](https://devin.ai)
  [Become a Sponsor →](https://github.com/sponsors/f/sponsorships?sponsor=f&tier_id=558224&preview=false)
This project is dual-licensed:
- Source code and site-authored content is licensed under the [MIT License](https://github.com/f/prompts.chat/blob/main/LICENSE-MIT), including the interactive book content insrc/content/book
- Prompt content and data (prompts.csv, PROMPTS.md, user-submitted prompts) is dedicated to the public domain under [CC0 1.0 Universal](https://github.com/f/prompts.chat/blob/main/LICENSE-CC0).
See [LICENSE](https://github.com/f/prompts.chat/blob/main/LICENSE) for details.
