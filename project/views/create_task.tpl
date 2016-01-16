% include('header.tpl')
<p>Create a new task to the list:
<a class="label label-warning" href="/">Cancelar</a></p>
<form action="/create" method="GET">
  <input type="text" class="form-control" placeholder="Task" name="task"><br />
  <textarea class="form-control" placeholder="Description" name="description"></textarea><br />
  <select class="form-control" name="status">
    <option value="Yes">Yes</option>
    <option value="No">No</option>
  </select><br />
  <input type="submit" class="btn btn-success" name="save" value="Create">
</form>
% include('footer.tpl')

