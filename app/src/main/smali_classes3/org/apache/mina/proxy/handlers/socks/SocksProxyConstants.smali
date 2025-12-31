.class public Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASIC_AUTH:B = 0x2t

.field public static final BASIC_AUTH_SUBNEGOTIATION_VERSION:B = 0x1t

.field public static final DOMAIN_NAME_ADDRESS_TYPE:B = 0x3t

.field public static final ESTABLISH_TCPIP_BIND:B = 0x2t

.field public static final ESTABLISH_TCPIP_STREAM:B = 0x1t

.field public static final ESTABLISH_UDP_ASSOCIATE:B = 0x3t

.field public static final FAKE_IP:[B

.field public static final GSSAPI_AUTH:B = 0x1t

.field public static final GSSAPI_AUTH_SUBNEGOTIATION_VERSION:B = 0x1t

.field public static final GSSAPI_MSG_TYPE:B = 0x1t

.field public static final IPV4_ADDRESS_TYPE:B = 0x1t

.field public static final IPV6_ADDRESS_TYPE:B = 0x4t

.field public static final KERBEROS_V5_OID:Ljava/lang/String; = "1.2.840.113554.1.2.2"

.field public static final MS_KERBEROS_V5_OID:Ljava/lang/String; = "1.2.840.48018.1.2.2"

.field public static final NO_ACCEPTABLE_AUTH_METHOD:B = -0x1t

.field public static final NO_AUTH:B = 0x0t

.field public static final NTLMSSP_OID:Ljava/lang/String; = "1.3.6.1.4.1.311.2.2.10"

.field public static final SOCKS5_AUTH_STEP:I = 0x1

.field public static final SOCKS5_GREETING_STEP:I = 0x0

.field public static final SOCKS5_REQUEST_STEP:I = 0x2

.field public static final SOCKS_4_RESPONSE_SIZE:I = 0x8

.field public static final SOCKS_VERSION_4:B = 0x4t

.field public static final SOCKS_VERSION_5:B = 0x5t

.field public static final SUPPORTED_AUTH_METHODS:[B

.field public static final TERMINATOR:B = 0x0t

.field public static final V4_REPLY_REQUEST_FAILED_ID_NOT_CONFIRMED:B = 0x5dt

.field public static final V4_REPLY_REQUEST_FAILED_NO_IDENTD:B = 0x5ct

.field public static final V4_REPLY_REQUEST_GRANTED:B = 0x5at

.field public static final V4_REPLY_REQUEST_REJECTED_OR_FAILED:B = 0x5bt

.field public static final V5_REPLY_ADDRESS_TYPE_NOT_SUPPORTED:B = 0x8t

.field public static final V5_REPLY_COMMAND_NOT_SUPPORTED:B = 0x7t

.field public static final V5_REPLY_CONNECTION_REFUSED:B = 0x5t

.field public static final V5_REPLY_GENERAL_FAILURE:B = 0x1t

.field public static final V5_REPLY_HOST_UNREACHABLE:B = 0x4t

.field public static final V5_REPLY_NETWORK_UNREACHABLE:B = 0x3t

.field public static final V5_REPLY_NOT_ALLOWED:B = 0x2t

.field public static final V5_REPLY_SUCCEEDED:B = 0x0t

.field public static final V5_REPLY_TTL_EXPIRED:B = 0x6t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->FAKE_IP:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getReplyCodeAsString(B)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "Unknown reply code"

    return-object p0

    :pswitch_0
    const-string p0, "Request failed because client\'s identd could not confirm the user ID string in the request"

    return-object p0

    :pswitch_1
    const-string p0, "Request failed because client is not running identd (or not reachable from the server)"

    return-object p0

    :pswitch_2
    const-string p0, "Request rejected or failed"

    return-object p0

    :pswitch_3
    const-string p0, "Request granted"

    return-object p0

    :pswitch_4
    const-string p0, "Request failed: address type not supported"

    return-object p0

    :pswitch_5
    const-string p0, "Request failed: command not supported"

    return-object p0

    :pswitch_6
    const-string p0, "Request failed: TTL expired"

    return-object p0

    :pswitch_7
    const-string p0, "Request failed: connection refused"

    return-object p0

    :pswitch_8
    const-string p0, "Request failed: host unreachable"

    return-object p0

    :pswitch_9
    const-string p0, "Request failed: network unreachable"

    return-object p0

    :pswitch_a
    const-string p0, "Request failed: connection not allowed by ruleset"

    return-object p0

    :pswitch_b
    const-string p0, "Request failed: general SOCKS server failure"

    return-object p0

    :pswitch_c
    const-string p0, "Request succeeded"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
