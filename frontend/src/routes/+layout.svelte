<script lang="ts">
	import '../app.css';
	import logo from '$lib/logo.png';

	let { children } = $props();

	let routes: { name: string; path: string }[] = [
		{ name: 'home', path: '/' },
		{ name: 'services', path: '/#services' },
		{ name: 'about', path: '/#about' },
		{ name: 'contact', path: '/#contact' }
	];
</script>

<nav
	class="flex justify-between font-bebas text-3xl text-onSurfaceLight py-5 items-center sticky top-0 bg-surface z-50"
>
	<div class="flex">
		<img class="h-16" src={logo} alt="Oakshield Security logo" />
	</div>
	<ul class="flex gap-3">
		{#each routes as route}
			<li class="hover:text-onSurfacePrimary transition">
				<a href={route.path}>{route.name.toUpperCase()}</a>
			</li>
		{/each}
	</ul>
</nav>

{@render children()}
