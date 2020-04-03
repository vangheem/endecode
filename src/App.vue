<template>
  <div id="app">
    <nav class="navbar is-primary" role="navigation" aria-label="main navigation">
      <div class="navbar-brand">
        <a class="navbar-item" href="/" v-on:click="route">
          <img src="/static/icon.png" />
        </a>

        <a
          role="button"
          class="navbar-burger burger"
          aria-label="menu"
          aria-expanded="false"
          data-target="navbarBasicExample"
        >
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
        </a>
      </div>

      <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
          <a class="navbar-item" href="/" v-on:click="route">(en|de)code</a>
          <a class="navbar-item" href="/b64" v-on:click="route">Base64</a>
          <a class="navbar-item" href="/url" v-on:click="route">URL</a>
          <a class="navbar-item" href="/json" v-on:click="route">JSON</a>
          <a class="navbar-item" href="/yaml" v-on:click="route">YAML</a>
          <a class="navbar-item" href="/html" v-on:click="route">HTML</a>
          <a class="navbar-item" href="/jwt" v-on:click="route">JWT</a>
        </div>

        <div class="navbar-end">
          <div class="navbar-item">
            <div class="buttons">
              <a
                class="button is-primary"
                href="https://github.com/vangheem/endecode"
                target="_blank"
              >
                <span class="icon">
                  <i class="fab fa-github" aria-hidden="true"></i>
                </span>
                <strong>Contribute</strong>
              </a>
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
  margin-top: 0;
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
