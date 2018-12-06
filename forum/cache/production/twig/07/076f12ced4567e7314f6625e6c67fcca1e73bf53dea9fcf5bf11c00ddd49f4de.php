<?php

/* @blitze_sitemaker/views/simple_view.twig */
class __TwigTemplate_12e454320cc4f601dcfb34e8fe7fd4a39a0a1c7d4ce914eb9d3fd2461d9d79ff extends Twig_Template
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
        echo "<div class=\"panel post sm-block-container";
        echo $this->getAttribute(($context["block"] ?? null), "class", array());
        echo " sm-block-spacing\"";
        echo $this->getAttribute(($context["block"] ?? null), "css_style", array());
        echo ">
\t<div class=\"inner\">
\t\t";
        // line 3
        if (($this->getAttribute(($context["block"] ?? null), "title", array()) &&  !$this->getAttribute(($context["block"] ?? null), "hide_title", array()))) {
            // line 4
            echo "\t\t<h2>
\t\t\t<span class=\"block-icon\"><i class=\"";
            // line 5
            echo $this->getAttribute(($context["block"] ?? null), "icon", array());
            echo "\" aria-hidden=\"true\"></i></span>
\t\t\t<span class=\"block-title";
            // line 6
            echo ($context["editable"] ?? null);
            echo "\">";
            echo $this->getAttribute(($context["block"] ?? null), "title", array());
            echo "</span>
\t\t</h2>
\t\t";
        }
        // line 9
        echo "\t\t<div class=\"sm-block-content\">
\t\t\t";
        // line 10
        echo $this->getAttribute(($context["block"] ?? null), "content", array());
        echo "
\t\t</div>
\t</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/views/simple_view.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  47 => 10,  44 => 9,  36 => 6,  32 => 5,  29 => 4,  27 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/views/simple_view.twig", "");
    }
}
