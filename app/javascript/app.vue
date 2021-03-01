<template>
  <div id="app">
    <div v-for="rental_space in rental_spaces" :key="rental_space.id">
      レンタルスペース名：{{rental_space.name}}
      郵便番号：{{rental_space.postal_code}}
      住所：{{rental_space.address}}
      建物名：{{rental_space.building}}
      詳細：{{rental_space.detail}}
      収容人数：{{rental_space.capacity}}
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      rental_spaces: "rental_spaces"
    }
  },
  mounted(){
    this.setRentalSpace();
  },
  methods:{
    setRentalSpace: function(){
      axios.get('api/rental_spaces')
      .then(response => (
        this.rental_spaces = response.data
      ))
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
