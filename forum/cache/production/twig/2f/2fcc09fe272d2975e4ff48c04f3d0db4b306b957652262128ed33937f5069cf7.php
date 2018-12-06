<?php

/* @blitze_sitemaker/event/overall_header_content_before.html */
class __TwigTemplate_6c1e4a0a6ec15408a738fbfb4b36723a9fc89eaf2cb71f2a2e1b384b1edb4c8c extends Twig_Template
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
        if (($context["S_SITEMAKER"] ?? null)) {
            // line 2
            echo "\t<div class=\"sm-block-spacing\"></div>

\t";
            // line 4
            $this->loadTemplate((("layouts/" . ($context["S_LAYOUT"] ?? null)) . "/header_layout.twig"), "@blitze_sitemaker/event/overall_header_content_before.html", 4)->display($context);
        }
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/event/overall_header_content_before.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  25 => 4,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/event/overall_header_content_before.html", "");
    }
}
