import Vue from 'vue/dist/vue.esm'
import User from '../user.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#user',
    data: {
    },
    components: { User }
  })
})
