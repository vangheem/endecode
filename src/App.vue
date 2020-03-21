<template>
  <div id="app">
    <nav class="navbar" role="navigation" aria-label="main navigation">
      <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
          <a class="navbar-item" href="/" v-on:click="route">Home</a>
        </div>
        <div class="navbar-end">
          <div class="navbar-item">
            <div class="buttons">
              <a class="button is-light" href="/b64" v-on:click="route">Base64</a>
              <a class="button is-light" href="/url" v-on:click="route">URL</a>
              <a class="button is-light" href="/json" v-on:click="route">JSON</a>
            </div>
          </div>
        </div>
      </div>
    </nav>
    <section class="section">
      <div class="container">
        <Router></Router>
      </div>
    </section>
  </div>
</template>

<script>
import Router from "./Router.vue";

export default {
  name: "App",
  components: {
    Router
  },
  methods: {
    route: function(event) {
      window.history.pushState(null, null, event.target.href);
      event.preventDefault();
    }
  }
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  margin-top: 10px;
}
.navbar {
  max-width: 1200px;
  margin: auto;
}
.container {
  max-width: 1200px;
  margin: auto;
}
button {
  width: 100%;
}
textarea.textarea:not([rows]) {
  width: 100%;
  min-height: 500px;
  max-height: 100%;
}
</style>
