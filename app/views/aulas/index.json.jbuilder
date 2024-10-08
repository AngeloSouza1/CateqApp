<div class="container mt-5">
  <h1 class="mb-4">Aulas</h1>

  <div class="row">
    <% @aulas.each do |aula| %>
      <div class="col-md-4">
        <div class="card mb-4 shadow-sm">
          <div class="card-body">
            <h5 class="card-title"><%= aula.title %></h5>
            <p class="card-text"><%= aula.content.truncate(100) %></p>
            <%= link_to 'Ver Aula', aula_path(aula), class: 'btn btn-primary' %>
          </div>
        </div>
      </div>
    <% end %>
  </div>
</div>
