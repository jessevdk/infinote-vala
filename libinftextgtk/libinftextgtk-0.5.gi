<?xml version="1.0"?>
<api version="1.0">
	<namespace name="InfTextGtk">
		<object name="InfTextGtkBuffer" parent="GObject" type-name="InfTextGtkBuffer" get-type="inf_text_gtk_buffer_get_type">
			<implements>
				<interface name="InfBuffer"/>
				<interface name="InfTextBuffer"/>
			</implements>
			<method name="backward_to_author_toggle" symbol="inf_text_gtk_buffer_backward_to_author_toggle">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="iter" type="GtkTextIter*"/>
					<parameter name="user_on" type="InfTextUser**"/>
					<parameter name="user_off" type="InfTextUser**"/>
				</parameters>
			</method>
			<method name="ensure_author_tags_priority" symbol="inf_text_gtk_buffer_ensure_author_tags_priority">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
				</parameters>
			</method>
			<method name="forward_to_author_toggle" symbol="inf_text_gtk_buffer_forward_to_author_toggle">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="iter" type="GtkTextIter*"/>
					<parameter name="user_on" type="InfTextUser**"/>
					<parameter name="user_off" type="InfTextUser**"/>
				</parameters>
			</method>
			<method name="get_active_user" symbol="inf_text_gtk_buffer_get_active_user">
				<return-type type="InfTextUser*"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
				</parameters>
			</method>
			<method name="get_author" symbol="inf_text_gtk_buffer_get_author">
				<return-type type="InfTextUser*"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="location" type="GtkTextIter*"/>
				</parameters>
			</method>
			<method name="get_saturation" symbol="inf_text_gtk_buffer_get_saturation">
				<return-type type="gdouble"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
				</parameters>
			</method>
			<method name="get_show_user_colors" symbol="inf_text_gtk_buffer_get_show_user_colors">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
				</parameters>
			</method>
			<method name="get_text_buffer" symbol="inf_text_gtk_buffer_get_text_buffer">
				<return-type type="GtkTextBuffer*"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
				</parameters>
			</method>
			<method name="get_user_for_tag" symbol="inf_text_gtk_buffer_get_user_for_tag">
				<return-type type="InfTextUser*"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="tag" type="GtkTextTag*"/>
				</parameters>
			</method>
			<method name="get_value" symbol="inf_text_gtk_buffer_get_value">
				<return-type type="gdouble"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
				</parameters>
			</method>
			<method name="get_wake_on_cursor_movement" symbol="inf_text_gtk_buffer_get_wake_on_cursor_movement">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
				</parameters>
			</method>
			<method name="is_author_toggle" symbol="inf_text_gtk_buffer_is_author_toggle">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="iter" type="GtkTextIter*"/>
					<parameter name="user_on" type="InfTextUser**"/>
					<parameter name="user_off" type="InfTextUser**"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_gtk_buffer_new">
				<return-type type="InfTextGtkBuffer*"/>
				<parameters>
					<parameter name="buffer" type="GtkTextBuffer*"/>
					<parameter name="user_table" type="InfUserTable*"/>
				</parameters>
			</constructor>
			<method name="set_active_user" symbol="inf_text_gtk_buffer_set_active_user">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="user" type="InfTextUser*"/>
				</parameters>
			</method>
			<method name="set_saturation_value" symbol="inf_text_gtk_buffer_set_saturation_value">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="saturation" type="gdouble"/>
					<parameter name="value" type="gdouble"/>
				</parameters>
			</method>
			<method name="set_show_user_colors" symbol="inf_text_gtk_buffer_set_show_user_colors">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="show" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_wake_on_cursor_movement" symbol="inf_text_gtk_buffer_set_wake_on_cursor_movement">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="wake" type="gboolean"/>
				</parameters>
			</method>
			<method name="show_user_colors" symbol="inf_text_gtk_buffer_show_user_colors">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextGtkBuffer*"/>
					<parameter name="show" type="gboolean"/>
					<parameter name="start" type="GtkTextIter*"/>
					<parameter name="end" type="GtkTextIter*"/>
				</parameters>
			</method>
			<property name="active-user" type="InfTextUser*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="buffer" type="GtkTextBuffer*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="saturation" type="gdouble" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="show-user-colors" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="user-table" type="InfUserTable*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="value" type="gdouble" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="wake-on-cursor-movement" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="InfTextGtkHueChooser" parent="GtkWidget" type-name="InfTextGtkHueChooser" get-type="inf_text_gtk_hue_chooser_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<method name="get_hue" symbol="inf_text_gtk_hue_chooser_get_hue">
				<return-type type="gdouble"/>
				<parameters>
					<parameter name="chooser" type="InfTextGtkHueChooser*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_gtk_hue_chooser_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_with_hue" symbol="inf_text_gtk_hue_chooser_new_with_hue">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="hue" type="gdouble"/>
				</parameters>
			</constructor>
			<method name="set_hue" symbol="inf_text_gtk_hue_chooser_set_hue">
				<return-type type="void"/>
				<parameters>
					<parameter name="chooser" type="InfTextGtkHueChooser*"/>
					<parameter name="hue" type="gdouble"/>
				</parameters>
			</method>
			<property name="hue" type="gdouble" readable="1" writable="1" construct="1" construct-only="0"/>
			<signal name="hue-change" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="chooser" type="InfTextGtkHueChooser*"/>
					<parameter name="hue" type="gdouble"/>
				</parameters>
			</signal>
			<signal name="move" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="chooser" type="InfTextGtkHueChooser*"/>
					<parameter name="direction" type="GtkDirectionType"/>
				</parameters>
			</signal>
		</object>
		<object name="InfTextGtkView" parent="GObject" type-name="InfTextGtkView" get-type="inf_text_gtk_view_get_type">
			<method name="get_active_user" symbol="inf_text_gtk_view_get_active_user">
				<return-type type="InfTextUser*"/>
				<parameters>
					<parameter name="view" type="InfTextGtkView*"/>
				</parameters>
			</method>
			<method name="get_text_view" symbol="inf_text_gtk_view_get_text_view">
				<return-type type="GtkTextView*"/>
				<parameters>
					<parameter name="view" type="InfTextGtkView*"/>
				</parameters>
			</method>
			<method name="get_user_table" symbol="inf_text_gtk_view_get_user_table">
				<return-type type="InfUserTable*"/>
				<parameters>
					<parameter name="view" type="InfTextGtkView*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_gtk_view_new">
				<return-type type="InfTextGtkView*"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="view" type="GtkTextView*"/>
					<parameter name="user_table" type="InfUserTable*"/>
				</parameters>
			</constructor>
			<method name="set_active_user" symbol="inf_text_gtk_view_set_active_user">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="InfTextGtkView*"/>
					<parameter name="user" type="InfTextUser*"/>
				</parameters>
			</method>
			<property name="active-user" type="InfTextUser*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="io" type="InfIo*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="user-table" type="InfUserTable*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="view" type="GtkTextView*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfTextGtkViewport" parent="GObject" type-name="InfTextGtkViewport" get-type="inf_text_gtk_viewport_get_type">
			<method name="get_active_user" symbol="inf_text_gtk_viewport_get_active_user">
				<return-type type="InfTextUser*"/>
				<parameters>
					<parameter name="viewport" type="InfTextGtkViewport*"/>
				</parameters>
			</method>
			<method name="get_scrolled_window" symbol="inf_text_gtk_viewport_get_scrolled_window">
				<return-type type="GtkScrolledWindow*"/>
				<parameters>
					<parameter name="viewport" type="InfTextGtkViewport*"/>
				</parameters>
			</method>
			<method name="get_user_table" symbol="inf_text_gtk_viewport_get_user_table">
				<return-type type="InfUserTable*"/>
				<parameters>
					<parameter name="viewport" type="InfTextGtkViewport*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_gtk_viewport_new">
				<return-type type="InfTextGtkViewport*"/>
				<parameters>
					<parameter name="scroll" type="GtkScrolledWindow*"/>
					<parameter name="user_table" type="InfUserTable*"/>
				</parameters>
			</constructor>
			<method name="set_active_user" symbol="inf_text_gtk_viewport_set_active_user">
				<return-type type="void"/>
				<parameters>
					<parameter name="viewport" type="InfTextGtkViewport*"/>
					<parameter name="user" type="InfTextUser*"/>
				</parameters>
			</method>
			<property name="active-user" type="InfTextUser*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="scrolled-window" type="GtkScrolledWindow*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="user-table" type="InfUserTable*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
	</namespace>
</api>
