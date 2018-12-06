<?php

/* @blitze_sitemaker/layouts/blog/footer_layout.twig */
class __TwigTemplate_1921b3a48172abe3a22d80a8d2ce70128492eccd4a5b68cc52eaf41900833f9b extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("layout_base.twig", "@blitze_sitemaker/layouts/blog/footer_layout.twig", 1);
        $this->blocks = array(
            'layout' => array($this, 'block_layout'),
            'subcontent_class' => array($this, 'block_subcontent_class'),
            'sidebar_class' => array($this, 'block_sidebar_class'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layout_base.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_layout($context, array $blocks = array())
    {
        // line 4
        echo "\t\t\t\t\t\t\t<div class=\"clear\"></div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
        // line 6
        if (($this->getAttribute(($context["positions"] ?? null), "boxes", array()) || ($context["S_EDIT_MODE"] ?? null))) {
            // line 7
            echo "\t\t\t\t\t\t\t";
            $context["num_blocks"] = twig_length_filter($this->env, $this->getAttribute(($context["positions"] ?? null), "boxes", array()));
            // line 8
            echo "\t\t\t\t\t\t\t";
            if ((0 == ($context["num_blocks"] ?? null) % 3)) {
                // line 9
                echo "\t\t\t\t\t\t\t\t";
                $context["divisor"] = 3;
                // line 10
                echo "\t\t\t\t\t\t\t";
            } elseif ((0 == ($context["num_blocks"] ?? null) % 2)) {
                // line 11
                echo "\t\t\t\t\t\t\t\t";
                $context["divisor"] = 2;
                // line 12
                echo "\t\t\t\t\t\t\t";
            } elseif ((($context["num_blocks"] ?? null) > 3)) {
                // line 13
                echo "\t\t\t\t\t\t\t\t";
                $context["divisor"] = 3;
                // line 14
                echo "\t\t\t\t\t\t\t";
            } else {
                // line 15
                echo "\t\t\t\t\t\t\t\t";
                $context["divisor"] = 1;
                // line 16
                echo "\t\t\t\t\t\t\t";
            }
            // line 17
            echo "\t\t\t\t\t\t<div id=\"pos-boxes\" class=\"block-position horizontal equal grid\">
\t\t\t\t\t\t\t";
            // line 18
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["positions"] ?? null), "boxes", array()));
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
            foreach ($context['_seq'] as $context["_key"] => $context["block"]) {
                // line 19
                echo "\t\t\t\t\t\t\t<div id=\"block-";
                echo $this->getAttribute($context["block"], "bid", array());
                echo "\" class=\"block grid__col ";
                echo (((($context["divisor"] ?? null) > 1)) ? (((("grid__col--1-of-" . ($context["divisor"] ?? null)) . " grid__col--m-1-of-") . ($context["divisor"] ?? null))) : ("grid__col--5-of-5"));
                echo "\">
\t\t\t\t\t\t\t\t";
                // line 20
                $this->loadTemplate((("views/" . (($this->getAttribute($context["block"], "view", array())) ? ($this->getAttribute($context["block"], "view", array())) : ("simple"))) . "_view.twig"), "@blitze_sitemaker/layouts/blog/footer_layout.twig", 20)->display($context);
                // line 21
                echo "\t\t\t\t\t\t\t\t";
                echo ($context["block_controls"] ?? null);
                echo "
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
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
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['block'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 24
            echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
        }
        // line 26
        echo "
\t\t\t\t\t\t";
        // line 27
        if (($this->getAttribute(($context["positions"] ?? null), "bottom", array()) || ($context["S_EDIT_MODE"] ?? null))) {
            // line 28
            echo "\t\t\t\t\t\t<div class=\"grid\">
\t\t\t\t\t\t\t<div id=\"pos-bottom\" class=\"grid__col grid__col--4-of-4 block-position\">
\t\t\t\t\t\t\t\t";
            // line 30
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["positions"] ?? null), "bottom", array()));
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
            foreach ($context['_seq'] as $context["_key"] => $context["block"]) {
                // line 31
                echo "\t\t\t\t\t\t\t\t<div id=\"block-";
                echo $this->getAttribute($context["block"], "bid", array());
                echo "\" class=\"block\">
\t\t\t\t\t\t\t\t\t";
                // line 32
                $this->loadTemplate((("views/" . (($this->getAttribute($context["block"], "view", array())) ? ($this->getAttribute($context["block"], "view", array())) : ("simple"))) . "_view.twig"), "@blitze_sitemaker/layouts/blog/footer_layout.twig", 32)->display($context);
                // line 33
                echo "\t\t\t\t\t\t\t\t\t";
                echo ($context["block_controls"] ?? null);
                echo "
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
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
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['block'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 36
            echo "\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
        }
        // line 39
        echo "\t\t\t\t\t</div>
\t\t\t\t\t";
        // line 40
        if (($this->getAttribute(($context["positions"] ?? null), "subcontent", array()) || ($context["S_EDIT_MODE"] ?? null))) {
            // line 41
            echo "\t\t\t\t\t<div id=\"pos-subcontent\" class=\"block-position grid__col grid__col--1-of-4 sidebar";
            $this->displayBlock('subcontent_class', $context, $blocks);
            echo "\">
\t\t\t\t\t\t";
            // line 42
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["positions"] ?? null), "subcontent", array()));
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
            foreach ($context['_seq'] as $context["_key"] => $context["block"]) {
                // line 43
                echo "\t\t\t\t\t\t<div id=\"block-";
                echo $this->getAttribute($context["block"], "bid", array());
                echo "\" class=\"block\">
\t\t\t\t\t\t\t";
                // line 44
                $this->loadTemplate((("views/" . (($this->getAttribute($context["block"], "view", array())) ? ($this->getAttribute($context["block"], "view", array())) : ("simple"))) . "_view.twig"), "@blitze_sitemaker/layouts/blog/footer_layout.twig", 44)->display($context);
                // line 45
                echo "\t\t\t\t\t\t\t";
                echo ($context["block_controls"] ?? null);
                echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
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
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['block'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 48
            echo "\t\t\t\t\t</div>
\t\t\t\t\t";
        }
        // line 50
        echo "\t\t\t\t</div>
\t\t\t\t<div class=\"grid\">
\t\t\t\t";
        // line 52
        if (($this->getAttribute(($context["positions"] ?? null), "bottom_hor", array()) || ($context["S_EDIT_MODE"] ?? null))) {
            // line 53
            echo "\t\t\t\t\t";
            $context["divisor"] = 0;
            // line 54
            echo "\t\t\t\t\t";
            $context["columns_per_row"] = 3;
            // line 55
            echo "\t\t\t\t\t";
            $context["num_blocks"] = twig_length_filter($this->env, $this->getAttribute(($context["positions"] ?? null), "bottom_hor", array()));
            // line 56
            echo "\t\t\t\t\t<div id=\"pos-bottom_hor\" class=\"block-position horizontal grid__col--ab\">
\t\t\t\t\t";
            // line 57
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["positions"] ?? null), "bottom_hor", array()));
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
            foreach ($context['_seq'] as $context["_key"] => $context["block"]) {
                // line 58
                echo "\t\t\t\t\t\t";
                if ((($context["divisor"] ?? null) == 0)) {
                    // line 59
                    echo "\t\t\t\t\t\t\t";
                    if (((0 == $this->getAttribute($context["loop"], "revindex", array()) % 3) || ($this->getAttribute($context["loop"], "revindex", array()) > 2))) {
                        // line 60
                        echo "\t\t\t\t\t\t\t\t";
                        $context["divisor"] = 3;
                        // line 61
                        echo "\t\t\t\t\t\t\t";
                    } elseif ((0 == $this->getAttribute($context["loop"], "revindex", array()) % 2)) {
                        // line 62
                        echo "\t\t\t\t\t\t\t\t";
                        $context["divisor"] = 3;
                        // line 63
                        echo "\t\t\t\t\t\t\t\t";
                        $context["columns_per_row"] = 2;
                        // line 64
                        echo "\t\t\t\t\t\t\t";
                    } else {
                        // line 65
                        echo "\t\t\t\t\t\t\t\t";
                        $context["divisor"] = 1;
                        // line 66
                        echo "\t\t\t\t\t\t\t\t";
                        $context["columns_per_row"] = 1;
                        // line 67
                        echo "\t\t\t\t\t\t\t";
                    }
                    // line 68
                    echo "\t\t\t\t\t\t";
                }
                // line 69
                echo "\t\t\t\t\t\t<div id=\"block-";
                echo $this->getAttribute($context["block"], "bid", array());
                echo "\" class=\"block grid__col ";
                echo (((($context["columns_per_row"] ?? null) > 1)) ? (((("grid__col--1-of-" . ($context["columns_per_row"] ?? null)) . " grid__col--m-1-of-") . ($context["columns_per_row"] ?? null))) : ("grid__col--3-of-3"));
                echo "\">
\t\t\t\t\t\t\t";
                // line 70
                $this->loadTemplate((("views/" . (($this->getAttribute($context["block"], "view", array())) ? ($this->getAttribute($context["block"], "view", array())) : ("simple"))) . "_view.twig"), "@blitze_sitemaker/layouts/blog/footer_layout.twig", 70)->display($context);
                // line 71
                echo "\t\t\t\t\t\t\t";
                echo ($context["block_controls"] ?? null);
                echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                // line 73
                if (((0 == $this->getAttribute($context["loop"], "index", array()) % ($context["divisor"] ?? null)) &&  !$this->getAttribute($context["loop"], "last", array()))) {
                    // line 74
                    echo "\t\t\t\t\t\t\t";
                    $context["divisor"] = 0;
                    // line 75
                    echo "\t\t\t\t\t\t";
                }
                // line 76
                echo "\t\t\t\t\t";
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
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['block'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 77
            echo "\t\t\t\t\t</div>
\t\t\t\t";
        }
        // line 79
        echo "\t\t\t\t</div>
\t\t\t</div>
\t\t\t";
        // line 81
        if (($this->getAttribute(($context["positions"] ?? null), "sidebar", array()) || ($context["S_EDIT_MODE"] ?? null))) {
            // line 82
            echo "\t\t\t<div id=\"pos-sidebar\" class=\"block-position grid__col grid__col--1-of-5 sidebar";
            $this->displayBlock('sidebar_class', $context, $blocks);
            echo "\">
\t\t\t\t";
            // line 83
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["positions"] ?? null), "sidebar", array()));
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
            foreach ($context['_seq'] as $context["_key"] => $context["block"]) {
                // line 84
                echo "\t\t\t\t<div id=\"block-";
                echo $this->getAttribute($context["block"], "bid", array());
                echo "\" class=\"block\">
\t\t\t\t\t";
                // line 85
                $this->loadTemplate((("views/" . (($this->getAttribute($context["block"], "view", array())) ? ($this->getAttribute($context["block"], "view", array())) : ("simple"))) . "_view.twig"), "@blitze_sitemaker/layouts/blog/footer_layout.twig", 85)->display($context);
                // line 86
                echo "\t\t\t\t\t";
                echo ($context["block_controls"] ?? null);
                echo "
\t\t\t\t</div>
\t\t\t\t";
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
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['block'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 89
            echo "\t\t\t</div>
\t\t\t";
        }
        // line 91
        echo "\t\t</div>

\t\t";
        // line 93
        if (($this->getAttribute(($context["positions"] ?? null), "footer", array()) || ($context["S_EDIT_MODE"] ?? null))) {
            // line 94
            echo "\t\t<div class=\"footer\">
\t\t\t<div id=\"pos-footer\" class=\"panel bg3 block-position horizontal equal grid\">
\t\t\t\t";
            // line 96
            $context["num_blocks"] = twig_length_filter($this->env, $this->getAttribute(($context["positions"] ?? null), "footer", array()));
            // line 97
            echo "\t\t\t\t";
            if ((0 == ($context["num_blocks"] ?? null) % 3)) {
                // line 98
                echo "\t\t\t\t\t";
                $context["divisor"] = 3;
                // line 99
                echo "\t\t\t\t";
            } elseif ((0 == ($context["num_blocks"] ?? null) % 2)) {
                // line 100
                echo "\t\t\t\t\t";
                $context["divisor"] = 2;
                // line 101
                echo "\t\t\t\t";
            } elseif ((($context["num_blocks"] ?? null) > 3)) {
                // line 102
                echo "\t\t\t\t\t";
                $context["divisor"] = 3;
                // line 103
                echo "\t\t\t\t";
            } else {
                // line 104
                echo "\t\t\t\t\t";
                $context["divisor"] = 1;
                // line 105
                echo "\t\t\t\t";
            }
            // line 106
            echo "
\t\t\t\t";
            // line 107
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["positions"] ?? null), "footer", array()));
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
            foreach ($context['_seq'] as $context["_key"] => $context["block"]) {
                // line 108
                echo "\t\t\t\t<div id=\"block-";
                echo $this->getAttribute($context["block"], "bid", array());
                echo "\" class=\"block grid__col ";
                echo (((($context["divisor"] ?? null) > 1)) ? (((("grid__col--1-of-" . ($context["divisor"] ?? null)) . " grid__col--m-1-of-") . ($context["divisor"] ?? null))) : ("grid__col--5-of-5"));
                echo "\">
\t\t\t\t\t";
                // line 109
                $this->loadTemplate((("views/" . (($this->getAttribute($context["block"], "view", array())) ? ($this->getAttribute($context["block"], "view", array())) : ("simple"))) . "_view.twig"), "@blitze_sitemaker/layouts/blog/footer_layout.twig", 109)->display($context);
                // line 110
                echo "\t\t\t\t\t";
                echo ($context["block_controls"] ?? null);
                echo "
\t\t\t\t</div>
\t\t\t\t";
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
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['block'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 113
            echo "\t\t\t</div>
\t\t</div>
\t\t";
        }
        // line 116
        echo "\t</div>
";
    }

    // line 41
    public function block_subcontent_class($context, array $blocks = array())
    {
        echo " right";
    }

    // line 82
    public function block_sidebar_class($context, array $blocks = array())
    {
        echo " left";
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/layouts/blog/footer_layout.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  500 => 82,  494 => 41,  489 => 116,  484 => 113,  466 => 110,  464 => 109,  457 => 108,  440 => 107,  437 => 106,  434 => 105,  431 => 104,  428 => 103,  425 => 102,  422 => 101,  419 => 100,  416 => 99,  413 => 98,  410 => 97,  408 => 96,  404 => 94,  402 => 93,  398 => 91,  394 => 89,  376 => 86,  374 => 85,  369 => 84,  352 => 83,  347 => 82,  345 => 81,  341 => 79,  337 => 77,  323 => 76,  320 => 75,  317 => 74,  315 => 73,  309 => 71,  307 => 70,  300 => 69,  297 => 68,  294 => 67,  291 => 66,  288 => 65,  285 => 64,  282 => 63,  279 => 62,  276 => 61,  273 => 60,  270 => 59,  267 => 58,  250 => 57,  247 => 56,  244 => 55,  241 => 54,  238 => 53,  236 => 52,  232 => 50,  228 => 48,  210 => 45,  208 => 44,  203 => 43,  186 => 42,  181 => 41,  179 => 40,  176 => 39,  171 => 36,  153 => 33,  151 => 32,  146 => 31,  129 => 30,  125 => 28,  123 => 27,  120 => 26,  116 => 24,  98 => 21,  96 => 20,  89 => 19,  72 => 18,  69 => 17,  66 => 16,  63 => 15,  60 => 14,  57 => 13,  54 => 12,  51 => 11,  48 => 10,  45 => 9,  42 => 8,  39 => 7,  37 => 6,  33 => 4,  30 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/layouts/blog/footer_layout.twig", "");
    }
}
