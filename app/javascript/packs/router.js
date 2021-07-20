import VueRouter from 'vue-router';
import Page1 from './pages/page1.vue'
import Page2 from './pages/page2.vue'
import Page3 from './pages/page3.vue' // ページ追加はここと

const routes = [
    { path: '/', component: Page1 },
    { path: '/page2', component: Page2 },
    { path: '/page3', component: Page3 } // ここに追記が必要
];

export default new VueRouter({
    mode: "history",
    routes
});