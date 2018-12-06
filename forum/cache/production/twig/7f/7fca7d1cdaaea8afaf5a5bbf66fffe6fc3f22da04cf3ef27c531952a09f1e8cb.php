<?php

/* @blitze_sitemaker/layout_base.twig */
class __TwigTemplate_d3acd7276b84cdb160827546f177b772ac436af86a09db79781306404c2999ea extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'layout' => array($this, 'block_layout'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        if (($context["S_EDIT_MODE"] ?? null)) {
            // line 2
            echo "\t";
            $context["editable"] = " editable";
            // line 3
            echo "\t";
            ob_start();
            // line 4
            echo "\t\t<div class=\"block-controls\">
\t\t\t<a href=\"#\" class=\"item-action delete-block\" title=\"";
            // line 5
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE");
            echo "\"><span class=\"ui-icon ui-icon-closethick\">";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DELETE");
            echo "</span></a>
\t\t\t<a href=\"#\" class=\"item-action edit-block\" title=\"";
            // line 6
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("EDIT");
            echo "\"><span class=\"ui-icon ui-icon-gear\">";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("EDIT");
            echo "</span></a>
\t\t</div>
\t";
            $context["block_controls"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        }
        // line 10
        echo "
";
        // line 11
        $this->displayBlock('layout', $context, $blocks);
    }

    public function block_layout($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/layout_base.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  49 => 11,  46 => 10,  37 => 6,  31 => 5,  28 => 4,  25 => 3,  22 => 2,  20 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/layout_base.twig", "");
    }
}
