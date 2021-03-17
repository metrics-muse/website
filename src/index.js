import React from 'react';
import ReactDOM from 'react-dom';
import {Provider, TitleBar} from '@shopify/app-bridge-react';

function MyApp() {
  const config = {apiKey: '7ef750b67a3e57ec86b42bd0b0b00493', shopOrigin: "dev-metricsmuse"};

  return (
    <Provider config={config}>
      <TitleBar title="My page title"/>
    </Provider>
  );
}

const root = document.createElement('div');
document.body.appendChild(root);
ReactDOM.render(<MyApp />, root);