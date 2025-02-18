<script lang="ts">
	import { getEmblaContext } from './context.js';
	import { cn } from '$lib/utils.js';
	import { type Props } from '$lib/components/ui/button/index.js';

	type $$Props = Props;

	let className: $$Props['class'] = undefined;
	export { className as class };
	const { orientation, canScrollNext, scrollNext, handleKeyDown } =
		getEmblaContext('<Carousel.Next/>');
</script>

<button
	class={cn(
		'absolute h-8 w-8 touch-manipulation rounded-full',
		$orientation === 'horizontal'
			? '-right-12 top-1/2 -translate-y-1/2'
			: '-bottom-12 left-1/2 -translate-x-1/2 rotate-90',
		className
	)}
	disabled={!$canScrollNext}
	on:click={scrollNext}
	on:keydown={handleKeyDown}
	{...$$restProps}
	aria-label="arrow-next"
>
	<svg width="34" height="18" viewBox="0 0 34 18" fill="none" xmlns="http://www.w3.org/2000/svg">
		<path class="transition opacity-60" d="M34 9L19 0.339746V17.6603L34 9ZM20.5 7.5L0 7.5V10.5L20.5 10.5V7.5Z" fill="#F1BB27" />
	</svg>
</button>

<style lang="scss">
button:hover svg path {
  opacity: 100%; /* Dimmed color */
}

button:disabled svg path {
  fill: #7D7D7D !important; /* Dimmed color */
  opacity: 60% !important;
}
</style>
