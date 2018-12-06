<?php

/* @blitze_sitemaker/layouts/portal/footer_layout.twig */
class __TwigTemplate_d8dd44c01fd5bd38ddfd97939d1d1a7543476d360aa7592d116cdb0c117a60a3 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("layouts/blog/footer_layout.twig", "@blitze_sitemaker/layouts/portal/footer_layout.twig", 1);
        $this->blocks = array(
            'sidebar_class' => array($this, 'block_sidebar_class'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layouts/blog/footer_layout.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_sidebar_class($context, array $blocks = array())
    {
        echo " grid__col--d-first left";
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/layouts/portal/footer_layout.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/layouts/portal/footer_layout.twig", "");
    }
}
