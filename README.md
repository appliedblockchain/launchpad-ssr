# React SSR

Server Side Rendered React Boilerplate powered by Next and MUI

Based off https://github.com/mui-org/material-ui/tree/master/examples/nextjs + Docker setup

### Setup

Disable telemetry:

```
npx next telemetry disable
```


### Run

```sh
npm install
npm run dev
```

### Notes:

To get data from the backend you will need to call the backend api. To call the api please use `getServerSideProps()`

Example: https://nextjs.org/docs/basic-features/data-fetching#getserversideprops-server-side-rendering
