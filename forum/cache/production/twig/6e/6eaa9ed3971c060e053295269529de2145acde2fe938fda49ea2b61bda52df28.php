<?php

/* @blitze_sitemaker/layouts/blog/header_layout.twig */
class __TwigTemplate_051605859481497c05f44b7805e9e9b3d726d0d95aaa5469df6532953184e9d1 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("layout_base.twig", "@blitze_sitemaker/layouts/blog/header_layout.twig", 1);
        $this->blocks = array(
            'layout' => array($this, 'block_layout'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layout_base.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 2
        $context["layout_row"] = _twig_default_filter(        $this->renderBlock("layout_row", $context, $blocks), "grid");
        // line 1
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 4
    public function block_layout($context, array $blocks = array())
    {
        // line 5
        echo "\t<div class=\"sitemaker\">
\t\t";
        // line 6
        if (($this->getAttribute(($context["positions"] ?? null), "panel", array()) || ($context["S_EDIT_MODE"] ?? null))) {
            // line 7
            echo "\t\t<div class=\"grid\">
\t\t\t<div id=\"pos-panel\" class=\"grid__col grid__col--5-of-5 lastUnit block-position\">
\t\t\t";
            // line 9
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["positions"] ?? null), "panel", array()));
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
                // line 10
                echo "\t\t\t\t<div id=\"block-";
                echo $this->getAttribute($context["block"], "bid", array());
                echo "\" class=\"block\">
\t\t\t\t\t";
                // line 11
                $this->loadTemplate((("views/" . (($this->getAttribute($context["block"], "view", array())) ? ($this->getAttribute($context["block"], "view", array())) : ("simple"))) . "_view.twig"), "@blitze_sitemaker/layouts/blog/header_layout.twig", 11)->display($context);
                // line 12
                echo "\t\t\t\t\t";
                echo ($context["block_controls"] ?? null);
                echo "
\t\t\t\t</div>
\t\t\t";
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
            // line 15
            echo "\t\t\t</div>
\t\t</div>
\t\t";
        }
        // line 18
        echo "
\t\t<div class=\"";
        // line 19
        echo ($context["layout_row"] ?? null);
        echo "\">
\t\t\t<div class=\"";
        // line 20
        if ((($context["layout_row"] ?? null) === "grid")) {
            echo "grid__col grid__col--";
            echo ((($this->getAttribute(($context["positions"] ?? null), "sidebar", array()) || ($context["S_EDIT_MODE"] ?? null))) ? (4) : (5));
            echo "-of-5";
            if ( !$this->getAttribute(($context["positions"] ?? null), "sidebar", array())) {
                echo " lastUnit";
            }
        }
        echo " sm-responsive-full-width middle\">
\t\t\t\t";
        // line 21
        if (($this->getAttribute(($context["positions"] ?? null), "top_hor", array()) || ($context["S_EDIT_MODE"] ?? null))) {
            // line 22
            echo "\t\t\t\t\t";
            $context["divisor"] = 0;
            // line 23
            echo "\t\t\t\t\t";
            $context["columns_per_row"] = 3;
            // line 24
            echo "\t\t\t\t\t";
            $context["num_blocks"] = twig_length_filter($this->env, $this->getAttribute(($context["positions"] ?? null), "top_hor", array()));
            // line 25
            echo "\t\t\t\t\t<div id=\"pos-top_hor\" class=\"block-position horizontal grid\">
\t\t\t\t\t";
            // line 26
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["positions"] ?? null), "top_hor", array()));
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
                // line 27
                echo "\t\t\t\t\t\t";
                if ((($context["divisor"] ?? null) == 0)) {
                    // line 28
                    echo "\t\t\t\t\t\t\t";
                    if (((0 == $this->getAttribute($context["loop"], "revindex", array()) % 3) || ($this->getAttribute($context["loop"], "revindex", array()) > 2))) {
                        // line 29
                        echo "\t\t\t\t\t\t\t\t";
                        $context["divisor"] = 3;
                        // line 30
                        echo "\t\t\t\t\t\t\t";
                    } elseif ((0 == $this->getAttribute($context["loop"], "revindex", array()) % 2)) {
                        // line 31
                        echo "\t\t\t\t\t\t\t\t";
                        $context["divisor"] = 3;
                        // line 32
                        echo "\t\t\t\t\t\t\t\t";
                        $context["columns_per_row"] = 2;
                        // line 33
                        echo "\t\t\t\t\t\t\t";
                    } else {
                        // line 34
                        echo "\t\t\t\t\t\t\t\t";
                        $context["divisor"] = 1;
                        // line 35
                        echo "\t\t\t\t\t\t\t\t";
                        $context["columns_per_row"] = 1;
                        // line 36
                        echo "\t\t\t\t\t\t\t";
                    }
                    // line 37
                    echo "\t\t\t\t\t\t";
                }
                // line 38
                echo "\t\t\t\t\t\t<div id=\"block-";
                echo $this->getAttribute($context["block"], "bid", array());
                echo "\" class=\"block grid__col ";
                if ((($context["columns_per_row"] ?? null) > 1)) {
                    echo "grid__col--1-of-";
                    echo ($context["columns_per_row"] ?? null);
                    echo " grid__col--m-1-of-";
                    echo ($context["columns_per_row"] ?? null);
                } else {
                    echo "grid__col--3-of-3";
                }
                echo "\">
\t\t\t\t\t\t\t";
                // line 39
                $this->loadTemplate((("views/" . (($this->getAttribute($context["block"], "view", array())) ? ($this->getAttribute($context["block"], "view", array())) : ("simple"))) . "_view.twig"), "@blitze_sitemaker/layouts/blog/header_layout.twig", 39)->display($context);
                // line 40
                echo "\t\t\t\t\t\t\t";
                echo ($context["block_controls"] ?? null);
                echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                // line 42
                if (((0 == $this->getAttribute($context["loop"], "index", array()) % ($context["divisor"] ?? null)) &&  !$this->getAttribute($context["loop"], "last", array()))) {
                    // line 43
                    echo "\t\t\t\t\t\t\t";
                    $context["divisor"] = 0;
                    // line 44
                    echo "\t\t\t\t\t\t";
                }
                // line 45
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
            // line 46
            echo "\t\t\t\t\t</div>
\t\t\t\t";
        }
        // line 48
        echo "
\t\t\t\t<div class=\"";
        // line 49
        echo ($context["layout_row"] ?? null);
        echo "\">
\t\t\t\t\t<div class=\"";
        // line 50
        if ((($context["layout_row"] ?? null) === "grid")) {
            echo "grid__col ";
            echo (((($context["S_EDIT_MODE"] ?? null) || $this->getAttribute(($context["positions"] ?? null), "subcontent", array()))) ? ("grid__col--3-of-4") : ("grid__col--4-of-4"));
            if ( !$this->getAttribute(($context["positions"] ?? null), "subcontent", array())) {
                echo " lastUnit";
            }
        }
        echo " sm-responsive-full-width middle\">
\t\t\t\t\t\t";
        // line 51
        if (($this->getAttribute(($context["positions"] ?? null), "top", array()) || ($context["S_EDIT_MODE"] ?? null))) {
            // line 52
            echo "\t\t\t\t\t\t<div class=\"grid\">
\t\t\t\t\t\t\t<div id=\"pos-top\" class=\"grid__col grid__col--5-of-5 lastUnit block-position\">
\t\t\t\t\t\t\t\t";
            // line 54
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["positions"] ?? null), "top", array()));
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
                // line 55
                echo "\t\t\t\t\t\t\t\t<div id=\"block-";
                echo $this->getAttribute($context["block"], "bid", array());
                echo "\" class=\"block\">
\t\t\t\t\t\t\t\t\t";
                // line 56
                $this->loadTemplate((("views/" . (($this->getAttribute($context["block"], "view", array())) ? ($this->getAttribute($context["block"], "view", array())) : ("simple"))) . "_view.twig"), "@blitze_sitemaker/layouts/blog/header_layout.twig", 56)->display($context);
                // line 57
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
            // line 60
            echo "\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
        }
        // line 63
        echo "
\t\t\t\t\t\t<div class=\"sm-block-spacing\">
";
    }

    public function getTemplateName()
    {
        return "@blitze_sitemaker/layouts/blog/header_layout.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  290 => 63,  285 => 60,  267 => 57,  265 => 56,  260 => 55,  243 => 54,  239 => 52,  237 => 51,  227 => 50,  223 => 49,  220 => 48,  216 => 46,  202 => 45,  199 => 44,  196 => 43,  194 => 42,  188 => 40,  186 => 39,  172 => 38,  169 => 37,  166 => 36,  163 => 35,  160 => 34,  157 => 33,  154 => 32,  151 => 31,  148 => 30,  145 => 29,  142 => 28,  139 => 27,  122 => 26,  119 => 25,  116 => 24,  113 => 23,  110 => 22,  108 => 21,  97 => 20,  93 => 19,  90 => 18,  85 => 15,  67 => 12,  65 => 11,  60 => 10,  43 => 9,  39 => 7,  37 => 6,  34 => 5,  31 => 4,  27 => 1,  25 => 2,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@blitze_sitemaker/layouts/blog/header_layout.twig", "");
    }
}
