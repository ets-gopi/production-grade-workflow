import { render, screen } from "@testing-library/react";
import App from "./App";
import { expect, test } from "vitest";

test("renders hello world text", () => {
  render(<App />);
  const headingElement = screen.getByText(/hello world/i);
  expect(headingElement).toBeInTheDocument();
});

