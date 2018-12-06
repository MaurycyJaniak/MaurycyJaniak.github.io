<?php

/* acp_menu.html */
class __TwigTemplate_d214b183bce85b0e8949c8ab9485adf18cc7b97251cc6c6588c4047254c3b2e2 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "acp_menu.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<a id=\"maincontent\"></a>

<h1>";
        // line 5
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ACP_MENU_MANAGE");
        echo "</h1>

<p>";
        // line 7
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ACP_MENU_MANAGE_EXPLAIN");
        echo "</p>

<p>&nbsp;</p>

<div class=\"grid grid--no-gutter\">
\t<div class=\"grid__col grid__col--1-of-5\">
\t\t<div class=\"menus-container\">
\t\t\t<button id=\"add-menu\">";
        // line 14
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ADD_MENU");
        echo "</button>
\t\t\t<ul id=\"sm-menus\" class=\"menus-list\">
\t\t\t\t";
        // line 16
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "menu", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["menu"]) {
            // line 17
            echo "\t\t\t\t<li id=\"menu-";
            echo $this->getAttribute($context["menu"], "ID", array());
            echo "\"";
            if ($this->getAttribute($context["menu"], "S_ACTIVE", array())) {
                echo " class=\"row3 current-menu\"";
            }
            echo ">
\t\t\t\t<a href=\"#\" class=\"menu-option\"><span class=\"menu-editable\">";
            // line 18
            echo $this->getAttribute($context["menu"], "NAME", array());
            echo "</span></a>
\t\t\t\t<div class=\"menu-actions\">
\t\t\t\t\t<a href=\"#\" class=\"menu-edit left\" title=\"";
            // line 20
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("EDIT");
            echo "\"><i class=\"fa fa-cog\"></i></a>
\t\t\t\t\t<a href=\"#\" class=\"menu-delete left\" title=\"";
            // line 21
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE");
            echo "\"><i class=\"fa fa-close\"></i></a>
\t\t\t\t</div>
\t\t\t\t</li>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['menu'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 25
        echo "\t\t\t</ul>
\t</div>
</div>
<div class=\"grid__col grid__col--4-of-5\">

\t<div id=\"nested-tree\" style=\"display: none;\">

\t\t<div id=\"loading\" class=\"loader\" style=\"display: none\"><i class=\"fa fa-refresh fa-spin\"></i> ";
        // line 32
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("AJAX_PROCESSING");
        echo "</div>
\t\t<div id=\"ajax-message\" class=\"message\"></div>

\t\t<div class=\"bulk-container\">
\t\t\t<div style=\"display: none\">
\t\t\t\t<button id=\"add-new\">";
        // line 37
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ADD_MENU_ITEM");
        echo "</button>
\t\t\t\t<button id=\"add-bulk\">";
        // line 38
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ADD_BULK_MENU");
        echo "</button>
\t\t\t</div>
\t\t\t<div class=\"bulk-dropdown\">
\t\t\t\t<form id=\"bulk_form\" name=\"bulk_form\" action=\"\" method=\"post\">
\t\t\t\t\t<fieldset>
\t\t\t\t\t\t<p><strong>";
        // line 43
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ADD_BULK_MENU");
        echo "</strong></p>
\t\t\t\t\t\t<a class=\"toggle-view\" style=\"float: right\" href=\"#help-addbulk\">";
        // line 44
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("HELP");
        echo "</a><br clear=\"both\" />
\t\t\t\t\t\t<p id=\"help-addbulk\" class=\"small bg2\" style=\"display: none\">";
        // line 45
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ADD_BULK_EXPLAIN");
        echo "</p><br />

\t\t\t\t\t\t<label>";
        // line 47
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("MENU_ITEM_PARENT");
        echo "</label>
\t\t\t\t\t\t<select id=\"parent_id\" name=\"parent_id\">
\t\t\t\t\t\t\t<option value=\"0\">";
        // line 49
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO_PARENT");
        echo "</option>
\t\t\t\t\t\t\t";
        // line 50
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "option", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
            // line 51
            echo "\t\t\t\t\t\t\t<option value=\"";
            echo $this->getAttribute($context["option"], "CAT_ID", array());
            echo "\">";
            echo $this->getAttribute($context["option"], "S_PADDING", array());
            echo $this->getAttribute($context["option"], "CAT_NAME", array());
            echo "</option>
\t\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 53
        echo "\t\t\t\t\t\t</select><br /><br />
\t\t\t\t\t\t<label>";
        // line 54
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("MENU_ITEMS");
        echo "</label>
\t\t\t\t\t\t<textarea id=\"add_list\" rows=\"5\" cols=\"50\" name=\"add_list\"></textarea>
\t\t\t\t\t\t";
        // line 56
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["bulk_options"] ?? null));
        foreach ($context['_seq'] as $context["type"] => $context["items"]) {
            // line 57
            echo "\t\t\t\t\t\t\t<div class=\"bulk-container\">
\t\t\t\t\t\t\t\t<button class=\"bulk-type\" data-items=\"";
            // line 58
            echo $context["items"];
            echo "\">";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang($context["type"]);
            echo "</button>
\t\t\t\t\t\t\t\t<button class=\"bulk-type-list\">";
            // line 59
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SELECT");
            echo "</button>
\t\t\t\t\t\t\t\t<div class=\"bulk-dropdown bulk-type-items\">
\t\t\t\t\t\t\t\t\t<div class=\"inner\"></div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['type'], $context['items'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 65
        echo "\t\t\t\t\t\t<p class=\"submit-buttons\">
\t\t\t\t\t\t\t<input class=\"button2\" type=\"reset\" id=\"cancel\" name=\"cancel\" value=\"";
        // line 66
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("CANCEL");
        echo "\" />
\t\t\t\t\t\t\t<input class=\"button1\" type=\"submit\" id=\"submit\" name=\"submit\" value=\"";
        // line 67
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SUBMIT");
        echo "\" />&nbsp;
\t\t\t\t\t\t</p>
\t\t\t\t\t</fieldset>
\t\t\t\t</form>
\t\t\t</div>
\t\t</div>

\t\t<div class=\"align-right\"><span style=\"display: none\"><input type=\"checkbox\" id=\"select-all\" /> ";
        // line 74
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SELECT_ALL");
        echo "</span>&nbsp;</div>
\t\t<div class=\"row3 items-container\">
\t\t\t<div id=\"no-items\" class=\"center\">";
        // line 76
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO_MENU_ITEMS");
        echo "</div>
\t\t\t<div class=\"items-list\">
\t\t\t\t<ol id=\"sortable\" class=\"ui-helper-reset ui-helper-clearfix ui-corner-all\" style=\"display: none;\"></ol>
\t\t\t</div>
\t\t</div>

\t\t<button id=\"save\" class=\"right\" style=\"display: none\">";
        // line 82
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SAVE_CHANGES");
        echo "</button>
\t\t<button id=\"delete-selected\" class=\"right\" style=\"display: none\">";
        // line 83
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE_SELECTED");
        echo "</button>
\t\t<button id=\"rebuild-tree\" class=\"right\" style=\"display: none\">";
        // line 84
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("REBUILD_TREE");
        echo "</button>

\t\t";
        // line 86
        echo ($context["ICON_PICKER"] ?? null);
        echo "

\t\t<script id=\"item-template\" type=\"text/x-jquery-tmpl\">
\t\t\t";
        // line 102
        echo "
\t\t\t<li id=\"item-{{ item_id }}\">
\t\t\t\t<div class=\"ui-state-default ui-corner-all\">
\t\t\t\t\t<span class=\"icon-container left\">
\t\t\t\t\t\t<a href=\"#\" id=\"icon-{{ item_id }}\" class=\"icon-select ui-dialog-titlebar-close ui-corner-all\"><i class=\"{{ item_icon }}\"></i></a>
\t\t\t\t\t</span>
\t\t\t\t\t<span class=\"editable\" data-field=\"item_title\">{{ item_title }}</span>
\t\t\t\t\t<input type=\"checkbox\" class=\"select-item right\" />
\t\t\t\t\t<a href=\"#\" id=\"item-{{ item_id }}\" class=\"right item-action item-spacing\" data-action=\"delete\" title=\"{{ lang('deleteNode') }}\"><i class=\"fa fa-close\"></i></a>
\t\t\t\t\t<a href=\"#\" id=\"item-{{ item_id }}\" class=\"right item-action item-spacing\" data-action=\"edit\" title=\"{{ lang('editNode') }}\"><i class=\"fa fa-cog\"></i></a>
\t\t\t\t\t{% if item_url is not empty %}<a href=\"{{ full_url }}\" target=\"_blank\" class=\"right item-spacing\" title=\"{{ lang('visitPage') }}\"><i class=\"fa fa-external-link\"></i></a>{% endif %}
\t\t\t\t</div>
\t\t\t</li>
\t\t\t";
        echo "
\t\t</script>

\t\t<div id=\"dialog-confirm-menu\" class=\"dialog\" title=\"";
        // line 105
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE_MENU");
        echo "\" style=\"display: none;\">
\t\t\t<p><span class=\"ui-icon ui-icon-alert\" style=\"float:left; margin:0 7px 20px 0;\"></span>";
        // line 106
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE_MENU_CONFIRM");
        echo "</p>
\t\t</div>

\t\t<div id=\"dialog-confirm-menu-item\" class=\"dialog\" title=\"";
        // line 109
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE_MENU_ITEM");
        echo "\" style=\"display: none;\">
\t\t\t<p><span class=\"ui-icon ui-icon-alert\" style=\"float:left; margin:0 7px 20px 0;\"></span>";
        // line 110
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE_MENU_ITEM_CONFIRM");
        echo "</p>
\t\t</div>

\t\t<div id=\"dialog-edit-menu-item\" class=\"dialog\" title=\"";
        // line 113
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("EDIT_MENU_ITEM");
        echo "\" style=\"display: none;\">
\t\t\t<form id=\"edit-menu-item-form\" name=\"edit_menu_item_form\" style=\"width: 350px;\">
\t\t\t\t<fieldset>
\t\t\t\t\t<p class=\"small\">";
        // line 116
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("REQUIRED_FIELDS");
        echo "</p><br />
\t\t\t\t\t<dl>
\t\t\t\t\t\t<dt><label>";
        // line 118
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ITEM_TITLE");
        echo "*</label><br /><span class=\"small\">";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ITEM_TITLE_EXPLAIN");
        echo "</span></dt>
\t\t\t\t\t\t<dd><input id=\"item_title\" class=\"required\" type=\"text\" name=\"item_title\" value=\"\" /></dd>
\t\t\t\t\t</dl>
\t\t\t\t\t<dl>
\t\t\t\t\t\t<dt><label>";
        // line 122
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ITEM_URL");
        echo "</label><br /><span class=\"small\">";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ITEM_URL_EXPLAIN");
        echo "</span></dt>
\t\t\t\t\t\t<dd><input id=\"item_url\" type=\"text\" name=\"item_url\" value=\"\" /></dd>
\t\t\t\t\t</dl>
\t\t\t\t\t<dl>
\t\t\t\t\t\t<dt><label>";
        // line 126
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ITEM_TARGET");
        echo "*</label></dt>
\t\t\t\t\t\t<dd>
\t\t\t\t\t\t\t<input id=\"item_target\" class=\"required\" type=\"radio\" name=\"item_target\" value=\"0\" checked=\"checked\" /> ";
        // line 128
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("TARGET_PARENT");
        echo "
\t\t\t\t\t\t\t<input class=\"required\" type=\"radio\" name=\"item_target\" value=\"1\" /> ";
        // line 129
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("TARGET_BLANK");
        echo "
\t\t\t\t\t\t</dd>
\t\t\t\t\t</dl>
\t\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t</div>
</div>
</div>

<script type=\"text/javascript\">
// <![CDATA[
\tvar ajaxUrl\t= '";
        // line 141
        echo ($context["UA_AJAX_URL"] ?? null);
        echo "';
\tvar menuId\t= ";
        // line 142
        echo twig_escape_filter($this->env, ($context["MENU_ID"] ?? null), "js");
        echo ";
\tvar lang = {
\t\tnone\t\t\t\t: '";
        // line 144
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("NO_PARENT"), "js");
        echo "',
\t\taddNode\t\t\t\t: '";
        // line 145
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("ADD_ITEM"), "js");
        echo "',
\t\teditNode\t\t\t: '";
        // line 146
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("EDIT_ITEM"), "js");
        echo "',
\t\tchangeMe\t\t\t: '";
        // line 147
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("CHANGE_ME"), "js");
        echo "',
\t\tsaveNode\t\t\t: '";
        // line 148
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("SAVE"), "js");
        echo "',
\t\thideNode\t\t\t: '";
        // line 149
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("HIDE"), "js");
        echo "',
\t\tshowNode\t\t\t: '";
        // line 150
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("SHOW"), "js");
        echo "',
\t\tcancel\t\t\t\t: '";
        // line 151
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("CANCEL"), "js");
        echo "',
\t\tremove\t\t\t\t: '";
        // line 152
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE"), "js");
        echo "',
\t\tdeleteNode\t\t\t: '";
        // line 153
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE_ITEM"), "js");
        echo "',
\t\tdeleteChildNodes\t: '";
        // line 154
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE_KIDS"), "js");
        echo "',
\t\trequired\t\t\t: '";
        // line 155
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("REQUIRED"), "js");
        echo "',
\t\tunsavedChanges\t\t: '";
        // line 156
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("UNSAVED_CHANGES"), "js");
        echo "',
\t\terrorMessage\t\t: '";
        // line 157
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("PROCESSING_ERROR"), "js");
        echo "',
\t\tvisitPage\t\t\t: '";
        // line 158
        echo twig_escape_filter($this->env, $this->env->getExtension('phpbb\template\twig\extension')->lang("VISIT_PAGE"), "js");
        echo "'
\t};
// ]]>
</script>

";
        // line 163
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "acp_menu.html", 163)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "acp_menu.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  403 => 163,  395 => 158,  391 => 157,  387 => 156,  383 => 155,  379 => 154,  375 => 153,  371 => 152,  367 => 151,  363 => 150,  359 => 149,  355 => 148,  351 => 147,  347 => 146,  343 => 145,  339 => 144,  334 => 142,  330 => 141,  315 => 129,  311 => 128,  306 => 126,  297 => 122,  288 => 118,  283 => 116,  277 => 113,  271 => 110,  267 => 109,  261 => 106,  257 => 105,  238 => 102,  232 => 86,  227 => 84,  223 => 83,  219 => 82,  210 => 76,  205 => 74,  195 => 67,  191 => 66,  188 => 65,  176 => 59,  170 => 58,  167 => 57,  163 => 56,  158 => 54,  155 => 53,  143 => 51,  139 => 50,  135 => 49,  130 => 47,  125 => 45,  121 => 44,  117 => 43,  109 => 38,  105 => 37,  97 => 32,  88 => 25,  78 => 21,  74 => 20,  69 => 18,  60 => 17,  56 => 16,  51 => 14,  41 => 7,  36 => 5,  31 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "acp_menu.html", "");
    }
}
