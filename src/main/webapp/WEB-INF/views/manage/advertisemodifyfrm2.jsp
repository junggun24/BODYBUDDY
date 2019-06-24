<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
 content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>BODY BUDDY</title>
<!-- plugins:css -->
<link rel="stylesheet"
 href="vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
 href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="images/favicon.png" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="js/bootstrap.js">
<link
 href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/css/bootstrap-datetimepicker.min.css"
 rel="stylesheet" />

<link rel="stylesheet"
 href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
 type="text/css" />
<link rel="stylesheet" href="/path/to/jquery.timeselector.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
 integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
 crossorigin="anonymous">
 
</script>
<script src="/path/to/jquery.timeselector.js"></script>

<script
 src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>



<style>
body {
 text-align: center;
 
}
</style>
</head>


<body onload="advertisetrlist()">
 
        ${opHtml}  </table>
        <input type="button" value="삭제" onclick="remove_item(this)">
           
           <hr>
        </div>

        <div id="field"></div>
        <input type="hidden" value="0" name="checkNum" id="checkNum">
        <input type="button" value=" 추가 " onclick="add_item()"><br>

        <!-- <input name="op_content" type="text" placeholder="시작시간"
         style="width: 80px"> 
        <input name="op_content" type="text" placeholder="종료시간" style="width: 80px"> <br>
        <input name="op_content" type="text" placeholder="횟수"
         style="width: 160px"> -->
       </div>
      </td>
     </tr>

     


     <tr>
      <th>사진</th>
      <td colspan="2x">사진내용</td>
      <td><input type="file" class="btn btn-secondary" name="ap_image">업로드</td>
     </tr>
    </tbody>


   </table>
   <button id="ins" class="btn btn-secondary" type="submit">등록</button>
   <button id="back" class="btn btn-secondary" type="button">돌아가기</button>

  </div>
 </form>


 <!-- plugins:js -->
 <script src="vendors/base/vendor.bundle.base.js"></script>
 <!-- endinject -->
 <!-- Plugin js for this page-->
 <script src="vendors/chart.js/Chart.min.js"></script>
 <script src="vendors/datatables.net/jquery.dataTables.js"></script>
 <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
 <!-- End plugin js for this page-->
 <!-- inject:js -->
 <script src="js/off-canvas.js"></script>
 <script src="js/hoverable-collapse.js"></script>
 <script src="js/template.js"></script>
 <!-- endinject -->
 <!-- Custom js for this page-->
 <script src="js/dashboard.js"></script>
 <script src="js/data-table.js"></script>
 <script src="js/jquery.dataTables.js"></script>
 <script src="js/dataTables.bootstrap4.js"></script>
 <script type="text/javascript" src="js/bootstrap.js"></script>
 <!-- End custom js for this page-->
 <script
  src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
 <script
  src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script>
</body>

<script>

 //TIMEPICKER
 var x = 1;
 //
 
 
 		function advertisetrlist() {
			$.ajax({
				type : "post",
				url : "advertisetrlist",
				dataType : "html",
				error : function() {
					alert('통신실패!!');
				},
				success : function(data) {
					/* $('#main').hide(); */
					$('#main').html(data);
				}
			});
		}

 function add_item() {
  
  var div = document.createElement('div');
  div.innerHTML = document.getElementById('pre_set').innerHTML;
  document.getElementById('field').appendChild(div);
  
  x++;
  $('#checkNum').val(x);
  /* var tmpHtml = "";
  tmpHtml = "<input type='text' id='testDatepicker'>"
  $("#here").append(tmpHtml); */
  
 }
 function remove_item(obj) {
  // obj.parentNode 를 이용하여 삭제
  document.getElementById('field').removeChild(obj.parentNode);
  
  x--;
  $('#checkNum').val(x);
 }
 
 
 function selectExercise() {
  var exSelect = document.getElementById("ex-select");

  // select element에서 선택된 option의 value가 저장된다.
  var selectValue = exSelect.options[exSelect.selectedIndex].value;

  // select element에서 선택된 option의 text가 저장된다.
  var selectText = exSelect.options[exSelect.selectedIndex].text;

  
 $(".pre_set").each(function() {
  
     var dateFormat = "yymmdd",
       from = $(this).find("input[id=from]")
         .datepicker({
           defaultDate: "+1w",
           changeMonth: true,
           numberOfMonths: 2
         })
         .on( "change", function() {
           to.datepicker( "option", "minDate", getDate( this ) );
         }),
       to = $(this).find("input[id=to]")
       .datepicker({
         defaultDate: "+1w",
         changeMonth: true,
         numberOfMonths: 2
       })
       .on( "change", function() {
         from.datepicker( "option", "maxDate", getDate( this ) );
       });
  
     function getDate( element ) {
       var date;
       try {
         date = $.datepicker.parseDate( dateFormat, element.value );
       } catch( error ) {
         date = null;
       }
  
       return date;
     }
   } 
);
</script>
</html>