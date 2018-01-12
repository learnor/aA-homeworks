window.setTimeout(function(){
  alert('HAMMERTIME');
}, 5000);

const hammerTime = function(time) {
  window.setTimeout(()=>{alert(`${time} is hammertime!`);}, time);
};
