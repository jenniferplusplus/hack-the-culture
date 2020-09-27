<template>
  <v-form>
    <v-text-field v-model="street" label="Street Address"></v-text-field>
    <v-text-field v-model="apartment" label="Apartment Number"></v-text-field>
    <v-text-field v-model="city" label="City"></v-text-field>
    <v-text-field v-model="state" label="State"></v-text-field>
    <v-text-field v-model="zip" label="Zipcode"></v-text-field>
    <v-btn @click="lookupSearch()">Search</v-btn>
  </v-form>
</template>

<script>
import LookupService from '@/services/lookup.service';

export default {
  name: "LookupForm",
  data: () => ({
    street: undefined,
    apartment: undefined,
    city: undefined,
    state: undefined,
    zip: undefined
  }),
  methods: {
    lookupSearch: function () {
      LookupService.search(this.$data)
      this.$router.push('/results')
    }
  }
}
</script>

<style scoped>

</style>
