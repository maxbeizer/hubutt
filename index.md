---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
# Hubot Help

<ul>
{% for help in site.data.help %}
  <li>
		<code>{{ help.command | escape }}</code> =>
    <a href="https://github.com/github/hubot-classic/blob/master/scripts/{{ help.filename }}">
      {{ help.filename }}
    </a>
  </li>
{% endfor %}
</ul>
