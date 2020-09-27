<template>
  <v-main>
    <v-img v-show="isLoading" contain height="6rem" :src="require('../assets/spinner.svg')"/>
  </v-main>
</template>

<script>
import LookupService from '@/services/lookup.service';

export default {
  name: "Protections",
  data: () => {
    const data = {
      results: [],
      isLoading: true
    };

    LookupService.searchResults$
      .subscribe((val) => data.results = val);

    return data;
  }
}
</script>

<style scoped>

</style>
