<script>
	let { src, alt, text } = $props();
</script>

<div class="w-72 h-72 relative overflow-hidden image-container rounded">
	<img {src} {alt} />
	<div class="font-bebas">{text}</div>
</div>

<style>
	img {
		width: 100%;
		height: 100%;
		object-fit: cover;
		transition:
			transform 1s ease,
			filter 0.25s ease;
	}

	.image-container:hover > img {
		filter: brightness(30%); /* Darkens the image */
		transform: scale(1.1); /* Scales the image slightly */
	}

	.image-container > div {
		position: absolute; /* Positions text over the image */
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		color: white; /* Text color */
		font-size: 1.5rem; /* Example font size */
		font-weight: bold; /* Makes text bold */
		text-align: center;
		opacity: 0; /* Initially hidden */
		transition: opacity 0.5s ease; /* Smooth fade-in effect */
		pointer-events: none; /* Ensures text doesn't interfere with hover */
	}

	.image-container:hover > div {
		opacity: 1;
	}


</style>
