this.BookMe = (function(Backbone, Marionette) {
  'use strict';

  var App = new Marionette.Application();
  App.Models = [];
  App.Collections = [];
  App.Views = [];
  App.Routers = [];
  App.addInitializer(function() {
    return App.module('Papers').start();
  });
  App.addRegions({
    mainRegion: '#main-region'
  });
  App.on('start', function() {
    if (Backbone.history) {
      Backbone.history.start();
      App.BooksApp.start();
    }
  });
  return App;
})(Backbone, Marionette);