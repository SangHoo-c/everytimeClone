    document.querySelector("a.login-button").onclick = function () {
//      location.href = "/member/subjectList";
     page_move("loginAction");
  };

  function page_move(url) {
      var form = document.createElement("form");
      var parm = new Array();
      var input = new Array();
      var inputId = document.querySelector(".input-id").value;
      var inputPw = document.querySelector(".input-pw").value;
    
      form.action = url;
      form.method = "post";


      parm.push( ['studentId', inputId] );
      parm.push( ['pw', inputPw] );


      for (var i = 0; i < parm.length; i++) {
          input[i] = document.createElement("input");
          input[i].setAttribute("type", "hidden");
          input[i].setAttribute("name", parm[i][0]);
          input[i].setAttribute("value", parm[i][1]);
          form.appendChild(input[i]);
      }
      document.body.appendChild(form);
      form.submit();
  }