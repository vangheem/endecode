<script>
import Home from "./components/Home.vue";
import B64 from "./components/B64.vue";
import Json from "./components/Json.vue";
import Url from "./components/Url.vue";
import Yaml from "./components/Yaml.vue";
import Html from "./components/Html.vue";
import JWT from "./components/JWT.vue";
import Timestamp from "./components/Timestamp.vue";
import NotFound from "./components/NotFound.vue";

const routes = {
  "/": Home,
  "/b64": B64,
  "/json": Json,
  "/url": Url,
  "/yaml": Yaml,
  "/html": Html,
  "/jwt": JWT,
  "/timestamp": Timestamp
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
    Yaml,
    Html,
    JWT,
    Timestamp,
    NotFound
  },
  created: function() {
    var self = this;
    window.addEventListener("locationchange", () => {
      self.currentRoute = window.location.pathname;
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
      // remove trailing slash
      var route = this.currentRoute;
      if (route.substring(route.length - 1) === "/") {
        route = route.substring(0, route.length - 1);
      }
      return routes[route || "/"] || NotFound;
    }
  },
  render(h) {
    return h(this.ViewComponent);
  }
};
</script>