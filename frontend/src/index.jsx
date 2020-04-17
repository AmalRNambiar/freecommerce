import React from "react";
import { render } from "react-dom";
import { Provider } from "react-redux";
import "./index.css";
import App from "./components/application/App";
import { store } from "./config/store";

render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById("root")
);
