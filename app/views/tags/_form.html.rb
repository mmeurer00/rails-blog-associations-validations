<%= form_for(@tag) do |f| %>
    <% if @tag.errors.any? %>
      <div id="error_explanation">
        <h2><%= pluralize(@tag.errors.count, "error") %> prohibited this tag from being saved:</h2>
        <ul>
        <% @tag.errors.full_messages.each do |msg| %>
          <li><%= msg %></li>
        <% end %>
        </ul>
      </div>
    <% end %>
    <div class="field">
      <%= f.label :name %><br>
      <%= f.text_field :name %>
    </div>
    <div class="actions">
      <%= f.submit %>
    </div>
  <% end %>