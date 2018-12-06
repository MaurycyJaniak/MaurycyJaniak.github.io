<?php

/* blocks/forum_topics.html */
class __TwigTemplate_78f61f5d5f799d16bd3954acc54ce5a62e0a9d7aa0ef279356b918d9d144ff28 extends Twig_Template
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
        if (twig_length_filter($this->env, $this->getAttribute(($context["loops"] ?? null), "topicrow", array()))) {
            // line 2
            echo "\t<ul class=\"sm-list\">
\t";
            // line 3
            if (($context["S_CONTEXT"] ?? null)) {
                // line 4
                echo "\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "topicrow", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["topicrow"]) {
                    // line 5
                    echo "\t\t<li>
\t\t\t<div class=\"sm-inner img-align-left small-avatar\">
\t\t\t\t<a href=\"";
                    // line 7
                    echo $this->getAttribute($context["topicrow"], "U_VIEWPROFILE", array());
                    echo "\" class=\"img-ui\">";
                    echo $this->getAttribute($context["topicrow"], "AVATAR", array());
                    echo "</a>
\t\t\t\t<div class=\"sm-fill-space\">
\t\t\t\t\t<p class=\"topic-title\"><a href=\"";
                    // line 9
                    echo $this->getAttribute($context["topicrow"], "U_VIEWTOPIC", array());
                    echo "\">";
                    echo $this->getAttribute($context["topicrow"], "TOPIC_TITLE", array());
                    echo "</a></p>
\t\t\t\t\t<div class=\"author\">
\t\t\t\t\t";
                    // line 11
                    if ( !($context["S_IS_BOT"] ?? null)) {
                        // line 12
                        echo "\t\t\t\t\t\t";
                        if ($this->getAttribute($context["topicrow"], "S_UNREAD_TOPIC", array())) {
                            // line 13
                            echo "\t\t\t\t\t\t<a class=\"unread\" href=\"";
                            echo $this->getAttribute($context["topicrow"], "U_NEW_POST", array());
                            echo "\" title=\"";
                            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NEW_POST");
                            echo "\">
\t\t\t\t\t\t\t<i class=\"icon fa-file fa-fw icon-red icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                            // line 14
                            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NEW_POST");
                            echo "</span>
\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
                        } else {
                            // line 17
                            echo "\t\t\t\t\t\t<a href=\"";
                            echo $this->getAttribute($context["topicrow"], "U_LAST_POST", array());
                            echo "\" title=\"";
                            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("GOTO_LAST_POST");
                            echo "\">
\t\t\t\t\t\t\t<i class=\"icon fa-file fa-fw icon-lightgray icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                            // line 18
                            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("GOTO_LAST_POST");
                            echo "</span>
\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
                        }
                        // line 21
                        echo "\t\t\t\t\t";
                    }
                    // line 22
                    echo "\t\t\t\t\t\t";
                    if ($this->getAttribute($context["topicrow"], "ATTACH_ICON_IMG", array())) {
                        echo "<i class=\"icon fa-paperclip fa-fw\" aria-hidden=\"true\"></i>";
                    }
                    // line 23
                    echo "\t\t\t\t\t\t";
                    echo $this->env->getExtension('phpbb\template\twig\extension')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["topicrow"], "USERNAME", array());
                    echo " ";
                    echo $this->env->getExtension('phpbb\template\twig\extension')->lang("POSTED_ON_DATE");
                    echo " ";
                    echo $this->getAttribute($context["topicrow"], "TOPIC_POST_TIME", array());
                    echo " ";
                    echo $this->env->getExtension('phpbb\template\twig\extension')->lang("IN");
                    echo " <a href=\"";
                    echo $this->getAttribute($context["topicrow"], "U_VIEWFORUM", array());
                    echo "\">";
                    echo $this->getAttribute($context["topicrow"], "FORUM_TITLE", array());
                    echo "</a>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t<br />
\t\t\t\t<p class=\"gensmall\">";
                    // line 27
                    echo $this->getAttribute($context["topicrow"], "TOPIC_PREVIEW", array());
                    echo "</p>
\t\t\t</div>
\t\t</li>
\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topicrow'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 31
                echo "\t";
            } elseif (($context["S_MINI"] ?? null)) {
                // line 32
                echo "\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "topicrow", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["topicrow"]) {
                    // line 33
                    echo "\t\t<li title=\"";
                    echo $this->getAttribute($context["topicrow"], "TOPIC_PREVIEW", array());
                    echo "\">
\t\t\t<div class=\"sm-inner img-align-left small-avatar\">
\t\t\t\t<a href=\"";
                    // line 35
                    echo $this->getAttribute($context["topicrow"], "U_VIEWPROFILE", array());
                    echo "\" class=\"img-ui\">";
                    echo $this->getAttribute($context["topicrow"], "AVATAR", array());
                    echo "</a>
\t\t\t\t<div class=\"sm-fill-space\">
\t\t\t\t\t<p class=\"topic-title\"><a href=\"";
                    // line 37
                    echo $this->getAttribute($context["topicrow"], "U_VIEWTOPIC", array());
                    echo "\">";
                    echo $this->getAttribute($context["topicrow"], "TOPIC_TITLE", array());
                    echo "</a></p><br /><br />
\t\t\t\t\t<p class=\"small\"><i class=\"fa fa-clock-o\"></i>";
                    // line 38
                    echo twig_date_format_filter($this->env, $this->getAttribute($context["topicrow"], "TOPIC_POST_TIME", array()), "M d, Y");
                    echo "</p>
\t\t\t\t</div>
\t\t\t</div>
\t\t</li>
\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topicrow'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 43
                echo "\t";
            } else {
                // line 44
                echo "\t\t";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["loops"] ?? null), "topicrow", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["topicrow"]) {
                    // line 45
                    echo "\t\t<li>
\t\t";
                    // line 46
                    if ( !($context["S_IS_BOT"] ?? null)) {
                        // line 47
                        echo "\t\t\t";
                        if ($this->getAttribute($context["topicrow"], "S_UNREAD_TOPIC", array())) {
                            // line 48
                            echo "\t\t\t<a class=\"unread\" href=\"";
                            echo $this->getAttribute($context["topicrow"], "U_NEW_POST", array());
                            echo "\" title=\"";
                            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NEW_POST");
                            echo "\">
\t\t\t\t<i class=\"icon fa-file fa-fw icon-red icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                            // line 49
                            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NEW_POST");
                            echo "</span>
\t\t\t</a>
\t\t\t";
                        } else {
                            // line 52
                            echo "\t\t\t<a href=\"";
                            echo $this->getAttribute($context["topicrow"], "U_LAST_POST", array());
                            echo "\" title=\"";
                            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("GOTO_LAST_POST");
                            echo "\">
\t\t\t\t<i class=\"icon fa-file fa-fw icon-lightgray icon-md\" aria-hidden=\"true\"></i><span class=\"sr-only\">";
                            // line 53
                            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("GOTO_LAST_POST");
                            echo "</span>
\t\t\t</a>
\t\t\t";
                        }
                        // line 56
                        echo "\t\t";
                    }
                    // line 57
                    echo "\t\t\t<a href=\"";
                    echo $this->getAttribute($context["topicrow"], "U_VIEWTOPIC", array());
                    echo "\" title=\"";
                    echo $this->getAttribute($context["topicrow"], "TOPIC_PREVIEW", array());
                    echo "\">";
                    echo $this->getAttribute($context["topicrow"], "TOPIC_TITLE", array());
                    echo "</a>
\t\t</li>
\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topicrow'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 60
                echo "\t";
            }
            // line 61
            echo "\t</ul>
";
        }
    }

    public function getTemplateName()
    {
        return "blocks/forum_topics.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  218 => 61,  215 => 60,  201 => 57,  198 => 56,  192 => 53,  185 => 52,  179 => 49,  172 => 48,  169 => 47,  167 => 46,  164 => 45,  159 => 44,  156 => 43,  145 => 38,  139 => 37,  132 => 35,  126 => 33,  121 => 32,  118 => 31,  108 => 27,  88 => 23,  83 => 22,  80 => 21,  74 => 18,  67 => 17,  61 => 14,  54 => 13,  51 => 12,  49 => 11,  42 => 9,  35 => 7,  31 => 5,  26 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "blocks/forum_topics.html", "");
    }
}
