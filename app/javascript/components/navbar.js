const initUpdateNavbarOnScroll = () => {
    const navbar = document.querySelector('.navbar-teamind');
    if (navbar) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= window.innerHeight) {
          navbar.classList.add('navbar-teamind-green');
        } else {
          navbar.classList.remove('navbar-teamind-green');
        }
      });
    }
  }
  
  export { initUpdateNavbarOnScroll };