<template>
  <UContainer class="my-12">
    <div class="max-w-4xl mx-auto">
      <h1 class="text-3xl font-bold text-teal-600 mb-6">Admin Dashboard</h1>
      <Messages />
    </div>
  </UContainer>
</template>

<script setup>
import Messages from "../../components/admin/messages.vue";

definePageMeta({
  middleware: "auth",
});
</script>
