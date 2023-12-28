const aboutText = document.querySelector(".typing_animtion");

const changeTextAnimayion = (arr, elm, plus) => {
  if (plus >= arr.length || !plus) {
      plus = 0;
  }
  var i = plus;
  var q = 0;
  const wriht = setInterval(() => {
      elm.textContent += arr[i][q];
      q++;
      if (q == arr[i].length) {
          clearInterval(wriht);
          const lastText = elm.textContent;
          setTimeout(() => {
              const unwriht = setInterval(() => {
                  q--;
                  elm.textContent = elm.textContent.replace(lastText[q], "");
                  if (elm.textContent.length == 0) {
                      clearInterval(unwriht);
                      setTimeout(() => {
                          plus++;
                          changeTextAnimayion(arr, elm, plus);
                      }, 500);
                  }
              }, 1);
          }, 2000);
      }
  }, 200);
};

const textList = [
  "Developer",
  "Designer",
];
changeTextAnimayion(textList, aboutText);


const header = document.querySelector('.navbar'); // select the header element

window.addEventListener('scroll', function() {
  if (window.scrollY > 20) { // check if the user has scrolled more than 20 pixels
    header.style.backgroundColor = 'black'; // set the background color to black
    header.style.padding = '10px';
  } else {
    header.style.backgroundColor = 'transparent'; // remove the background color
    header.style.padding = '20px';
  }
});