% include('header.tpl')
    <p class="text-right"><a class="btn btn-success" href="/create"><span
    class="glyphicon glyphicon-plus"> </span></a></p>
    <table class="table">
      <tr>
        <th class="text-center">#ID</th>
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
        <td class="text-center"><a class="btn btn-primary"
        href="/update/{{id}}"><span class="glyphicon glyphicon-pencil"> </span></a></td>
        <td class="text-center"><a class="btn btn-danger"
        href="/delete/{{id}}"><span class="glyphicon glyphicon-trash"> </span></a></td>
      </tr>
      % end
    </table>
% include('footer.tpl')
