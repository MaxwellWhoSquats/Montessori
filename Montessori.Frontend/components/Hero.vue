<template>
  <div class="relative w-full">
    <video
      autoplay
      muted
      loop
      class="w-full h-[80vh] object-cover"
      src="/hero-video.mp4"
    ></video>
    <div class="absolute inset-0 flex items-center justify-center bg-black/20">
      <UContainer>
        <div ref="heroText" class="text-center text-white" style="opacity: 0">
          <h1 class="text-5xl md:text-6xl font-extrabold mb-4">
            Welcome to Gift of Grace Montessori
          </h1>
          <p class="text-xl md:text-2xl mb-6">
            Nurturing young minds with love, creativity, and individualized
            learning.
          </p>
          <UButton
            to="/about"
            size="lg"
            class="shadow-md bg-teal-500 hover:bg-teal-600 hover:scale-110 transition duration-100"
          >
            Learn More
          </UButton>
        </div>
      </UContainer>
    </div>
  </div>
</template>

<script setup>
import { onMounted, ref } from "vue";
import { gsap } from "gsap";

const heroText = ref(null);

onMounted(() => {
  if (heroText.value) {
    gsap.fromTo(
      heroText.value,
      { opacity: 0, y: 20 },
      { opacity: 1, y: 0, duration: 0.8, delay: 0.25, ease: "power2.out" }
    );
  }
});
</script>
