const purgecss = require('@fullhuman/postcss-purgecss');
const cssnano = require('cssnano');

module.exports = {
  plugins: [
    purgecss({
      content: ['./src/**/*.{html,js}'],
      defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || [],
    }),
    cssnano({
      preset: 'default',
    }),
  ],
}