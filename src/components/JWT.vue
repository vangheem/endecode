<script>
import Base from "./Base.vue";

export default {
  name: "JWT",
  mixins: [Base],
  data: () => {
    return {
      title: "JWT",
      encodeBtnName: "Decode",
      decodeBtnName: null,
      encodePlaceholderTxt: "JWT to convert",
      decodePlaceholderTxt: null
    };
  },
  methods: {
    encode: async function(event) {
      event.preventDefault();
      try {
        if (this.raw.split(".").length == 3) {
          this.value =
            JSON.stringify(JSON.parse(atob(this.raw.split(".")[0])), null, 2) +
            "\n\n" +
            JSON.stringify(JSON.parse(atob(this.raw.split(".")[1])), null, 2);
          this.error = "";
        } else {
          this.error = "Invalid jwt token structure";
        }
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