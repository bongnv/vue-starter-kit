<template>
  <MainLayout>
    <div class="home">
      <HelloWorld msg="Welcome to Your Vue.js App" />
    </div>
  </MainLayout>
</template>

<script>
// @ is an alias to /src
import appConfig from "@/app.config";
import MainLayout from "@/layouts/MainLayout.vue";
import HelloWorld from "@/components/HelloWorld.vue";

export default {
  name: "Home",
  page: {
    title: "Home",
    meta: [{ name: "description", content: appConfig.description }]
  },
  components: {
    HelloWorld,
    MainLayout
  }
};
</script>
