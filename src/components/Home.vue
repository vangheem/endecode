<template>
  <div class="container">
    <div class="hello">
      <h1 class="title">(en|de)code</h1>
      <h2 class="subtitle">Encoder, Decoder and Formatter</h2>
    </div>
    <article class="message">
      <div class="message-body">
        I often find myself googling a site that will encode base64 for me or url decode a value.
        The top results on sites for this have been getting worse with ads, tracking cookies and clunky user interfaces.
        <strong>
          The world needs
          <a href="https://github.com/vangheem/endecode" target="_blank">open source</a> alternative.
        </strong>
      </div>
    </article>
    <div class="content">
      <h3>Goals</h3>
      <ul>
        <li>Simple</li>
        <li>
          <a href="https://github.com/vangheem/endecode" target="_blankn">Open source</a>
        </li>
        <li>No ads</li>
        <li>No tracking</li>
      </ul>
      <h3>Tools</h3>
      <ul>
        <li>
          <a href="/b64" v-on:click="route">Base64</a>
        </li>
        <li>
          <a href="/url" v-on:click="route">URL</a>
        </li>
        <li>
          <a href="/json" v-on:click="route">JSON</a>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: "Home",
  props: {},
  methods: {
    route: function(event) {
      window.history.pushState(null, null, event.target.href);
      event.preventDefault();
    }
  }
};
</script>
<style scoped>
.container {
  margin: auto;
  max-width: 600px;
}
</style>
