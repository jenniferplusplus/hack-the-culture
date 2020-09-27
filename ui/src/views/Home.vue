<template>
  <v-container align-center justify-start>
    <v-row class="my-6"></v-row>
    <v-row>
      <v-col cols="8" class="mb-4">
        <HelloWorld msg="Welcome to Your Vue.js App"/>
      </v-col>
    </v-row>
    <v-row>
      <v-col cols="8" class="mb-4">
        <LookupForm/>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'
import LookupForm from "@/components/LookupForm";

export default {
  name: 'home',
  components: {
    HelloWorld,
    LookupForm
  }
}
</script>
