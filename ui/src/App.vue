<template>
  <v-app id="app">
    <v-app-bar id="nav" app>
      <router-link to="/">Home</router-link>
      |
      <router-link to="/about">About</router-link>
    </v-app-bar>
    <router-view/>
  </v-app>
</template>
