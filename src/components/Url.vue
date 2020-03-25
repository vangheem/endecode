<script>
import Base from "./Base.vue";

export default {
  name: "URL",
  mixins: [Base],
  data: () => {
    return {
      title: "URL encoder/decoder",
      encodeBtnName: "Encode",
      decodeBtnName: "Decode",
      encodePlaceholderTxt: "Text to encode",
      decodePlaceholderTxt: "Text to decode"
    };
  },
  methods: {
    encode: async function(event) {
      event.preventDefault();
      this.value = encodeURIComponent(this.raw);
      await this.$nextTick();
    },
    decode: async function(event) {
      event.preventDefault();
      this.raw = decodeURIComponent(this.value);
      await this.$nextTick();
    }
  }
};
</script>

<style scoped>
</style>
