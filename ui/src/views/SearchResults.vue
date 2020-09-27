<template>
  <v-container align-center justify-start>
    <v-row class="my-6"></v-row>
    <v-row>
      <v-col cols="8" class="mb-4">
        <SearchData/>
      </v-col>
    </v-row>
    <v-row>
      <v-col cols="8" class="mb-4">
        <Protections/>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import SearchData from "@/components/SearchData";
import Protections from "@/components/Protections";
export default {
  name: "SearchResults",
  components: { Protections, SearchData }
}
</script>

<style scoped>

</style>
