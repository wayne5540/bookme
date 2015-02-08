BookMe.module("BooksApp.List", function(List, App, Backbone, Marionette, $, _) {
  'use strict';

  return List.Controller = {
    listBooks: function() {
      var books = new App.Collections.Books();
      books.fetch({
        success: function(books) {
          var listLayout = new List.Layout();

          var availableBooksView = new List.Books({
            collection: new BookMe.Collections.Books(books)
          });

          var myBooksView = new List.Books({
            collection: new BookMe.Collections.Books(books)
          });

          availableBooksView.on("childview:book:show", function(childview, model) {
            return App.trigger("book:show", model.id);
          });

          myBooksView.on("childview:book:show", function(childview, model) {
            return App.trigger("book:show", model.id);
          });

          listLayout.on("show", function() {
            listLayout.availableBooksRegion.show(availableBooksView);
            return listLayout.myBooksRegion.show(myBooksView);
          });

          return App.mainRegion.show(listLayout);
        }
      });
    }
  };
});