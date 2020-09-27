<template>
  <v-main>
    <h2 class="display-1 mb-4">Results for this address</h2>
    <p>
      {{address.street}}
      <br>
      {{address.apartment}}
      <br v-if="address.apartment">
      {{address.city}}<span v-if="address.city && address.state">, </span>{{address.state}} {{address.zip}}
    </p>
  </v-main>
</template>

<script>
import LookupService from '@/services/lookup.service';

export default {
  name: "SearchData",
  data: () => {
    const data = {
      address: {}
    };

    LookupService.searchParams$
      .subscribe((val) => data.address = val);

    return data;
  }
}
</script>

<style scoped>

</style>
