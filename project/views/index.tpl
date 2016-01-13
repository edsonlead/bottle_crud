% include('header.tpl')
    <p>Create a <a href="/new">new task</a></p>
    <table>
      <tr>
        <th>ID</th>
        <th>Task</th>
        <th>Description</th>
        <th>Status</th>
        <th colspan=2>Options</th>
      </tr>
      % for row in rows:
      % id=row[0]
      <tr>
        % for col in row:
        <td>{{col}}</td>
        % end
        <td><a href="/update/{{id}}">Update</a></td>
        <td><a href="/delete/{{id}}">Delete</a></td>
      </tr>
      % end
    </table>
% include('footer.tpl')
