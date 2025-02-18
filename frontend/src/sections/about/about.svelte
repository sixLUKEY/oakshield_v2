<script>
	import SectionHeading from '../../components/section-heading.svelte';
	import AboutCard from '../../components/about-card.svelte';
	import medal from '$lib/icons/medal.svg';
	import globe from '$lib/icons/globe.svg';
	import suitcase from '$lib/icons/suitcase.svg';
</script>

<section class="flex flex-col gap-8 items-center" id="about">
	<div>
		<SectionHeading adjective="About Oakshield Security" id="about" />

		<p class="text-lg text-onSurfaceLight text-center mb-8 px-10">
			Welcome to Oakshield Security (Pty) Ltd, a proudly South African company providing top-tier
			security solutions for clients in Cape Town and the West Coast.
		</p>
	</div>
	<div class="flex gap-5">
		<AboutCard
			heading="Local Expertise"
			text="Serving Atlantis and the West Coast with unparalleled security solutions."
			icon={globe}
			alt="A shield icon"
		/>
		<AboutCard
			heading="100% Black Owned"
			text="We are a Level 1 B-BBEE contributor, committed to empowering local communities."
			icon={suitcase}
			alt="A shield icon"
		/>
		<AboutCard
			heading="Regulatory Compliance"
			text="Registered with PSIRA to meet all legal and professional standards."
			icon={medal}
			alt="A shield icon"
		/>
	</div>

	<button class="border border-onSurfacePrimary rounded p-3 text-lg text-onSurfacePrimary transition hover:bg-onSurfacePrimary hover:text-surface">Learn more about our services</button>
</section>
