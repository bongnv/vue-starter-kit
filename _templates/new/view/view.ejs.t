---
to: "src/views/<%= h.changeCase.pascalCase(name) %>.vue"
---
<%
  const fileName = h.changeCase.pascalCase(name)
  const importName = h.changeCase.pascalCase(fileName)
  const titleName = h.changeCase.title(name)
%>

<template>
  <MainLayout>
    <%= titleName %>
  </MainLayout>
</template>

<script>
import MainLayout from "@/layouts/MainLayout.vue";

export default {
  page: {
    title: "<%= titleName %>",
    meta: [{ name: 'description', content: 'The <%= titleName %> page.' }],
  },
  components: { MainLayout }
}
</script>

<%

if (useStyles) { %>
<style module>
</style>
<% } %>
