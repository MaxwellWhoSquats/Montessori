<template>
  <UContainer class="my-12">
    <div class="max-w-md mx-auto">
      <Card title="Admin Login" color="teal" centerTitle="true">
        <form @submit.prevent="login" class="space-y-6">
          <div>
            <label
              for="username"
              class="block text-sm font-medium text-teal-600 mb-1"
              >Username</label
            >
            <UInput
              v-model="form.username"
              id="username"
              type="text"
              placeholder="Enter your username"
              required
              size="lg"
              class="w-full"
            />
          </div>
          <div>
            <label
              for="password"
              class="block text-sm font-medium text-teal-600 mb-1"
              >Password</label
            >
            <UInput
              v-model="form.password"
              id="password"
              type="password"
              placeholder="Enter your password"
              required
              size="lg"
              class="w-full"
            />
          </div>
          <div class="text-center">
            <UButton
              type="submit"
              color="primary"
              size="lg"
              class="shadow-md bg-teal-500 hover:bg-teal-600 hover:scale-110 transition duration-100 cursor-pointer"
              icon="i-lucide-key-round"
            >
              Login
            </UButton>
          </div>
          <p v-if="error" class="text-red-500 text-center">
            Error: {{ error }}
          </p>
        </form>
      </Card>
    </div>
  </UContainer>
</template>

<script setup>
import axios from "axios";

const router = useRouter();
const form = reactive({
  username: "",
  password: "",
});
const error = ref("");

const login = async () => {
  try {
    const response = await axios.post(
      "http://localhost:5027/api/auth/login",
      form
    );
    localStorage.setItem("token", response.data.token);
    router.push("/admin/dashboard");
  } catch (err) {
    error.value = "Invalid credentials";
  }
};
</script>
