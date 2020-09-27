<template>
  <v-app id="app">
    <v-app-bar id="nav" dense app>
      <v-toolbar-items>
        <v-btn to="/">Home</v-btn>
        <v-btn to="/about">About</v-btn>
      </v-toolbar-items>
    </v-app-bar>
    <router-view/>
  </v-app>
</template>

<style>
.debugging-box {
  background: darkviolet 4px;
}
</style>
