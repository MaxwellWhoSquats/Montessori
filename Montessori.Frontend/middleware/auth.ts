export default defineNuxtRouteMiddleware((to, from) => {
  // On server: use server-side cookies
  if (process.server) {
    const token = useRequestHeaders(["cookie"])
      ["cookie"]?.split("; ")
      .find((c) => c.startsWith("token="))
      ?.split("=")[1];

    // If not authenticated, reroute to homepage.
    if (!token) {
      return navigateTo("/");
    }
  }

  // On client: use "useCookie"
  if (process.client) {
    const tokenCookie = useCookie("token");
    if (!tokenCookie.value) {
      return navigateTo("/");
    }
  }
});
