<?php

/* @blitze_sitemaker/event/overall_header_navigation_prepend.html */
class __TwigTemplate_137968ac4d049c714dd4622b914fe2b252c26e75dc2f1e850cce8463c3670382 extends Twig_Template
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
        if (($context["SM_SHOW_FORUM_NAV"] ?? null)) {
            // line 2
            echo "\t<li class=\"no-bulletin\" data-last-responsive=\"true\">
\t\t<a href=\"";
            // line 3
            echo ($context["U_SM_VIEWFORUM"] ?? null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FORUM");
            echo "\" role=\"menuitem\"><i class=\"";
            echo ($context["SM_FORUM_ICON"] ?? null);
            echo " fa-lg\"></i>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FORUM");
            echo "</a>
\t</li>
";
        }
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/event/overall_header_navigation_prepend.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/event/overall_header_navigation_prepend.html", "");
    }
}
