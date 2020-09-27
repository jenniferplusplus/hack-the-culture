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
