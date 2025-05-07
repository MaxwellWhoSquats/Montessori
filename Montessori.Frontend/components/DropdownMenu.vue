<script setup lang="ts">
import type { DropdownMenuItem } from "@nuxt/ui";

const items = ref<DropdownMenuItem[]>([
  {
    label: "Home",
    icon: "i-lucide-house",
    to: "/",
  },
  {
    label: "Our School",
    icon: "i-lucide-apple",
    to: "/about",
  },
  {
    label: "Contact",
    icon: "i-lucide-send",
    to: "/contact",
  },
]);
</script>

<template>
  <UDropdownMenu
    arrow
    :items="items"
    :ui="{
      content: 'w-48',
    }"
  >
    <UButton icon="i-lucide-menu" color="neutral" variant="outline" />
  </UDropdownMenu>
</template>
