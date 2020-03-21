<script>
import Base from "./Base.vue";

export default {
  name: "JSON",
  mixins: [Base],
  data: () => {
    return {
      title: "JSON validator, formatter and minifier",
      encodeBtnName: "Format",
      decodeBtnName: "Minify",
      encodePlaceholderTxt: "JSON to format",
      decodePlaceholderTxt: "JSON to minify"
    };
  },
  methods: {
    encode: async function(event) {
      event.preventDefault();
      try {
        this.value = JSON.stringify(JSON.parse(this.raw), null, 2);
        this.error = "";
      } catch (e) {
        this.error = e;
      }
      await this.$nextTick();
    },
    decode: async function(event) {
      event.preventDefault();
      try {
        this.raw = JSON.stringify(JSON.parse(this.value));
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