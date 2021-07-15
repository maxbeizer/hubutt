---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
<h1>Hubot Help</h1>
<ul>
{% for command in site.data.help %}
  <li>
		{{ command.help }}
    <a href="https://github.com/github/hubot-classic/blob/master/scripts/{{ command.filename }}">
      {{ command.filename }}
    </a>
  </li>
{% endfor %}
</ul>
