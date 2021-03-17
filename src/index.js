import React from 'react';
import ReactDOM from 'react-dom';
import {Provider, Loading} from '@shopify/app-bridge-react';
import {AppProvider, Card} from '@shopify/polaris';

function MyApp() {
  const config = {apiKey: '7ef750b67a3e57ec86b42bd0b0b00493', shopOrigin: "dev-metricsmuse.myshopify.com"};

  return (
    <AppProvider>
      <Provider config={config}>
        <Loading />
        <Card />
      </Provider>
    </AppProvider>
  );
}

const root = document.createElement('div');
document.body.appendChild(root);
ReactDOM.render(<MyApp />, root);