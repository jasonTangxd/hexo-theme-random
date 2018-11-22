{% include 'includes/head.swig' %}
<div class="random-center hide-area;">
  <div id="random-index">
    <div class="center-field">
      <img class="avatar" src="{{ config.avatar || theme.avatar }}" width=120 height=120 onClick="openUserCard()">
    </div>
    <div class="center-field">
      <div class="title" onClick="openUserCard()">{{ config.title }}</div>
      <div class="sub-title" onClick="openUserCard()">{{ config.subtitle }}</div>
    </div>
    <hr >
    <div class="center-field">
      <ul class="index-nav-link">
        {% set menu = config.menu || theme.menu %}
        {% for key in Object.keys(menu)  %}
          {% if menu[key] != '/'  %}
            <li><a href="{{ url_for(menu[key]) }}">{{ key }}</a></li>
          {% endif %}
        {% endfor %}
      </ul>
      {% include 'includes/social-icon.swig' %}
    </div>
  </div>
</div>

<div style="position: absolute;top: 92%;left: 50%;margin-top: 0px;width: 960px;margin-left: -480px;color:#939393;">
    <div style="line-height: 1.6em;font-size: 0.70em;display: inline;text-align:center">
        <div>
            <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11011202000624" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="beian.png" style="float:left;height:20px;width:20px"/><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">京公网安备 11011202000624号</p></a>
        </div>
        <div>
      渝ICP备16011596号
       &copy;2016-2017  <a href="http://xiaoxiaomo.com" target="_blank" style="font-size: 0.60em;color:#939393;"> {{ config.author || theme.author }} xiaoxiaomo.com</a>
       </div>
    </div>
</div>

{% include 'includes/footer.swig' %}

