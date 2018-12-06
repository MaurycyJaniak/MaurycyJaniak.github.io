<?php

/* block_view_settings.html */
class __TwigTemplate_3c57e847715018fa4bf68b988a8469d6b79633297c1731b6a3b62b151a62dedf extends Twig_Template
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
        echo "<dl>
\t<dt><label for=\"view\">";
        // line 2
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_VIEW");
        echo "</label></dt>
\t<dd>
\t\t<input class=\"block-preview\" type=\"radio\" name=\"view\" value=\"\"";
        // line 4
        if ( !($context["S_VIEW"] ?? null)) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_VIEW_DEFAULT");
        echo "
\t\t<input class=\"block-preview\" type=\"radio\" name=\"view\" value=\"basic\"";
        // line 5
        if ((($context["S_VIEW"] ?? null) == "basic")) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_VIEW_BASIC");
        echo "
\t\t<input class=\"block-preview\" type=\"radio\" name=\"view\" value=\"boxed\"";
        // line 6
        if ((($context["S_VIEW"] ?? null) == "boxed")) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_VIEW_BOXED");
        echo "<br />
\t\t<input class=\"block-preview\" type=\"radio\" name=\"view\" value=\"simple\"";
        // line 7
        if (( !($context["S_VIEW"] ?? null) || (($context["S_VIEW"] ?? null) == "simple"))) {
            echo " checked=\"checked\"";
        }
        echo " id=\"view\" /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BLOCK_VIEW_SIMPLE");
        echo "<br />
\t</dd>
</dl>";
    }

    public function getTemplateName()
    {
        return "block_view_settings.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  51 => 7,  43 => 6,  35 => 5,  27 => 4,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "block_view_settings.html", "");
    }
}
