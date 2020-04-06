import MainLayout from "./MainLayout";
import { shallowMount } from "@vue/test-utils";

describe("@/layouts/MainLayout", () => {
  it("renders its content", () => {
    const slotContent = "<p>Hello!</p>";
    const { element } = shallowMount(MainLayout, {
      slots: {
        default: slotContent
      }
    });
    expect(element.innerHTML).toContain(slotContent);
  });
});
