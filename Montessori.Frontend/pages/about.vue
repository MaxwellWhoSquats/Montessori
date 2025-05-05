<template>
  <div class="flex flex-col">
    <!-- Header Image -->
    <div class="w-full h-[40vh] overflow-hidden">
      <img
        src="/about-image.jpg"
        alt="About Us image"
        class="w-full h-full object-cover object-top"
      />
    </div>

    <!-- About Section -->
    <UContainer class="my-12 space-y-6">
      <h1 class="text-3xl font-bold text-center text-teal-800">
        About Gift of Grace Montessori
      </h1>
      <p class="text-lg text-gray-700 text-center max-w-2xl mx-auto">
        Founded with a passion for early childhood education, we nurture
        children in a supportive, faith-based community, fostering growth in
        mind, body, and heart.
      </p>
      <p class="text-lg text-gray-700 text-center max-w-2xl mx-auto">
        Our microschool blends Montessori methods with modern teaching in a
        peaceful, home-like setting, encouraging independence and curiosity.
      </p>
    </UContainer>

    <!-- Approach Section -->
    <UContainer class="my-12 bg-teal-50 space-y-6">
      <h2 class="text-2xl font-bold text-center text-teal-800">Our Approach</h2>
      <div class="max-w-2xl mx-auto space-y-6">
        <div class="space-y-2">
          <h3 class="text-xl font-semibold text-teal-700">
            Personalized Learning
          </h3>
          <p class="text-lg text-gray-700">
            We tailor education to each child’s needs with small classes and
            hands-on activities like gardening and practical life skills.
          </p>
        </div>
        <div class="space-y-2">
          <h3 class="text-xl font-semibold text-teal-700">Holistic Support</h3>
          <p class="text-lg text-gray-700">
            Our approach nurtures mind, body, and heart, combining Montessori
            principles with a supportive, faith-based environment.
          </p>
          <ul class="list-disc list-inside text-lg text-gray-700 space-y-1">
            <li>Personalized learning based on competency</li>
            <li>Blend of private school and homeschool support</li>
            <li>Guided with love and patience</li>
          </ul>
        </div>
      </div>
    </UContainer>

    <!-- Community Section -->
    <UContainer class="my-12 space-y-8">
      <h2 class="text-2xl font-bold text-center text-teal-800">
        Our Community
      </h2>
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6 max-w-4xl mx-auto">
        <Card title="Since 2010" color="teal" class="bg-teal-50">
          Gift of Grace Montessori has been a beloved community for families
          seeking a holistic, faith-based approach to early childhood education.
        </Card>
        <Card title="Family-Centered" color="teal" class="bg-teal-50">
          We partner with parents to create a supportive network, balancing
          learning, play, and family time.
        </Card>
      </div>
    </UContainer>

    <!-- Contact Section -->
    <UContainer class="my-12 text-center bg-teal-50 rounded-t-2xl space-y-6">
      <h2 class="text-2xl font-bold text-teal-800">Get in Touch</h2>
      <p class="text-lg text-gray-700">Have questions? Reach out to us!</p>
      <UButton color="primary" size="md" icon="i-heroicons-envelope">
        Contact Us
      </UButton>
    </UContainer>
  </div>
</template>

<script setup>
import Card from "~/components/Card.vue";
</script>
