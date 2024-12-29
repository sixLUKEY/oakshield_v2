<script lang="ts">
	let { children } = $props();

	let routes: { name: string; path: string }[] = [
		{ name: 'home', path: '/' },
		{ name: 'services', path: '/#services' },
		{ name: 'about', path: '/#about' },
		{ name: 'contact', path: '/#contact' }
	];
</script>

<nav>
	<ul>
		{#each routes as route}
			<li>
				<a href={route.path}>{route.name.toUpperCase()}</a>
			</li>
		{/each}
	</ul>
</nav>

{@render children()}
