<template>
  <UCard
    class="bg-white rounded-lg shadow-md p-4"
    :class="{ 'bg-teal-50': color === 'teal' }"
  >
    <h3
      v-if="title"
      class="text-2xl font-semibold mb-4 text-teal-700"
      :class="{ 'text-center': centerTitle }"
    >
      {{ title }}
    </h3>
    <p class="text-gray-600">
      <slot />
    </p>
  </UCard>
</template>

<script setup>
defineProps({
  title: String,
  color: {
    type: String,
    default: "default",
  },
  centerTitle: {
    type: Boolean,
    default: false,
  },
});
</script>
