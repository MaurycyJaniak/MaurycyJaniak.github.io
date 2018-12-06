<?php

/* @blitze_sitemaker/event/overall_footer_content_after.html */
class __TwigTemplate_e19088725a18e490320d2a53edd6c779060c252c89afdf6fdd1b2b1f16ac4908 extends Twig_Template
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
            echo "\t";
            $this->loadTemplate((("layouts/" . ($context["S_LAYOUT"] ?? null)) . "/footer_layout.twig"), "@blitze_sitemaker/event/overall_footer_content_after.html", 2)->display($context);
            // line 3
            echo "
\t";
            // line 4
            if ((($context["U_EDIT_MODE"] ?? null) &&  !($context["S_EDIT_MODE"] ?? null))) {
                // line 5
                echo "\t<a class=\"edit-mode-btn bg3\" href=\"";
                echo ($context["U_EDIT_MODE"] ?? null);
                echo "\"><i class=\"fa fa-pencil\"></i></a>
\t";
            }
            // line 7
            echo "
\t";
            // line 8
            if (($context["S_EDIT_MODE"] ?? null)) {
                // line 9
                echo "\t\t";
                $this->loadTemplate("admin_bar.html", "@blitze_sitemaker/event/overall_footer_content_after.html", 9)->display($context);
                // line 10
                echo "\t";
            }
        }
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/event/overall_footer_content_after.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  43 => 10,  40 => 9,  38 => 8,  35 => 7,  29 => 5,  27 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/event/overall_footer_content_after.html", "");
    }
}
