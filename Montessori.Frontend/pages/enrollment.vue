<template>
  <div class="flex flex-col">
    <!-- Header Image -->
    <div class="w-full h-[40vh] overflow-hidden">
      <img
        src="/enrollment.jpg"
        alt="Enrollment at Gift of Grace Montessori"
        class="w-full h-full object-cover"
      />
    </div>

    <!-- Introduction -->
    <UContainer class="mt-12 mb-6 space-y-8">
      <h1 class="text-4xl font-bold text-center text-teal-800">
        Enrollment at Gift of Grace Montessori
      </h1>
      <div class="max-w-3xl mx-auto space-y-4 text-center">
        <h2 class="text-2xl font-semibold text-teal-700">
          A Year-Round Approach to Learning
        </h2>
        <p class="text-lg text-gray-700">
          Gift of Grace Montessori offers a
          <strong>Monday–Thursday schedule from 9:00 AM to 2:00 PM,</strong>
          following a year-round calendar with built-in breaks to keep learning
          fresh and engaging. Our four-day school week allows for deep, hands-on
          learning while leaving space for family life and personal interests.
          This balanced approach helps prevent burnout and fosters a lifelong
          love of learning.
        </p>
      </div>
    </UContainer>

    <!-- Tour -->
    <UContainer class="my-6">
      <USeparator class="mb-6" icon="i-lucide-door-open" size="sm" />
      <div class="text-center space-y-4">
        <h2 class="text-3xl font-bold text-teal-800">
          It All Begins with a Tour
        </h2>
        <p class="text-lg text-gray-700 max-w-2xl mx-auto">
          We warmly invite families to tour our school to ensure it’s the right
          fit for their child. Once enrolled, children are welcomed and cared
          for as if they were our own. We understand the importance of choosing
          the right learning environment and strive to make the transition
          seamless.
        </p>
        <UButton
          class="shadow-md bg-teal-500 hover:bg-teal-600 transform hover:scale-110 transition-transform duration-200"
          size="xl"
          icon="i-heroicons-envelope"
          to="/contact"
          label="Schedule a Tour"
        />
      </div>
    </UContainer>

    <!-- Tuition & Payment Information -->
    <UContainer class="my-6">
      <USeparator class="mb-6" icon="i-heroicons-credit-card" size="sm" />
      <div class="text-center mb-10">
        <h2 class="text-3xl font-bold text-teal-800">
          Tuition & Payment Information
        </h2>
        <p class="mt-2 text-lg text-gray-600 max-w-2xl mx-auto">
          Gift of Grace Montessori is funded through tuition payments, and
          families are responsible for ensuring timely payments. There are no
          tuition reductions for illness, absences, emergencies, or inclement
          weather. We use Brightwheel, a secure online system for tuition
          payments.
        </p>
      </div>
      <div class="grid md:grid-cols-2 gap-8 max-w-3xl mx-auto">
        <UCard class="hover:shadow-xl transition-shadow duration-300">
          <template #header>
            <div class="flex items-center">
              <UIcon
                name="i-lucide-wallet"
                class="text-2xl text-teal-600 mr-3"
              />
              <h3 class="text-xl font-semibold text-teal-700">Tuition Fees</h3>
            </div>
          </template>
          <ul class="list-disc space-y-2 text-gray-700">
            <li>
              Annual Tuition: <strong>$7,200</strong> (may be divided into
              monthly installments)
            </li>
            <li>Book & Activity Fee: $200 per year</li>
          </ul>
        </UCard>
        <UCard class="hover:shadow-xl transition-shadow duration-300">
          <template #header>
            <div class="flex items-center">
              <UIcon
                name="i-lucide-ticket"
                class="text-2xl text-teal-600 mr-3"
              />
              <h3 class="text-xl font-semibold text-teal-700">
                Discount Opportunities
              </h3>
            </div>
          </template>
          <ul class="list-disc space-y-2 text-gray-700">
            <li>
              Sibling Discount: Families enrolling a second child receive a
              <strong>$400 discount.</strong>
            </li>
          </ul>
        </UCard>
      </div>
    </UContainer>

    <!-- Enrollment Requirements -->
    <UContainer class="my-6">
      <USeparator class="mb-6" icon="i-lucide-book-check" size="sm" />
      <div class="text-center">
        <h2 class="text-3xl font-bold text-teal-800">
          Enrollment Requirements
        </h2>
        <p class="mt-2 text-sm text-gray-600 max-w-2xl mx-auto">
          The following documents must be on file for each enrolled child:
        </p>
      </div>
      <div class="mt-6 max-w-3xl mx-auto space-y-4">
        <ul class="list-disc space-y-2 text-gray-700 text-lg">
          <li>Enrollment Form</li>
          <li>
            Emergency Contacts (completed in the Brightwheel app, to be used if
            a parent is unavailable in case of illness, injury, or emergency)
          </li>
          <li>
            Health Appraisal (signed and dated by the child’s physician) and
            Current Immunization Record
          </li>
          <li>
            Medical and other exemptions are permitted with properly completed
            and signed waiver forms, available through Kalamazoo County Health
            and Community Services. To schedule an appointment, call
            <a href="tel:+12693735198" class="text-teal-600 hover:underline"
              >(269) 373-5198</a
            >.
          </li>
        </ul>
      </div>
    </UContainer>

    <!-- Call to Action -->
    <UContainer
      class="my-6 text-center bg-gradient-to-b from-teal-100 to-teal-50 rounded-t-2xl py-12 space-y-6"
    >
      <h2 class="text-3xl font-bold text-teal-800">Ready to Join Us?</h2>
      <p class="text-lg text-gray-700 max-w-xl mx-auto">
        Contact us today to schedule a tour and learn more about our enrollment
        process!
      </p>
      <UButton
        class="shadow-md bg-teal-500 hover:bg-teal-600 transform hover:scale-110 transition-transform duration-200"
        size="xl"
        icon="i-heroicons-envelope"
        to="/contact"
        label="Get Started"
      />
    </UContainer>
  </div>
</template>
