/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Contacts App",
      contacts: []
    };
  },
  created: function() {
    console.log('in create');
    axios.get('api/contacts').then(function(response) {
      console.log(response.data);
      this.contacts = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var ContactsNew = {
  template: "#contacts-new",
  data: function() {
    return {
      firstName: "",
      lastName: "",
      middleName: "",
      email: "",
      bio: "",
      phoneNumber: "",
      errors: []
    };
  },

  methods: {
    submit: function() {
      var params = {
        input_first_name: this.firstName,
        input_middle_name: this.middleName,
        input_last_name: this.lastName,
        input_email: this.email,
        input_bio: this.bio,
        input_phone_number: this.phoneNumber,
      };
      axios
        .post("/api/contacts", params)
        .then(function(response) {
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var ContactsShow = {
  template: "#contacts-show-page",
  data: function() {
    return {
      contact: {
        firstName: "",
        lastName: "",
        middleName: "",
        email: "",
        bio: "",
        phoneNumber: "",
      },
      errors: []
    };
  },
  created: function() {
    // go to the db, and based on the url, get a particular recipe
    // access the info in the url
    console.log(this.$route.params.id);
    axios.get("/api/recipes/" + this.$route.params.id).then(function(response) {
      console.log(response);
      this.recipe = response.data;
    }.bind(this));

    // console.log('in created function')
    // axios.get('/api/recipes').then(function(response) {
    //   console.log(response.data);
    //   this.recipes = response.data;
    // }.bind(this));
  },
  methods: {},
  computed: {}
};
var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/api/users", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        email: this.email, password: this.password
      };
      axios
        .post("/api/sessions", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};

var LogoutPage = {
  template: "<h1>Logout</h1>",
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    localStorage.removeItem("jwt");
    router.push("/");
  }
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/signup", component: SignupPage },
    { path: "/login", component: LoginPage },
    { path: "/logout", component: LogoutPage },
    { path: "/contacts/new", component: ContactsNew }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    console.log('jwt');
    console.log(jwt);
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }
});