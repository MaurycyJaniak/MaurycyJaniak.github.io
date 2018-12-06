<?php

/* @blitze_sitemaker/event/overall_header_headerbar_after.html */
class __TwigTemplate_c487193a37f6bd0c814be85336d25dd801ae1ecbec61d1cc77244c0b250a56aa extends Twig_Template
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
            echo "<nav class=\"forumbg sm-menu\">
\t<label for=\"sm-tm\" class=\"sm-toggle-menu\">";
            // line 3
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SM_NAVIGATION");
            echo " <span class=\"drop-icon\">&#9660;</span></label>
\t<input type=\"checkbox\" class=\"sm-tm\" id=\"sm-tm\">
\t<ul class=\"main-menu sm-clearfix\">
\t";
            // line 6
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "tree", array()));
            $context['loop'] = array(
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            );
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["_key"] => $context["tree"]) {
                // line 7
                echo "\t\t";
                if (($this->getAttribute($context["tree"], "THIS_DEPTH", array()) > $this->getAttribute($context["tree"], "PREV_DEPTH", array()))) {
                    // line 8
                    echo "\t\t\t<label title=\"";
                    echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SM_TOGGLE_DROPDOWN");
                    echo "\" class=\"drop-icon\" for=\"";
                    echo ("sm" . $this->getAttribute($context["loop"], "index", array()));
                    echo "\">&#9660;</label>
\t\t\t<input type=\"checkbox\" id=\"";
                    // line 9
                    echo ("sm" . $this->getAttribute($context["loop"], "index", array()));
                    echo "\">
\t\t\t<ul class=\"sub-menu\">
\t\t";
                } else {
                    // line 12
                    echo "\t\t";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["tree"], "close", array()));
                    foreach ($context['_seq'] as $context["_key"] => $context["close"]) {
                        // line 13
                        echo "\t\t\t</ul>
\t\t</li>
\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['close'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 16
                    echo "\t\t";
                }
                // line 17
                echo "\t\t<li";
                if (($this->getAttribute($context["tree"], "IS_CURRENT", array()) || $this->getAttribute($context["tree"], "IS_PARENT", array()))) {
                    echo " class=\"forabg active\"";
                }
                echo ">
\t\t\t<a href=\"";
                // line 18
                echo (($this->getAttribute($context["tree"], "FULL_URL", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute($context["tree"], "FULL_URL", array()), "#")) : ("#"));
                echo "\"";
                if ($this->getAttribute($context["tree"], "ITEM_TARGET", array())) {
                    echo " target=\"_blank\" rel=\"noopener\" rel=\"noreferrer\"";
                }
                echo ">
\t\t\t\t<i class=\"";
                // line 19
                echo $this->getAttribute($context["tree"], "ITEM_ICON", array());
                echo "fa-fw\" aria-hidden=\"true\"></i>
\t\t\t\t";
                // line 20
                echo $this->getAttribute($context["tree"], "ITEM_TITLE", array());
                if ($this->getAttribute($context["tree"], "NUM_KIDS", array())) {
                    echo "<span class=\"drop-icon\">";
                    echo (($this->getAttribute($context["tree"], "THIS_DEPTH", array())) ? ("&#9654;") : ("&#9660;"));
                    echo "</span>";
                }
                // line 21
                echo "\t\t\t</a>
\t\t";
                // line 22
                if (($this->getAttribute($context["tree"], "NUM_KIDS", array()) == 0)) {
                    // line 23
                    echo "\t\t</li>
\t\t";
                }
                // line 25
                echo "\t";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['tree'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 26
            echo "\t    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "close_tree", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["close_tree"]) {
                // line 27
                echo "\t    \t</ul>
\t    </li>
\t    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['close_tree'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 30
            echo "\t</ul>
</nav>
";
        }
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/event/overall_header_headerbar_after.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  141 => 30,  133 => 27,  128 => 26,  114 => 25,  110 => 23,  108 => 22,  105 => 21,  98 => 20,  94 => 19,  86 => 18,  79 => 17,  76 => 16,  68 => 13,  63 => 12,  57 => 9,  50 => 8,  47 => 7,  30 => 6,  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/event/overall_header_headerbar_after.html", "");
    }
}
