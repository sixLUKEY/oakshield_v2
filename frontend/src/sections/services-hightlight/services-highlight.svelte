<script>
	import SectionHeading from '../../components/section-heading.svelte';
	import ServiceHighlightImage from '../../components/service-highlight-image.svelte';
	import dog from '$lib/service-highlights/dog.jpg';
	import guard from '$lib/service-highlights/guard.jpg';
	import drone from '$lib/service-highlights/drone.jpg';
</script>

<section class="flex flex-col items-center">
	<SectionHeading adjective="Services at a glance" id="highlights"/>

	<div class="flex gap-8 mx-auto w-full">
		<ServiceHighlightImage
			src={guard}
			alt="A Security guard with reflective jacket"
			text="Security Guarding"
		/>
		<ServiceHighlightImage src={drone} alt="A drone flying in the air" text="Drone Surveillance" />
		<ServiceHighlightImage src={dog} alt="German Shephard dog" text="Guard Dogs" />
	</div>
</section>
