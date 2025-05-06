<script setup lang="ts">
import * as z from "zod";
import type { FormSubmitEvent } from "@nuxt/ui";

const schema = z.object({
  firstname: z.string().min(1, "First name is required"),
  lastname: z.string().min(1, "Last name is required"),
  email: z.string().email("Invalid email"),
  phone: z.string().regex(/^\+?[\d\s-]{10,}$/, "Invalid phone number"),
});

type Schema = z.output<typeof schema>;

const state = reactive<Partial<Schema>>({
  firstname: undefined,
  lastname: undefined,
  email: undefined,
  phone: undefined,
});

const toast = useToast();
async function onSubmit(event: FormSubmitEvent<Schema>) {
  toast.add({
    title: "Success",
    description: "The form has been submitted.",
    color: "success",
  });
  console.log(event.data);
}
</script>

<template>
  <div class="flex justify-center items-center">
    <UForm
      :schema="schema"
      :state="state"
      class="space-y-4 mx-auto mt-6 max-w-lg"
      @submit="onSubmit"
    >
      <UFormField label="First Name" name="firstname">
        <UInput v-model="state.firstname" class="mx-auto w-96" />
      </UFormField>
      <UFormField label="Last Name" name="lastname">
        <UInput v-model="state.lastname" class="mx-auto w-96" />
      </UFormField>
      <UFormField label="Email" name="email">
        <UInput v-model="state.email" type="email" class="mx-auto w-96" />
      </UFormField>
      <UFormField label="Phone" name="phone">
        <UInput v-model="state.phone" type="tel" class="mx-auto w-96" />
      </UFormField>
      <div class="text-center">
        <UButton
          type="submit"
          color="primary"
          size="md"
          class="shadow-md bg-teal-500 hover:bg-teal-600 hover:scale-110 transition duration-100 cursor-pointer"
        >
          Submit
        </UButton>
      </div>
    </UForm>
  </div>
</template>
