<script lang="ts">
	import '../app.css';

	let { children } = $props();

	let routes: { name: string; path: string }[] = [
		{ name: 'home', path: '/' },
		{ name: 'services', path: '/#services' },
		{ name: 'about', path: '/#about' },
		{ name: 'contact', path: '/#contact' }
	];
</script>

<nav class="flex justify-between font-bebas text-4xl text-onSurfaceLight py-5">
	<div>LOGO</div>
	<ul class="flex gap-3">
		{#each routes as route}
			<li class="hover:text-onSurfacePrimary transition">
				<a href={route.path}>{route.name.toUpperCase()}</a>
			</li>
		{/each}
	</ul>
</nav>

{@render children()}
