import React from 'react';
import ReactDOM from 'react-dom';

import Calculator from './calculator';

document.addEventListener("DOMContentLoaded", () => {
  console.log("content loaded");
  const root = document.getElementById("root");
  ReactDOM.render(<Calculator />, root);
});
