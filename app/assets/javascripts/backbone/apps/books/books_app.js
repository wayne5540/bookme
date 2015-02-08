this.BookMe.module('BooksApp', function(BooksApp, App, Backbone, Marionette, $, _) {
  'use strict';

  BooksApp.Router = Marionette.AppRouter.extend({
    appRoutes: {
      'books': 'listBooks',
      'books/:id': 'showBook'
    }
  });

  var API = {
    listBooks: function() {
      return BooksApp.List.Controller.listBooks();
    },
    showBook: function(id) {
      return BooksApp.Show.Controller.showBook(id);
    }
  };

  App.on('books:list', function() {
    Backbone.history.navigate('books');
    return API.listbooks();
  });

  App.on('book:show', function(id) {
    Backbone.history.navigate('books/' + id);
    return API.showBook(id);
  });

  return App.addInitializer(function() {
    return new BooksApp.Router({
      controller: API
    });
  });
});