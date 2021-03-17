import React from 'react';
import ReactDOM from 'react-dom';

function MyApp() {

  return (
    <span>Hello World</span>
  );
}

const root = document.createElement('div');
document.body.appendChild(root);
ReactDOM.render(<MyApp />, root);