<template>
  <div class="hello">
    <h1 class="title">{{ msg }}</h1>
    <p class="subtitle">
      foobar
    </p>
  </div>
</template>

<script>
export default {
  name: "Top",
  props: {
    msg: String
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
