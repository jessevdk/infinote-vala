/*
 *  Vala/Genie API for the GNU SASL Library (libgsasl.vapi)
 *  Copyright (C) 2010 Arc Riley <arcriley@gmail.com>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser General Public License as published
 *  by the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public License
 *  along with this program; if not, see http://www.gnu.org/licenses
 *
 */

[CCode (cprefix = "gsasl_", cheader_filename = "gsasl.h")]
namespace Gsasl {
  public const string VERSION;
  public const int VERSION_MAJOR;
  public const int VERSION_MINOR;
  public const int VERSION_PATCH;
  public const int VERSION_NUMBER;
  public const int MIN_MECHANISM_SIZE;
  public const int MAX_MECHANISM_SIZE;
  public const string VALID_MECHANISM_CHARACTERS;

  [CCode (cname = "Gsasl_rc")]
  public enum rc {
    OK = 0,
    NEEDS_MORE = 1,
    UNKNOWN_MECHANISM = 2,
    MECHANISM_CALLED_TOO_MANY_TIMES = 3,
    MALLOC_ERROR = 7,
    BASE64_ERROR = 8,
    CRYPTO_ERROR = 9,
    SASLPREP_ERROR = 29,
    MECHANISM_PARSE_ERROR = 30,
    AUTHENTICATION_ERROR = 31,
    INTEGRITY_ERROR = 33,
    NO_CLIENT_CODE = 35,
    NO_SERVER_CODE = 36,
    NO_CALLBACK = 51,
    NO_ANONYMOUS_TOKEN = 52,
    NO_AUTHID = 53,
    NO_AUTHZID = 54,
    NO_PASSWORD = 55,
    NO_PASSCODE = 56,
    NO_PIN = 57,
    NO_SERVICE = 58,
    NO_HOSTNAME = 59,
    /* Mechanism specific errors. */
    GSSAPI_RELEASE_BUFFER_ERROR = 37,
    GSSAPI_IMPORT_NAME_ERROR = 38,
    GSSAPI_INIT_SEC_CONTEXT_ERROR = 39,
    GSSAPI_ACCEPT_SEC_CONTEXT_ERROR = 40,
    GSSAPI_UNWRAP_ERROR = 41,
    GSSAPI_WRAP_ERROR = 42,
    GSSAPI_ACQUIRE_CRED_ERROR = 43,
    GSSAPI_DISPLAY_NAME_ERROR = 44,
    GSSAPI_UNSUPPORTED_PROTECTION_ERROR = 45,
    KERBEROS_V5_INIT_ERROR = 46,
    KERBEROS_V5_INTERNAL_ERROR = 47,
    SHISHI_ERROR = KERBEROS_V5_INTERNAL_ERROR,
    SECURID_SERVER_NEED_ADDITIONAL_PASSCODE = 48,
    SECURID_SERVER_NEED_NEW_PIN = 49
  }

  [CCode (cname = "Gsasl_qop", cprefix = "gsasl_qop_")]
  public enum qop {
    AUTH = 1,
    AUTH_INT = 2,
    AUTH_CONF = 4
  }

  [CCode (cname = "Gsasl_cipher", cprefix = "gsasl_cipher_")]
  public enum cipher {
    DES = 1,
    3DES = 2,
    RC4 = 4,
    RC4_40 = 8,
    RC4_56 = 16,
    AES = 32
  }

  [CCode (cname="Gsasl_saslprep_flags")]
  public enum saslprep_flags {
    ALLOW_UNASSIGNED = 1
  }

  [CCode (cname="Gsasl_property")]
  public enum property {
    AUTHID = 1,
    AUTHZID = 2,
    PASSWORD = 3,
    ANONYMOUS_TOKEN = 4,
    SERVICE = 5,
    HOSTNAME = 6,
    GSSAPI_DISPLAY_NAME = 7,
    PASSCODE = 8,
    SUGGESTED_PIN = 9,
    PIN = 10,
    REALM = 11,
    DIGEST_MD5_HASHED_PASSWORD = 12,
    QOPS = 13,
    QOP = 14,
    SCRAM_ITER = 15,
    SCRAM_SALT = 16,
    SCRAM_SALTED_PASSWORD = 17,
    /* Server validation callback properties. */
    VALIDATE_SIMPLE = 500,
    VALIDATE_EXTERNAL = 501,
    VALIDATE_ANONYMOUS = 502,
    VALIDATE_GSSAPI = 503,
    VALIDATE_SECURID = 504
  }

  [CCode (cname="Gsasl_callback_function", has_target = false)]
  public delegate int callback_function (Gsasl.Context ctx,
                                         Gsasl.Session sctx,    
                                         Gsasl.property prop);

  public string check_version (string req_version);

  [CCode (cname = "Gsasl", destroy_function = "gsasl_done")]
  public struct Context {
    public Context ();
    public void callback_set (Gsasl.callback_function cb);
    public int callback (Gsasl.Session sctx, Gsasl.property prop);

    // Since this is being used by Vala, we assume a GObject will be used
    // for application data inside callbacks.
    public void callback_hook_set (GLib.Object hook);
    public GLib.Object callback_hook_get ( );

    public Gsasl.rc client_mechlist (out string o);
    public bool client_support_p (string mech);
    public string client_suggest_mechanism (string mechlist);
    public Gsasl.rc server_mechlist (out string o);
    public bool server_support_p (string mech);
    public Gsasl.rc client_start (string mech, out Gsasl.Session sctx);
    public Gsasl.rc server_start (string mech, out Gsasl.Session sctx);
  }

  [CCode (cname = "Gsasl_session", destroy_function = "gsasl_finish")]
  public struct Session {

    // Since this is being used by Vala, we assume a GObject will be used
    // for session-specific application data for callbacks.
    [CCode (cname = "gsasl_session_hook_set")]
    public void hook_set (GLib.Object hook);

    [CCode (cname = "gsasl_session_hook_get")]
    public GLib.Object hook_get ( );

    public void property_set (Gsasl.property prop, string data);
    public void property_set_raw (Gsasl.property prop, char[] data);
    public string property_get (Gsasl.property prop);
    public string property_fast (Gsasl.property prop);

    public Gsasl.rc step (char[] input, out char[] output);
    public Gsasl.rc step64 (string b64input, out string b64output);
    public Gsasl.rc encode (char[] input, out char[] output);
    public Gsasl.rc decode (char[] input, out char[] output);
    public string mechanism_name ( );
  }

  public string strerror (int err);
  public string strerror_name (int err);

  public Gsasl.rc saslprep (string in, Gsasl.saslprep_flags flags,
                            out string output, out int stringpreprc);

  public Gsasl.rc simple_getpass (string filename, string username,
                                  out string key);

  public Gsasl.rc base64_to (char[] input, out char[] output);
  public Gsasl.rc base64_from (char[] input, out char[] output);
  public Gsasl.rc nonce (char[] buffer);
  public Gsasl.rc random (char[] buffer);
  public Gsasl.rc md5 (char[] input, out char[] outhash);
  public Gsasl.rc hmac_md5 (char[] key, char[] input, out char[] outhash);
  public Gsasl.rc sha1 (char[] input, out char[] outhash);
  public Gsasl.rc hmac_sha1 (char[] key, char[] input, out char[] outhash);
  public void free (void* pointer);
}
