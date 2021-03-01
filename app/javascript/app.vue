<template>
  <div id="app">
    <Header />
    <div class="flex">
    <div v-for="rental_space in rental_spaces" :key="rental_space.id">
      <div class="wrapper">
        <div class='room-image-wrapper'>
          <img src='./src/image/room-image.png' alt="room image" class="room-image">
        </div>
        <div>レンタルスペース名：{{rental_space.name}}</div>
        <div>郵便番号：{{rental_space.postal_code}}</div>
        <div>住所：{{rental_space.address + rental_space.building}}</div>
        <div>収容人数：{{rental_space.capacity}}人</div>
        <div>料金：{{rental_space.price}}円/1時間</div>
      </div>
    </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
import Header from './components/Header.vue'
export default {
   components: { 
　　Header
　},
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

<style lang="scss" scoped>
.flex {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.wrapper {
  width: 240px;
  border: 1px solid #666666;
  margin: 5px 5px;
  padding: 8px;
}

.room-image-wrapper {
  text-align: center;
}
.room-image {
  width: 235px;
}
</style>
