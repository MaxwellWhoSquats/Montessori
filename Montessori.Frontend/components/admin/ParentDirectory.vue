<template>
  <div>
    <h2 class="text-2xl font-semibold text-teal-600 mb-4">Parent Directory</h2>
    <UForm :schema="schema" :state="formState" @submit="submitParent">
      <div class="grid grid-cols-2 gap-4 mb-6">
        <UFormGroup label="Name" name="name">
          <UInput v-model="formState.name" placeholder="Enter name" />
        </UFormGroup>
        <UFormGroup label="Email" name="email">
          <UInput
            v-model="formState.email"
            placeholder="Enter email"
            type="email"
          />
        </UFormGroup>
        <UFormGroup label="Phone" name="phone">
          <UInput v-model="formState.phone" placeholder="Enter phone" />
        </UFormGroup>
        <UFormGroup label="Notes" name="notes">
          <UInput v-model="formState.notes" placeholder="Enter notes" />
        </UFormGroup>
      </div>
      <UButton type="submit" color="primary">Add Parent</UButton>
    </UForm>
    <UTable
      ref="table"
      :data="parents"
      :columns="columns"
      class="mt-6"
      :ui="{ tr: 'hover:bg-teal-100 transition-colors' }"
    />
  </div>
</template>

<script setup>
import { ref, h } from "vue";
import { z } from "zod";
import axios from "axios";
import { useCookie } from "nuxt/app";

const schema = z.object({
  name: z.string().min(1, "Name is required"),
  email: z.string().email("Invalid email"),
  phone: z.string().optional(),
  notes: z.string().optional(),
});

const formState = ref({
  name: "",
  email: "",
  phone: "",
  notes: "",
});

const parents = ref([]);
const columns = [
  {
    accessorKey: "name",
    header: "Name",
    cell: ({ row }) => h("span", { class: "font-bold" }, row.getValue("name")),
  },
  { accessorKey: "email", header: "Email" },
  { accessorKey: "phone", header: "Phone" },
  { accessorKey: "notes", header: "Notes" },
  {
    accessorKey: "createdAt",
    header: "Created At",
    cell: ({ row }) => new Date(row.getValue("createdAt")).toLocaleDateString(),
  },
];

const fetchParents = async () => {
  // Check if running on the client side
  if (!process.client) return;

  // Get the token from the cookie
  const tokenCookie = useCookie("token");
  if (!tokenCookie.value) {
    console.error("No token found");
    return;
  }

  try {
    const response = await axios.get("http://localhost:5027/api/parent", {
      headers: { Authorization: `Bearer ${tokenCookie.value}` },
    });
    parents.value = response.data;
  } catch (err) {
    console.error("Failed to fetch parents:", err);
  }
};

// Create a new parent in the database
const submitParent = async () => {
  // Check if running on the client side
  if (!process.client) return;

  // Get the token from the cookie
  const tokenCookie = useCookie("token");
  if (!tokenCookie.value) {
    console.error("No token found");
    return;
  }

  try {
    const response = await axios.post(
      "http://localhost:5027/api/parent",
      formState.value,
      {
        headers: { Authorization: `Bearer ${tokenCookie.value}` },
      }
    );
    parents.value.push(response.data);
    formState.value = { name: "", email: "", phone: "", notes: "" };
    console.log("Parent added successfully:", response.data);
  } catch (err) {
    console.error("Failed to add parent:", err);
  }
};

onMounted(fetchParents);
</script>
