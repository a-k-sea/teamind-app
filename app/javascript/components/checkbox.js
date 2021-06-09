// JS to count checked checkboxes

const countChecks = () => {
  if (document.querySelector('#check-counter')) {
    const checkboxes = document.querySelectorAll("input[type=checkbox]");
    const max = 10
    checkboxes.forEach((checkbox) => {
      checkbox.addEventListener('change', function() {
        var checkboxes_checked = document.querySelectorAll('input[type=checkbox]:checked').length;
        if (checkboxes_checked > max) {
          this.checked = false;
          const counter = document.querySelector('#check-counter');
          counter.innerHTML = `(${checkboxes_checked - 1}/10)`;
        } else {
          const counter = document.querySelector('#check-counter');
          counter.innerHTML = `(${checkboxes_checked}/10)`
        }

      });
    });
  }
};

export { countChecks };
