import "bootstrap";
import "../plugins/flatpickr"
import Siema from 'siema';

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { autoScrollHome } from '../components/autoScrollHome';

initUpdateNavbarOnScroll();
autoScrollHome();

const mySiema = new Siema();
document.querySelector('.prev').addEventListener('click', () => mySiema.prev());
document.querySelector('.next').addEventListener('click', () => mySiema.next());

