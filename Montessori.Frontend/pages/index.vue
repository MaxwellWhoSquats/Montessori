<template>
  <div class="flex flex-col">
    <Hero />
    <!-- Intro -->
    <UContainer class="my-16">
      <div
        ref="introSection"
        class="grid grid-cols-1 md:grid-cols-2 gap-8 opacity-0"
      >
        <Card title="Our Mission" color="teal">
          At Gift of Grace Montessori, we create a nurturing, engaging
          environment where children thrive through hands-on learning,
          creativity, and exploration.
        </Card>
        <Card title="Why Choose Us?" color="teal">
          Our classroom applies the Montessori method to inspire independence,
          curiosity, and a lifelong love of learning in every child.
        </Card>
      </div>
    </UContainer>

    <UContainer class="my-16">
      <div
        ref="additionalContent"
        class="grid grid-cols-1 md:grid-cols-3 gap-6 opacity-0"
      >
        <Card title="Individualized Learning" color="teal">
          We meet every child where they are and help them grow confidently at
          their own pace.
        </Card>
        <Card title="Faith-Based Foundation" color="teal">
          Rooted in Christian values, we guide students in love, grace, and
          respect for others.
        </Card>
        <Card title="Enriched Curriculum" color="teal">
          Our curriculum balances academics, creativity, and practical life
          skills for holistic development.
        </Card>
      </div>
    </UContainer>

    <!-- Call to Action -->
    <UContainer
      class="py-16 text-center bg-gradient-to-r from-teal-100 via-teal-50 to-white rounded-t-2xl mb-12"
    >
      <div ref="callToAction" class="opacity-0">
        <h2 class="text-4xl font-bold mb-4 text-teal-800">Ready to Join Us?</h2>
        <p class="text-xl mb-6 text-gray-700">
          Discover how Gift of Grace Montessori can inspire your child’s growth.
        </p>
        <UButton to="/about" color="primary" size="lg" class="shadow-md">
          Get Started
        </UButton>
      </div>
    </UContainer>
  </div>
</template>

<script setup>
import { onMounted, ref } from "vue";
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";

import Hero from "../components/Hero.vue";
import Card from "../components/Card.vue";

const introSection = ref(null);
const additionalContent = ref(null);
const callToAction = ref(null);

onMounted(() => {
  gsap.registerPlugin(ScrollTrigger);

  if (introSection.value) {
    gsap.fromTo(
      introSection.value,
      { opacity: 0, y: 50 },
      {
        opacity: 1,
        y: 0,
        duration: 0.8,
        ease: "power2.out",
        scrollTrigger: {
          trigger: introSection.value,
          start: "top 80%",
          toggleActions: "play none none reverse",
        },
      }
    );
  }

  if (additionalContent.value) {
    gsap.fromTo(
      additionalContent.value,
      { opacity: 0, y: 50 },
      {
        opacity: 1,
        y: 0,
        duration: 0.8,
        ease: "power2.out",
        scrollTrigger: {
          trigger: additionalContent.value,
          start: "top 80%",
          toggleActions: "play none none reverse",
        },
      }
    );
  }

  if (callToAction.value) {
    gsap.fromTo(
      callToAction.value,
      { opacity: 0, y: 50 },
      {
        opacity: 1,
        y: 0,
        duration: 0.8,
        ease: "power2.out",
        scrollTrigger: {
          trigger: callToAction.value,
          start: "top 80%",
          toggleActions: "play none none reverse",
        },
      }
    );
  }
});
</script>
