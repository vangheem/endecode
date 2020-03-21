

<script>
import Base from "./Base.vue";

export default {
  name: "B64",
  mixins: [Base],
  data: () => {
    return {
      title: "Base64 encoder/decoder",
      info: "",
      encodeBtnName: "Encode",
      decodeBtnName: "Decode",
      encodePlaceholderTxt: "Raw text to encode",
      decodePlaceholderTxt: "Base64 text to decode"
    };
  },
  methods: {
    encode: async function(event) {
      event.preventDefault();
      this.value = btoa(this.raw);
      this.error = "";
      await this.$nextTick();
    },
    decode: async function(event) {
      event.preventDefault();
      try {
        this.raw = atob(this.value);
      } catch (e) {
        this.error = e;
      }
      this.error = "";
      await this.$nextTick();
    }
  }
};
</script>

<style scoped>
</style>
