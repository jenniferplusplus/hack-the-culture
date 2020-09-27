<template>
  <v-main>
    <v-form>
      <v-text-field disabled v-model="address.street" label="Street Address"></v-text-field>
      <v-text-field disabled v-model="address.apartment" label="Apartment Number"></v-text-field>
      <v-text-field disabled v-model="address.city" label="City"></v-text-field>
      <v-text-field disabled v-model="address.state" label="State"></v-text-field>
      <v-text-field disabled v-model="address.zip" label="Zipcode"></v-text-field>
    </v-form>
  </v-main>
</template>

<script>
import LookupService from '@/services/lookup.service';
import {tap, skipWhile} from 'rxjs/operators';

export default {
  name: "SearchData",
  data: () => {
    // const vm = this;
    const data = {
      address: {}
    };

    LookupService.searchParams$
      // .pipe(
      //   skipWhile((value => value === undefined || value === null)),
      // )
      .subscribe((val) => data.address = val);

    return data;
  }
}
</script>

<style scoped>

</style>
