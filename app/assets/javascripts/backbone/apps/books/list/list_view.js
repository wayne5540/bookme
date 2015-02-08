BookMe.module('BooksApp.List', function(List, App, Backbone, Marionette, $, _){
  'use strict';

  List.Layout = Marionette.LayoutView.extend({
    template: JST['books/list-layout'],
    regions: {
      availableBooksRegion:         '#available-books-region',
      finishedBooksRegion:          '#finished-books-region'
    }
  });

  List.Books = Marionette.ItemView.extend({
    template: JST['books/list-item'],
    tagName: 'tr',
    events: {'click': 'showPaperClicked'}
  });

  List.showPaperClicked = function (e) {
    e.stopPropagation();
    this.trigger('book:show', this.model);
  }; 
    
  List.Books = Marionette.CompositeView.extend({
    tagName:            'table',
    className:          'table books-list',
    template:           JST['books/list-heading'],
    childView:          List.Books,
    childViewContainer: 'tbody'
  });
});