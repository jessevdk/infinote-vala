<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Inf">
		<function name="authentication_detail_error_quark" symbol="inf_authentication_detail_error_quark">
			<return-type type="GQuark"/>
		</function>
		<function name="authentication_detail_strerror" symbol="inf_authentication_detail_strerror">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="code" type="InfAuthenticationDetailError"/>
			</parameters>
		</function>
		<function name="cert_util_copy" symbol="inf_cert_util_copy">
			<return-type type="int"/>
			<parameters>
				<parameter name="dest" type="gnutls_x509_crt_t*"/>
				<parameter name="src" type="gnutls_x509_crt_t"/>
			</parameters>
		</function>
		<function name="cert_util_get_activation_time" symbol="inf_cert_util_get_activation_time">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="cert" type="gnutls_x509_crt_t"/>
			</parameters>
		</function>
		<function name="cert_util_get_dn_by_oid" symbol="inf_cert_util_get_dn_by_oid">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="cert" type="gnutls_x509_crt_t"/>
				<parameter name="oid" type="char*"/>
				<parameter name="index" type="unsigned"/>
			</parameters>
		</function>
		<function name="cert_util_get_expiration_time" symbol="inf_cert_util_get_expiration_time">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="cert" type="gnutls_x509_crt_t"/>
			</parameters>
		</function>
		<function name="cert_util_get_fingerprint" symbol="inf_cert_util_get_fingerprint">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="cert" type="gnutls_x509_crt_t"/>
				<parameter name="algo" type="gnutls_digest_algorithm_t"/>
			</parameters>
		</function>
		<function name="cert_util_get_hostname" symbol="inf_cert_util_get_hostname">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="cert" type="gnutls_x509_crt_t"/>
			</parameters>
		</function>
		<function name="cert_util_get_issuer_dn_by_oid" symbol="inf_cert_util_get_issuer_dn_by_oid">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="crt" type="gnutls_x509_crt_t"/>
				<parameter name="oid" type="char*"/>
				<parameter name="index" type="unsigned"/>
			</parameters>
		</function>
		<function name="cert_util_get_serial_number" symbol="inf_cert_util_get_serial_number">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="cert" type="gnutls_x509_crt_t"/>
			</parameters>
		</function>
		<function name="cert_util_load_file" symbol="inf_cert_util_load_file">
			<return-type type="GPtrArray*"/>
			<parameters>
				<parameter name="filename" type="gchar*"/>
				<parameter name="current" type="GPtrArray*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="cert_util_save_file" symbol="inf_cert_util_save_file">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="certs" type="gnutls_x509_crt_t*"/>
				<parameter name="n_certs" type="guint"/>
				<parameter name="file" type="gchar*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="deinit" symbol="inf_deinit">
			<return-type type="void"/>
		</function>
		<function name="directory_error_quark" symbol="inf_directory_error_quark">
			<return-type type="GQuark"/>
		</function>
		<function name="directory_strerror" symbol="inf_directory_strerror">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="code" type="InfDirectoryError"/>
			</parameters>
		</function>
		<function name="gnutls_error_quark" symbol="inf_gnutls_error_quark">
			<return-type type="GQuark"/>
		</function>
		<function name="gnutls_set_error" symbol="inf_gnutls_set_error">
			<return-type type="void"/>
			<parameters>
				<parameter name="error" type="GError**"/>
				<parameter name="error_code" type="int"/>
			</parameters>
		</function>
		<function name="gsasl_error_quark" symbol="inf_gsasl_error_quark">
			<return-type type="GQuark"/>
		</function>
		<function name="gsasl_set_error" symbol="inf_gsasl_set_error">
			<return-type type="void"/>
			<parameters>
				<parameter name="error" type="GError**"/>
				<parameter name="error_code" type="int"/>
			</parameters>
		</function>
		<function name="init" symbol="inf_init">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="protocol_get_version" symbol="inf_protocol_get_version">
			<return-type type="gchar*"/>
		</function>
		<function name="protocol_parse_version" symbol="inf_protocol_parse_version">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="version" type="gchar*"/>
				<parameter name="major" type="guint*"/>
				<parameter name="minor" type="guint*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="request_error_quark" symbol="inf_request_error_quark">
			<return-type type="GQuark"/>
		</function>
		<function name="request_strerror" symbol="inf_request_strerror">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="code" type="InfRequestError"/>
			</parameters>
		</function>
		<function name="xml_util_add_child_text" symbol="inf_xml_util_add_child_text">
			<return-type type="void"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="text" type="gchar*"/>
				<parameter name="bytes" type="gsize"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute" symbol="inf_xml_util_get_attribute">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_double" symbol="inf_xml_util_get_attribute_double">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="gdouble*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_double_required" symbol="inf_xml_util_get_attribute_double_required">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="gdouble*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_int" symbol="inf_xml_util_get_attribute_int">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="gint*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_int_required" symbol="inf_xml_util_get_attribute_int_required">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="gint*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_long" symbol="inf_xml_util_get_attribute_long">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="glong*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_long_required" symbol="inf_xml_util_get_attribute_long_required">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="glong*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_required" symbol="inf_xml_util_get_attribute_required">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_uint" symbol="inf_xml_util_get_attribute_uint">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="guint*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_uint_required" symbol="inf_xml_util_get_attribute_uint_required">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="guint*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_ulong" symbol="inf_xml_util_get_attribute_ulong">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="gulong*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_attribute_ulong_required" symbol="inf_xml_util_get_attribute_ulong_required">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="result" type="gulong*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_get_child_text" symbol="inf_xml_util_get_child_text">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="bytes" type="gsize*"/>
				<parameter name="chars" type="guint*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="xml_util_new_error_from_node" symbol="inf_xml_util_new_error_from_node">
			<return-type type="GError*"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
			</parameters>
		</function>
		<function name="xml_util_new_node_from_error" symbol="inf_xml_util_new_node_from_error">
			<return-type type="xmlNode*"/>
			<parameters>
				<parameter name="error" type="GError*"/>
				<parameter name="name_space" type="xmlNs*"/>
				<parameter name="name" type="gchar*"/>
			</parameters>
		</function>
		<function name="xml_util_set_attribute" symbol="inf_xml_util_set_attribute">
			<return-type type="void"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="value" type="gchar*"/>
			</parameters>
		</function>
		<function name="xml_util_set_attribute_double" symbol="inf_xml_util_set_attribute_double">
			<return-type type="void"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="value" type="gdouble"/>
			</parameters>
		</function>
		<function name="xml_util_set_attribute_int" symbol="inf_xml_util_set_attribute_int">
			<return-type type="void"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="value" type="gint"/>
			</parameters>
		</function>
		<function name="xml_util_set_attribute_long" symbol="inf_xml_util_set_attribute_long">
			<return-type type="void"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="value" type="glong"/>
			</parameters>
		</function>
		<function name="xml_util_set_attribute_uint" symbol="inf_xml_util_set_attribute_uint">
			<return-type type="void"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="value" type="guint"/>
			</parameters>
		</function>
		<function name="xml_util_set_attribute_ulong" symbol="inf_xml_util_set_attribute_ulong">
			<return-type type="void"/>
			<parameters>
				<parameter name="xml" type="xmlNode*"/>
				<parameter name="attribute" type="gchar*"/>
				<parameter name="value" type="gulong"/>
			</parameters>
		</function>
		<callback name="InfAdoptedStateVectorForeachFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="id" type="guint"/>
				<parameter name="value" type="guint"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="InfDiscoveryResolvCompleteFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="info" type="InfDiscoveryInfo*"/>
				<parameter name="connection" type="InfXmlConnection*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="InfDiscoveryResolvErrorFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="info" type="InfDiscoveryInfo*"/>
				<parameter name="error" type="GError*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="InfIoFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="socket" type="InfNativeSocket*"/>
				<parameter name="event" type="InfIoEvent"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="InfIoTimeoutFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="InfUserTableForeachUserFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="user" type="InfUser*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="InfXmppConnectionCrtCallback">
			<return-type type="void"/>
			<parameters>
				<parameter name="xmpp" type="InfXmppConnection*"/>
				<parameter name="chain" type="InfCertificateChain*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="InfcRequestManagerForeachFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="p1" type="InfcRequest*"/>
				<parameter name="p2" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="InfdDirectoryForeachConnectionFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="p1" type="InfXmlConnection*"/>
				<parameter name="p2" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="InfdServerPoolForeachServerFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="server" type="InfdXmlServer*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<struct name="InfDiscoveryInfo">
			<method name="get_service_name" symbol="inf_discovery_info_get_service_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
				</parameters>
			</method>
			<method name="get_service_type" symbol="inf_discovery_info_get_service_type">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
				</parameters>
			</method>
		</struct>
		<struct name="InfLocalPublisherItem">
		</struct>
		<struct name="InfNativeSocket">
		</struct>
		<struct name="InfcNotePlugin">
			<field name="user_data" type="gpointer"/>
			<field name="note_type" type="gchar*"/>
			<field name="session_new" type="GCallback"/>
		</struct>
		<struct name="InfdNotePlugin">
			<field name="user_data" type="gpointer"/>
			<field name="storage_type" type="gchar*"/>
			<field name="note_type" type="gchar*"/>
			<field name="session_new" type="GCallback"/>
			<field name="session_read" type="GCallback"/>
			<field name="session_write" type="GCallback"/>
		</struct>
		<boxed name="InfAdoptedStateVector" type-name="InfAdoptedStateVector" get-type="inf_adopted_state_vector_get_type">
			<method name="add" symbol="inf_adopted_state_vector_add">
				<return-type type="void"/>
				<parameters>
					<parameter name="vec" type="InfAdoptedStateVector*"/>
					<parameter name="id" type="guint"/>
					<parameter name="value" type="gint"/>
				</parameters>
			</method>
			<method name="causally_before" symbol="inf_adopted_state_vector_causally_before">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="first" type="InfAdoptedStateVector*"/>
					<parameter name="second" type="InfAdoptedStateVector*"/>
				</parameters>
			</method>
			<method name="causally_before_inc" symbol="inf_adopted_state_vector_causally_before_inc">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="first" type="InfAdoptedStateVector*"/>
					<parameter name="second" type="InfAdoptedStateVector*"/>
					<parameter name="inc_component" type="guint"/>
				</parameters>
			</method>
			<method name="compare" symbol="inf_adopted_state_vector_compare">
				<return-type type="int"/>
				<parameters>
					<parameter name="first" type="InfAdoptedStateVector*"/>
					<parameter name="second" type="InfAdoptedStateVector*"/>
				</parameters>
			</method>
			<method name="copy" symbol="inf_adopted_state_vector_copy">
				<return-type type="InfAdoptedStateVector*"/>
				<parameters>
					<parameter name="vec" type="InfAdoptedStateVector*"/>
				</parameters>
			</method>
			<method name="error_quark" symbol="inf_adopted_state_vector_error_quark">
				<return-type type="GQuark"/>
			</method>
			<method name="foreach" symbol="inf_adopted_state_vector_foreach">
				<return-type type="void"/>
				<parameters>
					<parameter name="vec" type="InfAdoptedStateVector*"/>
					<parameter name="func" type="InfAdoptedStateVectorForeachFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="free" symbol="inf_adopted_state_vector_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="vec" type="InfAdoptedStateVector*"/>
				</parameters>
			</method>
			<method name="from_string" symbol="inf_adopted_state_vector_from_string">
				<return-type type="InfAdoptedStateVector*"/>
				<parameters>
					<parameter name="str" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="from_string_diff" symbol="inf_adopted_state_vector_from_string_diff">
				<return-type type="InfAdoptedStateVector*"/>
				<parameters>
					<parameter name="str" type="gchar*"/>
					<parameter name="orig" type="InfAdoptedStateVector*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="get" symbol="inf_adopted_state_vector_get">
				<return-type type="guint"/>
				<parameters>
					<parameter name="vec" type="InfAdoptedStateVector*"/>
					<parameter name="id" type="guint"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_adopted_state_vector_new">
				<return-type type="InfAdoptedStateVector*"/>
			</constructor>
			<method name="set" symbol="inf_adopted_state_vector_set">
				<return-type type="void"/>
				<parameters>
					<parameter name="vec" type="InfAdoptedStateVector*"/>
					<parameter name="id" type="guint"/>
					<parameter name="value" type="guint"/>
				</parameters>
			</method>
			<method name="to_string" symbol="inf_adopted_state_vector_to_string">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="vec" type="InfAdoptedStateVector*"/>
				</parameters>
			</method>
			<method name="to_string_diff" symbol="inf_adopted_state_vector_to_string_diff">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="vec" type="InfAdoptedStateVector*"/>
					<parameter name="orig" type="InfAdoptedStateVector*"/>
				</parameters>
			</method>
			<method name="vdiff" symbol="inf_adopted_state_vector_vdiff">
				<return-type type="guint"/>
				<parameters>
					<parameter name="first" type="InfAdoptedStateVector*"/>
					<parameter name="second" type="InfAdoptedStateVector*"/>
				</parameters>
			</method>
		</boxed>
		<boxed name="InfCertificateChain" type-name="InfCertificateChain" get-type="inf_certificate_chain_get_type">
			<method name="get_n_certificates" symbol="inf_certificate_chain_get_n_certificates">
				<return-type type="guint"/>
				<parameters>
					<parameter name="chain" type="InfCertificateChain*"/>
				</parameters>
			</method>
			<method name="get_nth_certificate" symbol="inf_certificate_chain_get_nth_certificate">
				<return-type type="gnutls_x509_crt_t"/>
				<parameters>
					<parameter name="chain" type="InfCertificateChain*"/>
					<parameter name="n" type="guint"/>
				</parameters>
			</method>
			<method name="get_own_certificate" symbol="inf_certificate_chain_get_own_certificate">
				<return-type type="gnutls_x509_crt_t"/>
				<parameters>
					<parameter name="chain" type="InfCertificateChain*"/>
				</parameters>
			</method>
			<method name="get_raw" symbol="inf_certificate_chain_get_raw">
				<return-type type="gnutls_x509_crt_t*"/>
				<parameters>
					<parameter name="chain" type="InfCertificateChain*"/>
				</parameters>
			</method>
			<method name="get_root_certificate" symbol="inf_certificate_chain_get_root_certificate">
				<return-type type="gnutls_x509_crt_t"/>
				<parameters>
					<parameter name="chain" type="InfCertificateChain*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_certificate_chain_new">
				<return-type type="InfCertificateChain*"/>
				<parameters>
					<parameter name="certs" type="gnutls_x509_crt_t*"/>
					<parameter name="n_certs" type="guint"/>
				</parameters>
			</constructor>
			<method name="ref" symbol="inf_certificate_chain_ref">
				<return-type type="InfCertificateChain*"/>
				<parameters>
					<parameter name="chain" type="InfCertificateChain*"/>
				</parameters>
			</method>
			<method name="unref" symbol="inf_certificate_chain_unref">
				<return-type type="void"/>
				<parameters>
					<parameter name="chain" type="InfCertificateChain*"/>
				</parameters>
			</method>
		</boxed>
		<boxed name="InfCertificateCredentials" type-name="InfCertificateCredentials" get-type="inf_certificate_credentials_get_type">
			<method name="get" symbol="inf_certificate_credentials_get">
				<return-type type="gnutls_certificate_credentials_t"/>
				<parameters>
					<parameter name="creds" type="InfCertificateCredentials*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_certificate_credentials_new">
				<return-type type="InfCertificateCredentials*"/>
			</constructor>
			<method name="ref" symbol="inf_certificate_credentials_ref">
				<return-type type="InfCertificateCredentials*"/>
				<parameters>
					<parameter name="creds" type="InfCertificateCredentials*"/>
				</parameters>
			</method>
			<method name="unref" symbol="inf_certificate_credentials_unref">
				<return-type type="void"/>
				<parameters>
					<parameter name="creds" type="InfCertificateCredentials*"/>
				</parameters>
			</method>
		</boxed>
		<boxed name="InfChatBufferMessage" type-name="InfChatBufferMessage" get-type="inf_chat_buffer_message_get_type">
			<method name="copy" symbol="inf_chat_buffer_message_copy">
				<return-type type="InfChatBufferMessage*"/>
				<parameters>
					<parameter name="message" type="InfChatBufferMessage*"/>
				</parameters>
			</method>
			<method name="free" symbol="inf_chat_buffer_message_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="message" type="InfChatBufferMessage*"/>
				</parameters>
			</method>
			<field name="type" type="InfChatBufferMessageType"/>
			<field name="user" type="InfUser*"/>
			<field name="text" type="gchar*"/>
			<field name="length" type="gsize"/>
			<field name="time" type="time_t"/>
			<field name="flags" type="InfChatBufferMessageFlags"/>
		</boxed>
		<boxed name="InfIpAddress" type-name="InfIpAddress" get-type="inf_ip_address_get_type">
			<method name="collate" symbol="inf_ip_address_collate">
				<return-type type="int"/>
				<parameters>
					<parameter name="address1" type="InfIpAddress*"/>
					<parameter name="address2" type="InfIpAddress*"/>
				</parameters>
			</method>
			<method name="copy" symbol="inf_ip_address_copy">
				<return-type type="InfIpAddress*"/>
				<parameters>
					<parameter name="address" type="InfIpAddress*"/>
				</parameters>
			</method>
			<method name="free" symbol="inf_ip_address_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="address" type="InfIpAddress*"/>
				</parameters>
			</method>
			<method name="get_family" symbol="inf_ip_address_get_family">
				<return-type type="InfIpAddressFamily"/>
				<parameters>
					<parameter name="address" type="InfIpAddress*"/>
				</parameters>
			</method>
			<method name="get_raw" symbol="inf_ip_address_get_raw">
				<return-type type="gconstpointer"/>
				<parameters>
					<parameter name="address" type="InfIpAddress*"/>
				</parameters>
			</method>
			<constructor name="new_from_string" symbol="inf_ip_address_new_from_string">
				<return-type type="InfIpAddress*"/>
				<parameters>
					<parameter name="str" type="gchar*"/>
				</parameters>
			</constructor>
			<constructor name="new_loopback4" symbol="inf_ip_address_new_loopback4">
				<return-type type="InfIpAddress*"/>
			</constructor>
			<constructor name="new_loopback6" symbol="inf_ip_address_new_loopback6">
				<return-type type="InfIpAddress*"/>
			</constructor>
			<constructor name="new_raw4" symbol="inf_ip_address_new_raw4">
				<return-type type="InfIpAddress*"/>
				<parameters>
					<parameter name="address" type="guint32"/>
				</parameters>
			</constructor>
			<constructor name="new_raw6" symbol="inf_ip_address_new_raw6">
				<return-type type="InfIpAddress*"/>
				<parameters>
					<parameter name="address" type="guint8[]"/>
				</parameters>
			</constructor>
			<method name="to_string" symbol="inf_ip_address_to_string">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="address" type="InfIpAddress*"/>
				</parameters>
			</method>
		</boxed>
		<boxed name="InfcBrowserIter" type-name="InfcBrowserIter" get-type="infc_browser_iter_get_type">
			<method name="copy" symbol="infc_browser_iter_copy">
				<return-type type="InfcBrowserIter*"/>
				<parameters>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="explore" symbol="infc_browser_iter_explore">
				<return-type type="InfcExploreRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="free" symbol="infc_browser_iter_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="from_explore_request" symbol="infc_browser_iter_from_explore_request">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="request" type="InfcExploreRequest*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="from_node_request" symbol="infc_browser_iter_from_node_request">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="request" type="InfcNodeRequest*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_child" symbol="infc_browser_iter_get_child">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_explore_request" symbol="infc_browser_iter_get_explore_request">
				<return-type type="InfcExploreRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_explored" symbol="infc_browser_iter_get_explored">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="infc_browser_iter_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_next" symbol="infc_browser_iter_get_next">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_note_type" symbol="infc_browser_iter_get_note_type">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_parent" symbol="infc_browser_iter_get_parent">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_path" symbol="infc_browser_iter_get_path">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_plugin" symbol="infc_browser_iter_get_plugin">
				<return-type type="InfcNotePlugin*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_prev" symbol="infc_browser_iter_get_prev">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_root" symbol="infc_browser_iter_get_root">
				<return-type type="void"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_session" symbol="infc_browser_iter_get_session">
				<return-type type="InfcSessionProxy*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_subscribe_request" symbol="infc_browser_iter_get_subscribe_request">
				<return-type type="InfcNodeRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_sync_in" symbol="infc_browser_iter_get_sync_in">
				<return-type type="InfcSessionProxy*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="get_sync_in_requests" symbol="infc_browser_iter_get_sync_in_requests">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="is_subdirectory" symbol="infc_browser_iter_is_subdirectory">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="is_valid" symbol="infc_browser_iter_is_valid">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="save_session" symbol="infc_browser_iter_save_session">
				<return-type type="InfcNodeRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="subscribe_session" symbol="infc_browser_iter_subscribe_session">
				<return-type type="InfcNodeRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<field name="node_id" type="guint"/>
			<field name="node" type="gpointer"/>
		</boxed>
		<boxed name="InfdDirectoryIter" type-name="InfdDirectoryIter" get-type="infd_directory_iter_get_type">
			<method name="copy" symbol="infd_directory_iter_copy">
				<return-type type="InfdDirectoryIter*"/>
				<parameters>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="free" symbol="infd_directory_iter_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_child" symbol="infd_directory_iter_get_child">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="get_explored" symbol="infd_directory_iter_get_explored">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="infd_directory_iter_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_next" symbol="infd_directory_iter_get_next">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_node_type" symbol="infd_directory_iter_get_node_type">
				<return-type type="InfdStorageNodeType"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_parent" symbol="infd_directory_iter_get_parent">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_path" symbol="infd_directory_iter_get_path">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_plugin" symbol="infd_directory_iter_get_plugin">
				<return-type type="InfdNotePlugin*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_prev" symbol="infd_directory_iter_get_prev">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_root" symbol="infd_directory_iter_get_root">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="get_session" symbol="infd_directory_iter_get_session">
				<return-type type="InfdSessionProxy*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="peek_session" symbol="infd_directory_iter_peek_session">
				<return-type type="InfdSessionProxy*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</method>
			<method name="save_session" symbol="infd_directory_iter_save_session">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<field name="node_id" type="guint"/>
			<field name="node" type="gpointer"/>
		</boxed>
		<boxed name="InfdStorageNode" type-name="InfdStorageNode" get-type="infd_storage_node_get_type">
			<method name="copy" symbol="infd_storage_node_copy">
				<return-type type="InfdStorageNode*"/>
				<parameters>
					<parameter name="node" type="InfdStorageNode*"/>
				</parameters>
			</method>
			<method name="free" symbol="infd_storage_node_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="node" type="InfdStorageNode*"/>
				</parameters>
			</method>
			<method name="list_free" symbol="infd_storage_node_list_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="node_list" type="GSList*"/>
				</parameters>
			</method>
			<constructor name="new_note" symbol="infd_storage_node_new_note">
				<return-type type="InfdStorageNode*"/>
				<parameters>
					<parameter name="path" type="gchar*"/>
					<parameter name="identifier" type="gchar*"/>
				</parameters>
			</constructor>
			<constructor name="new_subdirectory" symbol="infd_storage_node_new_subdirectory">
				<return-type type="InfdStorageNode*"/>
				<parameters>
					<parameter name="path" type="gchar*"/>
				</parameters>
			</constructor>
			<field name="type" type="InfdStorageNodeType"/>
			<field name="name" type="gchar*"/>
			<field name="identifier" type="gchar*"/>
		</boxed>
		<enum name="InfAdoptedConcurrencyId" type-name="InfAdoptedConcurrencyId" get-type="inf_adopted_concurrency_id_get_type">
			<member name="INF_ADOPTED_CONCURRENCY_SELF" value="1"/>
			<member name="INF_ADOPTED_CONCURRENCY_NONE" value="0"/>
			<member name="INF_ADOPTED_CONCURRENCY_OTHER" value="-1"/>
		</enum>
		<enum name="InfAdoptedRequestType" type-name="InfAdoptedRequestType" get-type="inf_adopted_request_type_get_type">
			<member name="INF_ADOPTED_REQUEST_DO" value="0"/>
			<member name="INF_ADOPTED_REQUEST_UNDO" value="1"/>
			<member name="INF_ADOPTED_REQUEST_REDO" value="2"/>
		</enum>
		<enum name="InfAdoptedSessionError">
			<member name="INF_ADOPTED_SESSION_ERROR_NO_SUCH_USER" value="0"/>
			<member name="INF_ADOPTED_SESSION_ERROR_MISSING_OPERATION" value="1"/>
			<member name="INF_ADOPTED_SESSION_ERROR_INVALID_REQUEST" value="2"/>
			<member name="INF_ADOPTED_SESSION_ERROR_MISSING_STATE_VECTOR" value="3"/>
			<member name="INF_ADOPTED_SESSION_ERROR_FAILED" value="4"/>
		</enum>
		<enum name="InfAdoptedSessionReplayError">
			<member name="INF_ADOPTED_SESSION_REPLAY_ERROR_BAD_FILE" value="0"/>
			<member name="INF_ADOPTED_SESSION_REPLAY_ERROR_BAD_XML" value="1"/>
			<member name="INF_ADOPTED_SESSION_REPLAY_ERROR_BAD_DOCUMENT" value="2"/>
			<member name="INF_ADOPTED_SESSION_REPLAY_ERROR_BAD_SESSION_TYPE" value="3"/>
			<member name="INF_ADOPTED_SESSION_REPLAY_ERROR_BAD_FORMAT" value="4"/>
			<member name="INF_ADOPTED_SESSION_REPLAY_ERROR_UNEXPECTED_EOF" value="5"/>
		</enum>
		<enum name="InfAdoptedStateVectorError">
			<member name="INF_ADOPTED_STATE_VECTOR_BAD_FORMAT" value="0"/>
			<member name="INF_ADOPTED_STATE_VECTOR_FAILED" value="1"/>
		</enum>
		<enum name="InfAuthenticationDetailError">
			<member name="INF_AUTHENTICATION_DETAIL_ERROR_AUTHENTICATION_FAILED" value="0"/>
			<member name="INF_AUTHENTICATION_DETAIL_ERROR_USER_NOT_AUTHORIZED" value="1"/>
			<member name="INF_AUTHENTICATION_DETAIL_ERROR_TRY_AGAIN" value="2"/>
			<member name="INF_AUTHENTICATION_DETAIL_ERROR_SERVER_ERROR" value="3"/>
		</enum>
		<enum name="InfChatBufferMessageType" type-name="InfChatBufferMessageType" get-type="inf_chat_buffer_message_type_get_type">
			<member name="INF_CHAT_BUFFER_MESSAGE_NORMAL" value="0"/>
			<member name="INF_CHAT_BUFFER_MESSAGE_EMOTE" value="1"/>
			<member name="INF_CHAT_BUFFER_MESSAGE_USERJOIN" value="2"/>
			<member name="INF_CHAT_BUFFER_MESSAGE_USERPART" value="3"/>
		</enum>
		<enum name="InfChatSessionError">
			<member name="INF_CHAT_SESSION_ERROR_TYPE_INVALID" value="0"/>
			<member name="INF_CHAT_SESSION_ERROR_NO_SUCH_USER" value="1"/>
			<member name="INF_CHAT_SESSION_ERROR_FAILED" value="2"/>
		</enum>
		<enum name="InfCommunicationScope" type-name="InfCommunicationScope" get-type="inf_communication_scope_get_type">
			<member name="INF_COMMUNICATION_SCOPE_PTP" value="0"/>
			<member name="INF_COMMUNICATION_SCOPE_GROUP" value="1"/>
		</enum>
		<enum name="InfDirectoryError">
			<member name="INF_DIRECTORY_ERROR_NO_WELCOME_MESSAGE" value="0"/>
			<member name="INF_DIRECTORY_ERROR_VERSION_MISMATCH" value="1"/>
			<member name="INF_DIRECTORY_ERROR_NODE_EXISTS" value="2"/>
			<member name="INF_DIRECTORY_ERROR_INVALID_NAME" value="3"/>
			<member name="INF_DIRECTORY_ERROR_NO_SUCH_NODE" value="4"/>
			<member name="INF_DIRECTORY_ERROR_NO_SUCH_SUBSCRIPTION_REQUEST" value="5"/>
			<member name="INF_DIRECTORY_ERROR_CHAT_DISABLED" value="6"/>
			<member name="INF_DIRECTORY_ERROR_NOT_A_SUBDIRECTORY" value="7"/>
			<member name="INF_DIRECTORY_ERROR_NOT_A_NOTE" value="8"/>
			<member name="INF_DIRECTORY_ERROR_ROOT_NODE_REMOVE_ATTEMPT" value="9"/>
			<member name="INF_DIRECTORY_ERROR_ALREADY_EXPLORED" value="10"/>
			<member name="INF_DIRECTORY_ERROR_TOO_MUCH_CHILDREN" value="11"/>
			<member name="INF_DIRECTORY_ERROR_TOO_FEW_CHILDREN" value="12"/>
			<member name="INF_DIRECTORY_ERROR_TYPE_UNKNOWN" value="13"/>
			<member name="INF_DIRECTORY_ERROR_ALREADY_SUBSCRIBED" value="14"/>
			<member name="INF_DIRECTORY_ERROR_UNSUBSCRIBED" value="15"/>
			<member name="INF_DIRECTORY_ERROR_NETWORK_UNSUPPORTED" value="16"/>
			<member name="INF_DIRECTORY_ERROR_METHOD_UNSUPPORTED" value="17"/>
			<member name="INF_DIRECTORY_ERROR_UNEXPECTED_SYNC_IN" value="18"/>
			<member name="INF_DIRECTORY_ERROR_UNEXPECTED_MESSAGE" value="19"/>
			<member name="INF_DIRECTORY_ERROR_NO_STORAGE" value="20"/>
			<member name="INF_DIRECTORY_ERROR_FAILED" value="21"/>
		</enum>
		<enum name="InfIpAddressFamily" type-name="InfIpAddressFamily" get-type="inf_ip_address_family_get_type">
			<member name="INF_IP_ADDRESS_IPV4" value="0"/>
			<member name="INF_IP_ADDRESS_IPV6" value="1"/>
		</enum>
		<enum name="InfRequestError">
			<member name="INF_REQUEST_ERROR_UNKNOWN_DOMAIN" value="0"/>
			<member name="INF_REQUEST_ERROR_REPLY_UNPROCESSED" value="1"/>
			<member name="INF_REQUEST_ERROR_INVALID_SEQ" value="2"/>
			<member name="INF_REQUEST_ERROR_NO_SUCH_ATTRIBUTE" value="3"/>
			<member name="INF_REQUEST_ERROR_INVALID_NUMBER" value="4"/>
			<member name="INF_REQUEST_ERROR_FAILED" value="5"/>
		</enum>
		<enum name="InfSessionStatus" type-name="InfSessionStatus" get-type="inf_session_status_get_type">
			<member name="INF_SESSION_PRESYNC" value="0"/>
			<member name="INF_SESSION_SYNCHRONIZING" value="1"/>
			<member name="INF_SESSION_RUNNING" value="2"/>
			<member name="INF_SESSION_CLOSED" value="3"/>
		</enum>
		<enum name="InfSessionSyncError">
			<member name="INF_SESSION_SYNC_ERROR_GOT_MESSAGE_IN_PRESYNC" value="0"/>
			<member name="INF_SESSION_SYNC_ERROR_UNEXPECTED_NODE" value="1"/>
			<member name="INF_SESSION_SYNC_ERROR_ID_NOT_PRESENT" value="2"/>
			<member name="INF_SESSION_SYNC_ERROR_ID_IN_USE" value="3"/>
			<member name="INF_SESSION_SYNC_ERROR_NAME_NOT_PRESENT" value="4"/>
			<member name="INF_SESSION_SYNC_ERROR_NAME_IN_USE" value="5"/>
			<member name="INF_SESSION_SYNC_ERROR_CONNECTION_CLOSED" value="6"/>
			<member name="INF_SESSION_SYNC_ERROR_SENDER_CANCELLED" value="7"/>
			<member name="INF_SESSION_SYNC_ERROR_RECEIVER_CANCELLED" value="8"/>
			<member name="INF_SESSION_SYNC_ERROR_UNEXPECTED_BEGIN_OF_SYNC" value="9"/>
			<member name="INF_SESSION_SYNC_ERROR_NUM_MESSAGES_MISSING" value="10"/>
			<member name="INF_SESSION_SYNC_ERROR_UNEXPECTED_END_OF_SYNC" value="11"/>
			<member name="INF_SESSION_SYNC_ERROR_EXPECTED_BEGIN_OF_SYNC" value="12"/>
			<member name="INF_SESSION_SYNC_ERROR_EXPECTED_END_OF_SYNC" value="13"/>
			<member name="INF_SESSION_SYNC_ERROR_FAILED" value="14"/>
		</enum>
		<enum name="InfSessionSyncStatus">
			<member name="INF_SESSION_SYNC_NONE" value="0"/>
			<member name="INF_SESSION_SYNC_IN_PROGRESS" value="1"/>
			<member name="INF_SESSION_SYNC_AWAITING_ACK" value="2"/>
		</enum>
		<enum name="InfSimulatedConnectionMode" type-name="InfSimulatedConnectionMode" get-type="inf_simulated_connection_mode_get_type">
			<member name="INF_SIMULATED_CONNECTION_IMMEDIATE" value="0"/>
			<member name="INF_SIMULATED_CONNECTION_DELAYED" value="1"/>
		</enum>
		<enum name="InfTcpConnectionStatus" type-name="InfTcpConnectionStatus" get-type="inf_tcp_connection_status_get_type">
			<member name="INF_TCP_CONNECTION_CONNECTING" value="0"/>
			<member name="INF_TCP_CONNECTION_CONNECTED" value="1"/>
			<member name="INF_TCP_CONNECTION_CLOSED" value="2"/>
		</enum>
		<enum name="InfUserError">
			<member name="INF_USER_ERROR_NAME_IN_USE" value="0"/>
			<member name="INF_USER_ERROR_ID_PROVIDED" value="1"/>
			<member name="INF_USER_ERROR_NO_SUCH_USER" value="2"/>
			<member name="INF_USER_ERROR_STATUS_UNAVAILABLE" value="3"/>
			<member name="INF_USER_ERROR_NOT_JOINED" value="4"/>
			<member name="INF_USER_ERROR_INVALID_STATUS" value="5"/>
			<member name="INF_USER_ERROR_FAILED" value="6"/>
		</enum>
		<enum name="InfUserStatus" type-name="InfUserStatus" get-type="inf_user_status_get_type">
			<member name="INF_USER_ACTIVE" value="0"/>
			<member name="INF_USER_INACTIVE" value="1"/>
			<member name="INF_USER_UNAVAILABLE" value="2"/>
		</enum>
		<enum name="InfXmlConnectionStatus" type-name="InfXmlConnectionStatus" get-type="inf_xml_connection_status_get_type">
			<member name="INF_XML_CONNECTION_CLOSED" value="0"/>
			<member name="INF_XML_CONNECTION_CLOSING" value="1"/>
			<member name="INF_XML_CONNECTION_OPEN" value="2"/>
			<member name="INF_XML_CONNECTION_OPENING" value="3"/>
		</enum>
		<enum name="InfXmppConnectionAuthError">
			<member name="INF_XMPP_CONNECTION_AUTH_ERROR_ABORTED" value="0"/>
			<member name="INF_XMPP_CONNECTION_AUTH_ERROR_INCORRECT_ENCODING" value="1"/>
			<member name="INF_XMPP_CONNECTION_AUTH_ERROR_INVALID_AUTHZID" value="2"/>
			<member name="INF_XMPP_CONNECTION_AUTH_ERROR_INVALID_MECHANISM" value="3"/>
			<member name="INF_XMPP_CONNECTION_AUTH_ERROR_MECHANISM_TOO_WEAK" value="4"/>
			<member name="INF_XMPP_CONNECTION_AUTH_ERROR_NOT_AUTHORIZED" value="5"/>
			<member name="INF_XMPP_CONNECTION_AUTH_ERROR_TEMPORARY_AUTH_FAILURE" value="6"/>
			<member name="INF_XMPP_CONNECTION_AUTH_ERROR_FAILED" value="7"/>
		</enum>
		<enum name="InfXmppConnectionError">
			<member name="INF_XMPP_CONNECTION_ERROR_TLS_UNSUPPORTED" value="0"/>
			<member name="INF_XMPP_CONNECTION_ERROR_TLS_REQUIRED" value="1"/>
			<member name="INF_XMPP_CONNECTION_ERROR_TLS_FAILURE" value="2"/>
			<member name="INF_XMPP_CONNECTION_ERROR_NO_CERTIFICATE_PROVIDED" value="3"/>
			<member name="INF_XMPP_CONNECTION_ERROR_CERTIFICATE_NOT_TRUSTED" value="4"/>
			<member name="INF_XMPP_CONNECTION_ERROR_AUTHENTICATION_UNSUPPORTED" value="5"/>
			<member name="INF_XMPP_CONNECTION_ERROR_NO_SUITABLE_MECHANISM" value="6"/>
			<member name="INF_XMPP_CONNECTION_ERROR_FAILED" value="7"/>
		</enum>
		<enum name="InfXmppConnectionSecurityPolicy" type-name="InfXmppConnectionSecurityPolicy" get-type="inf_xmpp_connection_security_policy_get_type">
			<member name="INF_XMPP_CONNECTION_SECURITY_ONLY_UNSECURED" value="0"/>
			<member name="INF_XMPP_CONNECTION_SECURITY_ONLY_TLS" value="1"/>
			<member name="INF_XMPP_CONNECTION_SECURITY_BOTH_PREFER_UNSECURED" value="2"/>
			<member name="INF_XMPP_CONNECTION_SECURITY_BOTH_PREFER_TLS" value="3"/>
		</enum>
		<enum name="InfXmppConnectionSite" type-name="InfXmppConnectionSite" get-type="inf_xmpp_connection_site_get_type">
			<member name="INF_XMPP_CONNECTION_CLIENT" value="1"/>
			<member name="INF_XMPP_CONNECTION_SERVER" value="0"/>
		</enum>
		<enum name="InfXmppConnectionStreamError">
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_BAD_FORMAT" value="0"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_BAD_NAMESPACE_PREFIX" value="1"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_CONFLICT" value="2"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_CONNECTION_TIMEOUT" value="3"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_HOST_GONE" value="4"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_HOST_UNKNOWN" value="5"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_IMPROPER_ADDRESSING" value="6"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_INTERNAL_SERVER_ERROR" value="7"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_INVALID_FROM" value="8"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_INVALID_ID" value="9"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_INVALID_NAMESPACE" value="10"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_INVALID_XML" value="11"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_NOT_AUTHORIZED" value="12"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_POLICY_VIOLATION" value="13"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_REMOTE_CONNECTION_FAILED" value="14"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_RESOURCE_CONSTRAINT" value="15"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_RESTRICTED_XML" value="16"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_SEE_OTHER_HOST" value="17"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_SYSTEM_SHUTDOWN" value="18"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_UNDEFINED_CONDITION" value="19"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_UNSUPPORTED_ENCODING" value="20"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_UNSUPPORTED_STANZA_TYPE" value="21"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_UNSUPPORTED_VERSION" value="22"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_XML_NOT_WELL_FORMED" value="23"/>
			<member name="INF_XMPP_CONNECTION_STREAM_ERROR_FAILED" value="24"/>
		</enum>
		<enum name="InfcBrowserNodeStatus">
			<member name="INFC_BROWSER_NODE_SYNC" value="0"/>
			<member name="INFC_BROWSER_NODE_DELETED" value="1"/>
			<member name="INFC_BROWSER_NODE_ADDED" value="2"/>
			<member name="INFC_BROWSER_NODE_MOVED" value="3"/>
			<member name="INFC_BROWSER_NODE_COPIED" value="4"/>
			<member name="INFC_BROWSER_NODE_INHERIT" value="5"/>
		</enum>
		<enum name="InfcBrowserStatus" type-name="InfcBrowserStatus" get-type="infc_browser_status_get_type">
			<member name="INFC_BROWSER_DISCONNECTED" value="0"/>
			<member name="INFC_BROWSER_CONNECTING" value="1"/>
			<member name="INFC_BROWSER_CONNECTED" value="2"/>
		</enum>
		<enum name="InfdFilesystemStorageError">
			<member name="INFD_FILESYSTEM_STORAGE_ERROR_INVALID_PATH" value="0"/>
			<member name="INFD_FILESYSTEM_STORAGE_ERROR_REMOVE_FILES" value="1"/>
			<member name="INFD_FILESYSTEM_STORAGE_ERROR_FAILED" value="2"/>
		</enum>
		<enum name="InfdStorageNodeType" type-name="InfdStorageNodeType" get-type="infd_storage_node_type_get_type">
			<member name="INFD_STORAGE_NODE_SUBDIRECTORY" value="0"/>
			<member name="INFD_STORAGE_NODE_NOTE" value="1"/>
		</enum>
		<enum name="InfdTcpServerStatus" type-name="InfdTcpServerStatus" get-type="infd_tcp_server_status_get_type">
			<member name="INFD_TCP_SERVER_CLOSED" value="0"/>
			<member name="INFD_TCP_SERVER_OPEN" value="2"/>
		</enum>
		<enum name="InfdXmlServerStatus" type-name="InfdXmlServerStatus" get-type="infd_xml_server_status_get_type">
			<member name="INFD_XML_SERVER_CLOSED" value="0"/>
			<member name="INFD_XML_SERVER_CLOSING" value="1"/>
			<member name="INFD_XML_SERVER_OPEN" value="2"/>
			<member name="INFD_XML_SERVER_OPENING" value="3"/>
		</enum>
		<flags name="InfAdoptedOperationFlags" type-name="InfAdoptedOperationFlags" get-type="inf_adopted_operation_flags_get_type">
			<member name="INF_ADOPTED_OPERATION_AFFECTS_BUFFER" value="1"/>
			<member name="INF_ADOPTED_OPERATION_REVERSIBLE" value="2"/>
		</flags>
		<flags name="InfChatBufferMessageFlags" type-name="InfChatBufferMessageFlags" get-type="inf_chat_buffer_message_flags_get_type">
			<member name="INF_CHAT_BUFFER_MESSAGE_BACKLOG" value="1"/>
		</flags>
		<flags name="InfIoEvent" type-name="InfIoEvent" get-type="inf_io_event_get_type">
			<member name="INF_IO_INCOMING" value="1"/>
			<member name="INF_IO_OUTGOING" value="2"/>
			<member name="INF_IO_ERROR" value="4"/>
		</flags>
		<flags name="InfUserFlags" type-name="InfUserFlags" get-type="inf_user_flags_get_type">
			<member name="INF_USER_LOCAL" value="1"/>
		</flags>
		<object name="InfAdoptedAlgorithm" parent="GObject" type-name="InfAdoptedAlgorithm" get-type="inf_adopted_algorithm_get_type">
			<method name="can_redo" symbol="inf_adopted_algorithm_can_redo">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
				</parameters>
			</method>
			<method name="can_undo" symbol="inf_adopted_algorithm_can_undo">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
				</parameters>
			</method>
			<method name="generate_redo" symbol="inf_adopted_algorithm_generate_redo">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
				</parameters>
			</method>
			<method name="generate_request" symbol="inf_adopted_algorithm_generate_request">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="generate_request_noexec" symbol="inf_adopted_algorithm_generate_request_noexec">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="generate_undo" symbol="inf_adopted_algorithm_generate_undo">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
				</parameters>
			</method>
			<method name="get_current" symbol="inf_adopted_algorithm_get_current">
				<return-type type="InfAdoptedStateVector*"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_adopted_algorithm_new">
				<return-type type="InfAdoptedAlgorithm*"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="buffer" type="InfBuffer*"/>
				</parameters>
			</constructor>
			<constructor name="new_full" symbol="inf_adopted_algorithm_new_full">
				<return-type type="InfAdoptedAlgorithm*"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="buffer" type="InfBuffer*"/>
					<parameter name="max_total_log_size" type="guint"/>
				</parameters>
			</constructor>
			<method name="receive_request" symbol="inf_adopted_algorithm_receive_request">
				<return-type type="void"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="translate_request" symbol="inf_adopted_algorithm_translate_request">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
					<parameter name="to" type="InfAdoptedStateVector*"/>
				</parameters>
			</method>
			<property name="buffer" type="InfBuffer*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="buffer-modified-state" type="InfAdoptedStateVector*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="current-state" type="InfAdoptedStateVector*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="max-total-log-size" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="user-table" type="InfUserTable*" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="apply-request" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</signal>
			<signal name="can-redo-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="can_redo" type="gboolean"/>
				</parameters>
			</signal>
			<signal name="can-undo-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="can_undo" type="gboolean"/>
				</parameters>
			</signal>
			<signal name="execute-request" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
					<parameter name="apply" type="gboolean"/>
				</parameters>
			</signal>
		</object>
		<object name="InfAdoptedNoOperation" parent="GObject" type-name="InfAdoptedNoOperation" get-type="inf_adopted_no_operation_get_type">
			<implements>
				<interface name="InfAdoptedOperation"/>
			</implements>
			<constructor name="new" symbol="inf_adopted_no_operation_new">
				<return-type type="InfAdoptedNoOperation*"/>
			</constructor>
		</object>
		<object name="InfAdoptedRequest" parent="GObject" type-name="InfAdoptedRequest" get-type="inf_adopted_request_get_type">
			<method name="affects_buffer" symbol="inf_adopted_request_affects_buffer">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="copy" symbol="inf_adopted_request_copy">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="fold" symbol="inf_adopted_request_fold">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
					<parameter name="into" type="guint"/>
					<parameter name="by" type="guint"/>
				</parameters>
			</method>
			<method name="get_concurrency_id" symbol="inf_adopted_request_get_concurrency_id">
				<return-type type="InfAdoptedConcurrencyId"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
					<parameter name="against" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="get_operation" symbol="inf_adopted_request_get_operation">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="get_request_type" symbol="inf_adopted_request_get_request_type">
				<return-type type="InfAdoptedRequestType"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="get_user_id" symbol="inf_adopted_request_get_user_id">
				<return-type type="guint"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="get_vector" symbol="inf_adopted_request_get_vector">
				<return-type type="InfAdoptedStateVector*"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="mirror" symbol="inf_adopted_request_mirror">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
					<parameter name="by" type="guint"/>
				</parameters>
			</method>
			<method name="need_concurrency_id" symbol="inf_adopted_request_need_concurrency_id">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
					<parameter name="against" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<constructor name="new_do" symbol="inf_adopted_request_new_do">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="vector" type="InfAdoptedStateVector*"/>
					<parameter name="user_id" type="guint"/>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</constructor>
			<constructor name="new_redo" symbol="inf_adopted_request_new_redo">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="vector" type="InfAdoptedStateVector*"/>
					<parameter name="user_id" type="guint"/>
				</parameters>
			</constructor>
			<constructor name="new_undo" symbol="inf_adopted_request_new_undo">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="vector" type="InfAdoptedStateVector*"/>
					<parameter name="user_id" type="guint"/>
				</parameters>
			</constructor>
			<method name="transform" symbol="inf_adopted_request_transform">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="request" type="InfAdoptedRequest*"/>
					<parameter name="against" type="InfAdoptedRequest*"/>
					<parameter name="concurrency_id" type="InfAdoptedConcurrencyId"/>
				</parameters>
			</method>
			<property name="operation" type="InfAdoptedOperation*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="type" type="InfAdoptedRequestType" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="user-id" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="vector" type="InfAdoptedStateVector*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfAdoptedRequestLog" parent="GObject" type-name="InfAdoptedRequestLog" get-type="inf_adopted_request_log_get_type">
			<method name="add_request" symbol="inf_adopted_request_log_add_request">
				<return-type type="void"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="get_begin" symbol="inf_adopted_request_log_get_begin">
				<return-type type="guint"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
				</parameters>
			</method>
			<method name="get_end" symbol="inf_adopted_request_log_get_end">
				<return-type type="guint"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
				</parameters>
			</method>
			<method name="get_request" symbol="inf_adopted_request_log_get_request">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
					<parameter name="n" type="guint"/>
				</parameters>
			</method>
			<method name="get_user_id" symbol="inf_adopted_request_log_get_user_id">
				<return-type type="guint"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
				</parameters>
			</method>
			<method name="is_empty" symbol="inf_adopted_request_log_is_empty">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_adopted_request_log_new">
				<return-type type="InfAdoptedRequestLog*"/>
				<parameters>
					<parameter name="user_id" type="guint"/>
				</parameters>
			</constructor>
			<method name="next_associated" symbol="inf_adopted_request_log_next_associated">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="next_redo" symbol="inf_adopted_request_log_next_redo">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
				</parameters>
			</method>
			<method name="next_undo" symbol="inf_adopted_request_log_next_undo">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
				</parameters>
			</method>
			<method name="original_request" symbol="inf_adopted_request_log_original_request">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="prev_associated" symbol="inf_adopted_request_log_prev_associated">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="remove_requests" symbol="inf_adopted_request_log_remove_requests">
				<return-type type="void"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
					<parameter name="up_to" type="guint"/>
				</parameters>
			</method>
			<method name="set_begin" symbol="inf_adopted_request_log_set_begin">
				<return-type type="void"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
					<parameter name="n" type="guint"/>
				</parameters>
			</method>
			<method name="upper_related" symbol="inf_adopted_request_log_upper_related">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="log" type="InfAdoptedRequestLog*"/>
					<parameter name="n" type="guint"/>
				</parameters>
			</method>
			<property name="begin" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="end" type="guint" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="next-redo" type="InfAdoptedRequest*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="next-undo" type="InfAdoptedRequest*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="user-id" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="add-request" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="request_log" type="InfAdoptedRequestLog*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfAdoptedSession" parent="InfSession" type-name="InfAdoptedSession" get-type="inf_adopted_session_get_type">
			<implements>
				<interface name="InfCommunicationObject"/>
			</implements>
			<method name="broadcast_request" symbol="inf_adopted_session_broadcast_request">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
				</parameters>
			</method>
			<method name="get_algorithm" symbol="inf_adopted_session_get_algorithm">
				<return-type type="InfAdoptedAlgorithm*"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
				</parameters>
			</method>
			<method name="get_io" symbol="inf_adopted_session_get_io">
				<return-type type="InfIo*"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
				</parameters>
			</method>
			<method name="read_request_info" symbol="inf_adopted_session_read_request_info">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
					<parameter name="xml" type="xmlNode*"/>
					<parameter name="diff_vec" type="InfAdoptedStateVector*"/>
					<parameter name="user" type="InfAdoptedUser**"/>
					<parameter name="time" type="InfAdoptedStateVector**"/>
					<parameter name="operation" type="xmlNode**"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="redo" symbol="inf_adopted_session_redo">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="n" type="guint"/>
				</parameters>
			</method>
			<method name="undo" symbol="inf_adopted_session_undo">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="n" type="guint"/>
				</parameters>
			</method>
			<method name="write_request_info" symbol="inf_adopted_session_write_request_info">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
					<parameter name="diff_vec" type="InfAdoptedStateVector*"/>
					<parameter name="xml" type="xmlNode*"/>
					<parameter name="operation" type="xmlNode*"/>
				</parameters>
			</method>
			<property name="algorithm" type="InfAdoptedAlgorithm*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="io" type="InfIo*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="max-total-log-size" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<vfunc name="request_to_xml">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
					<parameter name="xml" type="xmlNode*"/>
					<parameter name="request" type="InfAdoptedRequest*"/>
					<parameter name="diff_vec" type="InfAdoptedStateVector*"/>
					<parameter name="for_sync" type="gboolean"/>
				</parameters>
			</vfunc>
			<vfunc name="xml_to_request">
				<return-type type="InfAdoptedRequest*"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
					<parameter name="xml" type="xmlNode*"/>
					<parameter name="diff_vec" type="InfAdoptedStateVector*"/>
					<parameter name="for_sync" type="gboolean"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
		</object>
		<object name="InfAdoptedSessionRecord" parent="GObject" type-name="InfAdoptedSessionRecord" get-type="inf_adopted_session_record_get_type">
			<method name="is_recording" symbol="inf_adopted_session_record_is_recording">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="record" type="InfAdoptedSessionRecord*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_adopted_session_record_new">
				<return-type type="InfAdoptedSessionRecord*"/>
				<parameters>
					<parameter name="session" type="InfAdoptedSession*"/>
				</parameters>
			</constructor>
			<method name="start_recording" symbol="inf_adopted_session_record_start_recording">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="record" type="InfAdoptedSessionRecord*"/>
					<parameter name="filename" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="stop_recording" symbol="inf_adopted_session_record_stop_recording">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="record" type="InfAdoptedSessionRecord*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<property name="session" type="InfAdoptedSession*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfAdoptedSessionReplay" parent="GObject" type-name="InfAdoptedSessionReplay" get-type="inf_adopted_session_replay_get_type">
			<method name="get_session" symbol="inf_adopted_session_replay_get_session">
				<return-type type="InfAdoptedSession*"/>
				<parameters>
					<parameter name="replay" type="InfAdoptedSessionReplay*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_adopted_session_replay_new">
				<return-type type="InfAdoptedSessionReplay*"/>
			</constructor>
			<method name="play_next" symbol="inf_adopted_session_replay_play_next">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="replay" type="InfAdoptedSessionReplay*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="play_to_end" symbol="inf_adopted_session_replay_play_to_end">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="replay" type="InfAdoptedSessionReplay*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="set_record" symbol="inf_adopted_session_replay_set_record">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="replay" type="InfAdoptedSessionReplay*"/>
					<parameter name="filename" type="gchar*"/>
					<parameter name="plugin" type="InfcNotePlugin*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<property name="filename" type="char*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="session" type="InfAdoptedSession*" readable="1" writable="0" construct="0" construct-only="0"/>
		</object>
		<object name="InfAdoptedSplitOperation" parent="GObject" type-name="InfAdoptedSplitOperation" get-type="inf_adopted_split_operation_get_type">
			<implements>
				<interface name="InfAdoptedOperation"/>
			</implements>
			<constructor name="new" symbol="inf_adopted_split_operation_new">
				<return-type type="InfAdoptedSplitOperation*"/>
				<parameters>
					<parameter name="first" type="InfAdoptedOperation*"/>
					<parameter name="second" type="InfAdoptedOperation*"/>
				</parameters>
			</constructor>
			<method name="transform_other" symbol="inf_adopted_split_operation_transform_other">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="op" type="InfAdoptedSplitOperation*"/>
					<parameter name="other" type="InfAdoptedOperation*"/>
					<parameter name="concurrency_id" type="gint"/>
				</parameters>
			</method>
			<method name="unsplit" symbol="inf_adopted_split_operation_unsplit">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedSplitOperation*"/>
				</parameters>
			</method>
			<property name="first" type="InfAdoptedOperation*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="second" type="InfAdoptedOperation*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfAdoptedUndoGrouping" parent="GObject" type-name="InfAdoptedUndoGrouping" get-type="inf_adopted_undo_grouping_get_type">
			<method name="end_group" symbol="inf_adopted_undo_grouping_end_group">
				<return-type type="void"/>
				<parameters>
					<parameter name="grouping" type="InfAdoptedUndoGrouping*"/>
					<parameter name="allow_group_with_next" type="gboolean"/>
				</parameters>
			</method>
			<method name="get_algorithm" symbol="inf_adopted_undo_grouping_get_algorithm">
				<return-type type="InfAdoptedAlgorithm*"/>
				<parameters>
					<parameter name="grouping" type="InfAdoptedUndoGrouping*"/>
				</parameters>
			</method>
			<method name="get_redo_size" symbol="inf_adopted_undo_grouping_get_redo_size">
				<return-type type="guint"/>
				<parameters>
					<parameter name="grouping" type="InfAdoptedUndoGrouping*"/>
				</parameters>
			</method>
			<method name="get_undo_size" symbol="inf_adopted_undo_grouping_get_undo_size">
				<return-type type="guint"/>
				<parameters>
					<parameter name="grouping" type="InfAdoptedUndoGrouping*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_adopted_undo_grouping_new">
				<return-type type="InfAdoptedUndoGrouping*"/>
			</constructor>
			<method name="set_algorithm" symbol="inf_adopted_undo_grouping_set_algorithm">
				<return-type type="void"/>
				<parameters>
					<parameter name="grouping" type="InfAdoptedUndoGrouping*"/>
					<parameter name="algorithm" type="InfAdoptedAlgorithm*"/>
					<parameter name="user" type="InfAdoptedUser*"/>
				</parameters>
			</method>
			<method name="start_group" symbol="inf_adopted_undo_grouping_start_group">
				<return-type type="void"/>
				<parameters>
					<parameter name="grouping" type="InfAdoptedUndoGrouping*"/>
					<parameter name="allow_group_with_prev" type="gboolean"/>
				</parameters>
			</method>
			<property name="algorithm" type="InfAdoptedAlgorithm*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="user" type="InfAdoptedUser*" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="group-requests" when="LAST">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="grouping" type="InfAdoptedUndoGrouping*"/>
					<parameter name="first" type="InfAdoptedRequest*"/>
					<parameter name="second" type="InfAdoptedRequest*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfAdoptedUser" parent="InfUser" type-name="InfAdoptedUser" get-type="inf_adopted_user_get_type">
			<method name="get_component" symbol="inf_adopted_user_get_component">
				<return-type type="guint"/>
				<parameters>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="id" type="guint"/>
				</parameters>
			</method>
			<method name="get_request_log" symbol="inf_adopted_user_get_request_log">
				<return-type type="InfAdoptedRequestLog*"/>
				<parameters>
					<parameter name="user" type="InfAdoptedUser*"/>
				</parameters>
			</method>
			<method name="get_vector" symbol="inf_adopted_user_get_vector">
				<return-type type="InfAdoptedStateVector*"/>
				<parameters>
					<parameter name="user" type="InfAdoptedUser*"/>
				</parameters>
			</method>
			<method name="set_vector" symbol="inf_adopted_user_set_vector">
				<return-type type="void"/>
				<parameters>
					<parameter name="user" type="InfAdoptedUser*"/>
					<parameter name="vec" type="InfAdoptedStateVector*"/>
				</parameters>
			</method>
			<property name="request-log" type="InfAdoptedRequestLog*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="vector" type="InfAdoptedStateVector*" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="InfChatBuffer" parent="GObject" type-name="InfChatBuffer" get-type="inf_chat_buffer_get_type">
			<implements>
				<interface name="InfBuffer"/>
			</implements>
			<method name="add_emote_message" symbol="inf_chat_buffer_add_emote_message">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfChatBuffer*"/>
					<parameter name="by" type="InfUser*"/>
					<parameter name="message" type="gchar*"/>
					<parameter name="length" type="gsize"/>
					<parameter name="time" type="time_t"/>
					<parameter name="flags" type="InfChatBufferMessageFlags"/>
				</parameters>
			</method>
			<method name="add_message" symbol="inf_chat_buffer_add_message">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfChatBuffer*"/>
					<parameter name="by" type="InfUser*"/>
					<parameter name="message" type="gchar*"/>
					<parameter name="length" type="gsize"/>
					<parameter name="time" type="time_t"/>
					<parameter name="flags" type="InfChatBufferMessageFlags"/>
				</parameters>
			</method>
			<method name="add_userjoin_message" symbol="inf_chat_buffer_add_userjoin_message">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfChatBuffer*"/>
					<parameter name="user" type="InfUser*"/>
					<parameter name="time" type="time_t"/>
					<parameter name="flags" type="InfChatBufferMessageFlags"/>
				</parameters>
			</method>
			<method name="add_userpart_message" symbol="inf_chat_buffer_add_userpart_message">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfChatBuffer*"/>
					<parameter name="user" type="InfUser*"/>
					<parameter name="time" type="time_t"/>
					<parameter name="flags" type="InfChatBufferMessageFlags"/>
				</parameters>
			</method>
			<method name="get_message" symbol="inf_chat_buffer_get_message">
				<return-type type="InfChatBufferMessage*"/>
				<parameters>
					<parameter name="buffer" type="InfChatBuffer*"/>
					<parameter name="n" type="guint"/>
				</parameters>
			</method>
			<method name="get_n_messages" symbol="inf_chat_buffer_get_n_messages">
				<return-type type="guint"/>
				<parameters>
					<parameter name="buffer" type="InfChatBuffer*"/>
				</parameters>
			</method>
			<method name="get_size" symbol="inf_chat_buffer_get_size">
				<return-type type="guint"/>
				<parameters>
					<parameter name="buffer" type="InfChatBuffer*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_chat_buffer_new">
				<return-type type="InfChatBuffer*"/>
				<parameters>
					<parameter name="size" type="guint"/>
				</parameters>
			</constructor>
			<property name="size" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="add-message" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfChatBuffer*"/>
					<parameter name="message" type="InfChatBufferMessage*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfChatSession" parent="InfSession" type-name="InfChatSession" get-type="inf_chat_session_get_type">
			<implements>
				<interface name="InfCommunicationObject"/>
			</implements>
			<constructor name="new" symbol="inf_chat_session_new">
				<return-type type="InfChatSession*"/>
				<parameters>
					<parameter name="manager" type="InfCommunicationManager*"/>
					<parameter name="backlog_size" type="guint"/>
					<parameter name="status" type="InfSessionStatus"/>
					<parameter name="sync_group" type="InfCommunicationGroup*"/>
					<parameter name="sync_connection" type="InfXmlConnection*"/>
				</parameters>
			</constructor>
			<method name="set_log_file" symbol="inf_chat_session_set_log_file">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="session" type="InfChatSession*"/>
					<parameter name="log_file" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<property name="log-file" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="receive-message" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfChatSession*"/>
					<parameter name="message" type="InfChatBufferMessage*"/>
				</parameters>
			</signal>
			<signal name="send-message" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfChatSession*"/>
					<parameter name="message" type="InfChatBufferMessage*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfCommunicationCentralFactory" parent="GObject" type-name="InfCommunicationCentralFactory" get-type="inf_communication_central_factory_get_type">
			<implements>
				<interface name="InfCommunicationFactory"/>
			</implements>
			<method name="get_default" symbol="inf_communication_central_factory_get_default">
				<return-type type="InfCommunicationFactory*"/>
			</method>
		</object>
		<object name="InfCommunicationCentralMethod" parent="GObject" type-name="InfCommunicationCentralMethod" get-type="inf_communication_central_method_get_type">
			<implements>
				<interface name="InfCommunicationMethod"/>
			</implements>
			<property name="group" type="InfCommunicationGroup*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="registry" type="InfCommunicationRegistry*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfCommunicationGroup" parent="GObject" type-name="InfCommunicationGroup" get-type="inf_communication_group_get_type">
			<method name="cancel_messages" symbol="inf_communication_group_cancel_messages">
				<return-type type="void"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="get_method_for_connection" symbol="inf_communication_group_get_method_for_connection">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="grp" type="InfCommunicationGroup*"/>
					<parameter name="conn" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="get_method_for_network" symbol="inf_communication_group_get_method_for_network">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="network" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="inf_communication_group_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
				</parameters>
			</method>
			<method name="get_publisher_id" symbol="inf_communication_group_get_publisher_id">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="for_connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="get_target" symbol="inf_communication_group_get_target">
				<return-type type="InfCommunicationObject*"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
				</parameters>
			</method>
			<method name="is_member" symbol="inf_communication_group_is_member">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="send_group_message" symbol="inf_communication_group_send_group_message">
				<return-type type="void"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="send_message" symbol="inf_communication_group_send_message">
				<return-type type="void"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="set_target" symbol="inf_communication_group_set_target">
				<return-type type="void"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="target" type="InfCommunicationObject*"/>
				</parameters>
			</method>
			<property name="communication-manager" type="InfCommunicationManager*" readable="0" writable="1" construct="0" construct-only="1"/>
			<property name="communication-registry" type="InfCommunicationRegistry*" readable="0" writable="1" construct="0" construct-only="1"/>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="target" type="InfCommunicationObject*" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="member-added" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</signal>
			<signal name="member-removed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</signal>
			<vfunc name="get_method">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="index" type="unsigned"/>
				</parameters>
			</vfunc>
			<vfunc name="get_publisher_id">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="for_connection" type="InfXmlConnection*"/>
				</parameters>
			</vfunc>
		</object>
		<object name="InfCommunicationHostedGroup" parent="InfCommunicationGroup" type-name="InfCommunicationHostedGroup" get-type="inf_communication_hosted_group_get_type">
			<method name="add_member" symbol="inf_communication_hosted_group_add_member">
				<return-type type="void"/>
				<parameters>
					<parameter name="group" type="InfCommunicationHostedGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="add_method" symbol="inf_communication_hosted_group_add_method">
				<return-type type="void"/>
				<parameters>
					<parameter name="group" type="InfCommunicationHostedGroup*"/>
					<parameter name="method" type="gchar*"/>
				</parameters>
			</method>
			<method name="remove_member" symbol="inf_communication_hosted_group_remove_member">
				<return-type type="void"/>
				<parameters>
					<parameter name="grp" type="InfCommunicationHostedGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
		</object>
		<object name="InfCommunicationJoinedGroup" parent="InfCommunicationGroup" type-name="InfCommunicationJoinedGroup" get-type="inf_communication_joined_group_get_type">
			<method name="get_publisher" symbol="inf_communication_joined_group_get_publisher">
				<return-type type="InfXmlConnection*"/>
				<parameters>
					<parameter name="g" type="InfCommunicationJoinedGroup*"/>
				</parameters>
			</method>
			<method name="remove_member" symbol="inf_communication_joined_group_remove_member">
				<return-type type="void"/>
				<parameters>
					<parameter name="grp" type="InfCommunicationJoinedGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<property name="method" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="publisher" type="InfXmlConnection*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfCommunicationManager" parent="GObject" type-name="InfCommunicationManager" get-type="inf_communication_manager_get_type">
			<method name="add_factory" symbol="inf_communication_manager_add_factory">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfCommunicationManager*"/>
					<parameter name="factory" type="InfCommunicationFactory*"/>
				</parameters>
			</method>
			<method name="get_factory_for" symbol="inf_communication_manager_get_factory_for">
				<return-type type="InfCommunicationFactory*"/>
				<parameters>
					<parameter name="manager" type="InfCommunicationManager*"/>
					<parameter name="network" type="gchar*"/>
					<parameter name="method_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="join_group" symbol="inf_communication_manager_join_group">
				<return-type type="InfCommunicationJoinedGroup*"/>
				<parameters>
					<parameter name="manager" type="InfCommunicationManager*"/>
					<parameter name="group_name" type="gchar*"/>
					<parameter name="publisher_conn" type="InfXmlConnection*"/>
					<parameter name="method" type="gchar*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_communication_manager_new">
				<return-type type="InfCommunicationManager*"/>
			</constructor>
			<method name="open_group" symbol="inf_communication_manager_open_group">
				<return-type type="InfCommunicationHostedGroup*"/>
				<parameters>
					<parameter name="manager" type="InfCommunicationManager*"/>
					<parameter name="group_name" type="gchar*"/>
					<parameter name="methods" type="gchar**"/>
				</parameters>
			</method>
		</object>
		<object name="InfCommunicationRegistry" parent="GObject" type-name="InfCommunicationRegistry" get-type="inf_communication_registry_get_type">
			<method name="cancel_messages" symbol="inf_communication_registry_cancel_messages">
				<return-type type="void"/>
				<parameters>
					<parameter name="registry" type="InfCommunicationRegistry*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="is_registered" symbol="inf_communication_registry_is_registered">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="registry" type="InfCommunicationRegistry*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="register" symbol="inf_communication_registry_register">
				<return-type type="void"/>
				<parameters>
					<parameter name="registry" type="InfCommunicationRegistry*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="send" symbol="inf_communication_registry_send">
				<return-type type="void"/>
				<parameters>
					<parameter name="registry" type="InfCommunicationRegistry*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="unregister" symbol="inf_communication_registry_unregister">
				<return-type type="void"/>
				<parameters>
					<parameter name="registry" type="InfCommunicationRegistry*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
		</object>
		<object name="InfDiscoveryAvahi" parent="GObject" type-name="InfDiscoveryAvahi" get-type="inf_discovery_avahi_get_type">
			<implements>
				<interface name="InfDiscovery"/>
				<interface name="InfLocalPublisher"/>
			</implements>
			<method name="get_security_policy" symbol="inf_discovery_avahi_get_security_policy">
				<return-type type="InfXmppConnectionSecurityPolicy"/>
				<parameters>
					<parameter name="discovery" type="InfDiscoveryAvahi*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_discovery_avahi_new">
				<return-type type="InfDiscoveryAvahi*"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="manager" type="InfXmppManager*"/>
					<parameter name="creds" type="InfCertificateCredentials*"/>
					<parameter name="sasl_context" type="Gsasl*"/>
					<parameter name="sasl_mechanisms" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="set_security_policy" symbol="inf_discovery_avahi_set_security_policy">
				<return-type type="void"/>
				<parameters>
					<parameter name="discovery" type="InfDiscoveryAvahi*"/>
					<parameter name="plcy" type="InfXmppConnectionSecurityPolicy"/>
				</parameters>
			</method>
			<property name="credentials" type="InfCertificateCredentials*" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="io" type="InfIo*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="sasl-context" type="gpointer" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="sasl-mechanisms" type="char*" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="security-policy" type="InfXmppConnectionSecurityPolicy" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="xmpp-manager" type="InfXmppManager*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfSession" parent="GObject" type-name="InfSession" get-type="inf_session_get_type">
			<implements>
				<interface name="InfCommunicationObject"/>
			</implements>
			<method name="add_user" symbol="inf_session_add_user">
				<return-type type="InfUser*"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="params" type="GParameter*"/>
					<parameter name="n_params" type="guint"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="close" symbol="inf_session_close">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
				</parameters>
			</method>
			<method name="get_buffer" symbol="inf_session_get_buffer">
				<return-type type="InfBuffer*"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
				</parameters>
			</method>
			<method name="get_communication_manager" symbol="inf_session_get_communication_manager">
				<return-type type="InfCommunicationManager*"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
				</parameters>
			</method>
			<method name="get_status" symbol="inf_session_get_status">
				<return-type type="InfSessionStatus"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
				</parameters>
			</method>
			<method name="get_subscription_group" symbol="inf_session_get_subscription_group">
				<return-type type="InfCommunicationGroup*"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
				</parameters>
			</method>
			<method name="get_synchronization_progress" symbol="inf_session_get_synchronization_progress">
				<return-type type="gdouble"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="get_synchronization_status" symbol="inf_session_get_synchronization_status">
				<return-type type="InfSessionSyncStatus"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="get_user_property" symbol="inf_session_get_user_property">
				<return-type type="GParameter*"/>
				<parameters>
					<parameter name="array" type="GArray*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_user_table" symbol="inf_session_get_user_table">
				<return-type type="InfUserTable*"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
				</parameters>
			</method>
			<method name="has_synchronizations" symbol="inf_session_has_synchronizations">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
				</parameters>
			</method>
			<method name="lookup_user_property" symbol="inf_session_lookup_user_property">
				<return-type type="GParameter*"/>
				<parameters>
					<parameter name="params" type="GParameter*"/>
					<parameter name="n_params" type="guint"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="send_to_subscriptions" symbol="inf_session_send_to_subscriptions">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="set_subscription_group" symbol="inf_session_set_subscription_group">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
				</parameters>
			</method>
			<method name="set_user_status" symbol="inf_session_set_user_status">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="user" type="InfUser*"/>
					<parameter name="status" type="InfUserStatus"/>
				</parameters>
			</method>
			<method name="synchronize_from" symbol="inf_session_synchronize_from">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
				</parameters>
			</method>
			<method name="synchronize_to" symbol="inf_session_synchronize_to">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="user_to_xml" symbol="inf_session_user_to_xml">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="user" type="InfUser*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<property name="buffer" type="InfBuffer*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="communication-manager" type="InfCommunicationManager*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="status" type="InfSessionStatus" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="subscription-group" type="InfCommunicationGroup*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="sync-connection" type="InfXmlConnection*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="sync-group" type="InfCommunicationGroup*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="user-table" type="InfUserTable*" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="close" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
				</parameters>
			</signal>
			<signal name="synchronization-begin" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</signal>
			<signal name="synchronization-complete" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</signal>
			<signal name="synchronization-failed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="error" type="gpointer"/>
				</parameters>
			</signal>
			<signal name="synchronization-progress" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="percentage" type="gdouble"/>
				</parameters>
			</signal>
			<vfunc name="get_xml_user_props">
				<return-type type="GArray*"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="conn" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</vfunc>
			<vfunc name="process_xml_run">
				<return-type type="InfCommunicationScope"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
			<vfunc name="process_xml_sync">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
			<vfunc name="set_xml_user_props">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="params" type="GParameter*"/>
					<parameter name="n_params" type="guint"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</vfunc>
			<vfunc name="to_xml_sync">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="parent" type="xmlNode*"/>
				</parameters>
			</vfunc>
			<vfunc name="user_new">
				<return-type type="InfUser*"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="params" type="GParameter*"/>
					<parameter name="n_params" type="guint"/>
				</parameters>
			</vfunc>
			<vfunc name="validate_user_props">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="session" type="InfSession*"/>
					<parameter name="params" type="GParameter*"/>
					<parameter name="n_params" type="guint"/>
					<parameter name="exclude" type="InfUser*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
		</object>
		<object name="InfSimulatedConnection" parent="GObject" type-name="InfSimulatedConnection" get-type="inf_simulated_connection_get_type">
			<implements>
				<interface name="InfXmlConnection"/>
			</implements>
			<method name="connect" symbol="inf_simulated_connection_connect">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfSimulatedConnection*"/>
					<parameter name="to" type="InfSimulatedConnection*"/>
				</parameters>
			</method>
			<method name="flush" symbol="inf_simulated_connection_flush">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfSimulatedConnection*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_simulated_connection_new">
				<return-type type="InfSimulatedConnection*"/>
			</constructor>
			<method name="set_mode" symbol="inf_simulated_connection_set_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfSimulatedConnection*"/>
					<parameter name="mode" type="InfSimulatedConnectionMode"/>
				</parameters>
			</method>
			<property name="mode" type="InfSimulatedConnectionMode" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="target" type="InfSimulatedConnection*" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="InfStandaloneIo" parent="GObject" type-name="InfStandaloneIo" get-type="inf_standalone_io_get_type">
			<implements>
				<interface name="InfIo"/>
			</implements>
			<method name="iteration" symbol="inf_standalone_io_iteration">
				<return-type type="void"/>
				<parameters>
					<parameter name="io" type="InfStandaloneIo*"/>
				</parameters>
			</method>
			<method name="iteration_timeout" symbol="inf_standalone_io_iteration_timeout">
				<return-type type="void"/>
				<parameters>
					<parameter name="io" type="InfStandaloneIo*"/>
					<parameter name="timeout" type="guint"/>
				</parameters>
			</method>
			<method name="loop" symbol="inf_standalone_io_loop">
				<return-type type="void"/>
				<parameters>
					<parameter name="io" type="InfStandaloneIo*"/>
				</parameters>
			</method>
			<method name="loop_quit" symbol="inf_standalone_io_loop_quit">
				<return-type type="void"/>
				<parameters>
					<parameter name="io" type="InfStandaloneIo*"/>
				</parameters>
			</method>
			<method name="loop_running" symbol="inf_standalone_io_loop_running">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="io" type="InfStandaloneIo*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_standalone_io_new">
				<return-type type="InfStandaloneIo*"/>
			</constructor>
		</object>
		<object name="InfTcpConnection" parent="GObject" type-name="InfTcpConnection" get-type="inf_tcp_connection_get_type">
			<method name="close" symbol="inf_tcp_connection_close">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfTcpConnection*"/>
				</parameters>
			</method>
			<method name="get_remote_address" symbol="inf_tcp_connection_get_remote_address">
				<return-type type="InfIpAddress*"/>
				<parameters>
					<parameter name="connection" type="InfTcpConnection*"/>
				</parameters>
			</method>
			<method name="get_remote_port" symbol="inf_tcp_connection_get_remote_port">
				<return-type type="guint"/>
				<parameters>
					<parameter name="connection" type="InfTcpConnection*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_tcp_connection_new">
				<return-type type="InfTcpConnection*"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="remote_addr" type="InfIpAddress*"/>
					<parameter name="remote_port" type="guint"/>
				</parameters>
			</constructor>
			<constructor name="new_and_open" symbol="inf_tcp_connection_new_and_open">
				<return-type type="InfTcpConnection*"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="remote_addr" type="InfIpAddress*"/>
					<parameter name="remote_port" type="guint"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</constructor>
			<method name="open" symbol="inf_tcp_connection_open">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="connection" type="InfTcpConnection*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="send" symbol="inf_tcp_connection_send">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfTcpConnection*"/>
					<parameter name="data" type="gconstpointer"/>
					<parameter name="len" type="guint"/>
				</parameters>
			</method>
			<property name="device-index" type="guint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="device-name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="io" type="InfIo*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="local-address" type="InfIpAddress*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="local-port" type="guint" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="remote-address" type="InfIpAddress*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="remote-port" type="guint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="status" type="InfTcpConnectionStatus" readable="1" writable="0" construct="0" construct-only="0"/>
			<signal name="error" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfTcpConnection*"/>
					<parameter name="error" type="gpointer"/>
				</parameters>
			</signal>
			<signal name="received" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfTcpConnection*"/>
					<parameter name="data" type="gpointer"/>
					<parameter name="len" type="guint"/>
				</parameters>
			</signal>
			<signal name="sent" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfTcpConnection*"/>
					<parameter name="data" type="gpointer"/>
					<parameter name="len" type="guint"/>
				</parameters>
			</signal>
		</object>
		<object name="InfUser" parent="GObject" type-name="InfUser" get-type="inf_user_get_type">
			<method name="error_quark" symbol="inf_user_error_quark">
				<return-type type="GQuark"/>
			</method>
			<method name="get_connection" symbol="inf_user_get_connection">
				<return-type type="InfXmlConnection*"/>
				<parameters>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="get_flags" symbol="inf_user_get_flags">
				<return-type type="InfUserFlags"/>
				<parameters>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="get_id" symbol="inf_user_get_id">
				<return-type type="guint"/>
				<parameters>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="inf_user_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="get_status" symbol="inf_user_get_status">
				<return-type type="InfUserStatus"/>
				<parameters>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="status_from_string" symbol="inf_user_status_from_string">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="string" type="gchar*"/>
					<parameter name="status" type="InfUserStatus*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="status_to_string" symbol="inf_user_status_to_string">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="status" type="InfUserStatus"/>
				</parameters>
			</method>
			<method name="strerror" symbol="inf_user_strerror">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="code" type="InfUserError"/>
				</parameters>
			</method>
			<property name="connection" type="InfXmlConnection*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="flags" type="InfUserFlags" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="id" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="status" type="InfUserStatus" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="set-status" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="user" type="InfUser*"/>
					<parameter name="status" type="InfUserStatus"/>
				</parameters>
			</signal>
		</object>
		<object name="InfUserTable" parent="GObject" type-name="InfUserTable" get-type="inf_user_table_get_type">
			<method name="add_user" symbol="inf_user_table_add_user">
				<return-type type="void"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="foreach_local_user" symbol="inf_user_table_foreach_local_user">
				<return-type type="void"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="func" type="InfUserTableForeachUserFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="foreach_user" symbol="inf_user_table_foreach_user">
				<return-type type="void"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="func" type="InfUserTableForeachUserFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="lookup_user_by_id" symbol="inf_user_table_lookup_user_by_id">
				<return-type type="InfUser*"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="id" type="guint"/>
				</parameters>
			</method>
			<method name="lookup_user_by_name" symbol="inf_user_table_lookup_user_by_name">
				<return-type type="InfUser*"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_user_table_new">
				<return-type type="InfUserTable*"/>
			</constructor>
			<method name="remove_user" symbol="inf_user_table_remove_user">
				<return-type type="void"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<signal name="add-local-user" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</signal>
			<signal name="add-user" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</signal>
			<signal name="remove-local-user" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</signal>
			<signal name="remove-user" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfXmppConnection" parent="GObject" type-name="InfXmppConnection" get-type="inf_xmpp_connection_get_type">
			<implements>
				<interface name="InfXmlConnection"/>
			</implements>
			<method name="certificate_verify_cancel" symbol="inf_xmpp_connection_certificate_verify_cancel">
				<return-type type="void"/>
				<parameters>
					<parameter name="xmpp" type="InfXmppConnection*"/>
				</parameters>
			</method>
			<method name="certificate_verify_continue" symbol="inf_xmpp_connection_certificate_verify_continue">
				<return-type type="void"/>
				<parameters>
					<parameter name="xmpp" type="InfXmppConnection*"/>
				</parameters>
			</method>
			<method name="get_sasl_error" symbol="inf_xmpp_connection_get_sasl_error">
				<return-type type="GError*"/>
				<parameters>
					<parameter name="xmpp" type="InfXmppConnection*"/>
				</parameters>
			</method>
			<method name="get_tls_enabled" symbol="inf_xmpp_connection_get_tls_enabled">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="xmpp" type="InfXmppConnection*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_xmpp_connection_new">
				<return-type type="InfXmppConnection*"/>
				<parameters>
					<parameter name="tcp" type="InfTcpConnection*"/>
					<parameter name="site" type="InfXmppConnectionSite"/>
					<parameter name="local_hostname" type="gchar*"/>
					<parameter name="remote_hostname" type="gchar*"/>
					<parameter name="security_policy" type="InfXmppConnectionSecurityPolicy"/>
					<parameter name="creds" type="InfCertificateCredentials*"/>
					<parameter name="sasl_context" type="Gsasl*"/>
					<parameter name="sasl_mechanisms" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="reset_sasl_authentication" symbol="inf_xmpp_connection_reset_sasl_authentication">
				<return-type type="void"/>
				<parameters>
					<parameter name="xmpp" type="InfXmppConnection*"/>
					<parameter name="new_context" type="Gsasl*"/>
					<parameter name="new_mechanisms" type="gchar*"/>
				</parameters>
			</method>
			<method name="retry_sasl_authentication" symbol="inf_xmpp_connection_retry_sasl_authentication">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="xmpp" type="InfXmppConnection*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="set_certificate_callback" symbol="inf_xmpp_connection_set_certificate_callback">
				<return-type type="void"/>
				<parameters>
					<parameter name="xmpp" type="InfXmppConnection*"/>
					<parameter name="cb" type="InfXmppConnectionCrtCallback"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="set_sasl_error" symbol="inf_xmpp_connection_set_sasl_error">
				<return-type type="void"/>
				<parameters>
					<parameter name="xmpp" type="InfXmppConnection*"/>
					<parameter name="error" type="GError*"/>
				</parameters>
			</method>
			<property name="credentials" type="InfCertificateCredentials*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="local-hostname" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="remote-hostname" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="sasl-context" type="gpointer" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="sasl-mechanisms" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="security-policy" type="InfXmppConnectionSecurityPolicy" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="site" type="InfXmppConnectionSite" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="tcp-connection" type="InfTcpConnection*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="tls-enabled" type="gboolean" readable="1" writable="0" construct="0" construct-only="0"/>
		</object>
		<object name="InfXmppManager" parent="GObject" type-name="InfXmppManager" get-type="inf_xmpp_manager_get_type">
			<method name="add_connection" symbol="inf_xmpp_manager_add_connection">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfXmppManager*"/>
					<parameter name="connection" type="InfXmppConnection*"/>
				</parameters>
			</method>
			<method name="contains_connection" symbol="inf_xmpp_manager_contains_connection">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="manager" type="InfXmppManager*"/>
					<parameter name="connection" type="InfXmppConnection*"/>
				</parameters>
			</method>
			<method name="lookup_connection_by_address" symbol="inf_xmpp_manager_lookup_connection_by_address">
				<return-type type="InfXmppConnection*"/>
				<parameters>
					<parameter name="manager" type="InfXmppManager*"/>
					<parameter name="address" type="InfIpAddress*"/>
					<parameter name="port" type="guint"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_xmpp_manager_new">
				<return-type type="InfXmppManager*"/>
			</constructor>
			<method name="remove_connection" symbol="inf_xmpp_manager_remove_connection">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfXmppManager*"/>
					<parameter name="connection" type="InfXmppConnection*"/>
				</parameters>
			</method>
			<signal name="add-connection" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfXmppManager*"/>
					<parameter name="connection" type="InfXmppConnection*"/>
				</parameters>
			</signal>
			<signal name="remove-connection" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfXmppManager*"/>
					<parameter name="connection" type="InfXmppConnection*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfcBrowser" parent="GObject" type-name="InfcBrowser" get-type="infc_browser_get_type">
			<implements>
				<interface name="InfCommunicationObject"/>
			</implements>
			<method name="add_note" symbol="infc_browser_add_note">
				<return-type type="InfcNodeRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="parent" type="InfcBrowserIter*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="plugin" type="InfcNotePlugin*"/>
					<parameter name="initial_subscribe" type="gboolean"/>
				</parameters>
			</method>
			<method name="add_note_with_content" symbol="infc_browser_add_note_with_content">
				<return-type type="InfcNodeRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="parent" type="InfcBrowserIter*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="plugin" type="InfcNotePlugin*"/>
					<parameter name="session" type="InfSession*"/>
					<parameter name="initial_subscribe" type="gboolean"/>
				</parameters>
			</method>
			<method name="add_plugin" symbol="infc_browser_add_plugin">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="plugin" type="InfcNotePlugin*"/>
				</parameters>
			</method>
			<method name="add_subdirectory" symbol="infc_browser_add_subdirectory">
				<return-type type="InfcNodeRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="parent" type="InfcBrowserIter*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_chat_session" symbol="infc_browser_get_chat_session">
				<return-type type="InfcSessionProxy*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
				</parameters>
			</method>
			<method name="get_communication_manager" symbol="infc_browser_get_communication_manager">
				<return-type type="InfCommunicationManager*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
				</parameters>
			</method>
			<method name="get_connection" symbol="infc_browser_get_connection">
				<return-type type="InfXmlConnection*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
				</parameters>
			</method>
			<method name="get_status" symbol="infc_browser_get_status">
				<return-type type="InfcBrowserStatus"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
				</parameters>
			</method>
			<method name="get_subscribe_chat_request" symbol="infc_browser_get_subscribe_chat_request">
				<return-type type="InfcNodeRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
				</parameters>
			</method>
			<method name="lookup_plugin" symbol="infc_browser_lookup_plugin">
				<return-type type="InfcNotePlugin*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="note_type" type="gchar*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="infc_browser_new">
				<return-type type="InfcBrowser*"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="comm_manager" type="InfCommunicationManager*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</constructor>
			<method name="remove_node" symbol="infc_browser_remove_node">
				<return-type type="InfcNodeRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<method name="subscribe_chat" symbol="infc_browser_subscribe_chat">
				<return-type type="InfcNodeRequest*"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
				</parameters>
			</method>
			<property name="chat-session" type="InfcSessionProxy*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="communication-manager" type="InfCommunicationManager*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="connection" type="InfXmlConnection*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="io" type="InfIo*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="status" type="InfcBrowserStatus" readable="1" writable="0" construct="0" construct-only="0"/>
			<signal name="begin-explore" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
					<parameter name="request" type="InfcExploreRequest*"/>
				</parameters>
			</signal>
			<signal name="begin-subscribe" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
					<parameter name="request" type="InfcNodeRequest*"/>
				</parameters>
			</signal>
			<signal name="error" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="error" type="gpointer"/>
				</parameters>
			</signal>
			<signal name="node-added" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</signal>
			<signal name="node-removed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</signal>
			<signal name="subscribe-session" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="browser" type="InfcBrowser*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
					<parameter name="proxy" type="InfcSessionProxy*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfcExploreRequest" parent="InfcRequest" type-name="InfcExploreRequest" get-type="infc_explore_request_get_type">
			<method name="finished" symbol="infc_explore_request_finished">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="request" type="InfcExploreRequest*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="get_finished" symbol="infc_explore_request_get_finished">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="request" type="InfcExploreRequest*"/>
				</parameters>
			</method>
			<method name="get_initiated" symbol="infc_explore_request_get_initiated">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="request" type="InfcExploreRequest*"/>
				</parameters>
			</method>
			<method name="get_node_id" symbol="infc_explore_request_get_node_id">
				<return-type type="guint"/>
				<parameters>
					<parameter name="request" type="InfcExploreRequest*"/>
				</parameters>
			</method>
			<method name="initiated" symbol="infc_explore_request_initiated">
				<return-type type="void"/>
				<parameters>
					<parameter name="request" type="InfcExploreRequest*"/>
					<parameter name="total" type="guint"/>
				</parameters>
			</method>
			<method name="progress" symbol="infc_explore_request_progress">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="request" type="InfcExploreRequest*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<property name="current" type="guint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="finished" type="gboolean" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="initiated" type="gboolean" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="node-id" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="total" type="guint" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="finished" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="explore_request" type="InfcExploreRequest*"/>
				</parameters>
			</signal>
			<signal name="initiated" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="explore_request" type="InfcExploreRequest*"/>
					<parameter name="total" type="guint"/>
				</parameters>
			</signal>
			<signal name="progress" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="explore_request" type="InfcExploreRequest*"/>
					<parameter name="current" type="guint"/>
					<parameter name="total" type="guint"/>
				</parameters>
			</signal>
		</object>
		<object name="InfcNodeRequest" parent="InfcRequest" type-name="InfcNodeRequest" get-type="infc_node_request_get_type">
			<method name="finished" symbol="infc_node_request_finished">
				<return-type type="void"/>
				<parameters>
					<parameter name="request" type="InfcNodeRequest*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</method>
			<property name="node-id" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="finished" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="node_request" type="InfcNodeRequest*"/>
					<parameter name="iter" type="InfcBrowserIter*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfcRequest" parent="GObject" type-name="InfcRequest" get-type="infc_request_get_type">
			<method name="failed" symbol="infc_request_failed">
				<return-type type="void"/>
				<parameters>
					<parameter name="request" type="InfcRequest*"/>
					<parameter name="error" type="GError*"/>
				</parameters>
			</method>
			<method name="get_name" symbol="infc_request_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="request" type="InfcRequest*"/>
				</parameters>
			</method>
			<method name="get_seq" symbol="infc_request_get_seq">
				<return-type type="guint"/>
				<parameters>
					<parameter name="request" type="InfcRequest*"/>
				</parameters>
			</method>
			<property name="name" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="seq" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="failed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="request" type="InfcRequest*"/>
					<parameter name="error" type="gpointer"/>
				</parameters>
			</signal>
			<vfunc name="unused1">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="usused2">
				<return-type type="void"/>
			</vfunc>
		</object>
		<object name="InfcRequestManager" parent="GObject" type-name="InfcRequestManager" get-type="infc_request_manager_get_type">
			<method name="add_request" symbol="infc_request_manager_add_request">
				<return-type type="InfcRequest*"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="request_type" type="GType"/>
					<parameter name="request_name" type="gchar*"/>
					<parameter name="first_property_name" type="gchar*"/>
				</parameters>
			</method>
			<method name="add_request_valist" symbol="infc_request_manager_add_request_valist">
				<return-type type="InfcRequest*"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="request_type" type="GType"/>
					<parameter name="request_name" type="gchar*"/>
					<parameter name="first_property_name" type="gchar*"/>
					<parameter name="arglist" type="va_list"/>
				</parameters>
			</method>
			<method name="clear" symbol="infc_request_manager_clear">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
				</parameters>
			</method>
			<method name="fail_request" symbol="infc_request_manager_fail_request">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="request" type="InfcRequest*"/>
					<parameter name="error" type="GError*"/>
				</parameters>
			</method>
			<method name="foreach_named_request" symbol="infc_request_manager_foreach_named_request">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="func" type="InfcRequestManagerForeachFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="foreach_request" symbol="infc_request_manager_foreach_request">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="func" type="InfcRequestManagerForeachFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="get_request_by_seq" symbol="infc_request_manager_get_request_by_seq">
				<return-type type="InfcRequest*"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="seq" type="guint"/>
				</parameters>
			</method>
			<method name="get_request_by_xml" symbol="infc_request_manager_get_request_by_xml">
				<return-type type="InfcRequest*"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="xml" type="xmlNode*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="get_request_by_xml_required" symbol="infc_request_manager_get_request_by_xml_required">
				<return-type type="InfcRequest*"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="xml" type="xmlNode*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<constructor name="new" symbol="infc_request_manager_new">
				<return-type type="InfcRequestManager*"/>
				<parameters>
					<parameter name="seq_id" type="guint"/>
				</parameters>
			</constructor>
			<method name="remove_request" symbol="infc_request_manager_remove_request">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="request" type="InfcRequest*"/>
				</parameters>
			</method>
			<property name="sequence-id" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="request-add" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="request" type="InfcRequest*"/>
				</parameters>
			</signal>
			<signal name="request-remove" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="manager" type="InfcRequestManager*"/>
					<parameter name="request" type="InfcRequest*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfcSessionProxy" parent="GObject" type-name="InfcSessionProxy" get-type="infc_session_proxy_get_type">
			<implements>
				<interface name="InfCommunicationObject"/>
			</implements>
			<method name="get_connection" symbol="infc_session_proxy_get_connection">
				<return-type type="InfXmlConnection*"/>
				<parameters>
					<parameter name="proxy" type="InfcSessionProxy*"/>
				</parameters>
			</method>
			<method name="get_session" symbol="infc_session_proxy_get_session">
				<return-type type="InfSession*"/>
				<parameters>
					<parameter name="proxy" type="InfcSessionProxy*"/>
				</parameters>
			</method>
			<method name="get_subscription_group" symbol="infc_session_proxy_get_subscription_group">
				<return-type type="InfCommunicationJoinedGroup*"/>
				<parameters>
					<parameter name="proxy" type="InfcSessionProxy*"/>
				</parameters>
			</method>
			<method name="join_user" symbol="infc_session_proxy_join_user">
				<return-type type="InfcUserRequest*"/>
				<parameters>
					<parameter name="proxy" type="InfcSessionProxy*"/>
					<parameter name="params" type="GParameter*"/>
					<parameter name="n_params" type="guint"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="set_connection" symbol="infc_session_proxy_set_connection">
				<return-type type="void"/>
				<parameters>
					<parameter name="proxy" type="InfcSessionProxy*"/>
					<parameter name="group" type="InfCommunicationJoinedGroup*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="seq_id" type="guint"/>
				</parameters>
			</method>
			<property name="connection" type="InfXmlConnection*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="session" type="InfSession*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="subscription-group" type="InfCommunicationJoinedGroup*" readable="1" writable="0" construct="0" construct-only="0"/>
			<vfunc name="translate_error">
				<return-type type="GError*"/>
				<parameters>
					<parameter name="session" type="InfcSessionProxy*"/>
					<parameter name="domain" type="GQuark"/>
					<parameter name="code" type="guint"/>
				</parameters>
			</vfunc>
		</object>
		<object name="InfcUserRequest" parent="InfcRequest" type-name="InfcUserRequest" get-type="infc_user_request_get_type">
			<method name="finished" symbol="infc_user_request_finished">
				<return-type type="void"/>
				<parameters>
					<parameter name="request" type="InfcUserRequest*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<signal name="finished" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="request" type="InfcUserRequest*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfdDirectory" parent="GObject" type-name="InfdDirectory" get-type="infd_directory_get_type">
			<implements>
				<interface name="InfCommunicationObject"/>
			</implements>
			<method name="add_connection" symbol="infd_directory_add_connection">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="add_note" symbol="infd_directory_add_note">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="parent" type="InfdDirectoryIter*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="plugin" type="InfdNotePlugin*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="add_plugin" symbol="infd_directory_add_plugin">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="plugin" type="InfdNotePlugin*"/>
				</parameters>
			</method>
			<method name="add_subdirectory" symbol="infd_directory_add_subdirectory">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="parent" type="InfdDirectoryIter*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="enable_chat" symbol="infd_directory_enable_chat">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="enable" type="gboolean"/>
				</parameters>
			</method>
			<method name="foreach_connection" symbol="infd_directory_foreach_connection">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="func" type="InfdDirectoryForeachConnectionFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="get_chat_session" symbol="infd_directory_get_chat_session">
				<return-type type="InfdSessionProxy*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
				</parameters>
			</method>
			<method name="get_communication_manager" symbol="infd_directory_get_communication_manager">
				<return-type type="InfCommunicationManager*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
				</parameters>
			</method>
			<method name="get_io" symbol="infd_directory_get_io">
				<return-type type="InfIo*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
				</parameters>
			</method>
			<method name="get_storage" symbol="infd_directory_get_storage">
				<return-type type="InfdStorage*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
				</parameters>
			</method>
			<method name="lookup_plugin" symbol="infd_directory_lookup_plugin">
				<return-type type="InfdNotePlugin*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="note_type" type="gchar*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="infd_directory_new">
				<return-type type="InfdDirectory*"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="storage" type="InfdStorage*"/>
					<parameter name="comm_manager" type="InfCommunicationManager*"/>
				</parameters>
			</constructor>
			<method name="remove_node" symbol="infd_directory_remove_node">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<property name="chat-session" type="InfdSessionProxy*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="communication-manager" type="InfCommunicationManager*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="io" type="InfIo*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="storage" type="InfdStorage*" readable="1" writable="1" construct="1" construct-only="0"/>
			<signal name="add-session" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
					<parameter name="session" type="InfdSessionProxy*"/>
				</parameters>
			</signal>
			<signal name="node-added" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</signal>
			<signal name="node-removed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
				</parameters>
			</signal>
			<signal name="remove-session" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
					<parameter name="iter" type="InfdDirectoryIter*"/>
					<parameter name="session" type="InfdSessionProxy*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfdFilesystemStorage" parent="GObject" type-name="InfdFilesystemStorage" get-type="infd_filesystem_storage_get_type">
			<implements>
				<interface name="InfdStorage"/>
			</implements>
			<constructor name="new" symbol="infd_filesystem_storage_new">
				<return-type type="InfdFilesystemStorage*"/>
				<parameters>
					<parameter name="root_directory" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="open" symbol="infd_filesystem_storage_open">
				<return-type type="FILE*"/>
				<parameters>
					<parameter name="storage" type="InfdFilesystemStorage*"/>
					<parameter name="identifier" type="gchar*"/>
					<parameter name="path" type="gchar*"/>
					<parameter name="mode" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<property name="root-directory" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfdServerPool" parent="GObject" type-name="InfdServerPool" get-type="infd_server_pool_get_type">
			<method name="add_local_publisher" symbol="infd_server_pool_add_local_publisher">
				<return-type type="void"/>
				<parameters>
					<parameter name="server_pool" type="InfdServerPool*"/>
					<parameter name="server" type="InfdXmppServer*"/>
					<parameter name="publisher" type="InfLocalPublisher*"/>
				</parameters>
			</method>
			<method name="add_server" symbol="infd_server_pool_add_server">
				<return-type type="void"/>
				<parameters>
					<parameter name="server_pool" type="InfdServerPool*"/>
					<parameter name="server" type="InfdXmlServer*"/>
				</parameters>
			</method>
			<method name="foreach_server" symbol="infd_server_pool_foreach_server">
				<return-type type="void"/>
				<parameters>
					<parameter name="server_pool" type="InfdServerPool*"/>
					<parameter name="func" type="InfdServerPoolForeachServerFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<constructor name="new" symbol="infd_server_pool_new">
				<return-type type="InfdServerPool*"/>
				<parameters>
					<parameter name="directory" type="InfdDirectory*"/>
				</parameters>
			</constructor>
			<method name="remove_server" symbol="infd_server_pool_remove_server">
				<return-type type="void"/>
				<parameters>
					<parameter name="server_pool" type="InfdServerPool*"/>
					<parameter name="server" type="InfdXmlServer*"/>
				</parameters>
			</method>
			<property name="directory" type="InfdDirectory*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfdSessionProxy" parent="GObject" type-name="InfdSessionProxy" get-type="infd_session_proxy_get_type">
			<implements>
				<interface name="InfCommunicationObject"/>
			</implements>
			<method name="add_user" symbol="infd_session_proxy_add_user">
				<return-type type="InfUser*"/>
				<parameters>
					<parameter name="proxy" type="InfdSessionProxy*"/>
					<parameter name="params" type="GParameter*"/>
					<parameter name="n_params" type="guint"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="get_session" symbol="infd_session_proxy_get_session">
				<return-type type="InfSession*"/>
				<parameters>
					<parameter name="proxy" type="InfdSessionProxy*"/>
				</parameters>
			</method>
			<method name="has_subscriptions" symbol="infd_session_proxy_has_subscriptions">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="proxy" type="InfdSessionProxy*"/>
				</parameters>
			</method>
			<method name="is_idle" symbol="infd_session_proxy_is_idle">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="proxy" type="InfdSessionProxy*"/>
				</parameters>
			</method>
			<method name="is_subscribed" symbol="infd_session_proxy_is_subscribed">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="proxy" type="InfdSessionProxy*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="subscribe_to" symbol="infd_session_proxy_subscribe_to">
				<return-type type="void"/>
				<parameters>
					<parameter name="proxy" type="InfdSessionProxy*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="seq_id" type="guint"/>
					<parameter name="synchronize" type="gboolean"/>
				</parameters>
			</method>
			<property name="idle" type="gboolean" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="session" type="InfSession*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="subscription-group" type="InfCommunicationHostedGroup*" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="add-subscription" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="proxy" type="InfdSessionProxy*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="seq_id" type="guint"/>
				</parameters>
			</signal>
			<signal name="remove-subscription" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="proxy" type="InfdSessionProxy*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfdTcpServer" parent="GObject" type-name="InfdTcpServer" get-type="infd_tcp_server_get_type">
			<method name="bind" symbol="infd_tcp_server_bind">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="server" type="InfdTcpServer*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="close" symbol="infd_tcp_server_close">
				<return-type type="void"/>
				<parameters>
					<parameter name="server" type="InfdTcpServer*"/>
				</parameters>
			</method>
			<method name="open" symbol="infd_tcp_server_open">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="server" type="InfdTcpServer*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<property name="io" type="InfIo*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="local-address" type="InfIpAddress*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="local-port" type="guint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="status" type="InfdTcpServerStatus" readable="1" writable="0" construct="0" construct-only="0"/>
			<signal name="error" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="server" type="InfdTcpServer*"/>
					<parameter name="error" type="gpointer"/>
				</parameters>
			</signal>
			<signal name="new-connection" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="server" type="InfdTcpServer*"/>
					<parameter name="connection" type="InfTcpConnection*"/>
				</parameters>
			</signal>
		</object>
		<object name="InfdXmppServer" parent="GObject" type-name="InfdXmppServer" get-type="infd_xmpp_server_get_type">
			<implements>
				<interface name="InfdXmlServer"/>
			</implements>
			<method name="get_security_policy" symbol="infd_xmpp_server_get_security_policy">
				<return-type type="InfXmppConnectionSecurityPolicy"/>
				<parameters>
					<parameter name="server" type="InfdXmppServer*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="infd_xmpp_server_new">
				<return-type type="InfdXmppServer*"/>
				<parameters>
					<parameter name="tcp" type="InfdTcpServer*"/>
					<parameter name="policy" type="InfXmppConnectionSecurityPolicy"/>
					<parameter name="creds" type="InfCertificateCredentials*"/>
					<parameter name="sasl_context" type="Gsasl*"/>
					<parameter name="sasl_mechanisms" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="set_security_policy" symbol="infd_xmpp_server_set_security_policy">
				<return-type type="void"/>
				<parameters>
					<parameter name="server" type="InfdXmppServer*"/>
					<parameter name="policy" type="InfXmppConnectionSecurityPolicy"/>
				</parameters>
			</method>
			<property name="credentials" type="InfCertificateCredentials*" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="local-hostname" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="sasl-context" type="gpointer" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="sasl-mechanisms" type="char*" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="security-policy" type="InfXmppConnectionSecurityPolicy" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="tcp-server" type="InfdTcpServer*" readable="1" writable="1" construct="0" construct-only="1"/>
			<signal name="error" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="server" type="InfdXmppServer*"/>
					<parameter name="error" type="gpointer"/>
				</parameters>
			</signal>
		</object>
		<interface name="InfAdoptedOperation" type-name="InfAdoptedOperation" get-type="inf_adopted_operation_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="apply" symbol="inf_adopted_operation_apply">
				<return-type type="void"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
					<parameter name="by" type="InfAdoptedUser*"/>
					<parameter name="buffer" type="InfBuffer*"/>
				</parameters>
			</method>
			<method name="copy" symbol="inf_adopted_operation_copy">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="get_concurrency_id" symbol="inf_adopted_operation_get_concurrency_id">
				<return-type type="InfAdoptedConcurrencyId"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="get_flags" symbol="inf_adopted_operation_get_flags">
				<return-type type="InfAdoptedOperationFlags"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="is_reversible" symbol="inf_adopted_operation_is_reversible">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="make_reversible" symbol="inf_adopted_operation_make_reversible">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
					<parameter name="with" type="InfAdoptedOperation*"/>
					<parameter name="buffer" type="InfBuffer*"/>
				</parameters>
			</method>
			<method name="need_concurrency_id" symbol="inf_adopted_operation_need_concurrency_id">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="revert" symbol="inf_adopted_operation_revert">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="transform" symbol="inf_adopted_operation_transform">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
					<parameter name="concurrency_id" type="gint"/>
				</parameters>
			</method>
			<vfunc name="apply">
				<return-type type="void"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
					<parameter name="by" type="InfAdoptedUser*"/>
					<parameter name="buffer" type="InfBuffer*"/>
				</parameters>
			</vfunc>
			<vfunc name="copy">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_concurrency_id">
				<return-type type="InfAdoptedConcurrencyId"/>
				<parameters>
					<parameter name="op" type="InfAdoptedOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_flags">
				<return-type type="InfAdoptedOperationFlags"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</vfunc>
			<vfunc name="make_reversible">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
					<parameter name="with" type="InfAdoptedOperation*"/>
					<parameter name="buffer" type="InfBuffer*"/>
				</parameters>
			</vfunc>
			<vfunc name="need_concurrency_id">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
				</parameters>
			</vfunc>
			<vfunc name="revert">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
				</parameters>
			</vfunc>
			<vfunc name="transform">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfAdoptedOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
					<parameter name="concurrency_id" type="InfAdoptedConcurrencyId"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfBuffer" type-name="InfBuffer" get-type="inf_buffer_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="get_modified" symbol="inf_buffer_get_modified">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfBuffer*"/>
				</parameters>
			</method>
			<method name="set_modified" symbol="inf_buffer_set_modified">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfBuffer*"/>
					<parameter name="modified" type="gboolean"/>
				</parameters>
			</method>
			<property name="modified" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<vfunc name="get_modified">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfBuffer*"/>
				</parameters>
			</vfunc>
			<vfunc name="set_modified">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfBuffer*"/>
					<parameter name="modified" type="gboolean"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfCommunicationFactory" type-name="InfCommunicationFactory" get-type="inf_communication_factory_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="instantiate" symbol="inf_communication_factory_instantiate">
				<return-type type="InfCommunicationMethod*"/>
				<parameters>
					<parameter name="factory" type="InfCommunicationFactory*"/>
					<parameter name="network" type="gchar*"/>
					<parameter name="method_name" type="gchar*"/>
					<parameter name="registry" type="InfCommunicationRegistry*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
				</parameters>
			</method>
			<method name="supports_method" symbol="inf_communication_factory_supports_method">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="factory" type="InfCommunicationFactory*"/>
					<parameter name="network" type="gchar*"/>
					<parameter name="method_name" type="gchar*"/>
				</parameters>
			</method>
			<vfunc name="instantiate">
				<return-type type="InfCommunicationMethod*"/>
				<parameters>
					<parameter name="factory" type="InfCommunicationFactory*"/>
					<parameter name="network" type="gchar*"/>
					<parameter name="method_name" type="gchar*"/>
					<parameter name="registry" type="InfCommunicationRegistry*"/>
					<parameter name="group" type="InfCommunicationGroup*"/>
				</parameters>
			</vfunc>
			<vfunc name="supports_method">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="factory" type="InfCommunicationFactory*"/>
					<parameter name="network" type="gchar*"/>
					<parameter name="method_name" type="gchar*"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfCommunicationMethod" type-name="InfCommunicationMethod" get-type="inf_communication_method_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="add_member" symbol="inf_communication_method_add_member">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="cancel_messages" symbol="inf_communication_method_cancel_messages">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="enqueued" symbol="inf_communication_method_enqueued">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="is_member" symbol="inf_communication_method_is_member">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="received" symbol="inf_communication_method_received">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="remove_member" symbol="inf_communication_method_remove_member">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="send_all" symbol="inf_communication_method_send_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="send_single" symbol="inf_communication_method_send_single">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="sent" symbol="inf_communication_method_sent">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<signal name="add-member" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</signal>
			<signal name="remove-member" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</signal>
			<vfunc name="cancel_messages">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</vfunc>
			<vfunc name="enqueued">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</vfunc>
			<vfunc name="is_member">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</vfunc>
			<vfunc name="received">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</vfunc>
			<vfunc name="send_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</vfunc>
			<vfunc name="send_single">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</vfunc>
			<vfunc name="sent">
				<return-type type="void"/>
				<parameters>
					<parameter name="method" type="InfCommunicationMethod*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfCommunicationObject" type-name="InfCommunicationObject" get-type="inf_communication_object_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="enqueued" symbol="inf_communication_object_enqueued">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="InfCommunicationObject*"/>
					<parameter name="conn" type="InfXmlConnection*"/>
					<parameter name="node" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="received" symbol="inf_communication_object_received">
				<return-type type="InfCommunicationScope"/>
				<parameters>
					<parameter name="object" type="InfCommunicationObject*"/>
					<parameter name="conn" type="InfXmlConnection*"/>
					<parameter name="node" type="xmlNode*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="sent" symbol="inf_communication_object_sent">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="InfCommunicationObject*"/>
					<parameter name="conn" type="InfXmlConnection*"/>
					<parameter name="node" type="xmlNode*"/>
				</parameters>
			</method>
			<vfunc name="enqueued">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="InfCommunicationObject*"/>
					<parameter name="conn" type="InfXmlConnection*"/>
					<parameter name="node" type="xmlNode*"/>
				</parameters>
			</vfunc>
			<vfunc name="received">
				<return-type type="InfCommunicationScope"/>
				<parameters>
					<parameter name="object" type="InfCommunicationObject*"/>
					<parameter name="conn" type="InfXmlConnection*"/>
					<parameter name="node" type="xmlNode*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
			<vfunc name="sent">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="InfCommunicationObject*"/>
					<parameter name="conn" type="InfXmlConnection*"/>
					<parameter name="node" type="xmlNode*"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfDiscovery" type-name="InfDiscovery" get-type="inf_discovery_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="discover" symbol="inf_discovery_discover">
				<return-type type="void"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="type" type="gchar*"/>
				</parameters>
			</method>
			<method name="discovered" symbol="inf_discovery_discovered">
				<return-type type="void"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
				</parameters>
			</method>
			<method name="get_discovered" symbol="inf_discovery_get_discovered">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="type" type="gchar*"/>
				</parameters>
			</method>
			<method name="resolve" symbol="inf_discovery_resolve">
				<return-type type="void"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
					<parameter name="complete_func" type="InfDiscoveryResolvCompleteFunc"/>
					<parameter name="error_func" type="InfDiscoveryResolvErrorFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="undiscovered" symbol="inf_discovery_undiscovered">
				<return-type type="void"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
				</parameters>
			</method>
			<signal name="discovered" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="gpointer"/>
				</parameters>
			</signal>
			<signal name="undiscovered" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="gpointer"/>
				</parameters>
			</signal>
			<vfunc name="discover">
				<return-type type="void"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="type" type="gchar*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_discovered">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="type" type="gchar*"/>
				</parameters>
			</vfunc>
			<vfunc name="info_get_service_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
				</parameters>
			</vfunc>
			<vfunc name="info_get_service_type">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
				</parameters>
			</vfunc>
			<vfunc name="resolve">
				<return-type type="void"/>
				<parameters>
					<parameter name="discovery" type="InfDiscovery*"/>
					<parameter name="info" type="InfDiscoveryInfo*"/>
					<parameter name="complete_func" type="InfDiscoveryResolvCompleteFunc"/>
					<parameter name="error_func" type="InfDiscoveryResolvErrorFunc"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfIo" type-name="InfIo" get-type="inf_io_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="add_timeout" symbol="inf_io_add_timeout">
				<return-type type="gpointer"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="msecs" type="guint"/>
					<parameter name="func" type="InfIoTimeoutFunc"/>
					<parameter name="user_data" type="gpointer"/>
					<parameter name="notify" type="GDestroyNotify"/>
				</parameters>
			</method>
			<method name="remove_timeout" symbol="inf_io_remove_timeout">
				<return-type type="void"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="timeout" type="gpointer"/>
				</parameters>
			</method>
			<method name="watch" symbol="inf_io_watch">
				<return-type type="void"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="socket" type="InfNativeSocket*"/>
					<parameter name="events" type="InfIoEvent"/>
					<parameter name="func" type="InfIoFunc"/>
					<parameter name="user_data" type="gpointer"/>
					<parameter name="notify" type="GDestroyNotify"/>
				</parameters>
			</method>
			<vfunc name="add_timeout">
				<return-type type="gpointer"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="msecs" type="guint"/>
					<parameter name="func" type="InfIoTimeoutFunc"/>
					<parameter name="user_data" type="gpointer"/>
					<parameter name="notify" type="GDestroyNotify"/>
				</parameters>
			</vfunc>
			<vfunc name="remove_timeout">
				<return-type type="void"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="timeout" type="gpointer"/>
				</parameters>
			</vfunc>
			<vfunc name="watch">
				<return-type type="void"/>
				<parameters>
					<parameter name="io" type="InfIo*"/>
					<parameter name="socket" type="InfNativeSocket*"/>
					<parameter name="events" type="InfIoEvent"/>
					<parameter name="func" type="InfIoFunc"/>
					<parameter name="user_data" type="gpointer"/>
					<parameter name="notify" type="GDestroyNotify"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfLocalPublisher" type-name="InfLocalPublisher" get-type="inf_local_publisher_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="publish" symbol="inf_local_publisher_publish">
				<return-type type="InfLocalPublisherItem*"/>
				<parameters>
					<parameter name="publisher" type="InfLocalPublisher*"/>
					<parameter name="type" type="gchar*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="port" type="guint"/>
				</parameters>
			</method>
			<method name="unpublish" symbol="inf_local_publisher_unpublish">
				<return-type type="void"/>
				<parameters>
					<parameter name="publisher" type="InfLocalPublisher*"/>
					<parameter name="item" type="InfLocalPublisherItem*"/>
				</parameters>
			</method>
			<vfunc name="publish">
				<return-type type="InfLocalPublisherItem*"/>
				<parameters>
					<parameter name="publisher" type="InfLocalPublisher*"/>
					<parameter name="type" type="gchar*"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="port" type="guint"/>
				</parameters>
			</vfunc>
			<vfunc name="unpublish">
				<return-type type="void"/>
				<parameters>
					<parameter name="publisher" type="InfLocalPublisher*"/>
					<parameter name="item" type="InfLocalPublisherItem*"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfXmlConnection" type-name="InfXmlConnection" get-type="inf_xml_connection_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="close" symbol="inf_xml_connection_close">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<method name="error" symbol="inf_xml_connection_error">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="error" type="GError*"/>
				</parameters>
			</method>
			<method name="open" symbol="inf_xml_connection_open">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="received" symbol="inf_xml_connection_received">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="send" symbol="inf_xml_connection_send">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<method name="sent" symbol="inf_xml_connection_sent">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</method>
			<property name="local-id" type="char*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="network" type="char*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="remote-id" type="char*" readable="1" writable="0" construct="0" construct-only="0"/>
			<property name="status" type="InfXmlConnectionStatus" readable="1" writable="0" construct="0" construct-only="0"/>
			<signal name="error" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="error" type="gpointer"/>
				</parameters>
			</signal>
			<signal name="received" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="gpointer"/>
				</parameters>
			</signal>
			<signal name="sent" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="gpointer"/>
				</parameters>
			</signal>
			<vfunc name="close">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</vfunc>
			<vfunc name="open">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
			<vfunc name="send">
				<return-type type="void"/>
				<parameters>
					<parameter name="connection" type="InfXmlConnection*"/>
					<parameter name="xml" type="xmlNode*"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfdStorage" type-name="InfdStorage" get-type="infd_storage_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="create_subdirectory" symbol="infd_storage_create_subdirectory">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="storage" type="InfdStorage*"/>
					<parameter name="path" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="read_subdirectory" symbol="infd_storage_read_subdirectory">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="storage" type="InfdStorage*"/>
					<parameter name="path" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="remove_node" symbol="infd_storage_remove_node">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="storage" type="InfdStorage*"/>
					<parameter name="identifier" type="gchar*"/>
					<parameter name="path" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<vfunc name="create_subdirectory">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="storage" type="InfdStorage*"/>
					<parameter name="path" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
			<vfunc name="read_subdirectory">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="storage" type="InfdStorage*"/>
					<parameter name="path" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
			<vfunc name="remove_node">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="storage" type="InfdStorage*"/>
					<parameter name="identifier" type="gchar*"/>
					<parameter name="path" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfdXmlServer" type-name="InfdXmlServer" get-type="infd_xml_server_get_type">
			<requires>
				<interface name="GObject"/>
			</requires>
			<method name="close" symbol="infd_xml_server_close">
				<return-type type="void"/>
				<parameters>
					<parameter name="server" type="InfdXmlServer*"/>
				</parameters>
			</method>
			<method name="new_connection" symbol="infd_xml_server_new_connection">
				<return-type type="void"/>
				<parameters>
					<parameter name="server" type="InfdXmlServer*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</method>
			<property name="status" type="InfdXmlServerStatus" readable="1" writable="0" construct="0" construct-only="0"/>
			<signal name="new-connection" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="server" type="InfdXmlServer*"/>
					<parameter name="connection" type="InfXmlConnection*"/>
				</parameters>
			</signal>
			<vfunc name="close">
				<return-type type="void"/>
				<parameters>
					<parameter name="server" type="InfdXmlServer*"/>
				</parameters>
			</vfunc>
		</interface>
		<constant name="LIBINFINITY_HAVE_AVAHI" type="int" value="1"/>
	</namespace>
</api>
