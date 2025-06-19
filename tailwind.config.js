/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./public/index.html",           // <-- for your HTML file in the public folder
    "./src/**/*.{js,jsx,ts,tsx,css}", // <-- for any JS/TS/React components
    "./**/*.html"
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}

