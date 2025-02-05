<script lang="ts">
	let { heading, description, src, alt } = $props();
	let normalizedDescription = Array.isArray(description) ? description : [description];
</script>

<div class="flex flex-col flex-1 text-onSurfaceLight text-center text-sm">
	<div class="flex items-center justify-center gap-4">
		<h3 class=" font-carlito font-bold text-2xl">{heading}</h3>
		<div class="bg-onSurfacePrimary w-px h-4 rounded"></div>
		<img {src} {alt}>
	</div>
	<div class="w-3/4 mx-auto px-2 h-px bg-onSurfacePrimary rounded-full mb-4 mt-2"></div>
	{#if normalizedDescription.length === 1}
		<p class="px-2">{normalizedDescription[0]}</p>
		{:else}
		<ul class="list-disc list-inside text-start">
			{#each normalizedDescription as desc}
				<li class="list-item">{desc}</li>
			{/each}
		</ul>
	{/if}
</div>
