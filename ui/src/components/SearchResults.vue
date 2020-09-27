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
        <Legal/>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import SearchData from "@/components/SearchData";
import Legal from "@/components/Legal";
export default {
  name: "SearchResults",
  components: { Legal, SearchData },
  data: () => {
    const data = {};

    return data;
  }
}
</script>

<style scoped>

</style>
