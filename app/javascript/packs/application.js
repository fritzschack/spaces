import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css';
import Siema from 'siema';

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { autoScrollHome } from '../components/autoScrollHome';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';


initAutocomplete();
initMapbox();
initUpdateNavbarOnScroll();
autoScrollHome();

const mySiema = new Siema();
document.querySelector('.prev').addEventListener('click', () => mySiema.prev());
document.querySelector('.next').addEventListener('click', () => mySiema.next());

