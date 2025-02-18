<script lang="ts">
	import * as Carousel from '$lib/components/ui/carousel/index.js';
	import type { CarouselAPI } from '$lib/components/ui/carousel/context.js';
	import { projects } from './carousel';

	let api: CarouselAPI;
	let current = 0;
	let count = 0;

	$: if (api) {
		count = api.scrollSnapList().length;
		current = api.selectedScrollSnap() + 1;

		api.on('select', () => {
			current = api.selectedScrollSnap() + 1;
		});
	}
</script>

<div class="text-onSurfaceLight">
	<Carousel.Root bind:api class="w-full max-w-xs">
		<Carousel.Content>
			{#each projects as project (project.index)}
				<Carousel.Item>
					<img class="max-w-32 max-h-20" src={project.src} alt={project.alt}>
					<h4 class="text-xl font-semibold">{project.name}</h4>
					<p class="text-onSurfacePrimary">{project.duration}</p>
				</Carousel.Item>
			{/each}
		</Carousel.Content>
		<Carousel.Previous />
		<Carousel.Next />
	</Carousel.Root>
	<!-- <div class="text-muted-foreground py-2 text-center text-sm"> -->
	<!-- 	Slide {current} of {count} -->
	<!-- </div> -->
</div>
