<template>
  <v-form>
    <v-text-field v-model="street" label="Street Address"></v-text-field>
    <v-text-field v-model="apartment" label="Apartment Number"></v-text-field>
    <v-text-field v-model="city" label="City"></v-text-field>
    <v-text-field v-model="state" label="State"></v-text-field>
    <v-text-field v-model="zip" label="Zipcode"></v-text-field>
    <v-btn to="/results">Search</v-btn>
  </v-form>
</template>

<script>
export default {
  name: "LookupForm",
  data: () => ({
    street: '',
    apartment: '',
    city: '',
    state: '',
    zip: ''
  }),
}
</script>

<style scoped>

</style>
