---
to: "src/views/<%= h.changeCase.pascalCase(name) %>.test.js"
---
<%
  const fileName = h.changeCase.pascalCase(name)
  const importName = h.changeCase.pascalCase(fileName)
%>import <%= importName %> from "./<%= fileName %>";
import { shallowMount } from "@vue/test-utils";

describe("@/views/<%= fileName %>", () => {
  it("is a valid view", () => {
    const wrapper = shallowMount(<%= importName %>);
    expect(wrapper.isVueInstance()).toBeTruthy();
  })
})
