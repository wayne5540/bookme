Backbone.Marionette.Renderer.render = function(template, data) {
  'use strict';
  debugger;
  var path = JST['app/assets/templates' + template];
  if (!path) {
    throw 'Template ' + template + ' not found';
  }
  debugger;
  path(data);
  debugger;
};