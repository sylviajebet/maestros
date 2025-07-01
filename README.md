# Maestros Casineros Website

Welcome to the official website repository for **Maestros Casineros** – East Africa’s home for dynamic Casino style (Cuban salsa) dance, community events, and vibrant performances!

![Maestros Casineros banner](public/images/mc-png.png)

---

## 🚀 Project Overview

This is a modern, responsive static website built with **Tailwind CSS** and vanilla HTML/JS.  
It features:
- Landing (hero) section with a custom background
- About Us, Portfolio, Team, Testimonials, and Contact Us sections
- Interactive image galleries and animated cards
- “View More/Show Less” Alpine.js-powered toggles
- Clean footer with social media & navigation

---

## 🛠️ Technologies Used

- [Tailwind CSS](https://tailwindcss.com/)
- [Alpine.js](https://alpinejs.dev/) (for interactivity)
- HTML5 & JavaScript
- SVG Icons (Heroicons, Social Media Icons)

---

### NOTE - These are for use only in a static build

Scripts omitted:

``` sh
"watch:css": "npx tailwindcss -i ./src/styles.css -o ./dist/styles.css --watch",
"watch:static": "npx chokidar public/index.html public/images/* -c 'cp public/index.html dist/index.html && cp -r public/images dist/images'",
"dev": "npx npm-run-all --parallel watch:css watch:static"

```

devDependancies omitted:

``` sh
"chokidar-cli": "^3.0.0",
"npm-run-all": "^4.1.5"

```

---

## 📦 Project Structure

```txt
project-root/
├── public/
│   └── images/         # All images
│   └── index.html      # Main HTML file
├── src/
│   └── styles.css      # Tailwind source CSS
├── dist/
│   └── styles.css      # Compiled Tailwind output (not committed)
│   └── index.html      # Compiled Index file output (not committed)
│   └── images/         # All images (not committed)
├── node_modules/       # Not committed
├── tailwind.config.js  # Tailwind configuration
├── package.json
├── package.json
├── .gitignore
└── README.md
