# NodeBB Hacker Theme

Epic dark mode hacker-themed NodeBB forum with cyberpunk aesthetics, neon accents, and terminal-style design.

## Features

- **Dark Cyberpunk Design**: Deep dark backgrounds with neon green and cyan accents
- **Terminal Aesthetics**: Monospace fonts (Fira Code, JetBrains Mono) and command-line inspired UI
- **Glowing Effects**: Neon glow effects on interactive elements
- **Smooth Animations**: Polished transitions and hover effects
- **Fully Responsive**: Mobile-first design that works on all devices
- **Matrix Rain Effect**: Optional animated background (can be enabled)
- **Custom Scrollbars**: Themed scrollbars matching the hacker aesthetic
- **Grid Background**: Subtle grid pattern for that cyberpunk feel

## Installation

### Method 1: NPM (Recommended)

\`\`\`bash
npm install nodebb-theme-hacker
\`\`\`

### Method 2: Manual Installation

1. Clone this repository into your NodeBB's `node_modules` directory:

\`\`\`bash
cd /path/to/nodebb/node_modules
git clone https://github.com/yourusername/nodebb-theme-hacker.git
\`\`\`

2. Install dependencies:

\`\`\`bash
cd nodebb-theme-hacker
npm install
\`\`\`

3. Restart NodeBB:

\`\`\`bash
cd /path/to/nodebb
./nodebb restart
\`\`\`

4. Activate the theme:
   - Go to Admin Panel → Appearance → Themes
   - Select "Hacker Terminal" from the list
   - Click "Apply" and restart NodeBB

## Theme Structure

\`\`\`
nodebb-theme-hacker/
├── scss/
│   ├── hacker.scss         # Main SCSS entry point
│   ├── _variables.scss     # Color scheme and design tokens
│   ├── _mixins.scss        # Reusable SCSS mixins
│   ├── _fonts.scss         # Font imports
│   ├── _base.scss          # Base styles and resets
│   ├── _header.scss        # Header and navigation
│   ├── _sidebar.scss       # Sidebar components
│   ├── _category.scss      # Category listings
│   ├── _topic.scss         # Topic/thread views
│   ├── _posts.scss         # Post styling
│   ├── _user.scss          # User profiles
│   ├── _chats.scss         # Chat/messaging
│   ├── _modals.scss        # Modal dialogs
│   ├── _buttons.scss       # Button styles
│   ├── _forms.scss         # Form elements
│   ├── _animations.scss    # Keyframe animations
│   └── _responsive.scss    # Media queries
├── public/
│   ├── hacker.js           # Client-side JavaScript
│   ├── admin.js            # Admin panel integration
│   └── settings.js         # User settings page
├── languages/
│   └── en-GB/
│       └── hacker.json     # English translations
├── plugin.json             # NodeBB plugin configuration
├── library.js              # Server-side logic
├── theme.json              # Theme metadata
├── package.json            # NPM package info
└── README.md              # This file
\`\`\`

## Compatibility

- NodeBB v4.0.0 or higher
- Modern browsers (Chrome, Firefox, Safari, Edge)

## Customization

### Color Scheme

Edit `scss/_variables.scss` to customize colors:

\`\`\`scss
$neon-green: #00ff88;  // Primary accent color
$neon-cyan: #00d9ff;   // Secondary accent color
$bg-primary: #0a0e1a;  // Main background
\`\`\`

### Enable Matrix Rain Effect

Uncomment the line in `public/hacker.js`:

\`\`\`javascript
// createMatrixRain();  // Remove the // to enable
\`\`\`

### Fonts

The theme uses Fira Code and JetBrains Mono. To change fonts, edit `scss/_variables.scss`:

\`\`\`scss
$font-mono: 'Your Font', monospace;
\`\`\`

## Development

### Building SCSS

\`\`\`bash
npm run build
\`\`\`

### Linting

\`\`\`bash
npm run lint
\`\`\`

## Screenshots

[Add screenshots of your theme here]

## Support

For issues, questions, or contributions:
- GitHub Issues: https://github.com/yourusername/nodebb-theme-hacker/issues
- NodeBB Community: https://community.nodebb.org

## License

MIT License - see LICENSE file for details

## Credits

Based on NodeBB Harmony theme structure
Designed for the cyberpunk and hacker community

## Changelog

### v1.0.0
- Initial release
- Dark mode cyberpunk design
- Neon glow effects
- Terminal aesthetics
- Fully responsive layout
- Matrix rain effect (optional)
