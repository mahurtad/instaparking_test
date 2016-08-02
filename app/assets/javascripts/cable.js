// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the rails generate channel command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();

}).call(this);


$(function () {
     function FullTextContains(innerText, searchTerm) {
         for (x = 0; x < searchTerm.length; x++) {
             if (innerText.toLowerCase().indexOf(searchTerm[x].toLowerCase()) >= 0) {
                 return true;
             }
         }
         return false;
     }


     $('.faq').on('keyup input', function (e) {
         var text = $.trim($(this).val());
         if (e.keyCode == 13) {
             SearchFAQ(text);
         } else if (text == '') {
             SearchFAQ('');
         }
     });

     $('#btnFaqSearch').on('click', function (e) {
         var text = $.trim($('.faq').val());
         SearchFAQ(text);
     });

     function SearchFAQ(searchTermText) {
         var searchTerm = searchTermText.split(' ');
         if (searchTermText != '') {
             $(".faq-list .panel").filter(function (index) {
                 var panelText = $.trim($(this).text());
                 if (FullTextContains(panelText, searchTerm) == true) {
                     //console.log("found it");
                     return true;
                 } else {
                     //console.log("not found");
                     $(this).slideUp();
                     return false;
                 }
             }).slideDown();
         } else {
             $(".faq-list .panel").slideDown();
         }
     }
 });
 
 
// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the rails generate channel command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();

}).call(this);


$(function () {
     function FullTextContains(innerText, searchTerm) {
         for (x = 0; x < searchTerm.length; x++) {
             if (innerText.toLowerCase().indexOf(searchTerm[x].toLowerCase()) >= 0) {
                 return true;
             }
         }
         return false;
     }


     $('.faq').on('keyup input', function (e) {
         var text = $.trim($(this).val());
         if (e.keyCode == 13) {
             SearchFAQ(text);
         } else if (text == '') {
             SearchFAQ('');
         }
     });

     $('#btnFaqSearch').on('click', function (e) {
         var text = $.trim($('.faq').val());
         SearchFAQ(text);
     });

     function SearchFAQ(searchTermText) {
         var searchTerm = searchTermText.split(' ');
         if (searchTermText != '') {
             $(".faq-list .panel").filter(function (index) {
                 var panelText = $.trim($(this).text());
                 if (FullTextContains(panelText, searchTerm) == true) {
                     //console.log("found it");
                     return true;
                 } else {
                     //console.log("not found");
                     $(this).slideUp();
                     return false;
                 }
             }).slideDown();
         } else {
             $(".faq-list .panel").slideDown();
         }
     }
 });
 
 
