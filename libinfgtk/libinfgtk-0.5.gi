<?xml version="1.0"?>
<api version="1.0">
	<namespace name="InfGtk">
		<enum name="InfGtkBrowserModelColumn">
			<member name="INF_GTK_BROWSER_MODEL_COL_DISCOVERY_INFO" value="0"/>
			<member name="INF_GTK_BROWSER_MODEL_COL_DISCOVERY" value="1"/>
			<member name="INF_GTK_BROWSER_MODEL_COL_BROWSER" value="2"/>
			<member name="INF_GTK_BROWSER_MODEL_COL_STATUS" value="3"/>
			<member name="INF_GTK_BROWSER_MODEL_COL_NAME" value="4"/>
			<member name="INF_GTK_BROWSER_MODEL_COL_ERROR" value="5"/>
			<member name="INF_GTK_BROWSER_MODEL_COL_NODE" value="6"/>
			<member name="INF_GTK_BROWSER_MODEL_NUM_COLS" value="7"/>
		</enum>
		<enum name="InfGtkBrowserModelStatus" type-name="InfGtkBrowserModelStatus" get-type="inf_gtk_browser_model_status_get_type">
			<member name="INF_GTK_BROWSER_MODEL_DISCOVERED" value="1"/>
			<member name="INF_GTK_BROWSER_MODEL_RESOLVING" value="2"/>
			<member name="INF_GTK_BROWSER_MODEL_CONNECTING" value="4"/>
			<member name="INF_GTK_BROWSER_MODEL_CONNECTED" value="5"/>
			<member name="INF_GTK_BROWSER_MODEL_ERROR" value="6"/>
		</enum>
		<enum name="InfGtkCertificateDialogFlags">
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_NOT_ACTIVATED" value="1"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_EXPIRED" value="2"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_HOSTNAME_MISMATCH" value="4"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_INVALID" value="8"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_ISSUER_NOT_TRUSTED" value="16"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_CHANGED" value="32"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_OLD_EXPIRED" value="64"/>
		</enum>
		<flags name="InfCertificateDialogFlags" type-name="InfCertificateDialogFlags" get-type="inf_gtk_certificate_dialog_flags_get_type">
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_NOT_ACTIVATED" value="1"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_EXPIRED" value="2"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_HOSTNAME_MISMATCH" value="4"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_ISSUER_NOT_TRUSTED" value="16"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_INVALID" value="8"/>
			<member name="INF_GTK_CERTIFICATE_DIALOG_CERT_CHANGED" value="32"/>
		</flags>
		<object name="InfGtkBrowserModelFilter" parent="GtkTreeModelFilter" type-name="InfGtkBrowserModelFilter" get-type="inf_gtk_browser_model_filter_get_type">
			<implements>
				<interface name="GtkTreeModel"/>
				<interface name="GtkTreeDragSource"/>
				<interface name="InfGtkBrowserModel"/>
			</implements>
			<constructor name="new" symbol="inf_gtk_browser_model_filter_new">
				<return-type type="InfGtkBrowserModelFilter*"/>
				<parameters>
					<parameter name="child_model" type="InfGtkBrowserModel*"/>
				</parameters>
			</constructor>
		</object>
		<object name="InfGtkBrowserModelSort" parent="GtkTreeModelSort" type-name="InfGtkBrowserModelSort" get-type="inf_gtk_browser_model_sort_get_type">
			<implements>
				<interface name="GtkTreeModel"/>
				<interface name="GtkTreeSortable"/>
				<interface name="GtkTreeDragSource"/>
				<interface name="InfGtkBrowserModel"/>
			</implements>
			<constructor name="new" symbol="inf_gtk_browser_model_sort_new">
				<return-type type="InfGtkBrowserModelSort*"/>
				<parameters>
					<parameter name="child_model" type="InfGtkBrowserModel*"/>
				</parameters>
			</constructor>
		</object>
		<object name="InfGtkBrowserStore" parent="GObject" type-name="InfGtkBrowserStore" get-type="inf_gtk_browser_store_get_type">
			<implements>
				<interface name="GtkTreeModel"/>
				<interface name="InfGtkBrowserModel"/>
			</implements>
			<method name="add_connection" symbol="inf_gtk_browser_store_add_connection">
				<return-type type="void"/>
				<parameters>
					<parameter name="store" type="InfGtkBrowserStore*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="add_discovery" symbol="inf_gtk_browser_store_add_discovery">
				<return-type type="void"/>
				<parameters>
					<parameter name="store" type="InfGtkBrowserStore*"/>
					<parameter name="discovery" type="InfDiscovery*"/>
				</parameters>
			</method>
			<method name="clear_connection_error" symbol="inf_gtk_browser_store_clear_connection_error">
				<return-type type="void"/>
				<parameters>
					<parameter name="store" type="InfGtkBrowserStore*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_gtk_browser_store_new">
				<return-type type="InfGtkBrowserStore*"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="comm_manager" type="InfCommunicationManager*"/>
				</parameters>
			</constructor>
			<method name="remove_connection" symbol="inf_gtk_browser_store_remove_connection">
				<return-type type="void"/>
				<parameters>
					<parameter name="store" type="InfGtkBrowserStore*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="set_connection_name" symbol="inf_gtk_browser_store_set_connection_name">
				<return-type type="void"/>
				<parameters>
					<parameter name="store" type="InfGtkBrowserStore*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<property name="communication-manager" type="InfCommunicationManager*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="io" type="InfIo*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfGtkBrowserView" parent="GtkBin" type-name="InfGtkBrowserView" get-type="inf_gtk_browser_view_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<method name="get_model" symbol="inf_gtk_browser_view_get_model">
				<return-type type="InfGtkBrowserModel*"/>
				<parameters>
					<parameter name="view" type="InfGtkBrowserView*"/>
				</parameters>
			</method>
			<method name="get_selected" symbol="inf_gtk_browser_view_get_selected">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="view" type="InfGtkBrowserView*"/>
					<parameter name="iter" type="GtkTreeIter*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_gtk_browser_view_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_with_model" symbol="inf_gtk_browser_view_new_with_model">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="model" type="InfGtkBrowserModel*"/>
				</parameters>
			</constructor>
			<method name="set_selected" symbol="inf_gtk_browser_view_set_selected">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="InfGtkBrowserView*"/>
					<parameter name="iter" type="GtkTreeIter*"/>
				</parameters>
			</method>
			<property name="model" type="InfGtkBrowserModel*" readable="1" writable="1" construct="1" construct-only="0"/>
			<signal name="activate" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="InfGtkBrowserView*"/>
					<parameter name="iter" type="GtkTreeIter*"/>
				</parameters>
			</signal>
			<signal name="populate-popup" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="InfGtkBrowserView*"/>
					<parameter name="menu" type="GtkMenu*"/>
				</parameters>
			</signal>
			<signal name="selection-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="InfGtkBrowserView*"/>
					<parameter name="iter" type="GtkTreeIter*"/>
				</parameters>
			</signal>
			<signal name="set-scroll-adjustments" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="InfGtkBrowserView*"/>
					<parameter name="hadjustment" type="GtkAdjustment*"/>
					<parameter name="vadjustment" type="GtkAdjustment*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfGtkCertificateDialog" parent="GtkDialog" type-name="InfGtkCertificateDialog" get-type="inf_gtk_certificate_dialog_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<constructor name="new" symbol="inf_gtk_certificate_dialog_new">
				<return-type type="InfGtkCertificateDialog*"/>
				<parameters>
					<parameter name="parent" type="GtkWindow*"/>
					<parameter name="dialog_flags" type="GtkDialogFlags"/>
					<parameter name="certificate_flags" type="InfGtkCertificateDialogFlags"/>
					<parameter name="hostname" type="gchar*"/>
					<parameter name="certificate_chain" type="InfCertificateChain*"/>
				</parameters>
			</constructor>
			<property name="certificate-chain" type="InfCertificateChain*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="certificate-flags" type="InfCertificateDialogFlags" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="hostname" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="InfGtkCertificateManager" parent="GObject" type-name="InfGtkCertificateManager" get-type="inf_gtk_certificate_manager_get_type">
			<constructor name="new" symbol="inf_gtk_certificate_manager_new">
				<return-type type="InfGtkCertificateManager*"/>
				<parameters>
					<parameter name="parent_window" type="GtkWindow*"/>
					<parameter name="xmpp_manager" type="InfXmppManager*"/>
					<parameter name="trust_file" type="gchar*"/>
					<parameter name="known_hosts_file" type="gchar*"/>
				</parameters>
			</constructor>
			<property name="known-hosts-file" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="parent-window" type="GtkWindow*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="trust-file" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="xmpp-manager" type="InfXmppManager*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfGtkCertificateView" parent="GtkNotebook" type-name="InfGtkCertificateView" get-type="inf_gtk_certificate_view_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<constructor name="new" symbol="inf_gtk_certificate_view_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_with_certificate" symbol="inf_gtk_certificate_view_new_with_certificate">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="cert" type="gnutls_x509_crt_t"/>
				</parameters>
			</constructor>
			<method name="set_certificate" symbol="inf_gtk_certificate_view_set_certificate">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="InfGtkCertificateView*"/>
					<parameter name="cert" type="gnutls_x509_crt_t"/>
				</parameters>
			</method>
			<property name="certificate" type="gpointer" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="InfGtkChat" parent="GtkVBox" type-name="InfGtkChat" get-type="inf_gtk_chat_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
				<interface name="GtkOrientable"/>
			</implements>
			<method name="get_active_user" symbol="inf_gtk_chat_get_active_user">
				<return-type type="InfUser*"/>
				<parameters>
					<parameter name="chat" type="InfGtkChat*"/>
				</parameters>
			</method>
			<method name="get_entry" symbol="inf_gtk_chat_get_entry">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="chat" type="InfGtkChat*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_gtk_chat_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<method name="set_active_user" symbol="inf_gtk_chat_set_active_user">
				<return-type type="void"/>
				<parameters>
					<parameter name="chat" type="InfGtkChat*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="set_session" symbol="inf_gtk_chat_set_session">
				<return-type type="void"/>
				<parameters>
					<parameter name="chat" type="InfGtkChat*"/>
					<parameter name="session" type="InfChatSession*"/>
				</parameters>
			</method>
			<property name="active-user" type="InfUser*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="session" type="InfChatSession*" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="InfGtkIo" parent="GObject" type-name="InfGtkIo" get-type="inf_gtk_io_get_type">
			<implements>
				<interface name="InfIo"/>
			</implements>
			<constructor name="new" symbol="inf_gtk_io_new">
				<return-type type="InfGtkIo*"/>
			</constructor>
		</object>
		<interface name="InfGtkBrowserModel" type-name="InfGtkBrowserModel" get-type="inf_gtk_browser_model_get_type">
			<requires>
				<interface name="GtkTreeModel"/>
				<interface name="GObject"/>
			</requires>
			<method name="browser_iter_to_tree_iter" symbol="inf_gtk_browser_model_browser_iter_to_tree_iter">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="model" type="InfGtkBrowserModel*"/>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="browser_iter" type="InfcBrowserIter*"/>
					<parameter name="tree_iter" type="GtkTreeIter*"/>
				</parameters>
			</method>
			<method name="resolve" symbol="inf_gtk_browser_model_resolve">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="InfGtkBrowserModel*"/>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
				</parameters>
			</method>
			<method name="set_browser" symbol="inf_gtk_browser_model_set_browser">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="InfGtkBrowserModel*"/>
					<parameter name="path" type="GtkTreePath*"/>
					<parameter name="iter" type="GtkTreeIter*"/>
					<parameter name="browser" type="InfcBrowser*"/>
				</parameters>
			</method>
			<signal name="set-browser" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="InfGtkBrowserModel*"/>
					<parameter name="path" type="GtkTreePath*"/>
					<parameter name="iter" type="GtkTreeIter*"/>
					<parameter name="browser" type="InfcBrowser*"/>
				</parameters>
			</signal>
			<vfunc name="browser_iter_to_tree_iter">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="model" type="InfGtkBrowserModel*"/>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="browser_iter" type="InfcBrowserIter*"/>
					<parameter name="tree_iter" type="GtkTreeIter*"/>
				</parameters>
			</vfunc>
			<vfunc name="resolve">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="InfGtkBrowserModel*"/>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
				</parameters>
			</vfunc>
		</interface>
	</namespace>
</api>
