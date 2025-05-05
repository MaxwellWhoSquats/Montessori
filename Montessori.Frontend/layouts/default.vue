<template>
  <div class="min-h-screen flex flex-col bg-teal-50">
    <!-- Navbar -->
    <header class="bg-teal-700 text-white shadow-md">
      <div class="max-w-7xl mx-auto px-4">
        <nav class="flex items-center justify-between py-4">
          <a href="/" class="text-2xl font-bold hover:text-teal-200">
            Gift of Grace Montessori
          </a>
          <div class="hidden md:flex space-x-8 text-lg font-medium">
            <a href="/" class="hover:text-teal-200">Home</a>
            <a href="/about" class="hover:text-teal-200">About Us</a>
            <a href="/login" class="hover:text-teal-200">Login</a>
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
      <div class="max-w-7xl mx-auto px-4">
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
