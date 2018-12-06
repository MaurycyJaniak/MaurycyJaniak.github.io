<?php

/* blocks/member_menu.html */
class __TwigTemplate_52b939a134a9d08b7b8f3d23732c5434446f8404ef836c5267a28f05b1391b43 extends Twig_Template
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
        echo "<div class=\"flex\">
\t<dl>
\t\t<dt class=\"align-center\">
\t\t\t<dl>
\t\t\t\t<dt class=\"has-avatar\">
\t\t\t\t\t<div class=\"avatar-container\">
\t\t\t\t\t\t<a href=\"";
        // line 7
        echo ($context["U_PROFILE"] ?? null);
        echo "\" class=\"avatar img-ui\">";
        echo ($context["USER_AVATAR"] ?? null);
        echo "</a>
\t\t\t\t\t</div>
\t\t\t\t\t";
        // line 9
        echo ($context["USERNAME"] ?? null);
        echo "
\t\t\t\t</dt>
\t\t\t</dl>
\t\t<dd>
\t\t\t<ul class=\"sm-list\">
\t\t\t\t<li><a class=\"nav\" href=\"";
        // line 14
        echo ($context["U_SEARCH_NEW"] ?? null);
        echo "\"><i class=\"fa fa-bolt fa-fw\"></i>";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SEARCH_NEW");
        echo " [";
        echo ($context["NEW_POSTS"] ?? null);
        echo "]</a></li>
\t\t\t\t<li><a class=\"nav\" href=\"";
        // line 15
        echo ($context["U_SEARCH_SELF"] ?? null);
        echo "\"><i class=\"fa fa-user fa-fw\"></i>";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SEARCH_SELF");
        echo " [";
        echo ($context["USER_POSTS"] ?? null);
        echo "]</a></li>
\t\t\t\t";
        // line 16
        if ((($context["U_MCP"] ?? null) || ($context["U_ACP"] ?? null))) {
            // line 17
            echo "\t\t\t\t";
            if (($context["U_MCP"] ?? null)) {
                echo "<li><a class=\"nav\" href=\"";
                echo ($context["U_MCP"] ?? null);
                echo "\"><i class=\"fa fa-gavel fa-fw\"></i>";
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang("MCP");
                echo "</a></li>";
            }
            // line 18
            echo "\t\t\t\t";
            if (($context["U_ACP"] ?? null)) {
                echo "<li><a class=\"nav\" href=\"";
                echo ($context["U_ACP"] ?? null);
                echo "\"><i class=\"fa fa-cogs fa-fw\"></i>";
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ACP");
                echo "</a></li>";
            }
            // line 19
            echo "\t\t\t\t";
        }
        // line 20
        echo "\t\t\t</ul>
\t\t\t<br />
\t\t\t<div class=\"align-center\"><a href=\"";
        // line 22
        echo ($context["U_LOGOUT"] ?? null);
        echo "\" class=\"button2\">";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LOGOUT");
        echo "</a></div>
\t\t</dd>
\t</dl>
</div>";
    }

    public function getTemplateName()
    {
        return "blocks/member_menu.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  85 => 22,  81 => 20,  78 => 19,  69 => 18,  60 => 17,  58 => 16,  50 => 15,  42 => 14,  34 => 9,  27 => 7,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "blocks/member_menu.html", "");
    }
}
