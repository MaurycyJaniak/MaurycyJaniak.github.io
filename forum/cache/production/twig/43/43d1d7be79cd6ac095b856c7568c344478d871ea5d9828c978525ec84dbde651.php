<?php

/* blocks/links.html */
class __TwigTemplate_c4f4f7de9ddc226aefd90daea3389297dba5686f9de1f4599ee6b76b9be009a8 extends Twig_Template
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
        if (twig_length_filter($this->env, $this->getAttribute(($context["loops"] ?? null), "tree", array()))) {
            // line 2
            echo "<ul class=\"sm-list fa-ul\">
";
            // line 3
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "tree", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["tree"]) {
                // line 4
                echo "\t";
                if (($this->getAttribute($context["tree"], "THIS_DEPTH", array()) > $this->getAttribute($context["tree"], "PREV_DEPTH", array()))) {
                    // line 5
                    echo "\t\t<ul class=\"sm-list fa-ul\">
\t";
                } else {
                    // line 7
                    echo "\t";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["tree"], "close", array()));
                    foreach ($context['_seq'] as $context["_key"] => $context["close"]) {
                        // line 8
                        echo "\t\t</ul>
\t</li>
\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['close'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 11
                    echo "\t";
                }
                // line 12
                echo "\t<li>
\t\t<a href=\"";
                // line 13
                echo $this->getAttribute($context["tree"], "FULL_URL", array());
                echo "\"";
                if ($this->getAttribute($context["tree"], "ITEM_TARGET", array())) {
                    echo " target=\"_blank\" rel=\"noopener\" rel=\"noreferrer\"";
                }
                echo "><i class=\"";
                echo $this->getAttribute($context["tree"], "ITEM_ICON", array());
                echo "fa-fw\" aria-hidden=\"true\"></i>";
                echo $this->getAttribute($context["tree"], "ITEM_TITLE", array());
                echo "</a>
\t";
                // line 14
                if (($this->getAttribute($context["tree"], "NUM_KIDS", array()) == 0)) {
                    // line 15
                    echo "\t</li>
\t";
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['tree'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 18
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "close_tree", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["close_tree"]) {
                // line 19
                echo "\t    </ul>
\t</li>
";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['close_tree'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 22
            echo "</ul>
";
        }
    }

    public function getTemplateName()
    {
        return "blocks/links.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  88 => 22,  80 => 19,  76 => 18,  68 => 15,  66 => 14,  54 => 13,  51 => 12,  48 => 11,  40 => 8,  35 => 7,  31 => 5,  28 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "blocks/links.html", "");
    }
}
