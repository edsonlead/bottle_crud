% include('header.tpl')
<p>Add a new task to the list:</p>
<form action="/new" method="GET">
  <input type="text" size="45" maxlength="100" name="task"><br />
  <!--<input type="text" size="100" maxlength="200" name="description">-->
  <textarea name="description" rows="4" cols="52">
  </textarea><br />
  <select name="status">
    <option value="Yes">Yes</option>
    <option value="No">No</option>
  </select><br />
  <input type="submit" name="save" value="save">
</form>  
% include('footer.tpl')

