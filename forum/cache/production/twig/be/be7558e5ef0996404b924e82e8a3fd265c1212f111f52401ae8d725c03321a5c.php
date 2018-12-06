<?php

/* @blitze_sitemaker/views/boxed_view.twig */
class __TwigTemplate_62aa67522b1ea476a09cd75478be0a2f9ab8c7fd5a05f36937396940ecc1c711 extends Twig_Template
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
        echo "<div class=\"forabg sm-block-container";
        echo $this->getAttribute(($context["block"] ?? null), "class", array());
        echo " sm-block-spacing\"";
        echo $this->getAttribute(($context["block"] ?? null), "css_style", array());
        echo ">
\t<div class=\"inner\">
\t\t";
        // line 3
        if (($this->getAttribute(($context["block"] ?? null), "title", array()) &&  !$this->getAttribute(($context["block"] ?? null), "hide_title", array()))) {
            // line 4
            echo "\t\t<ul class=\"topiclist\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl class=\"row-item\">
\t\t\t\t\t<dt>
\t\t\t\t\t\t<span class=\"block-icon\"><i class=\"";
            // line 8
            echo $this->getAttribute(($context["block"] ?? null), "icon", array());
            echo "\" aria-hidden=\"true\"></i></span>
\t\t\t\t\t\t<span class=\"block-title";
            // line 9
            echo ($context["editable"] ?? null);
            echo "\">";
            echo $this->getAttribute(($context["block"] ?? null), "title", array());
            echo "</span>
\t\t\t\t\t</dt>
\t\t\t\t\t<dd></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t";
        }
        // line 16
        echo "\t\t<ul class=\"forums sm-block-content inner-spacing\">
\t\t\t<li>";
        // line 17
        echo $this->getAttribute(($context["block"] ?? null), "content", array());
        echo "</li>
\t\t</ul>
\t</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/views/boxed_view.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  54 => 17,  51 => 16,  39 => 9,  35 => 8,  29 => 4,  27 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/views/boxed_view.twig", "");
    }
}
