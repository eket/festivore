// Generated by CoffeeScript 1.3.3
(function() {
  var FriendsView,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  FriendsView = (function(_super) {

    __extends(FriendsView, _super);

    function FriendsView() {
      return FriendsView.__super__.constructor.apply(this, arguments);
    }

    FriendsView.prototype.el = $('#friends');

    FriendsView.prototype.initialize = function() {
      return console.log('fvi');
    };

    return FriendsView;

  })(Backbone.View);

  $(function() {
    return new FriendsView();
  });

}).call(this);
