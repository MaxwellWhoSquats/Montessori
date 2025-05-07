<template>
  <div class="flex flex-col">
    <div class="relative">
      <Hero />
      <div ref="downArrow">
        <DownArrow />
      </div>
    </div>
    <!-- Introduction Text -->
    <UContainer class="my-24 text-center">
      <div ref="introText" class="opacity-0 max-w-4xl mx-auto">
        <p class="text-lg text-gray-700 leading-relaxed mb-4">
          At <strong>Gift of Grace Montessori</strong>, we bring a
          <strong>personal touch</strong> to education through our nurturing
          microschool program. Designed to meet each child’s
          <strong>unique needs</strong>, our Montessori approach ensures
          learning is an <strong>immersive and dynamic journey</strong>. We
          believe every child has the potential to achieve
          <strong>greatness</strong>, and our goal is to help them flourish with
          grace, ready for every good work (2 Timothy 3:17).
        </p>
        <p class="text-lg text-gray-700 leading-relaxed">
          Our heartfelt commitment is to partner with parents in fostering
          <strong>faith, knowledge, and character</strong>. By planting the
          seeds of <strong>spiritual and educational growth</strong>, we
          cultivate a foundation that will thrive throughout your child’s life.
          Through <strong>individualized instruction</strong>, a
          <strong>multi-age classroom</strong>, and a
          <strong>faith-based curriculum</strong>, we inspire a lifelong passion
          for learning and strong community connections.
        </p>
      </div>
    </UContainer>

    <!-- Carousel Section -->
    <UContainer>
      <div ref="carouselSection" class="opacity-0">
        <ImageCarousel :showDots="showDots" />
      </div>
    </UContainer>

    <!-- Feature Cards -->
    <UContainer class="mt-28 mb-12">
      <div
        ref="featureCards"
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

    <!-- Learn More Section -->
    <UContainer>
      <div
        ref="learnMore"
        class="my-12 py-12 text-center bg-gradient-to-b from-teal-100 via-teal-100 to-teal-50 rounded-2xl opacity-0"
      >
        <h2 class="text-3xl font-bold mb-4 text-teal-800">
          Learn More About Us
        </h2>
        <p class="text-lg text-gray-700 mb-6">
          Explore our Montessori philosophy, programs, and community to see how
          we nurture every child’s potential.
        </p>
        <UButton
          to="/about"
          size="lg"
          class="shadow-md bg-teal-500 hover:bg-teal-600 hover:scale-110 transition duration-100"
        >
          Discover More
        </UButton>
      </div>
    </UContainer>

    <!-- Call to Action -->
    <UContainer class="mb-12 py-12">
      <div ref="callToAction" class="opacity-0 text-center">
        <h2 class="text-4xl font-bold mb-4 text-teal-800">Looking to Join?</h2>
        <p class="text-xl mb-6 text-gray-700">
          Get in contact to discover Gift of Grace Montessori can inspire your
          child’s growth.
        </p>
        <UButton
          to="/contact"
          color="primary"
          size="xl"
          class="shadow-md bg-teal-500 hover:bg-teal-600 hover:scale-110 transition duration-100"
          icon="i-heroicons-envelope"
        >
          Get Started
        </UButton>
      </div>
    </UContainer>
  </div>
</template>

<script setup>
import { onMounted, onUnmounted, ref, computed } from "vue";
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";

import Hero from "../components/Hero.vue";
import Card from "../components/Card.vue";
import ImageCarousel from "../components/ImageCarousel.vue";
import DownArrow from "../components/Icons/DownArrow.vue";

const introText = ref(null);
const carouselSection = ref(null);
const featureCards = ref(null);
const callToAction = ref(null);
const downArrow = ref(null);
const learnMore = ref(null);
const windowWidth = ref(0);

// Track window width for ImageCarousel dots visibility
const updateWindowWidth = () => {
  if (typeof window !== "undefined") {
    windowWidth.value = window.innerWidth;
  }
};
const showDots = computed(() => {
  return windowWidth.value >= 768; // Tailwind's 'md' breakpoint
});

onMounted(() => {
  gsap.registerPlugin(ScrollTrigger);

  updateWindowWidth();
  window.addEventListener("resize", updateWindowWidth);

  // Bouncing Down Arrow Animation
  if (downArrow.value) {
    gsap.to(downArrow.value, {
      y: -10,
      duration: 1,
      ease: "power1.inOut",
      repeat: -1,
      yoyo: true,
    });
  }

  // Scroll Arrow Fade Out
  if (downArrow.value && introText.value) {
    gsap.to(downArrow.value, {
      opacity: 0,
      duration: 0.5,
      ease: "power2.out",
      scrollTrigger: {
        trigger: introText.value,
        start: "top 80%",
        toggleActions: "play none none reverse",
      },
    });
  }

  // Intro Text and Carousel Animation
  if (introText.value && carouselSection.value) {
    gsap.fromTo(
      [introText.value, carouselSection.value],
      { opacity: 0, y: 50 },
      {
        opacity: 1,
        y: 0,
        duration: 0.8,
        ease: "power2.out",
        scrollTrigger: {
          trigger: introText.value,
          start: "top 80%",
          toggleActions: "play none none reverse",
        },
      }
    );
  }

  // Feature Cards Animation
  if (featureCards.value) {
    gsap.fromTo(
      featureCards.value,
      { opacity: 0, y: 50 },
      {
        opacity: 1,
        y: 0,
        duration: 0.8,
        ease: "power2.out",
        scrollTrigger: {
          trigger: featureCards.value,
          start: "top 80%",
          toggleActions: "play none none reverse",
        },
      }
    );
  }

  // Learn More Animation
  if (learnMore.value) {
    gsap.fromTo(
      learnMore.value,
      { opacity: 0, y: 50 },
      {
        opacity: 1,
        y: 0,
        duration: 0.8,
        ease: "power2.out",
        scrollTrigger: {
          trigger: learnMore.value,
          start: "top 80%",
          toggleActions: "play none none reverse",
        },
      }
    );
  }

  // Call to Action Animation
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

onUnmounted(() => {
  window.removeEventListener("resize", updateWindowWidth);
});
</script>
