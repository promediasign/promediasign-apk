.class public Lcom/dropbox/core/DbxPKCEManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RAND:Ljava/security/SecureRandom;


# instance fields
.field private codeChallenge:Ljava/lang/String;

.field private codeVerifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxPKCEManager;->RAND:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/dropbox/core/DbxPKCEManager;->generateCodeVerifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/DbxPKCEManager;->codeVerifier:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/core/DbxPKCEManager;->generateCodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/DbxPKCEManager;->codeChallenge:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/DbxPKCEManager;->codeVerifier:Ljava/lang/String;

    invoke-static {p1}, Lcom/dropbox/core/DbxPKCEManager;->generateCodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/DbxPKCEManager;->codeChallenge:Ljava/lang/String;

    return-void
.end method

.method public static generateCodeChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "Impossible"

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/util/StringUtil;->urlSafeBase64Encode([B)Ljava/lang/String;

    move-result-object p0

    const-string v1, "=+$"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public generateCodeVerifier()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/dropbox/core/DbxPKCEManager;->RAND:Ljava/security/SecureRandom;

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeChallenge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxPKCEManager;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeVerifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxPKCEManager;->codeVerifier:Ljava/lang/String;

    return-object v0
.end method

.method public makeTokenRequest(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 7

    .line 1
    const-string v0, "grant_type"

    .line 2
    .line 3
    const-string v1, "authorization_code"

    .line 4
    .line 5
    const-string v2, "code"

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p2}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "locale"

    .line 16
    .line 17
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v0, "client_id"

    .line 21
    .line 22
    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string p3, "code_verifier"

    .line 26
    .line 27
    iget-object v0, p0, Lcom/dropbox/core/DbxPKCEManager;->codeVerifier:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    if-eqz p4, :cond_0

    .line 33
    .line 34
    const-string p3, "redirect_uri"

    .line 35
    .line 36
    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p5}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p2}, Lcom/dropbox/core/DbxRequestUtil;->toParamsArray(Ljava/util/Map;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    new-instance v6, Lcom/dropbox/core/DbxPKCEManager$1;

    .line 48
    .line 49
    invoke-direct {v6, p0}, Lcom/dropbox/core/DbxPKCEManager$1;-><init>(Lcom/dropbox/core/DbxPKCEManager;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "OfficialDropboxJavaSDKv2"

    .line 53
    .line 54
    const-string v3, "oauth2/token"

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    move-object v0, p1

    .line 58
    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/dropbox/core/DbxAuthFinish;

    .line 63
    .line 64
    return-object p1
.end method
