<script lang="ts">
	import { getEmblaContext } from "./context.js";
	import { cn } from "$lib/utils.js";
	import {
		Button,
		type Props,
	} from "$lib/components/ui/button/index.js";

	type $$Props = Props;

	let className: $$Props["class"] = undefined;
	export { className as class };

	const { orientation, canScrollPrev, scrollPrev, handleKeyDown } =
		getEmblaContext("<Carousel.Previous/>");
</script>

<button
	class={cn(
		"absolute h-8 w-8 touch-manipulation rounded-full",
		$orientation === "horizontal"
			? "-left-12 top-1/2 -translate-y-1/2"
			: "-top-12 left-1/2 -translate-x-1/2 rotate-90",
		className
	)}
	disabled={!$canScrollPrev}
	on:click={scrollPrev}
	on:keydown={handleKeyDown}
	{...$$restProps}
	aria-label="arrow-left"
>
<svg width="34" height="18" viewBox="0 0 34 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path class="transition opacity-60" d="M0 9L15 17.6603L15 0.339746L0 9ZM13.5 10.5L34 10.5V7.5L13.5 7.5V10.5Z" fill="#F1BB27"/>
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

