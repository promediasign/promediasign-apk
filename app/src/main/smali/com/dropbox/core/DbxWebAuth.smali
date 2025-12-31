.class public Lcom/dropbox/core/DbxWebAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxWebAuth$Request;,
        Lcom/dropbox/core/DbxWebAuth$ProviderException;,
        Lcom/dropbox/core/DbxWebAuth$NotApprovedException;,
        Lcom/dropbox/core/DbxWebAuth$CsrfException;,
        Lcom/dropbox/core/DbxWebAuth$BadStateException;,
        Lcom/dropbox/core/DbxWebAuth$BadRequestException;,
        Lcom/dropbox/core/DbxWebAuth$Exception;
    }
.end annotation


# static fields
.field private static final CSRF_STRING_SIZE:I

.field private static final RAND:Ljava/security/SecureRandom;


# instance fields
.field final appInfo:Lcom/dropbox/core/DbxAppInfo;

.field final deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

.field final requestConfig:Lcom/dropbox/core/DbxRequestConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxWebAuth;->RAND:Ljava/security/SecureRandom;

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->urlSafeBase64Encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "appInfo"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static appendCsrfToken(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sget-object v1, Lcom/dropbox/core/DbxWebAuth;->RAND:Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->urlSafeBase64Encode([B)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sget v2, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    .line 19
    .line 20
    if-ne v1, v2, :cond_3

    .line 21
    .line 22
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->access$700(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->access$700(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1, v0}, Lcom/dropbox/core/DbxSessionStore;->set(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->access$800(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->access$800(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0x1f4

    .line 62
    .line 63
    if-gt v0, v1, :cond_2

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "unexpected combined state length: "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v2, "unexpected CSRF token length: "

    .line 95
    .line 96
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    throw p0
.end method

.method private authorizeImpl(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/DbxWebAuth;->authorizeImpl(Lcom/dropbox/core/DbxWebAuth$Request;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, [Ljava/lang/String;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    array-length v0, p0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    array-length v0, p0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    aget-object p0, p0, p1

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    .line 23
    .line 24
    const-string v0, "multiple occurrences of \""

    .line 25
    .line 26
    const-string v1, "\" parameter"

    .line 27
    .line 28
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "Parameter \""

    .line 39
    .line 40
    const-string v1, "\" missing value."

    .line 41
    .line 42
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static newRequestBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 1

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth$Request;->newBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static validateRedirectUri(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/DbxSessionStore;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_d

    .line 2
    .line 3
    if-eqz p1, :cond_c

    .line 4
    .line 5
    if-eqz p2, :cond_b

    .line 6
    .line 7
    const-string p0, "state"

    .line 8
    .line 9
    invoke-static {p2, p0}, Lcom/dropbox/core/DbxWebAuth;->getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_a

    .line 14
    .line 15
    const-string v0, "error"

    .line 16
    .line 17
    invoke-static {p2, v0}, Lcom/dropbox/core/DbxWebAuth;->getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "code"

    .line 22
    .line 23
    invoke-static {p2, v1}, Lcom/dropbox/core/DbxWebAuth;->getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "error_description"

    .line 28
    .line 29
    invoke-static {p2, v2}, Lcom/dropbox/core/DbxWebAuth;->getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    .line 39
    .line 40
    const-string p1, "Missing both \"code\" and \"error\"."

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    .line 52
    .line 53
    const-string p1, "Both \"code\" and \"error\" are set."

    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 60
    .line 61
    if-nez p2, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    .line 65
    .line 66
    const-string p1, "Both \"code\" and \"error_description\" are set."

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_5
    :goto_2
    invoke-static {p0, p1}, Lcom/dropbox/core/DbxWebAuth;->verifyAndStripCsrfToken(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz v0, :cond_9

    .line 77
    .line 78
    const-string p0, "access_denied"

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_7

    .line 85
    .line 86
    if-nez p2, :cond_6

    .line 87
    .line 88
    const-string p0, "No additional description from Dropbox"

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    const-string p0, "Additional description from Dropbox: "

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    :goto_3
    new-instance p1, Lcom/dropbox/core/DbxWebAuth$NotApprovedException;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcom/dropbox/core/DbxWebAuth$NotApprovedException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_7
    if-nez p2, :cond_8

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_8
    const-string p0, ": "

    .line 107
    .line 108
    invoke-static {v0, p0, p2}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :goto_4
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$ProviderException;

    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/dropbox/core/DbxWebAuth$ProviderException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_9
    return-object p0

    .line 119
    :cond_a
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    .line 120
    .line 121
    const-string p1, "Missing required parameter: \"state\"."

    .line 122
    .line 123
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    .line 128
    .line 129
    const-string p1, "params"

    .line 130
    .line 131
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    .line 136
    .line 137
    const-string p1, "sessionStore"

    .line 138
    .line 139
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    .line 144
    .line 145
    const-string p1, "redirectUri"

    .line 146
    .line 147
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0
.end method

.method private static verifyAndStripCsrfToken(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Lcom/dropbox/core/DbxSessionStore;->get()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dropbox/core/util/StringUtil;->secureStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/dropbox/core/DbxSessionStore;->clear()V

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$CsrfException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "expecting "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$CsrfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Lcom/dropbox/core/DbxWebAuth$CsrfException;

    const-string v0, "Token too small: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/dropbox/core/DbxWebAuth$CsrfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadStateException;

    const-string p1, "Token retrieved from session store is too small: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/dropbox/core/DbxWebAuth$BadStateException;

    const-string p1, "No CSRF Token loaded from session store."

    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth$BadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public authorize(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxAppInfo;->hasSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth;->authorizeImpl(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "For native apps, please use DbxPKCEWebAuth"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must create this instance using DbxWebAuth(DbxRequestConfig,DbxAppInfo) to call this method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authorizeImpl(Lcom/dropbox/core/DbxWebAuth$Request;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxWebAuth$Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v1}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response_type"

    const-string v2, "code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$000(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "redirect_uri"

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$000(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth;->appendCsrfToken(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$100(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "require_role"

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$100(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$200(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$200(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "force_reapprove"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$300(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$300(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disable_signup"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$400(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/TokenAccessType;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$400(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/TokenAccessType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/TokenAccessType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token_access_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$500(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "scope"

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$500(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$600(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/IncludeGrantedScopes;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$600(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/IncludeGrantedScopes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dropbox/core/IncludeGrantedScopes;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "include_granted_scopes"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {p2}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dropbox/core/DbxHost;->getWeb()Ljava/lang/String;

    move-result-object p2

    const-string v1, "oauth2/authorize"

    invoke-static {v0}, Lcom/dropbox/core/DbxRequestUtil;->toParamsArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v1, v0}, Lcom/dropbox/core/DbxRequestUtil;->buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public finish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 8

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/dropbox/core/DbxAppInfo;->hasSecret()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const-string v1, "grant_type"

    .line 14
    .line 15
    const-string v2, "authorization_code"

    .line 16
    .line 17
    invoke-static {v1, v2, v0, p1}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "locale"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    const-string v0, "redirect_uri"

    .line 35
    .line 36
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/dropbox/core/DbxAppInfo;->getSecret()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v6, p2, v0}, Lcom/dropbox/core/DbxRequestUtil;->addBasicAuthHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->toParamsArray(Ljava/util/Map;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    new-instance v7, Lcom/dropbox/core/DbxWebAuth$1;

    .line 76
    .line 77
    invoke-direct {v7, p0, p3}, Lcom/dropbox/core/DbxWebAuth$1;-><init>(Lcom/dropbox/core/DbxWebAuth;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "OfficialDropboxJavaSDKv2"

    .line 81
    .line 82
    const-string v4, "oauth2/token"

    .line 83
    .line 84
    invoke-static/range {v1 .. v7}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/dropbox/core/DbxAuthFinish;

    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string p2, "For native apps, please use DbxPKCEWebAuth"

    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method

.method public finishFromRedirect(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/DbxSessionStore;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/DbxAuthFinish;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/dropbox/core/DbxWebAuth;->validateRedirectUri(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "code"

    invoke-static {p3, v0}, Lcom/dropbox/core/DbxWebAuth;->getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/dropbox/core/DbxWebAuth;->finish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p1

    return-object p1
.end method
