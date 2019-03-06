import "bootstrap";

import Rails from 'rails-ujs';
import '../components/message-form.js';
import '../components/messages.js';
import '../components/chat_widgets';
import '../components/notifications';
// import '../components/active_chats';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { geoLocate } from '../components/geolocation';

import { initAutocomplete } from '../plugins/init_autocomplete';

import "../plugins/flatpickr"

geoLocate();
initMapbox();
initAutocomplete();

Rails.start();

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

