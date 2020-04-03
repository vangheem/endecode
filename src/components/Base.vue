<template>
  <div class="container">
    <h1 v-if="title" class="title is-3">{{title}}</h1>
    <div class="notification" v-bind:class="{ 'is-danger': !!error }" v-if="error || info">
      <p v-if="error">{{error}}</p>
      {{info}}
    </div>
    <div class="columns">
      <div class="column">
        <div class="field">
          <div class="control">
            <textarea v-model="raw" class="textarea" v-bind:placeholder="encodePlaceholderTxt"></textarea>
          </div>
        </div>
      </div>
      <div class="column is-one-fifth">
        <button class="button is-primary is-outlined" v-on:click="encode" v-if="encodeBtnName">
          <span>{{encodeBtnName}}</span>
          <span class="icon is-large">
            <i class="fas fa-angle-double-right"></i>
          </span>
        </button>
        <br />
        <br />
        <button class="button is-primary is-outlined" v-on:click="decode" v-if="decodeBtnName">
          <span class="icon is-large">
            <i class="fas fa-angle-double-left"></i>
          </span>
          <span>{{decodeBtnName}}</span>
        </button>
      </div>
      <div class="column">
        <textarea v-model="value" class="textarea" v-bind:placeholder="decodePlaceholderTxt"></textarea>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Base",
  data: () => {
    return {
      title: "",
      info: "",
      encodeBtnName: "",
      decodeBtnName: "",
      encodePlaceholderTxt: "",
      decodePlaceholderTxt: "",
      raw: "",
      value: "",
      error: ""
    };
  },
  created: function() {},
  methods: {
    encode: async function() {
      // implement
    },
    decode: async function() {
      // implement
    }
  }
};
</script>
