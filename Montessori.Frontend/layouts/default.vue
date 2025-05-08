<template>
  <div class="min-h-screen flex flex-col">
    <!-- Navbar -->
    <header class="bg-teal-700 text-white shadow-lg sticky top-0 z-50">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <nav class="flex items-center justify-between py-4">
          <!-- Logo -->
          <a
            href="/"
            class="text-2xl font-bold tracking-tight hover:text-teal-200 transition-colors duration-200"
          >
            Gift of Grace Montessori
          </a>

          <!-- Desktop Menu -->
          <div
            class="hidden md:flex items-center space-x-8 text-lg font-medium"
          >
            <a
              href="/"
              class="hover:text-teal-200 transition-colors duration-200"
              >Home</a
            >
            <a
              href="/about"
              class="hover:text-teal-200 transition-colors duration-200"
              >Our School</a
            >
            <a
              href="/enrollment"
              class="hover:text-teal-200 transition-colors duration-200"
              >Enrollment</a
            >
            <a
              href="/contact"
              class="hover:text-teal-200 transition-colors duration-200"
              >Contact</a
            >
          </div>

          <!-- Mobile Menu -->
          <div class="md:hidden">
            <DropdownMenu />
          </div>
        </nav>
      </div>
    </header>

    <!-- Main content -->
    <main class="flex-grow">
      <slot />
    </main>

    <!-- Footer -->
    <footer class="bg-teal-700 text-white py-6 mt-auto">
      <div class="max-w-7xl mx-auto px-6 lg:px-8">
        <div
          class="flex flex-col md:flex-row justify-between items-center text-center md:text-left"
        >
          <img
            src="/logo-footer.png"
            alt="Gift of Grace Montessori Logo"
            class="h-20 mb-4 md:mb-0"
          />
          <div>
            <p class="text-lg font-semibold">© 2025 Gift of Grace Montessori</p>
            <p class="text-sm mt-1">
              Contact us: giftofgracemontessori@gmail.com | (269) 365-5775
            </p>
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup lang="ts">
import DropdownMenu from "~/components/DropdownMenu.vue";
</script>
