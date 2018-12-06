<?php

/* acp_settings.html */
class __TwigTemplate_60fcc743d217e758b0dc8419460b4a33d85717eab16442aba79604bf876c0b95 extends Twig_Template
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
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "acp_settings.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
";
        // line 3
        $asset_file = "@blitze_sitemaker/assets/settings/admin.min.css";
        $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
        if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
            $asset_path = $asset->get_path();            $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
            if (!file_exists($local_file)) {
                $local_file = $this->getEnvironment()->findTemplate($asset_path);
                $asset->set_path($local_file, true);
            }
            $asset->add_assets_version('3');
        }
        $this->getEnvironment()->get_assets_bag()->add_stylesheet($asset);        // line 4
        $asset_file = "@blitze_sitemaker/assets/settings/admin.min.js";
        $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper(), $this->getEnvironment()->get_filesystem());
        if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
            $asset_path = $asset->get_path();            $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
            if (!file_exists($local_file)) {
                $local_file = $this->getEnvironment()->findTemplate($asset_path);
                $asset->set_path($local_file, true);
            }
            $asset->add_assets_version('3');
        }
        $this->getEnvironment()->get_assets_bag()->add_script($asset);        // line 5
        echo "
<h1>";
        // line 6
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SETTINGS");
        echo "</h1>

<form id=\"acp_settings\" method=\"post\" action=\"";
        // line 8
        echo ($context["u_action"] ?? null);
        echo "\">
    <fieldset>
        <legend>";
        // line 10
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NAVIGATION_SETTINGS");
        echo "</legend>
        <dl>
            <dt>
                <label for=\"show_forum_nav\">";
        // line 13
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SHOW_FORUM_NAV");
        echo "</label><br />
                <span>";
        // line 14
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SHOW_FORUM_NAV_EXPLAIN");
        echo "</span>
            </dt>
            <dd>
                <label><input type=\"radio\" class=\"radio\" id=\"show_forum_nav\" name=\"config[sm_show_forum_nav]\" value=\"1\"";
        // line 17
        if ($this->getAttribute(($context["config"] ?? null), "sm_show_forum_nav", array())) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SHOW_FORUM_NAV_WITH_ICON");
        echo "</label>
\t\t\t\t<div class=\"icon-container\">
                    <input type=\"hidden\" name=\"config[sm_forum_icon]\" value=\"";
        // line 19
        echo $this->getAttribute(($context["config"] ?? null), "sm_forum_icon", array());
        echo "\" />
                    <a href=\"#\" class=\"icon-select\"><i class=\"";
        // line 20
        echo $this->getAttribute(($context["config"] ?? null), "sm_forum_icon", array());
        echo "\"></i></a>
                </div><br />
                <label><input type=\"radio\" class=\"radio\" name=\"config[sm_show_forum_nav]\" value=\"0\"";
        // line 22
        if ( !$this->getAttribute(($context["config"] ?? null), "sm_show_forum_nav", array())) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO");
        echo "</label>
            </dd>
        </dl>
        <dl>
            <dt>
                <label for=\"navbar_menu\">";
        // line 27
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SELECT_NAVBAR_MENU");
        echo "</label>
            </dt>
            <dd>
                <select id=\"navbar_menu\" name=\"config[sm_navbar_menu]\">
\t\t\t\t\t<option value=\"0\">";
        // line 31
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO_NAVBAR");
        echo "</option>
\t\t\t\t\t";
        // line 32
        echo ($context["menu_options"] ?? null);
        echo "
\t\t\t\t</select>
            </dd>
        </dl>
    </fieldset>

    <fieldset>
        <legend>";
        // line 39
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_SETTINGS");
        echo "</legend>
\t\t<dl>
\t\t\t<dt><label for=\"filemanager_status\">";
        // line 41
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_STATUS");
        echo "</label><br /></dt>
\t\t\t<dd>
                <select id=\"filemanager_status\" name=\"config[sm_filemanager]\" data-togglable-settings=\"true\">
\t\t\t\t\t<option value=\"1\" data-toggle-setting=\"#filemanager-settings\"";
        // line 44
        if ($this->getAttribute(($context["config"] ?? null), "sm_filemanager", array())) {
            echo " selected=\"selected\"";
        }
        echo ">";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("ENABLED");
        echo "</option>
\t\t\t\t\t<option value=\"0\"";
        // line 45
        if ( !$this->getAttribute(($context["config"] ?? null), "sm_filemanager", array())) {
            echo " selected=\"selected\"";
        }
        echo ">";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("DISABLED");
        echo "</option>
\t\t\t\t</select>
            </dd>
\t\t</dl>
\t\t<div id=\"filemanager-settings\">
\t\t";
        // line 50
        if (twig_length_filter($this->env, ($context["filemanager"] ?? null))) {
            // line 51
            echo "\t\t\t";
            $context["image_modes"] = array(0 => "exact", 1 => "portrait", 2 => "landscape", 3 => "auto", 4 => "crop");
            // line 52
            echo "\t\t\t<dl>
\t\t\t\t<dt><label for=\"filemanager_max_image\">";
            // line 53
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_IMAGE_MAX_DIMENSIONS");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("MAX_AVATAR_SIZE_EXPLAIN");
            echo "</span></dt>
\t\t\t\t<dd><input id=\"filemanager_max_image\" type=\"number\" min=\"0\" name=\"filemanager[image_max_width]\" value=\"";
            // line 54
            echo (($this->getAttribute(($context["filemanager"] ?? null), "image_max_width", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["filemanager"] ?? null), "image_max_width", array()), 0)) : (0));
            echo "\" /> x <input type=\"number\" min=\"0\" name=\"filemanager[image_max_height]\" value=\"";
            echo (($this->getAttribute(($context["filemanager"] ?? null), "image_max_height", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["filemanager"] ?? null), "image_max_height", array()), 0)) : (0));
            echo "\" /> ";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("PIXEL");
            echo "</dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"filemanager_max_mode\">";
            // line 57
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_IMAGE_MAX_MODE");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_IMAGE_MODE_EXPLAIN");
            echo "</span></dt>
\t\t\t\t<dd>
\t\t\t\t\t<select id=\"filemanager_max_mode\" name=\"filemanager[image_max_mode]\">
\t\t\t\t\t\t";
            // line 60
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["image_modes"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["mode"]) {
                // line 61
                echo "<option value=\"";
                echo $context["mode"];
                echo "\"";
                if (($this->getAttribute(($context["filemanager"] ?? null), "image_max_mode", array()) == $context["mode"])) {
                    echo " selected=\"selected\"";
                }
                echo ">";
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang(("FILEMANAGER_IMAGE_MODE_" . twig_upper_filter($this->env, $context["mode"])));
                echo "</option>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['mode'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 63
            echo "\t\t\t\t\t</select>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"filemanager_auto_resize_image\">";
            // line 67
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_IMAGE_AUTO_RESIZE");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("MAX_AVATAR_SIZE_EXPLAIN");
            echo "</span></dt>
\t\t\t\t<dd>
\t\t\t\t\t<label><input type=\"radio\" class=\"radio\" id=\"filemanager_auto_resize_image\" name=\"filemanager[image_resizing]\" value=\"true\"";
            // line 69
            if ($this->getAttribute(($context["filemanager"] ?? null), "image_resizing", array())) {
                echo " checked=\"checked\"";
            }
            echo " /> ";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("YES");
            echo "</label>
\t\t\t\t\t<label><input type=\"radio\" class=\"radio\" name=\"filemanager[image_resizing]\" value=\"false\"";
            // line 70
            if ( !$this->getAttribute(($context["filemanager"] ?? null), "image_resizing", array())) {
                echo " checked=\"checked\"";
            }
            echo " /> ";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO");
            echo "</label>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"filemanager_auto_resize_dimensions\">";
            // line 74
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_IMAGE_AUTO_RESIZE_DIMENSIONS");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("MAX_AVATAR_SIZE_EXPLAIN");
            echo "</span></dt>
\t\t\t\t<dd>
\t\t\t\t\t<input id=\"filemanager_auto_resize_dimensions\" type=\"number\" min=\"0\" name=\"filemanager[image_resizing_width]\" value=\"";
            // line 76
            echo (($this->getAttribute(($context["filemanager"] ?? null), "image_resizing_width", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["filemanager"] ?? null), "image_resizing_width", array()), 0)) : (0));
            echo "\" /> x <input type=\"number\" min=\"0\" name=\"filemanager[image_resizing_height]\" value=\"";
            echo (($this->getAttribute(($context["filemanager"] ?? null), "image_resizing_height", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["filemanager"] ?? null), "image_resizing_height", array()), 0)) : (0));
            echo "\" /> ";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("PIXEL");
            echo "
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"filemanager_resizing_mode\">";
            // line 80
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_IMAGE_AUTO_RESIZING_MODE");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_IMAGE_MODE_EXPLAIN");
            echo "</span></dt>
\t\t\t\t<dd>
\t\t\t\t\t<select id=\"filemanager_resizing_mode\" name=\"filemanager[image_resizing_mode]\">
\t\t\t\t\t\t";
            // line 83
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["image_modes"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["mode"]) {
                // line 84
                echo "<option value=\"";
                echo $context["mode"];
                echo "\"";
                if (($this->getAttribute(($context["filemanager"] ?? null), "image_resizing_mode", array()) == $context["mode"])) {
                    echo " selected=\"selected\"";
                }
                echo ">";
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang(("FILEMANAGER_IMAGE_MODE_" . twig_upper_filter($this->env, $context["mode"])));
                echo "</option>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['mode'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 86
            echo "\t\t\t\t\t</select>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"filemanager_watermark\">";
            // line 90
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_WATERMARK");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_WATERMARK_EXPLAIN");
            echo "</span></dt>
\t\t\t\t<dd><input id=\"filemanager_watermark\" type=\"text\" size=\"35\" maxlength=\"255\" name=\"filemanager[image_watermark]\" value=\"";
            // line 91
            echo $this->getAttribute(($context["filemanager"] ?? null), "image_watermark", array());
            echo "\" /></dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"filemanager_watermark_position\">";
            // line 94
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_WATERMARK_POSITION");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_WATERMARK_POSITION_EXPLAIN");
            echo "</span></dt>
\t\t\t\t<dd>
\t\t\t\t\t<select id=\"filemanager_watermark_position\" name=\"filemanager[image_watermark_position]\">";
            // line 97
            $context["watermark_positions"] = array(0 => "tl", 1 => "t", 2 => "tr", 3 => "l", 4 => "m", 5 => "r", 6 => "bl", 7 => "b", 8 => "br");
            // line 98
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["watermark_positions"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["position"]) {
                // line 99
                echo "<option value=\"";
                echo $context["position"];
                echo "\"";
                if (($this->getAttribute(($context["filemanager"] ?? null), "image_watermark_position", array()) == $context["position"])) {
                    echo " selected=\"selected\"";
                }
                echo ">";
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang(("FILEMANAGER_WATERMARK_POSITION_" . twig_upper_filter($this->env, $context["position"])));
                echo "</option>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['position'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 101
            echo "\t\t\t\t\t</select>
\t\t\t\t\t";
            // line 102
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_WATERMARK_POSITION_SUFFIX");
            echo "
\t\t\t\t\t";
            // line 103
            $context["watermark_coordinates"] = ((preg_match("/d+/", twig_first($this->env, $this->getAttribute(($context["filemanager"] ?? null), "image_watermark_position", array())))) ? ($this->getAttribute(($context["filemanager"] ?? null), "image_watermark_position", array())) : (""));
            // line 104
            echo "<input id=\"filemanager_watermark_coordinates\" type=\"text\" size=\"10\" maxlength=\"255\" name=\"filemanager[image_watermark_coordinates]\" value=\"";
            echo ($context["watermark_coordinates"] ?? null);
            echo "\" />
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"filemanager_watermark_padding\">";
            // line 108
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_WATERMARK_PADDING");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_WATERMARK_PADDING_EXPLAIN");
            echo "</span></dt>
\t\t\t\t<dd><input id=\"filemanager_watermark_padding\" type=\"number\" min=\"0\" name=\"filemanager[image_watermark_padding]\" value=\"";
            // line 109
            echo $this->getAttribute(($context["filemanager"] ?? null), "image_watermark_padding", array());
            echo "\" /> ";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("PIXEL");
            echo "</dd>
\t\t\t</dl>
\t\t\t<dl>
\t\t\t\t<dt><label for=\"filemanager_aviary_apiKey\">";
            // line 112
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_AVIARY_API_KEY");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_AVIARY_API_KEY_EXPLAIN");
            echo "</span></dt>
\t\t\t\t<dd><input id=\"filemanager_aviary_apiKey\" type=\"text\" size=\"35\" maxlength=\"255\" name=\"filemanager[aviary_apiKey]\" value=\"";
            // line 113
            echo $this->getAttribute(($context["filemanager"] ?? null), "aviary_apiKey", array());
            echo "\" /></dd>
\t\t\t</dl>
\t\t";
        } else {
            // line 116
            echo "\t\t\t<p>";
            echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FILEMANAGER_NO_EXIST");
            echo "</p>
\t\t";
        }
        // line 118
        echo "\t\t</div>
    </fieldset>

    <fieldset>
        <legend>";
        // line 122
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FORUM_INDEX_SETTINGS");
        echo "</legend>
        <dl>
            <dt><label for=\"hide_login\">";
        // line 124
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("HIDE_LOGIN");
        echo "</label></dt>
            <dd>
                <label><input type=\"radio\" class=\"radio\" id=\"hide_login\" name=\"config[sm_hide_login]\" value=\"1\"";
        // line 126
        if ($this->getAttribute(($context["config"] ?? null), "sm_hide_login", array())) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("YES");
        echo "</label>
                <label><input type=\"radio\" class=\"radio\" name=\"config[sm_hide_login]\" value=\"0\"";
        // line 127
        if ( !$this->getAttribute(($context["config"] ?? null), "sm_hide_login", array())) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO");
        echo "</label>
            </dd>
        </dl>
        <dl>
            <dt><label for=\"hide_online\">";
        // line 131
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("HIDE_ONLINE");
        echo "*</label></dt>
            <dd>
                <label><input type=\"radio\" class=\"radio\" id=\"hide_online\" name=\"config[sm_hide_online]\" value=\"1\"";
        // line 133
        if ($this->getAttribute(($context["config"] ?? null), "sm_hide_online", array())) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("YES");
        echo "</label>
                <label><input type=\"radio\" class=\"radio\" name=\"config[sm_hide_online]\" value=\"0\"";
        // line 134
        if ( !$this->getAttribute(($context["config"] ?? null), "sm_hide_online", array())) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO");
        echo "</label>
            </dd>
        </dl>
        <dl>
            <dt><label for=\"hide_birthday\">";
        // line 138
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("HIDE_BIRTHDAY");
        echo "*</label></dt>
            <dd>
                <label><input type=\"radio\" class=\"radio\" id=\"hide_birthday\" name=\"config[sm_hide_birthday]\" value=\"1\"";
        // line 140
        if ($this->getAttribute(($context["config"] ?? null), "sm_hide_birthday", array())) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("YES");
        echo "</label>
                <label><input type=\"radio\" class=\"radio\" name=\"config[sm_hide_birthday]\" value=\"0\"";
        // line 141
        if ( !$this->getAttribute(($context["config"] ?? null), "sm_hide_birthday", array())) {
            echo " checked=\"checked\"";
        }
        echo " /> ";
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("NO");
        echo "</label>
            </dd>
        </dl>
        <p>*";
        // line 144
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("FORUM_INDEX_SETTINGS_EXPLAIN");
        echo "</p>
    </fieldset>

\t";
        // line 147
        // line 148
        echo "
    <fieldset>
        <legend>";
        // line 150
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("LAYOUT_SETTINGS");
        echo "</legend>
        <div class=\"style-layouts\">";
        // line 152
        $context["views"] = array(0 => "basic", 1 => "boxed", 2 => "simple");
        // line 153
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["styles"] ?? null));
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
        foreach ($context['_seq'] as $context["_key"] => $context["style"]) {
            // line 154
            echo "            <dl data-layout=\"";
            echo $this->getAttribute($context["style"], "layout", array());
            echo "\">
                <dt><label for=\"";
            // line 155
            echo $this->getAttribute($context["style"], "name", array());
            echo "\">";
            echo $this->getAttribute($context["style"], "name", array());
            echo "</label></dt>
                <dd>
                    <label>
                        <select class=\"layout-option\" name=\"layouts[";
            // line 158
            echo $this->getAttribute($context["style"], "id", array());
            echo "][layout]\" id=\"";
            echo $this->getAttribute($context["style"], "name", array());
            echo "\">
\t\t\t\t\t\t";
            // line 159
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["layouts"] ?? null));
            foreach ($context['_seq'] as $context["name"] => $context["path"]) {
                // line 160
                echo "\t\t\t\t\t\t\t<option value=\"";
                echo $context["path"];
                echo "\"";
                echo ((($context["path"] === $this->getAttribute($context["style"], "layout", array()))) ? (" selected=\"selected\"") : (""));
                echo ">";
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang(("LAYOUT_" . twig_upper_filter($this->env, $context["name"])));
                echo "</option>
\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['name'], $context['path'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 162
            echo "\t\t\t\t\t\t</select>
                        <select class=\"view-option\" name=\"layouts[";
            // line 163
            echo $this->getAttribute($context["style"], "id", array());
            echo "][view]\">";
            // line 164
            $context["view"] = (($this->getAttribute($context["style"], "view", array())) ? ($this->getAttribute($context["style"], "view", array())) : ("simple"));
            // line 165
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["views"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["value"]) {
                // line 166
                echo "\t\t\t\t\t\t\t<option value=\"";
                echo $context["value"];
                echo "\"";
                echo ((($context["value"] === ($context["view"] ?? null))) ? (" selected=\"selected\"") : (""));
                echo ">";
                echo $this->env->getExtension('phpbb\template\twig\extension')->lang(("BLOCK_VIEW_" . twig_upper_filter($this->env, $context["value"])));
                echo "</option>
\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['value'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 168
            echo "\t\t\t\t\t\t</select>
                    </label>
                </dd>
            </dl>
            ";
            // line 172
            if ( !$this->getAttribute($context["loop"], "first", array())) {
                echo "<hr />";
            }
            // line 173
            echo "        ";
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
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['style'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 174
        echo "        </div>
\t\t<div class=\"layout-preview responsive-hide\">
\t\t\t";
        // line 176
        $context["preview"] = twig_first($this->env, ($context["styles"] ?? null));
        // line 177
        echo "\t\t\t<img src=\"";
        echo $this->getAttribute(($context["preview"] ?? null), "layout", array());
        echo "preview.png\" alt=\"\" />
\t\t\t<div class=\"larger-view\"><img src=\"";
        // line 178
        echo $this->getAttribute(($context["preview"] ?? null), "layout", array());
        echo "preview.png\" alt=\"\" /></div>
\t\t</div>
    </fieldset>

    <fieldset>
        <p class=\"submit-buttons\">
            <input class=\"button1\" type=\"submit\" id=\"submit\" name=\"submit\" value=\"";
        // line 184
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("SUBMIT");
        echo "\" />&nbsp;
            <input class=\"button2\" type=\"reset\" id=\"reset\" name=\"reset\" value=\"";
        // line 185
        echo $this->env->getExtension('phpbb\template\twig\extension')->lang("RESET");
        echo "\" />
        </p>

        ";
        // line 188
        echo ($context["S_FORM_TOKEN"] ?? null);
        echo "
    </fieldset>
</form>

";
        // line 192
        echo ($context["icon_picker"] ?? null);
        echo "

";
        // line 194
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "acp_settings.html", 194)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "acp_settings.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  630 => 194,  625 => 192,  618 => 188,  612 => 185,  608 => 184,  599 => 178,  594 => 177,  592 => 176,  588 => 174,  574 => 173,  570 => 172,  564 => 168,  551 => 166,  547 => 165,  545 => 164,  542 => 163,  539 => 162,  526 => 160,  522 => 159,  516 => 158,  508 => 155,  503 => 154,  486 => 153,  484 => 152,  480 => 150,  476 => 148,  475 => 147,  469 => 144,  459 => 141,  451 => 140,  446 => 138,  435 => 134,  427 => 133,  422 => 131,  411 => 127,  403 => 126,  398 => 124,  393 => 122,  387 => 118,  381 => 116,  375 => 113,  369 => 112,  361 => 109,  355 => 108,  347 => 104,  345 => 103,  341 => 102,  338 => 101,  324 => 99,  320 => 98,  318 => 97,  311 => 94,  305 => 91,  299 => 90,  293 => 86,  279 => 84,  275 => 83,  267 => 80,  256 => 76,  249 => 74,  238 => 70,  230 => 69,  223 => 67,  217 => 63,  203 => 61,  199 => 60,  191 => 57,  181 => 54,  175 => 53,  172 => 52,  169 => 51,  167 => 50,  155 => 45,  147 => 44,  141 => 41,  136 => 39,  126 => 32,  122 => 31,  115 => 27,  103 => 22,  98 => 20,  94 => 19,  85 => 17,  79 => 14,  75 => 13,  69 => 10,  64 => 8,  59 => 6,  56 => 5,  45 => 4,  34 => 3,  31 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "acp_settings.html", "");
    }
}
