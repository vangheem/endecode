<script>
import Home from "./components/Home.vue";
import B64 from "./components/B64.vue";
import Json from "./components/Json.vue";
import Url from "./components/Url.vue";
import NotFound from "./components/NotFound.vue";

const routes = {
  "/": Home,
  "/b64": B64,
  "/json": Json,
  "/url": Url
};

var realPushState = history.pushState;
history.pushState = function() {
  var result = realPushState.apply(history, arguments);
  window.dispatchEvent(new Event("locationchange"));
  return result;
};

export default {
  components: {
    Home,
    B64,
    Json,
    Url,
    NotFound
  },
  created: function() {
    var self = this;
    window.addEventListener("locationchange", () => {
      self.currentRoute = window.location.pathname;
      // remove trailing slash
      if (self.currentRoute.substring(self.currentRoute.length - 1) === "/") {
        self.currentRoute = self.currentRoute.substring(
          0,
          self.currentRoute.length - 1
        );
      }
      self.$forceUpdate();
    });
  },
  data: function() {
    return {
      currentRoute: window.location.pathname
    };
  },
  computed: {
    ViewComponent() {
      return routes[this.currentRoute || "/"] || NotFound;
    }
  },
  render(h) {
    return h(this.ViewComponent);
  }
};
</script>