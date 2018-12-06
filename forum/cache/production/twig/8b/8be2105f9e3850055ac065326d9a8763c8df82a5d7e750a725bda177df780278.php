<?php

/* @blitze_sitemaker/event/overall_footer_copyright_append.html */
class __TwigTemplate_b933b5dc1f01d3c89f8638e1dfc30aec6bf12bc00743f39c42e440315806081a extends Twig_Template
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
        echo "<br /><a href=\"https://github.com/blitze/phpBB-ext-sitemaker\">phpBB SiteMaker</a>";
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/event/overall_footer_copyright_append.html";
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/event/overall_footer_copyright_append.html", "");
    }
}
