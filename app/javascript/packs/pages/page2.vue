<template>
  <div class="footer">
    <h1>{{ msg }}</h1>
    <div class="message">
      <h3>app/javascript/packs/assetsのロゴ</h3>
      <img class="img" src="../assets/logo.png" /><br />
      これはページ2です。<br />
      <h3>app/assets/images/のねこ</h3>
      <div class="cat_image" />
      <br />
      この中にスタイルをまとめて書いてね<br />
      <div class="user_list">
        <ol>
          <li v-for="(user, index) in users" :key="index">{{user.name}}</li>
        </ol>
      </div>
    </div>
    <router-link to="/">前のページへ</router-link>
    <router-link to="/page3">次のページへ</router-link>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "global_footer",
  props: {
    msg: "ページ1",
  },
  data() {
    return {
      users: [],
    };
  },
  mounted() {
    this.setUsers();
  },
  methods: {
    async setUsers() {
      const users = await this.fetchUsers();
      console.log("set users", users.data);
      this.users = users.data;
    },
    async fetchUsers() {
      return axios.get("/users.json");
    },
  },
};
</script>

<style scoped lang="scss">
.footer {
  background: aliceblue;
}
.message {
  margin: 0.2em;
  margin: 1em;
  padding: 1em;
  background: #efefef;
  border: solid darkred;
}
img {
  background-image: image-url("/cat.png");
}
</style>