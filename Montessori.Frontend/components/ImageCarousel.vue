<template>
  <UCarousel
    v-slot="{ item }"
    loop
    arrows
    :dots="showDots"
    :autoplay="{ delay: 3000 }"
    :items="items"
    :ui="{ item: 'basis-1/2 md:basis-1/3 gap-2' }"
  >
    <img
      :src="item"
      class="rounded-lg object-cover w-full h-48 lg:h-80"
      alt="Carousel images"
    />
  </UCarousel>
</template>

<script setup>
const items = Array.from({ length: 30 }, (_, i) => `/Carousel/${i + 1}.jpg`);
defineProps({
  showDots: {
    type: Boolean,
    default: false,
  },
});
</script>
