<?php

/* block_css_presets.html */
class __TwigTemplate_e44050adcf097bfbe60e00cd96191d3ab59903490f2b0f24d361b6d92820350a extends Twig_Template
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
\t<dt>
\t\t<br />
\t\t<a class=\"class-cat\" href=\"#classes-lists\"><i class=\"fa fa-caret-right\"></i> ";
        // line 4
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LISTS");
        echo "</a><br />
\t\t<a class=\"class-cat\" href=\"#classes-background\"><i class=\"fa fa-caret-right\"></i> ";
        // line 5
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BACKGROUND");
        echo "</a><br />
\t\t<a class=\"class-cat\" href=\"#classes-images\"><i class=\"fa fa-caret-right\"></i> ";
        // line 6
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGES");
        echo "</a><br />
\t\t<a class=\"class-cat\" href=\"#classes-display\"><i class=\"fa fa-caret-right\"></i> ";
        // line 7
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DISPLAY");
        echo "</a>
\t</dt>
\t<dd id=\"classes-scroller\" class=\"scroll-list small\">
        <h3 id=\"classes-lists\">";
        // line 10
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LISTS");
        echo "</h3>
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 11
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_FLAT");
        echo "\">sm-list-flat</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 12
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_ARROW");
        echo "\">sm-list-arrow</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 13
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_CIRCLE");
        echo "\">sm-list-circle</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 14
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_DISC");
        echo "\">sm-list-disc</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 15
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_SQUARE");
        echo "\">sm-list-square</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 16
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_NUMBERED");
        echo "\">sm-list-numbered</a><br /><br />

\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 18
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_INLINE");
        echo "\">sm-list-inline</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 19
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_INLINE_SEP");
        echo "\">sm-list-inline-sep</a><br /><br />

\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 21
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_HOVER");
        echo "\">sm-list-hover</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 22
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_STRIPED");
        echo "\">sm-list-striped</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 23
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_STACKED");
        echo "\">sm-list-stacked</a><br /><br />

\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 25
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_AUTOWIDTH");
        echo "\">list-block-auto</a><br />
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 26
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_2COLS");
        echo "\">list-block-2cols</a><br />
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 27
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_3COLS");
        echo "\">list-block-3cols</a><br />
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 28
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_4COLS");
        echo "\">list-block-4cols</a><br />
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 29
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_5COLS");
        echo "\">list-block-5cols</a><br /><br />

\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 31
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_X_DIVIDER_DOTTED");
        echo "\">sm-x-divider-dotted</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 32
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_X_DIVIDER_LINE");
        echo "\">sm-x-divider-line</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 33
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_Y_DIVIDER_DOTTED");
        echo "\">sm-y-divider-dotted</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 34
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LIST_Y_DIVIDER_LINE");
        echo "\">sm-y-divider-line</a>,

        <h3 id=\"classes-background\">";
        // line 36
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BACKGROUND");
        echo "</h3>
\t\t<a class=\"transform\" href=\"#\">bg1</a>,
\t\t<a class=\"transform\" href=\"#\">bg2</a>,
\t\t<a class=\"transform\" href=\"#\">bg3</a>

        <h3 id=\"classes-images\">";
        // line 41
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGES");
        echo "</h3>
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 42
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGE_SMALL");
        echo "\">small-img</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 43
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGE_MEDIUM");
        echo "\">medium-img</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 44
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGE_LARGE");
        echo "\">large-img</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 45
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGE_FULL_WIDTH");
        echo "\">fullwidth-img</a><br /><br />

\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 47
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGE_ALIGN_LEFT");
        echo "\">img-align-left</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 48
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGE_ALIGN_RIGHT");
        echo "\">img-align-right</a><br /><br />

\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 50
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGE_CIRCLE");
        echo "\">img-circle</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 51
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGE_BORDER");
        echo "\">img-border</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 52
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IMAGE_BORDER_PADDING");
        echo "\">img-border-padding</a><br />

        <h3 id=\"classes-display\">";
        // line 54
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DISPLAY");
        echo "</h3>
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 55
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("RESPONSIVE_SHOW");
        echo "\">sm-responsive-show</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 56
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("RESPONSIVE_HIDE");
        echo "\">sm-responsive-hide</a><br /><br />
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 57
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ALIGN_LEFT");
        echo "\">align-left</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 58
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ALIGN_CENTER");
        echo "\">align-center</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 59
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ALIGN_RIGHT");
        echo "\">align-right</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 60
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO_PADDING");
        echo "\">no-padding</a><br /><br />

\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 62
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LABEL");
        echo "\">sm-label</a> /
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 63
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("BADGE");
        echo "\">sm-badge</a> + 

\t\t[<a class=\"transform\" href=\"#\" title=\"";
        // line 65
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("PRIMARY_COLOR");
        echo "\">primary-color</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 66
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SECONDARY_COLOR");
        echo "\">secondary-color</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 67
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("GRAYSCALE_COLOR");
        echo "\">grayscale-color</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 68
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("INFO_COLOR");
        echo "\">info-color</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 69
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SUCCESS_COLOR");
        echo "\">success-color</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 70
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("WARNING_COLOR");
        echo "\">warning-color</a>,
\t\t<a class=\"transform\" href=\"#\" title=\"";
        // line 71
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DANGER_COLOR");
        echo "\">danger-color</a>]
\t</dd>
</dl>";
    }

    public function getTemplateName()
    {
        return "block_css_presets.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  244 => 71,  240 => 70,  236 => 69,  232 => 68,  228 => 67,  224 => 66,  220 => 65,  215 => 63,  211 => 62,  206 => 60,  202 => 59,  198 => 58,  194 => 57,  190 => 56,  186 => 55,  182 => 54,  177 => 52,  173 => 51,  169 => 50,  164 => 48,  160 => 47,  155 => 45,  151 => 44,  147 => 43,  143 => 42,  139 => 41,  131 => 36,  126 => 34,  122 => 33,  118 => 32,  114 => 31,  109 => 29,  105 => 28,  101 => 27,  97 => 26,  93 => 25,  88 => 23,  84 => 22,  80 => 21,  75 => 19,  71 => 18,  66 => 16,  62 => 15,  58 => 14,  54 => 13,  50 => 12,  46 => 11,  42 => 10,  36 => 7,  32 => 6,  28 => 5,  24 => 4,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "block_css_presets.html", "");
    }
}
