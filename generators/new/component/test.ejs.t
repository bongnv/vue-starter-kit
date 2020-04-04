---
to: "src/components/<%= h.changeCase.pascalCase(name) %>.test.js"
---
<%
  let fileName = h.changeCase.pascalCase(name).toLowerCase()
  const importName = h.changeCase.pascalCase(fileName)
  if (fileName.slice(0, 5) === 'base-') {
    fileName = '_' + fileName
  }
%>import <%= importName %> from './<%= fileName %>'
import { shallowMount } from "@vue/test-utils";

describe('@components/<%= fileName %>', () => {
  it('exports a valid component', () => {
    const wrapper = shallowMount(<%= importName %>)
    expect(wrapper.isVueInstance()).toBeTruthy()
  })
})
