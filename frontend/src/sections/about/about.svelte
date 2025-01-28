<script>
	import { Award, Globe, ShieldCheck } from 'lucide-svelte';
	import SectionHeading from '../../components/section-heading.svelte';
	import { fly } from 'svelte/transition';
	import AboutCard from '../../components/about-card.svelte';
	import shield from "$lib/icons/shield.svg"
</script>

<section>
	<SectionHeading adjective="About Oakshield Security" />

	<p class="text-lg text-onSurfaceLight text-center mb-8">
		Welcome to Oakshield Security (Pty) Ltd, a proudly South African company providing top-tier
		security solutions for clients in Cape Town and the West Coast.
	</p>

	<div class="flex gap-8">
		<AboutCard
			heading="Local Expertise"
			text="Serving Atlantis and the West Coast with unparalleled security solutions."
			icon={shield}
			alt="A shield icon"
		/>
		<AboutCard
			heading="Local Expertise"
			text="Serving Atlantis and the West Coast with unparalleled security solutions."
			icon={shield}
			alt="A shield icon"
		/>
		<AboutCard
			heading="Local Expertise"
			text="Serving Atlantis and the West Coast with unparalleled security solutions."
			icon={shield}
			alt="A shield icon"
		/>
	</div>

	<button>Learn more about our services</button>
</section>
