func MainPage(page : &mut HtmlPage) {
#md
# Markdown + CBI Feature Showcase

This page is intentionally **long and varied** to validate rendering across themes.
It covers headers, paragraphs, emphasis, links, code, tables, containers, task lists, footnotes, and more.

---

## 1) Typography & Inline Features

Plain paragraph text with **bold**, *italic*, ~~strikethrough~~, ==mark==, ++insert++, H~2~O, and E=mc^2^.

Mixed punctuation and symbols: `[]{}()<>` and quotes: "double" / 'single'.

Abbreviation definition (block-style):
*[HTML]: HyperText Markup Language
*[CSS]: Cascading Style Sheets

Now use them inline: HTML and CSS should render as abbreviations when supported.

---

## 2) Links, Autolinks, and Images

A normal link: [Chemical Website](https://chemical-lang.org)

A link with title: [Example](https://example.com "Example Title")

An autolink: <https://chemical-lang.org>

An image:
![A placeholder image](https://placehold.co/900x220/png "Placeholder")

---

## 3) Blockquotes

> "Design is not just what it looks like and feels like. Design is how it works."
> — Steve Jobs

---

## 4) Code

Inline code like `const x = 10` should render consistently.

```typescript
// Fenced code block
type Status = "Awesome" | "Okay";

export function helloChemical(name: string): { status: Status; performance: number } {
  const message = `Hello, ${name}!`;
  console.log(message);
  return { status: "Awesome", performance: 100 };
}
```

```
// Unspecified language
line 1
line 2
line 3
```

---

## 5) Tables (alignment + inline formatting)

| Category | Feature | Support | Performance |
| :--- | :---: | ---: | :--- |
| **Parsing** | Tables | Full | Ultra-fast |
| *Inline* | `code` | Yes | Optimized |
| ~~Legacy~~ | ==Mark== | ++Insert++ | H~2~O |

---

## 6) Lists (unordered, ordered, nesting)

Unordered:
- One
- Two
  - Two.A
  - Two.B
- Three

Ordered:
1. Alpha
2. Beta
3. Gamma

---

## 7) Task Lists (including deep nesting)

- [x] Implement core Markdown parser
- [x] Add theme support
- [ ] Implement live previewer
  - [x] Web interface
  - [ ] Desktop app (Electron?)
  - [ ] QA
    - [x] Snapshot tests
    - [ ] Accessibility pass
- [x] Optimize performance

---

## 8) Custom Containers (CBI)

::: info
**Information**: This entire page is generated at compile-time into a high-performance string concatenation block.
:::

::: tip
**Pro Tip**: Switch themes and scan: headers, code blocks, tables, and checkboxes should remain readable.
:::

::: warning
**Caution**: Ensure UTF-8 source files to avoid emoji mangling.
:::

::: error
**Critical**: Verify contrast in dark themes.
:::

---

## 9) Footnotes

A statement with a footnote reference[^1] and another reference[^note].

[^1]: Footnote number one: uses **bold**, *italic*, and `inline code`.
[^note]: Named footnote: includes a link to [Example](https://example.com).

---

## 10) Definition Lists

Chemical
:   A powerful systems programming language for the modern web.

Markdown
:   A lightweight markup language with plain-text formatting syntax.

Rendering
:   Turning structured markup into HTML.

---

## 11) Interpolation / Dynamic Values

If interpolation is enabled in this environment, this should render as a value: ${1 + 2}.

#endmd
}

public func main() : int {
    var page = HtmlPage()

    // sets the charset to utf-8
    page.defaultPrepare();

    // Import Premium Fonts
    page.pageHead.append_view("""
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700;800&family=JetBrains+Mono&family=Orbitron:wght@400;700&family=Playfair+Display:ital,wght@0,400;0,700;1,400&family=Outfit:wght@300;700&display=swap" rel="stylesheet">
    """)

    // Global Layout Styling
    page.pageCss.append_view("""
    :root {
      --bg-color: #f8fafc;
      --accent-color: #3b82f6;
    }

    body {
      margin: 0;
      padding: 0;
      background: var(--bg-color);
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      transition: background 0.8s cubic-bezier(0.4, 0, 0.2, 1);
      overflow-x: hidden;
    }

    #app {
      flex: 1;
      display: flex;
      justify-content: center;
      width: 100%;
      padding: 2rem 0;
    }

    .md-container-wrapper {
        width: 100%;
        max-width: 900px;
        padding: 0 2rem;
    }

    /* Floating Theme Switcher */
    .theme-panel {
      position: fixed;
      left: 20px;
      top: 50%;
      transform: translateY(-50%);
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(12px);
      padding: 15px;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      border: 1px solid rgba(0,0,0,0.05);
      z-index: 1000;
      display: flex;
      flex-direction: column;
      gap: 10px;
      width: 180px;
      transition: all 0.3s ease;
    }

    .theme-panel:hover {
      box-shadow: 0 15px 40px rgba(0,0,0,0.15);
    }

    .theme-label {
      font-family: 'Inter', sans-serif;
      font-size: 0.75rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: #64748b;
      margin-bottom: 5px;
      padding-left: 10px;
    }

    .theme-btn {
      border: none;
      background: transparent;
      padding: 8px 12px;
      border-radius: 10px;
      font-family: 'Inter', sans-serif;
      font-size: 0.9rem;
      text-align: left;
      cursor: pointer;
      transition: all 0.2s ease;
      color: #1e293b;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .theme-btn:hover {
      background: rgba(0,0,0,0.05);
    }

    .theme-btn.active {
      background: var(--accent-color);
      color: white;
      box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3);
    }

    .theme-dot {
      width: 8px;
      height: 8px;
      border-radius: 50%;
      background: currentColor;
      opacity: 0.5;
    }

    @media (max-width: 1200px) {
      .theme-panel {
        top: auto;
        bottom: 20px;
        left: 50%;
        transform: translateX(-50%);
        flex-direction: row;
        width: auto;
        max-width: 95vw;
        overflow-x: auto;
        padding: 8px 15px;
        border-radius: 15px;
      }
      .theme-label { display: none; }
      .theme-btn { padding: 6px 10px; font-size: 0.8rem; }
    }
    """)

    injectAllMarkdownThemes(page)

    // Layout structure
    page.pageHtml.append_view("""
    <div class="theme-panel" id="theme-selector">
        <div class="theme-label">Select Style</div>
        <button class="theme-btn active" data-theme="md-theme-github">
            <span class="theme-dot"></span> GitHub Light
        </button>
        <button class="theme-btn" data-theme="md-theme-github-dark">
            <span class="theme-dot"></span> GitHub Dark
        </button>
        <button class="theme-btn" data-theme="md-theme-minimal">
            <span class="theme-dot"></span> Minimalist
        </button>
        <button class="theme-btn" data-theme="md-theme-glass">
            <span class="theme-dot"></span> Glassmorphism
        </button>
        <button class="theme-btn" data-theme="md-theme-cyberpunk">
            <span class="theme-dot"></span> Cyberpunk
        </button>
        <button class="theme-btn" data-theme="md-theme-velvet-night">
            <span class="theme-dot"></span> Velvet Night
        </button>
        <button class="theme-btn" data-theme="md-theme-midnight">
            <span class="theme-dot"></span> Midnight
        </button>
        <button class="theme-btn" data-theme="md-theme-deep-forest">
            <span class="theme-dot"></span> Deep Forest
        </button>
        <button class="theme-btn" data-theme="md-theme-notion">
            <span class="theme-dot"></span> Notion Clean
        </button>
    </div>
    <div id='app'>
        <div class="md-container-wrapper md-theme md-theme-github" id="app-content">
    """)

    MainPage(page)
    
    page.pageHtml.append_view("</div></div>")

    // Dynamic Theme Switching Script
    page.pageHtml.append_view("""
        <script>
            (function () {
              const buttons = document.querySelectorAll('.theme-btn');
              const app = document.getElementById('app');
              const body = document.body;

              const themeMap = {
                'md-theme-github': '#f8fafc',
                'md-theme-github-dark': '#22272e',
                'md-theme-minimal': '#ffffff',
                'md-theme-glass': '#0f172a',
                'md-theme-cyberpunk': '#050505',
                'md-theme-velvet-night': '#120b1e',
                'md-theme-midnight': '#0a0a0c',
                'md-theme-deep-forest': '#081c15',
                'md-theme-notion': '#ffffff'
              };

              function applyTheme(targetTheme) {
                // Update buttons
                buttons.forEach(btn => {
                  if(btn.dataset.theme === targetTheme) btn.classList.add('active');
                  else btn.classList.remove('active');
                });

                // Update content classes
                const themes = Object.keys(themeMap);
                const appContent = document.getElementById('app-content');
                themes.forEach(t => appContent.classList.remove(t));
                appContent.classList.add(targetTheme);

                // Update body background
                body.style.backgroundColor = themeMap[targetTheme];
              }

              buttons.forEach(btn => {
                btn.addEventListener('click', () => {
                  applyTheme(btn.dataset.theme);
                });
              });
            })();
        </script>
    """)

    var completePage = page.toString();
    printf("%s\n", completePage.data())
    return 0;
}
