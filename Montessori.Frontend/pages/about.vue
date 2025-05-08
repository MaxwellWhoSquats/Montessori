<template>
  <div class="flex flex-col">
    <div class="w-full h-[40vh] overflow-hidden">
      <img
        src="/about-image.jpg"
        alt="About Us image"
        class="w-full h-full object-cover object-top"
      />
    </div>

    <UContainer class="mt-12 mb-6 space-y-8">
      <h1 class="text-4xl font-bold text-center text-teal-800">
        About Gift of Grace Montessori
      </h1>
      <div class="max-w-3xl mx-auto space-y-4 text-center">
        <p class="text-lg text-gray-700">
          Founded with a passion for early childhood education, Gift of Grace
          Montessori nurtures children in a supportive, faith-based community,
          fostering growth in mind, body, and heart.
        </p>
        <p class="text-lg text-gray-700">
          Our microschool blends the timeless Montessori method with modern
          teaching in a peaceful, home-like setting to promote independence,
          curiosity, and wonder.
        </p>
        <div class="flex justify-center gap-4 mt-6">
          <UBadge color="primary" variant="solid" size="lg">Faith-Based</UBadge>
          <UBadge color="primary" variant="solid" size="lg"
            >Montessori-Inspired</UBadge
          >
          <UBadge color="primary" variant="solid" size="lg"
            >Holistic Learning</UBadge
          >
        </div>
      </div>
    </UContainer>

    <UContainer class="my-6">
      <USeparator class="mb-10" icon="i-lucide-apple" size="sm" />
      <div
        class="grid grid-cols-1 md:grid-cols-2 gap-12 md:gap-24 items-center"
      >
        <div id="teacherImage" class="flex justify-center">
          <img
            src="/teacher.jpg"
            alt="Stacey Eley"
            class="rounded-xl shadow-lg w-full max-w-md object-cover"
          />
        </div>
        <div id="teacherInfoText" class="space-y-4">
          <h2 class="mb-6 text-3xl font-bold text-teal-800">
            Meet Our Teacher
          </h2>
          <p class="text-md text-gray-700">
            Hello, I'm <strong>Stacey Eley!</strong> As the owner and teacher of
            Gift of Grace Montessori, I warmly welcome you. I am a passionate
            educator, wife, mother of two, and follower of Jesus Christ. I hold
            a Bachelor of Science in Elementary Education with a specialization
            in Early Childhood from Western Michigan University, as well as a
            diploma from an internationally recognized Montessori teacher
            training program.
          </p>
          <p class="text-md text-gray-700">
            With over 25 years of teaching experience, my vision is to create a
            Montessori-inspired school where children experience each moment
            with love, grace, and gratitude. Gift of Grace Montessori is an
            inviting environment where children of various ages learn
            together—fostering teamwork, developing leadership, and learning
            about Christ's love for us.
          </p>
        </div>
      </div>
      <USeparator class="mt-10" size="sm" icon="i-ph-cross-light" />
    </UContainer>

    <UContainer class="my-6">
      <div class="text-center mb-10">
        <h2 class="text-3xl font-bold text-teal-800">Our Approach</h2>
        <p class="mt-2 text-lg text-gray-600 max-w-2xl mx-auto">
          We believe in a holistic and individualized journey for every child,
          rooted in Montessori principles and guided by faith.
        </p>
      </div>
      <div class="grid md:grid-cols-3 gap-8">
        <UCard
          v-for="approach in approaches"
          :key="approach.title"
          class="hover:shadow-xl transition-shadow duration-300"
        >
          <template #header>
            <div class="flex items-center">
              <UIcon
                :name="approach.icon"
                class="text-2xl text-teal-600 mr-3"
              />
              <h3 class="text-xl font-semibold text-teal-700">
                {{ approach.title }}
              </h3>
            </div>
          </template>
          <p class="text-gray-700">{{ approach.description }}</p>
          <ul
            v-if="approach.points"
            class="list-disc list-inside mt-2 space-y-1 text-gray-600 text-sm"
          >
            <li v-for="point in approach.points" :key="point">{{ point }}</li>
          </ul>
        </UCard>
      </div>
    </UContainer>

    <UContainer class="my-6">
      <div class="text-center mb-6">
        <h2 class="text-3xl font-bold text-teal-800">Our Curriculum</h2>
        <p class="mt-2 text-lg text-gray-600 max-w-3xl mx-auto">
          We primarily use
          <strong>The Good and the Beautiful</strong> curriculum, thoughtfully
          selected to align with our mission of connecting children to the good
          and beautiful in life and learning. Our hands-on program ensures
          students progress based on mastery, with individualized instruction in
          a multi-age setting.
        </p>
      </div>
      <div class="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-4">
        <UCard
          v-for="subject in subjects"
          :key="subject.name"
          class="text-center hover:shadow-lg transition-shadow duration-200"
          :ui="{ body: { padding: 'px-4 py-5 sm:p-6' } }"
        >
          <div class="flex flex-col items-center">
            <UIcon
              v-if="subject.icon"
              :name="subject.icon"
              class="text-3xl text-teal-600 mb-2"
            />
            <span class="font-medium text-teal-700">{{ subject.name }}</span>
          </div>
        </UCard>
      </div>
      <p class="text-center mt-8 text-gray-600 text-md">
        And many more enriching activities designed to foster a love for
        learning!
      </p>
    </UContainer>

    <UContainer
      class="my-6 text-center bg-gradient-to-b from-teal-100 to-teal-50 rounded-t-2xl py-12 space-y-6"
    >
      <h2 class="text-3xl font-bold text-teal-800">Get in Touch</h2>
      <p class="text-lg text-gray-700 max-w-xl mx-auto">
        Have questions or want to learn more about our community? Reach out to
        us!
      </p>
      <UButton
        class="shadow-md bg-teal-500 hover:bg-teal-600 transform hover:scale-110 transition-transform duration-200"
        size="xl"
        icon="i-heroicons-envelope"
        to="/contact"
        label="Contact Us"
      />
    </UContainer>
  </div>
</template>

<script setup>
// For "Our Approach" Section
const approaches = [
  {
    title: "Personalized Learning",
    icon: "i-heroicons-academic-cap",
    description:
      "We tailor education to each child’s needs with small classes and hands-on activities.",
    points: [
      "Gardening & nature exploration",
      "Practical life skills development",
      "Individualized learning pace",
    ],
  },
  {
    title: "Holistic Support",
    icon: "i-heroicons-heart",
    description:
      "Our approach nurtures mind, body, and heart, combining Montessori principles with a supportive, faith-based environment.",
    points: [
      "Personalized learning based on competency",
      "Blend of private school and homeschool support",
      "Guided with love, grace, and patience",
    ],
  },
  {
    title: "Community Engagement",
    icon: "i-heroicons-users",
    description:
      "Children engage in communal activities like preparing snacks, eating together, and caring for their environment, fostering social and emotional growth.",
    points: [
      "Collaborative snack preparation",
      "Shared meal times",
      "Environmental care & responsibility",
    ],
  },
];

// For "Our Curriculum" Section
const subjects = [
  { name: "Reading", icon: "i-heroicons-book-open" },
  { name: "Writing", icon: "i-heroicons-pencil" },
  { name: "Grammar", icon: "i-heroicons-language" },
  { name: "Handwriting", icon: "i-heroicons-sparkles" },
  { name: "Science", icon: "i-heroicons-beaker" },
  { name: "Cultural Studies", icon: "i-heroicons-globe-americas" },
  { name: "Math", icon: "i-heroicons-calculator" },
  { name: "Botany", icon: "i-lucide-leaf" },
  { name: "Geography", icon: "i-heroicons-map" },
  { name: "Art", icon: "i-heroicons-paint-brush" },
  { name: "Practical Life", icon: "i-heroicons-home" },
  { name: "Music", icon: "i-heroicons-musical-note" },
];
</script>
