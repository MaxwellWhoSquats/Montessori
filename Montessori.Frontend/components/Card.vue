<template>
  <UCard
    class="bg-white rounded-lg shadow-md p-6"
    :class="{ 'bg-teal-50': color === 'teal' }"
  >
    <h3 v-if="title" class="text-xl font-semibold mb-2 text-teal-700">
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
});
</script>
