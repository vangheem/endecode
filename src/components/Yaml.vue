<script>
import Base from "./Base.vue";
import YAML from "yaml";

export default {
  name: "YAML",
  mixins: [Base],
  data: () => {
    return {
      title: "YAML <=> JSON",
      encodeBtnName: "JSON",
      decodeBtnName: "YAML",
      encodePlaceholderTxt: "YAML to convert",
      decodePlaceholderTxt: "JSON to convert"
    };
  },
  methods: {
    encode: async function(event) {
      event.preventDefault();
      try {
        this.value = JSON.stringify(YAML.parse(this.raw), null, 2);
        this.error = "";
      } catch (e) {
        this.error = e;
      }
      await this.$nextTick();
    },
    decode: async function(event) {
      event.preventDefault();
      try {
        this.raw = YAML.stringify(JSON.parse(this.value));
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