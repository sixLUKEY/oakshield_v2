/** @type {import('tailwindcss').Config} */
export default {
	content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
	theme: {
		extend: {
			colors: {
				surface: "",
				onSurface: "",
				surfaceDark: "",
				onSurfaceDark: "",
				container: "",
				containerDark: "",
				onContainer: "",
				onContainerDark: "",
				primary: "",
				primaryDark: "",
				secondary: "",
				secondaryDark: "",
				tertiary: "",
				tertiaryDark: "",
			},
		},
	},
	plugins: [],
};
