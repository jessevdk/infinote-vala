<?xml version="1.0"?>
<api version="1.0">
	<namespace name="InfText">
		<struct name="InfTextBufferIter">
			<method name="get_author" symbol="inf_text_buffer_iter_get_author">
				<return-type type="guint"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</method>
			<method name="get_bytes" symbol="inf_text_buffer_iter_get_bytes">
				<return-type type="gsize"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</method>
			<method name="get_length" symbol="inf_text_buffer_iter_get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</method>
			<method name="get_text" symbol="inf_text_buffer_iter_get_text">
				<return-type type="gpointer"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</method>
			<method name="next" symbol="inf_text_buffer_iter_next">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</method>
			<method name="prev" symbol="inf_text_buffer_iter_prev">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</method>
		</struct>
		<struct name="InfTextChunkIter">
			<method name="get_author" symbol="inf_text_chunk_iter_get_author">
				<return-type type="guint"/>
				<parameters>
					<parameter name="iter" type="InfTextChunkIter*"/>
				</parameters>
			</method>
			<method name="get_bytes" symbol="inf_text_chunk_iter_get_bytes">
				<return-type type="gsize"/>
				<parameters>
					<parameter name="iter" type="InfTextChunkIter*"/>
				</parameters>
			</method>
			<method name="get_length" symbol="inf_text_chunk_iter_get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="iter" type="InfTextChunkIter*"/>
				</parameters>
			</method>
			<method name="get_text" symbol="inf_text_chunk_iter_get_text">
				<return-type type="gconstpointer"/>
				<parameters>
					<parameter name="iter" type="InfTextChunkIter*"/>
				</parameters>
			</method>
			<method name="init" symbol="inf_text_chunk_iter_init">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
					<parameter name="iter" type="InfTextChunkIter*"/>
				</parameters>
			</method>
			<method name="next" symbol="inf_text_chunk_iter_next">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="iter" type="InfTextChunkIter*"/>
				</parameters>
			</method>
			<method name="prev" symbol="inf_text_chunk_iter_prev">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="iter" type="InfTextChunkIter*"/>
				</parameters>
			</method>
			<field name="chunk" type="InfTextChunk*"/>
			<field name="first" type="GSequenceIter*"/>
			<field name="second" type="GSequenceIter*"/>
		</struct>
		<boxed name="InfTextChunk" type-name="InfTextChunk" get-type="inf_text_chunk_get_type">
			<method name="copy" symbol="inf_text_chunk_copy">
				<return-type type="InfTextChunk*"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
				</parameters>
			</method>
			<method name="equal" symbol="inf_text_chunk_equal">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
					<parameter name="other" type="InfTextChunk*"/>
				</parameters>
			</method>
			<method name="erase" symbol="inf_text_chunk_erase">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
					<parameter name="begin" type="guint"/>
					<parameter name="length" type="guint"/>
				</parameters>
			</method>
			<method name="free" symbol="inf_text_chunk_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
				</parameters>
			</method>
			<method name="get_encoding" symbol="inf_text_chunk_get_encoding">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
				</parameters>
			</method>
			<method name="get_length" symbol="inf_text_chunk_get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
				</parameters>
			</method>
			<method name="get_text" symbol="inf_text_chunk_get_text">
				<return-type type="gpointer"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
					<parameter name="length" type="gsize*"/>
				</parameters>
			</method>
			<method name="insert_chunk" symbol="inf_text_chunk_insert_chunk">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
					<parameter name="offset" type="guint"/>
					<parameter name="text" type="InfTextChunk*"/>
				</parameters>
			</method>
			<method name="insert_text" symbol="inf_text_chunk_insert_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
					<parameter name="offset" type="guint"/>
					<parameter name="text" type="gconstpointer"/>
					<parameter name="bytes" type="gsize"/>
					<parameter name="length" type="guint"/>
					<parameter name="author" type="guint"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_chunk_new">
				<return-type type="InfTextChunk*"/>
				<parameters>
					<parameter name="encoding" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="substring" symbol="inf_text_chunk_substring">
				<return-type type="InfTextChunk*"/>
				<parameters>
					<parameter name="self" type="InfTextChunk*"/>
					<parameter name="begin" type="guint"/>
					<parameter name="length" type="guint"/>
				</parameters>
			</method>
		</boxed>
		<enum name="InfTextSessionError">
			<member name="INF_TEXT_SESSION_ERROR_INVALID_HUE" value="0"/>
			<member name="INF_TEXT_SESSION_ERROR_FAILED" value="1"/>
		</enum>
		<object name="InfTextDefaultBuffer" parent="GObject" type-name="InfTextDefaultBuffer" get-type="inf_text_default_buffer_get_type">
			<implements>
				<interface name="InfBuffer"/>
				<interface name="InfTextBuffer"/>
			</implements>
			<constructor name="new" symbol="inf_text_default_buffer_new">
				<return-type type="InfTextDefaultBuffer*"/>
				<parameters>
					<parameter name="encoding" type="gchar*"/>
				</parameters>
			</constructor>
			<property name="encoding" type="char*" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfTextDefaultDeleteOperation" parent="GObject" type-name="InfTextDefaultDeleteOperation" get-type="inf_text_default_delete_operation_get_type">
			<implements>
				<interface name="InfAdoptedOperation"/>
				<interface name="InfTextDeleteOperation"/>
			</implements>
			<method name="get_chunk" symbol="inf_text_default_delete_operation_get_chunk">
				<return-type type="InfTextChunk*"/>
				<parameters>
					<parameter name="operation" type="InfTextDefaultDeleteOperation*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_default_delete_operation_new">
				<return-type type="InfTextDefaultDeleteOperation*"/>
				<parameters>
					<parameter name="position" type="guint"/>
					<parameter name="chunk" type="InfTextChunk*"/>
				</parameters>
			</constructor>
			<property name="chunk" type="InfTextChunk*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="position" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfTextDefaultInsertOperation" parent="GObject" type-name="InfTextDefaultInsertOperation" get-type="inf_text_default_insert_operation_get_type">
			<implements>
				<interface name="InfAdoptedOperation"/>
				<interface name="InfTextInsertOperation"/>
			</implements>
			<method name="get_chunk" symbol="inf_text_default_insert_operation_get_chunk">
				<return-type type="InfTextChunk*"/>
				<parameters>
					<parameter name="operation" type="InfTextDefaultInsertOperation*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_default_insert_operation_new">
				<return-type type="InfTextDefaultInsertOperation*"/>
				<parameters>
					<parameter name="pos" type="guint"/>
					<parameter name="chunk" type="InfTextChunk*"/>
				</parameters>
			</constructor>
			<property name="chunk" type="InfTextChunk*" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="position" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfTextMoveOperation" parent="GObject" type-name="InfTextMoveOperation" get-type="inf_text_move_operation_get_type">
			<implements>
				<interface name="InfAdoptedOperation"/>
			</implements>
			<method name="get_length" symbol="inf_text_move_operation_get_length">
				<return-type type="gint"/>
				<parameters>
					<parameter name="operation" type="InfTextMoveOperation*"/>
				</parameters>
			</method>
			<method name="get_position" symbol="inf_text_move_operation_get_position">
				<return-type type="guint"/>
				<parameters>
					<parameter name="operation" type="InfTextMoveOperation*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_move_operation_new">
				<return-type type="InfTextMoveOperation*"/>
				<parameters>
					<parameter name="position" type="guint"/>
					<parameter name="length" type="gint"/>
				</parameters>
			</constructor>
			<method name="transform_delete" symbol="inf_text_move_operation_transform_delete">
				<return-type type="void"/>
				<parameters>
					<parameter name="delete_position" type="guint"/>
					<parameter name="delete_length" type="guint"/>
					<parameter name="move_position" type="guint*"/>
					<parameter name="move_length" type="gint*"/>
				</parameters>
			</method>
			<method name="transform_insert" symbol="inf_text_move_operation_transform_insert">
				<return-type type="void"/>
				<parameters>
					<parameter name="insert_position" type="guint"/>
					<parameter name="insert_length" type="guint"/>
					<parameter name="move_position" type="guint*"/>
					<parameter name="move_length" type="gint*"/>
					<parameter name="left_gravity" type="gboolean"/>
				</parameters>
			</method>
			<property name="length" type="gint" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="position" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfTextRemoteDeleteOperation" parent="GObject" type-name="InfTextRemoteDeleteOperation" get-type="inf_text_remote_delete_operation_get_type">
			<implements>
				<interface name="InfAdoptedOperation"/>
				<interface name="InfTextDeleteOperation"/>
			</implements>
			<constructor name="new" symbol="inf_text_remote_delete_operation_new">
				<return-type type="InfTextRemoteDeleteOperation*"/>
				<parameters>
					<parameter name="position" type="guint"/>
					<parameter name="length" type="guint"/>
				</parameters>
			</constructor>
			<property name="length" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
			<property name="position" type="guint" readable="1" writable="1" construct="0" construct-only="1"/>
		</object>
		<object name="InfTextSession" parent="InfAdoptedSession" type-name="InfTextSession" get-type="inf_text_session_get_type">
			<implements>
				<interface name="InfCommunicationObject"/>
			</implements>
			<method name="flush_requests_for_user" symbol="inf_text_session_flush_requests_for_user">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfTextSession*"/>
					<parameter name="user" type="InfTextUser*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_session_new">
				<return-type type="InfTextSession*"/>
				<parameters>
					<parameter name="manager" type="InfCommunicationManager*"/>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="io" type="InfIo*"/>
					<parameter name="status" type="InfSessionStatus"/>
					<parameter name="sync_group" type="InfCommunicationGroup*"/>
					<parameter name="sync_connection" type="InfXmlConnection*"/>
				</parameters>
			</constructor>
			<constructor name="new_with_user_table" symbol="inf_text_session_new_with_user_table">
				<return-type type="InfTextSession*"/>
				<parameters>
					<parameter name="manager" type="InfCommunicationManager*"/>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="io" type="InfIo*"/>
					<parameter name="user_table" type="InfUserTable*"/>
					<parameter name="status" type="InfSessionStatus"/>
					<parameter name="sync_group" type="InfCommunicationGroup*"/>
					<parameter name="sync_connection" type="InfXmlConnection*"/>
				</parameters>
			</constructor>
			<method name="set_user_color" symbol="inf_text_session_set_user_color">
				<return-type type="void"/>
				<parameters>
					<parameter name="session" type="InfTextSession*"/>
					<parameter name="user" type="InfTextUser*"/>
					<parameter name="hue" type="gdouble"/>
				</parameters>
			</method>
			<property name="caret-update-interval" type="guint" readable="1" writable="1" construct="1" construct-only="0"/>
		</object>
		<object name="InfTextUndoGrouping" parent="InfAdoptedUndoGrouping" type-name="InfTextUndoGrouping" get-type="inf_text_undo_grouping_get_type">
			<constructor name="new" symbol="inf_text_undo_grouping_new">
				<return-type type="InfTextUndoGrouping*"/>
			</constructor>
		</object>
		<object name="InfTextUser" parent="InfAdoptedUser" type-name="InfTextUser" get-type="inf_text_user_get_type">
			<method name="get_caret_position" symbol="inf_text_user_get_caret_position">
				<return-type type="guint"/>
				<parameters>
					<parameter name="user" type="InfTextUser*"/>
				</parameters>
			</method>
			<method name="get_hue" symbol="inf_text_user_get_hue">
				<return-type type="gdouble"/>
				<parameters>
					<parameter name="user" type="InfTextUser*"/>
				</parameters>
			</method>
			<method name="get_selection_length" symbol="inf_text_user_get_selection_length">
				<return-type type="gint"/>
				<parameters>
					<parameter name="user" type="InfTextUser*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="inf_text_user_new">
				<return-type type="InfTextUser*"/>
				<parameters>
					<parameter name="id" type="guint"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="vector" type="InfAdoptedStateVector*"/>
					<parameter name="hue" type="double"/>
				</parameters>
			</constructor>
			<method name="set_selection" symbol="inf_text_user_set_selection">
				<return-type type="void"/>
				<parameters>
					<parameter name="user" type="InfTextUser*"/>
					<parameter name="position" type="guint"/>
					<parameter name="length" type="gint"/>
					<parameter name="by_request" type="gboolean"/>
				</parameters>
			</method>
			<property name="caret-position" type="guint" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="hue" type="gdouble" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="selection-length" type="gint" readable="1" writable="1" construct="1" construct-only="0"/>
			<signal name="selection-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="user" type="InfTextUser*"/>
					<parameter name="position" type="guint"/>
					<parameter name="length" type="gint"/>
					<parameter name="by_request" type="gboolean"/>
				</parameters>
			</signal>
		</object>
		<interface name="InfTextBuffer" type-name="InfTextBuffer" get-type="inf_text_buffer_get_type">
			<requires>
				<interface name="InfBuffer"/>
				<interface name="GObject"/>
			</requires>
			<method name="create_iter" symbol="inf_text_buffer_create_iter">
				<return-type type="InfTextBufferIter*"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
				</parameters>
			</method>
			<method name="destroy_iter" symbol="inf_text_buffer_destroy_iter">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</method>
			<method name="erase_text" symbol="inf_text_buffer_erase_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="len" type="guint"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="get_encoding" symbol="inf_text_buffer_get_encoding">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
				</parameters>
			</method>
			<method name="get_length" symbol="inf_text_buffer_get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
				</parameters>
			</method>
			<method name="get_slice" symbol="inf_text_buffer_get_slice">
				<return-type type="InfTextChunk*"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="len" type="guint"/>
				</parameters>
			</method>
			<method name="insert_chunk" symbol="inf_text_buffer_insert_chunk">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="chunk" type="InfTextChunk*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="insert_text" symbol="inf_text_buffer_insert_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="text" type="gconstpointer"/>
					<parameter name="bytes" type="gsize"/>
					<parameter name="len" type="guint"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="text_erased" symbol="inf_text_buffer_text_erased">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="chunk" type="InfTextChunk*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<method name="text_inserted" symbol="inf_text_buffer_text_inserted">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="chunk" type="InfTextChunk*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</method>
			<signal name="text-erased" when="FIRST">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="chunk" type="InfTextChunk*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</signal>
			<signal name="text-inserted" when="FIRST">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="chunk" type="InfTextChunk*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</signal>
			<vfunc name="create_iter">
				<return-type type="InfTextBufferIter*"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
				</parameters>
			</vfunc>
			<vfunc name="destroy_iter">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</vfunc>
			<vfunc name="erase_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="len" type="guint"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_encoding">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_slice">
				<return-type type="InfTextChunk*"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="len" type="guint"/>
				</parameters>
			</vfunc>
			<vfunc name="insert_text">
				<return-type type="void"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="pos" type="guint"/>
					<parameter name="chunk" type="InfTextChunk*"/>
					<parameter name="user" type="InfUser*"/>
				</parameters>
			</vfunc>
			<vfunc name="iter_get_author">
				<return-type type="guint"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</vfunc>
			<vfunc name="iter_get_bytes">
				<return-type type="gsize"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</vfunc>
			<vfunc name="iter_get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</vfunc>
			<vfunc name="iter_get_text">
				<return-type type="gpointer"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</vfunc>
			<vfunc name="iter_next">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</vfunc>
			<vfunc name="iter_prev">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="buffer" type="InfTextBuffer*"/>
					<parameter name="iter" type="InfTextBufferIter*"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfTextDeleteOperation" type-name="InfTextDeleteOperation" get-type="inf_text_delete_operation_get_type">
			<requires>
				<interface name="InfAdoptedOperation"/>
				<interface name="GObject"/>
			</requires>
			<method name="get_concurrency_id" symbol="inf_text_delete_operation_get_concurrency_id">
				<return-type type="InfAdoptedConcurrencyId"/>
				<parameters>
					<parameter name="op" type="InfTextDeleteOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="get_length" symbol="inf_text_delete_operation_get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="operation" type="InfTextDeleteOperation*"/>
				</parameters>
			</method>
			<method name="get_position" symbol="inf_text_delete_operation_get_position">
				<return-type type="guint"/>
				<parameters>
					<parameter name="operation" type="InfTextDeleteOperation*"/>
				</parameters>
			</method>
			<method name="need_concurrency_id" symbol="inf_text_delete_operation_need_concurrency_id">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="op" type="InfTextDeleteOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="transform_delete" symbol="inf_text_delete_operation_transform_delete">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfTextDeleteOperation*"/>
					<parameter name="against" type="InfTextDeleteOperation*"/>
					<parameter name="cid" type="InfAdoptedConcurrencyId"/>
				</parameters>
			</method>
			<method name="transform_insert" symbol="inf_text_delete_operation_transform_insert">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfTextDeleteOperation*"/>
					<parameter name="against" type="InfTextInsertOperation*"/>
					<parameter name="cid" type="InfAdoptedConcurrencyId"/>
				</parameters>
			</method>
			<vfunc name="get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="operation" type="InfTextDeleteOperation*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_position">
				<return-type type="guint"/>
				<parameters>
					<parameter name="operation" type="InfTextDeleteOperation*"/>
				</parameters>
			</vfunc>
			<vfunc name="transform_overlap">
				<return-type type="InfTextDeleteOperation*"/>
				<parameters>
					<parameter name="op" type="InfTextDeleteOperation*"/>
					<parameter name="other" type="InfTextDeleteOperation*"/>
					<parameter name="position" type="guint"/>
					<parameter name="begin" type="guint"/>
					<parameter name="other_begin" type="guint"/>
					<parameter name="length" type="guint"/>
				</parameters>
			</vfunc>
			<vfunc name="transform_position">
				<return-type type="InfTextDeleteOperation*"/>
				<parameters>
					<parameter name="op" type="InfTextDeleteOperation*"/>
					<parameter name="position" type="guint"/>
				</parameters>
			</vfunc>
			<vfunc name="transform_split">
				<return-type type="InfAdoptedSplitOperation*"/>
				<parameters>
					<parameter name="op" type="InfTextDeleteOperation*"/>
					<parameter name="split_pos" type="guint"/>
					<parameter name="split_length" type="guint"/>
				</parameters>
			</vfunc>
		</interface>
		<interface name="InfTextInsertOperation" type-name="InfTextInsertOperation" get-type="inf_text_insert_operation_get_type">
			<requires>
				<interface name="InfAdoptedOperation"/>
				<interface name="GObject"/>
			</requires>
			<method name="get_concurrency_id" symbol="inf_text_insert_operation_get_concurrency_id">
				<return-type type="InfAdoptedConcurrencyId"/>
				<parameters>
					<parameter name="op" type="InfTextInsertOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="get_length" symbol="inf_text_insert_operation_get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="operation" type="InfTextInsertOperation*"/>
				</parameters>
			</method>
			<method name="get_position" symbol="inf_text_insert_operation_get_position">
				<return-type type="guint"/>
				<parameters>
					<parameter name="operation" type="InfTextInsertOperation*"/>
				</parameters>
			</method>
			<method name="need_concurrency_id" symbol="inf_text_insert_operation_need_concurrency_id">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="op" type="InfTextInsertOperation*"/>
					<parameter name="against" type="InfAdoptedOperation*"/>
				</parameters>
			</method>
			<method name="transform_delete" symbol="inf_text_insert_operation_transform_delete">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfTextInsertOperation*"/>
					<parameter name="against" type="InfTextDeleteOperation*"/>
					<parameter name="cid" type="InfAdoptedConcurrencyId"/>
				</parameters>
			</method>
			<method name="transform_insert" symbol="inf_text_insert_operation_transform_insert">
				<return-type type="InfAdoptedOperation*"/>
				<parameters>
					<parameter name="operation" type="InfTextInsertOperation*"/>
					<parameter name="against" type="InfTextInsertOperation*"/>
					<parameter name="cid" type="InfAdoptedConcurrencyId"/>
				</parameters>
			</method>
			<vfunc name="get_length">
				<return-type type="guint"/>
				<parameters>
					<parameter name="operation" type="InfTextInsertOperation*"/>
				</parameters>
			</vfunc>
			<vfunc name="get_position">
				<return-type type="guint"/>
				<parameters>
					<parameter name="operation" type="InfTextInsertOperation*"/>
				</parameters>
			</vfunc>
			<vfunc name="transform_position">
				<return-type type="InfTextInsertOperation*"/>
				<parameters>
					<parameter name="op" type="InfTextInsertOperation*"/>
					<parameter name="position" type="guint"/>
				</parameters>
			</vfunc>
		</interface>
	</namespace>
</api>
