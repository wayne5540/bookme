BookMe.Models.Paper = Backbone.Model.extend({
  urlRoot: 'kids/books'
});

BookMe.Models.Paper.validate = function(attrs, options){
  'use strict';
  var errors = {};
  if (!attrs.prompt){
    errors.prompt = 'cannot be blank';
  }
  if (!attrs.body){
    errors.body = 'cannot be blank';
  }
  if (!_.isEmpty(errors)){
    return errors;
  }
};
  