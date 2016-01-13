% include('header.tpl')
<p>Update the task "{{old[0]}}" (ID = {{no}})</p>
<form action="/update/{{no}}" method="get">
  <input type="text" name="task" value="{{old[0]}}" size="45"
  maxlength="100"><br />
  <!--<input type="text" name="description" value="{{old[1]}}" size="50"
  maxlength="200">-->
  <textarea name="description" rows="4" cols="52">
  {{old[1]}}
  </textarea><br />
  <select name="status">
    <option value="Yes">Yes</option>
    <option value="No">No</option>
  </select><br />
  <input type="submit" name="update" value="update">
% include('footer.tpl')
