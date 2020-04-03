<script>
import Base from "./Base.vue";
var pretty = require("pretty");

export default {
  name: "HTML",
  mixins: [Base],
  data: () => {
    return {
      title: "Html beatifier",
      encodeBtnName: "Beatify",
      decodeBtnName: null,
      encodePlaceholderTxt: "HTML to beatify",
      decodePlaceholderTxt: null
    };
  },
  methods: {
    encode: async function(event) {
      event.preventDefault();
      try {
        this.value = pretty(this.raw);
        this.error = "";
      } catch (e) {
        this.error = e;
      }
      await this.$nextTick();
    },
    decode: async function(event) {
      event.preventDefault();
      try {
        this.raw = this.value;
        this.error = "";
      } catch (e) {
        this.error = e;
      }
      await this.$nextTick();
    }
  }
};
</script>

<style scoped>
</style>