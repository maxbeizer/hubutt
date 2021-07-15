---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
<h1>Hubot Help</h1>

      {{site.data | jsonify}}
<ul>
{% for help in site.data.help %}
  <li>
		{{ help.command }}
    <a href="https://github.com/github/hubot-classic/blob/master/scripts/{{ help.filename }}">
      {{ help.filename }}
    </a>
  </li>
{% endfor %}
</ul>
