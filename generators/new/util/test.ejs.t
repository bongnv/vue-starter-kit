---
to: "src/utils/<%= h.changeCase.pascalCase(name) %>.test.js"
---
<%
  const fileName = h.changeCase.pascalCase(name)
  const importName = h.changeCase.pascalCase(fileName)
%>import <%= importName %> from './<%= fileName %>'
import { shallowMount } from "@vue/test-utils";

describe('@utils/<%= fileName %>', () => {
  it('says hello', () => {
    const wrapper = shallowMount(<%= importName %>)
    expect(wrapper.isVueInstance()).toBeTruthy()
  })
})
