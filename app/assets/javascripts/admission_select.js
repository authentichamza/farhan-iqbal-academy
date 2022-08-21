document.addEventListener('DOMContentLoaded', function() {
    const SUBJECT_CHOICE = {
      'Class 9th': ['Bio', 'Computer'],
      'Class 10th': ['Bio', 'Computer'],
      'Class 11th': ['FSc Part 1 Pre Medical', 'FSc Part 1 Pre Engineering', 'ICS Part 1'], 
      'Class 12th': ['FSc Part 1 Pre Medical', 'FSc Part 1 Pre Engineering', 'ICS Part 1']
    }
    $('.admission_select').on('change',function () {
      var select = $('#admission_subject_choice')
      var select = $('#admission_subject_choice').html('')

      var selection = $('#admission_grade option:selected').text()
      var options = SUBJECT_CHOICE[selection]
      if(options) {
        for (let i = 0; i < options.length; i++) {
          $('#subject_choice').removeClass('d-none')
          select.append('<option value=' + options[i] + '>' + options[i] + '</option>')
        }
      }else{
        $('#subject_choice').addClass('d-none')
      }
    }
  )
})