<template>
  <div class="p-4 space-y-4 border-2 border-teal-600 rounded-xl">
    <h2 class="text-2xl font-bold mb-4">Contact Submissions</h2>
    <div v-if="submissions.length" class="space-y-4">
      <div
        v-for="submission in submissions"
        :key="submission.id"
        class="border p-4 rounded shadow"
      >
        <p><strong>Name:</strong> {{ submission.name }}</p>
        <p><strong>Email:</strong> {{ submission.email }}</p>
        <p><strong>Phone:</strong> {{ submission.phone }}</p>
        <p><strong>Message:</strong> {{ submission.message }}</p>
        <p>
          <strong>Submitted:</strong>
          {{ new Date(submission.submittedAt).toLocaleDateString() }}
        </p>
      </div>
    </div>
    <p v-else>No submissions yet.</p>
  </div>
</template>

<script setup>
import axios from "axios";

const submissions = ref([]);

const fetchSubmissions = async () => {
  // Check if running on the client side
  if (!process.client) return;

  // Get the token from the cookie, which stores the JWT for authentication
  const tokenCookie = useCookie("token");
  if (!tokenCookie.value) return;

  try {
    // Make an HTTP GET request to the backend API with the token in the Authorization header
    const response = await axios.get("http://localhost:5027/api/contact", {
      headers: { Authorization: `Bearer ${tokenCookie.value}` },
    });
    submissions.value = response.data;
  } catch (err) {
    console.error("Failed to fetch submissions:", err);
  }
};

onMounted(fetchSubmissions);
</script>
