% include('header.tpl')
<a class="btn btn-warning" href="/"><span class="glyphicon
glyphicon-arrow-left"> </span></a>
<br />
<br />
<p>Update the task "{{old[0]}}" (ID = {{no}})</p>
<form action="/update/{{no}}" method="get">
  <input type="text" class="form-control" name="task" value="{{old[0]}}"><br />
  <textarea class="form-control" name="description">{{old[1]}}</textarea><br />
  <select class="form-control" name="status">
    <option value="Yes">Yes</option>
    <option value="No">No</option>
  </select><br />
  <button type="submit" class="btn btn-success" name="update"
  value="Update"><span class="glyphicon glyphicon-save"> </span></button>
% include('footer.tpl')
