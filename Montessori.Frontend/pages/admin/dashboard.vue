<template>
  <UContainer class="my-12">
    <div class="max-w-4xl mx-auto">
      <div class="flex justify-between items-center mb-6">
        <h1 class="text-3xl font-bold text-teal-600">Admin Dashboard</h1>
        <UButton
          @click="logout"
          color="primary"
          size="lg"
          class="shadow-md bg-teal-700 hover:bg-teal-800 hover:scale-110 transition duration-100 cursor-pointer"
          icon="i-lucide-log-out"
        >
          Logout
        </UButton>
      </div>
      <USelect v-model="selectedView" :items="views" class="w-48 mb-6" />
      <Messages v-if="selectedView === 'Messages'" />
      <ParentDirectory v-if="selectedView === 'Parent Directory'" />
    </div>
  </UContainer>
</template>

<script setup>
import { ref } from "vue";
import { navigateTo, useCookie } from "#app";
import Messages from "../../components/admin/messages.vue";
import ParentDirectory from "../../components/admin/ParentDirectory.vue";

definePageMeta({
  middleware: "auth",
});

const views = ref(["Messages", "Parent Directory"]);
const selectedView = ref("Messages");

const logout = () => {
  const tokenCookie = useCookie("token");
  tokenCookie.value = null; // Clear the cookie on logout
  navigateTo("/");
};
</script>
