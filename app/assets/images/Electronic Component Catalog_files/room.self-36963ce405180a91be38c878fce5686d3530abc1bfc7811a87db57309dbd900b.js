(function() {
  App.room = App.cable.subscriptions.create("RoomChannel", {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {
      return $('#shoutboxes').append(data);
    },
    speak: function(shoutbox) {
      return this.perform('speak', {
        shoutbox: shoutbox
      });
    }
  });

}).call(this);
