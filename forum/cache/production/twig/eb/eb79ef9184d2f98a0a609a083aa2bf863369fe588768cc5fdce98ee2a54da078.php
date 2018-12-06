<?php

/* block_settings.html */
class __TwigTemplate_804fff08371b69746645e40085a628d05935deb4e9d1582ffe935c5217127bc6 extends Twig_Template
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
        echo "<div class=\"errorbox\" style=\"display: none\">
\t<h3>";
        // line 2
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("WARNING");
        echo "</h3>
\t<p>";
        // line 3
        echo ($context["ERROR_MSG"] ?? null);
        echo "</p>
</div>

<form id=\"edit_form\" method=\"post\" style=\"width: 400px; height: 100%\">
<div id=\"block-settings\" style=\"border: 0; padding: 0\">
\t";
        // line 8
        if (twig_length_filter($this->env, $this->getAttribute(($context["loops"] ?? null), "options", array()))) {
            // line 9
            echo "\t<ul>
\t\t<li><a href=\"#tab-design\">";
            // line 10
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_DESIGN");
            echo "</a></li>
\t";
            // line 11
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "options", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["options"]) {
                // line 12
                echo "\t\t";
                if ($this->getAttribute($context["options"], "S_LEGEND", array())) {
                    echo "<li><a href=\"#tab-";
                    echo $this->getAttribute($context["options"], "S_LEGEND", array());
                    echo "\">";
                    echo $this->getAttribute($context["options"], "LEGEND", array());
                    echo "</a></li>";
                }
                // line 13
                echo "\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['options'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 14
            echo "\t</ul>
\t";
        }
        // line 16
        echo "
\t<div id=\"tab-design\">
\t\t<fieldset>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"block_status\">";
        // line 20
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_STATUS");
        echo "</label></dt>
\t\t\t\t<dd>
\t\t\t\t\t<input type=\"radio\" name=\"status\" value=\"1\"";
        // line 22
        if (($context["S_ACTIVE"] ?? null)) {
            echo " checked=\"checked\"";
        }
        echo " id=\"block_status\" /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_ACTIVE");
        echo "&nbsp;
\t\t\t\t\t<input type=\"radio\" name=\"status\" value=\"0\"";
        // line 23
        if ( !($context["S_ACTIVE"] ?? null)) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_INACTIVE");
        echo "
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt>
\t\t\t\t\t<label for=\"block_type\">";
        // line 28
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_DISPLAY_TYPE");
        echo "</label>
\t\t\t\t\t<a data-action=\"toggle\" class=\"block-class-actions\" href=\"#examples\"><i class=\"fa fa-question-circle-o fa-lg\"></i></a>
\t\t\t\t</dt>
\t\t\t\t<dd>
\t\t\t\t\t<label><input type=\"radio\" name=\"type\" value=\"0\"";
        // line 32
        if ( !($context["S_TYPE"] ?? null)) {
            echo " checked=\"checked\"";
        }
        echo " id=\"block_type\" /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_SHOW_ALWAYS");
        echo "</label>
\t\t\t\t\t<label><input type=\"radio\" name=\"type\" value=\"1\"";
        // line 33
        if ((($context["S_TYPE"] ?? null) == 1)) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_CHILD_ROUTES_HIDE");
        echo "</label>
\t\t\t\t\t<label><input type=\"radio\" name=\"type\" value=\"2\"";
        // line 34
        if ((($context["S_TYPE"] ?? null) == 2)) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_CHILD_ROUTES_ONLY");
        echo "</label>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t<div id=\"examples\" class=\"panel bg1 small\" style=\"display: none\">
\t\t\t\t<table>
\t\t\t\t\t<thead>
\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t<th width=\"45%\"><strong>";
        // line 41
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("PARENT_ROUTE");
        echo "</strong></th>
\t\t\t\t\t\t\t<th><strong>";
        // line 42
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("CHILD_ROUTE");
        echo "</strong></th>
\t\t\t\t\t\t</tr>
\t\t\t\t\t</thead>
\t\t\t\t\t<tbody>
\t\t\t\t\t\t<tr>
\t\t\t\t\t\t\t<td>
\t\t\t\t\t\t\t\t";
        // line 48
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("PARENT_ROUTE_EXPLAIN");
        echo "
\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t\t<td>
\t\t\t\t\t\t\t\t";
        // line 51
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("CHILD_ROUTE_EXPLAIN");
        echo "
\t\t\t\t\t\t\t</td>
\t\t\t\t\t\t</tr>
\t\t\t\t\t</tbody>
\t\t\t\t</table>
\t\t\t</div>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"permission\">";
        // line 58
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_PERMISSION");
        echo "</label></dt>
\t\t\t\t<dd>
\t\t\t\t\t<select id=\"permission\" name=\"permission[]\" multiple=\"multiple\" size=\"3\">
\t\t\t\t\t\t";
        // line 61
        echo ($context["S_GROUP_OPS"] ?? null);
        echo "
\t\t\t\t\t</select>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"block_class\">";
        // line 66
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_CLASS");
        echo "</label></dt>
\t\t\t\t<dd>
\t\t\t\t\t<div id=\"block_class\" class=\"block-preview block-class-editor\" contenteditable=\"true\">";
        // line 68
        echo ($context["S_BLOCK_CLASS"] ?? null);
        echo "</div>
\t\t\t\t\t<div class=\"align-right\">
\t\t\t\t\t\t<a data-action=\"undo\" class=\"block-class-actions\" href=\"#\"><i class=\"fa fa-undo\"></i>";
        // line 70
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("UNDO");
        echo "</a>
\t\t\t\t\t\t<a data-action=\"redo\" class=\"block-class-actions\" href=\"#\"><i class=\"fa fa-repeat\"></i>";
        // line 71
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("REDO");
        echo "</a>
\t\t\t\t\t\t<a data-action=\"clear\" class=\"block-class-actions\" href=\"#\"><i class=\"fa fa-times\"></i>";
        // line 72
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("CLEAR");
        echo "</a>
\t\t\t\t\t\t<a data-action=\"toggle\" class=\"block-class-actions\" href=\"#css-class-options\"><i class=\"fa fa-sort\"></i>";
        // line 73
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("TOGGLE");
        echo "</a>
\t\t\t\t\t</div>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t<div id=\"css-class-options\" class=\"modifiers rules small\">
\t\t\t\t";
        // line 78
        $location = "block_css_presets.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("block_css_presets.html", "block_settings.html", 78)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 79
        echo "\t\t\t</div>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"hide_title\">";
        // line 81
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_HIDE_TITLE");
        echo "</label></dt>
\t\t\t\t<dd>
\t\t\t\t\t<input class=\"block-preview\" type=\"radio\" name=\"hide_title\" value=\"1\"";
        // line 83
        if (($context["S_HIDE_TITLE"] ?? null)) {
            echo " checked=\"checked\"";
        }
        echo " id=\"hide_title\" /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("YES");
        echo "&nbsp;
\t\t\t\t\t<input class=\"block-preview\" type=\"radio\" name=\"hide_title\" value=\"0\"";
        // line 84
        if ( !($context["S_HIDE_TITLE"] ?? null)) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO");
        echo "
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t";
        // line 87
        $location = "block_view_settings.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("block_view_settings.html", "block_settings.html", 87)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 88
        echo "
\t";
        // line 89
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "options", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["options"]) {
            // line 90
            echo "\t\t";
            if ($this->getAttribute($context["options"], "S_LEGEND", array())) {
                // line 91
                echo "\t\t</fieldset>
\t</div>
\t<div id=\"tab-";
                // line 93
                echo $this->getAttribute($context["options"], "S_LEGEND", array());
                echo "\" class=\"block-settings\">
\t\t<fieldset>
\t\t";
            } elseif ($this->getAttribute(            // line 95
$context["options"], "TITLE", array())) {
                // line 96
                echo "\t\t\t<dl>
\t\t\t\t<dt><label for=\"";
                // line 97
                echo $this->getAttribute($context["options"], "KEY", array());
                echo "\">";
                echo $this->getAttribute($context["options"], "TITLE", array());
                echo "</label>";
                if ($this->getAttribute($context["options"], "S_EXPLAIN", array())) {
                    echo "<br /><span>";
                    echo $this->getAttribute($context["options"], "TITLE_EXPLAIN", array());
                    echo "</span>";
                }
                echo "</dt>
\t\t\t\t<dd>";
                // line 98
                echo $this->getAttribute($context["options"], "CONTENT", array());
                echo "</dd>
\t\t\t</dl>
\t\t";
            } else {
                // line 101
                echo "\t\t\t";
                echo $this->getAttribute($context["options"], "CONTENT", array());
                echo "
\t\t";
            }
            // line 103
            echo "\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['options'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 104
        echo "\t\t</fieldset>
\t</div>
</div>
</form>";
    }

    public function getTemplateName()
    {
        return "block_settings.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  312 => 104,  306 => 103,  300 => 101,  294 => 98,  282 => 97,  279 => 96,  277 => 95,  272 => 93,  268 => 91,  265 => 90,  261 => 89,  258 => 88,  246 => 87,  236 => 84,  228 => 83,  223 => 81,  219 => 79,  207 => 78,  199 => 73,  195 => 72,  191 => 71,  187 => 70,  182 => 68,  177 => 66,  169 => 61,  163 => 58,  153 => 51,  147 => 48,  138 => 42,  134 => 41,  120 => 34,  112 => 33,  104 => 32,  97 => 28,  85 => 23,  77 => 22,  72 => 20,  66 => 16,  62 => 14,  56 => 13,  47 => 12,  43 => 11,  39 => 10,  36 => 9,  34 => 8,  26 => 3,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "block_settings.html", "");
    }
}
