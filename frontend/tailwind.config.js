/** @type {import('tailwindcss').Config} */
export default {
	content: ['./src/**/*.{html,js,svelte,ts}'],
	theme: {
		extend: {
			colors: {
				surface: '#1E1E1E',
				primary: '#FFDF3A',
				onSurfacePrimary: '#F1BB27',
				onSurfacePrimaryDim: '#594714',
				onSurfaceLight: '#E4E4E4',
				onSurfaceAlternate: '#7D7D7D',
				surfacAlternate: '#303030'
			},
			fontFamily: {
				bebas: ['Bebas Neue', 'serif'],
				lato: ['Lato', 'serif']
			}
		}
	},
	plugins: []
};
