<script>
import Base from "./Base.vue";

export default {
  name: "URL",
  mixins: [Base],
  data: () => {
    return {
      info: "URL encoder/decoder.",
      encodeBtnName: "Encode",
      decodeBtnName: "Decode",
      encodePlaceholderTxt: "Text to encode",
      decodePlaceholderTxt: "Text to decode"
    };
  },
  methods: {
    encode: async function(event) {
      event.preventDefault();
      this.value = encodeURI(this.raw);
      await this.$nextTick();
    },
    decode: async function(event) {
      event.preventDefault();
      this.raw = decodeURI(this.value);
      await this.$nextTick();
    }
  }
};
</script>

<style scoped>
</style>
