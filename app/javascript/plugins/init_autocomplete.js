import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('teacher_address');
  if (addressInput) {
    places({ container: addressInput });
  }
  const addressInputStud = document.getElementById('student_address');
  if (addressInputStud) {
    places({ container: addressInputStud });
  }
};

export { initAutocomplete };
