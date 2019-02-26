const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-home');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-home-blue');
      } else {
        navbar.classList.remove('navbar-home-blue');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
