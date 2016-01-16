% include('header.tpl')
    <p class="text-right"><a class="btn btn-success" href="/create">Create task</a></p>
    <table class="table">
      <tr>
        <th class="text-center">#</th>
        <th class="text-center">Task</th>
        <th class="text-center">Description</th>
        <th class="text-center">Status</th>
        <th colspan=2 class="text-center">Options</th>
      </tr>
      % for row in rows:
      % id=row[0]
      <tr>
        % for col in row:
        <td>{{col}}</td>
        % end
        <td class="text-center"><a class="btn btn-primary" href="/update/{{id}}">Update</a></td>
        <td class="text-center"><a class="btn btn-danger" href="/delete/{{id}}">Delete</a></td>
      </tr>
      % end
    </table>
% include('footer.tpl')
