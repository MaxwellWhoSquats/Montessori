<template>
  <div class="flex flex-col">
    <!-- Heading -->
    <UContainer class="mt-12 text-center">
      <h1 class="text-4xl font-bold text-teal-800 mb-4">Contact Us</h1>
      <p class="text-lg text-gray-600">
        We’d love to hear from you! Reach out to learn more about Gift of Grace
        Montessori or to schedule a visit.
      </p>
    </UContainer>

    <!-- Contact -->
    <UContainer class="my-12">
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 max-w-6xl mx-auto">
        <!-- Contact Information -->
        <Card title="Contact Information" color="teal" centerTitle="true">
          <div class="space-y-4 text-center">
            <!-- Address -->
            <div>
              <h3 class="text-lg font-medium text-teal-600 mb-1">Address</h3>
              <p class="text-gray-600 leading-relaxed">
                Gift of Grace Montessori<br />
                6339 Atlantic Avenue<br />
                Kalamazoo, Michigan 49009
              </p>
            </div>
            <!-- Phone / Email -->
            <div>
              <h3 class="text-lg font-medium text-teal-600 mb-1">Message</h3>
              <p class="text-gray-600 leading-relaxed space-x-1">
                <strong>Phone:</strong>
                <a href="tel:2693655775" class="hover:text-teal-600"
                  >269-365-5775</a
                >
              </p>
              <p class="text-gray-600 leading-relaxed space-x-1">
                <strong>Email:</strong>
                <a
                  href="mailto:giftofgracemontessori@gmail.com"
                  class="hover:text-teal-600"
                  >giftofgracemontessori@gmail.com</a
                >
              </p>
            </div>
            <!-- Hours -->
            <div>
              <h3 class="text-lg font-medium text-teal-600 mb-1">Hours</h3>
              <p class="text-gray-600 leading-relaxed">
                Monday - Thursday<br />
                9:00am - 2:00pm
              </p>
            </div>
            <!-- Social -->
            <div>
              <h3 class="text-lg font-medium text-teal-600 mb-2">Follow Us</h3>
              <UButton
                to="https://www.facebook.com/giftofgracemontessori/"
                color="primary"
                size="md"
                class="shadow-md bg-teal-500 hover:bg-teal-600 hover:scale-110 transition duration-100"
                icon="uiw:facebook"
              >
                Connect on Facebook
              </UButton>
            </div>
          </div>
        </Card>

        <!-- Contact Form -->
        <Card title="Send a Message" color="teal" centerTitle="true">
          <ContactForm />
        </Card>
      </div>
    </UContainer>
  </div>
</template>

<script setup>
import Card from "../components/Card.vue";
import ContactForm from "../components/ContactForm.vue";
</script>
