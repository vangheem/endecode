

<script>
import Base from "./Base.vue";
import * as moment from "moment";

export default {
  name: "B64",
  mixins: [Base],
  data: () => {
    return {
      title: "Timestamp converter",
      info: "",
      encodeBtnName: "Convert",
      decodeBtnName: "Convert",
      encodePlaceholderTxt: "Timestamp value",
      decodePlaceholderTxt: "Datetime value"
    };
  },
  methods: {
    encode: async function(event) {
      event.preventDefault();
      try {
        var value = this.raw;
        if (value.indexOf(".") !== -1) {
          value = parseFloat(value) * 1000;
        } else {
          value = parseFloat(value);
        }
        this.value = new Date(value);
        this.error = "";
      } catch (e) {
        this.error = e;
      }
      await this.$nextTick();
    },
    decode: async function(event) {
      event.preventDefault();
      try {
        var date = moment(this.value);
        this.raw = date.toDate().getTime() + "";
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
