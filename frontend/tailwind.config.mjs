/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
    extend: {
      fontFamily: {
        bebas: ["Bebas Neue", "sans-serif"],
      },
      colors: {
        surface: "",
        onSurface: "",
        surfaceDark: "",
        onSurfaceDark: "",
        container: "",
        containerDark: "",
        onContainer: "",
        onContainerDark: "",
        primary: "#F1BB27",
        primaryDark: "#F1BB27",
        secondary: "",
        secondaryDark: "",
        tertiary: "",
        tertiaryDark: "",
        alternate: "",
        alternateDark: "#FFDF3A",
      },
    },
  },
  plugins: [],
};
