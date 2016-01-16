% include('header.tpl')
<p>Update the task "{{old[0]}}" (ID = {{no}}) <a class="label label-warning"
href="/">Cancelar</a></p>
<form action="/update/{{no}}" method="get">
  <input type="text" class="form-control" name="task" value="{{old[0]}}"><br />
  <textarea class="form-control" name="description">{{old[1]}}</textarea><br />
  <select class="form-control" name="status">
    <option value="Yes">Yes</option>
    <option value="No">No</option>
  </select><br />
  <input type="submit" class="btn btn-success" name="update" value="Update">
% include('footer.tpl')
