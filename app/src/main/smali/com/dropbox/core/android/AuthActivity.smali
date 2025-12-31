.class public Lcom/dropbox/core/android/AuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;,
        Lcom/dropbox/core/android/AuthActivity$TokenType;,
        Lcom/dropbox/core/android/AuthActivity$SecurityProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.dropbox.core.android.AuthActivity"

.field public static result:Landroid/content/Intent;

.field private static sAlreadyAuthedUids:[Ljava/lang/String;

.field private static sApiType:Ljava/lang/String;

.field private static sAppKey:Ljava/lang/String;

.field private static sDesiredUid:Ljava/lang/String;

.field private static sHost:Lcom/dropbox/core/DbxHost;

.field private static sIncludeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

.field private static sRequestConfig:Lcom/dropbox/core/DbxRequestConfig;

.field private static sScope:Ljava/lang/String;

.field private static sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

.field private static final sSecurityProviderLock:Ljava/lang/Object;

.field private static sSessionId:Ljava/lang/String;

.field private static sTokenAccessType:Lcom/dropbox/core/TokenAccessType;


# instance fields
.field private mActivityDispatchHandlerPosted:Z

.field private mAlreadyAuthedUids:[Ljava/lang/String;

.field private mApiType:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mAuthStateNonce:Ljava/lang/String;

.field private mDesiredUid:Ljava/lang/String;

.field private mHost:Lcom/dropbox/core/DbxHost;

.field private mIncludeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

.field private mPKCEManager:Lcom/dropbox/core/DbxPKCEManager;

.field private mRequestConfig:Lcom/dropbox/core/DbxRequestConfig;

.field private mScope:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;

.field private mTokenAccessType:Lcom/dropbox/core/TokenAccessType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/android/AuthActivity$1;

    invoke-direct {v0}, Lcom/dropbox/core/android/AuthActivity$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/android/AuthActivity;->mActivityDispatchHandlerPosted:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/core/android/AuthActivity;->startWebAuth(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/DbxRequestConfig;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/android/AuthActivity;->mRequestConfig:Lcom/dropbox/core/DbxRequestConfig;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/dropbox/core/android/AuthActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/DbxHost;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/android/AuthActivity;->mHost:Lcom/dropbox/core/DbxHost;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/DbxPKCEManager;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/android/AuthActivity;->mPKCEManager:Lcom/dropbox/core/DbxPKCEManager;

    return-object p0
.end method

.method private authFinished(Landroid/content/Intent;)V
    .locals 0

    sput-object p1, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    invoke-static {p1, p1, p1}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private createExtraQueryParams()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mTokenAccessType:Lcom/dropbox/core/TokenAccessType;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mPKCEManager:Lcom/dropbox/core/DbxPKCEManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/dropbox/core/DbxPKCEManager;->getCodeChallenge()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mTokenAccessType:Lcom/dropbox/core/TokenAccessType;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/dropbox/core/TokenAccessType;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "code_challenge="

    .line 20
    .line 21
    const-string v3, "&code_challenge_method=S256&token_access_type="

    .line 22
    .line 23
    const-string v4, "&response_type=code"

    .line 24
    .line 25
    invoke-static {v2, v0, v3, v1, v4}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mScope:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "&scope="

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mIncludeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mIncludeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/dropbox/core/IncludeGrantedScopes;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "&include_granted_scopes="

    .line 68
    .line 69
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_1
    return-object v0

    .line 87
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v1, "Extra Query Param should only be used in short live token flow."

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0
.end method

.method private createPKCEStateNonce()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mPKCEManager:Lcom/dropbox/core/DbxPKCEManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/dropbox/core/DbxPKCEManager;->getCodeChallenge()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mTokenAccessType:Lcom/dropbox/core/TokenAccessType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/dropbox/core/TokenAccessType;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "oauth2code:"

    .line 16
    .line 17
    const-string v3, ":S256:"

    .line 18
    .line 19
    invoke-static {v2, v0, v3, v1}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mScope:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, ":"

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mScope:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mIncludeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mIncludeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/dropbox/core/IncludeGrantedScopes;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_1
    return-object v0
.end method

.method private createStateNonce()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "oauth2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "%02x"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v5, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOfficialAuthIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dropbox.android.AUTHENTICATE_V2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.dropbox.android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getSecurityProvider()Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dropbox/core/android/AuthActivity$SecurityProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method private static getSecurityProvider()Lcom/dropbox/core/android/AuthActivity$SecurityProvider;
    .locals 2

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dropbox/core/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v10}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/TokenAccessType;Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;)V

    return-void
.end method

.method public static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/TokenAccessType;Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->sAppKey:Ljava/lang/String;

    sput-object p1, Lcom/dropbox/core/android/AuthActivity;->sDesiredUid:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p2, p0, [Ljava/lang/String;

    :goto_0
    sput-object p2, Lcom/dropbox/core/android/AuthActivity;->sAlreadyAuthedUids:[Ljava/lang/String;

    sput-object p3, Lcom/dropbox/core/android/AuthActivity;->sSessionId:Ljava/lang/String;

    sput-object p5, Lcom/dropbox/core/android/AuthActivity;->sApiType:Ljava/lang/String;

    sput-object p6, Lcom/dropbox/core/android/AuthActivity;->sTokenAccessType:Lcom/dropbox/core/TokenAccessType;

    sput-object p7, Lcom/dropbox/core/android/AuthActivity;->sRequestConfig:Lcom/dropbox/core/DbxRequestConfig;

    if-eqz p8, :cond_1

    sput-object p8, Lcom/dropbox/core/android/AuthActivity;->sHost:Lcom/dropbox/core/DbxHost;

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    new-instance p0, Lcom/dropbox/core/DbxHost;

    sget-object p1, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/dropbox/core/DbxHost;->getNotify()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/dropbox/core/DbxHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->sHost:Lcom/dropbox/core/DbxHost;

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    goto :goto_1

    :goto_2
    sput-object p9, Lcom/dropbox/core/android/AuthActivity;->sScope:Ljava/lang/String;

    sput-object p10, Lcom/dropbox/core/android/AuthActivity;->sIncludeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

    return-void
.end method

.method private startWebAuth(Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    if-lez v2, :cond_0

    aget-object v0, v0, v3

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const-string v0, "0"

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/android/AuthActivity;->mApiType:Ljava/lang/String;

    const-string v10, "state"

    const-string v4, "k"

    const-string v6, "n"

    const-string v8, "api"

    move-object v11, p1

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->mTokenAccessType:Lcom/dropbox/core/TokenAccessType;

    if-eqz p1, :cond_1

    const-string p1, "extra_query_params"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity;->createExtraQueryParams()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mHost:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getWeb()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "1/connect"

    invoke-static {p1, v1, v2, v0}, Lcom/dropbox/core/DbxRequestUtil;->buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sAppKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sApiType:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mApiType:Ljava/lang/String;

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sDesiredUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mDesiredUid:Ljava/lang/String;

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sAlreadyAuthedUids:[Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mSessionId:Ljava/lang/String;

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sTokenAccessType:Lcom/dropbox/core/TokenAccessType;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mTokenAccessType:Lcom/dropbox/core/TokenAccessType;

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sRequestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mRequestConfig:Lcom/dropbox/core/DbxRequestConfig;

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sHost:Lcom/dropbox/core/DbxHost;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mHost:Lcom/dropbox/core/DbxHost;

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sScope:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mScope:Ljava/lang/String;

    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sIncludeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mIncludeGrantedScopes:Lcom/dropbox/core/IncludeGrantedScopes;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    new-instance v0, Lcom/dropbox/core/DbxPKCEManager;

    invoke-direct {v0}, Lcom/dropbox/core/DbxPKCEManager;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mPKCEManager:Lcom/dropbox/core/DbxPKCEManager;

    goto :goto_1

    :cond_0
    const-string v0, "SIS_KEY_AUTH_STATE_NONCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    new-instance v0, Lcom/dropbox/core/DbxPKCEManager;

    const-string v1, "SIS_KEY_PKCE_CODE_VERIFIER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/core/DbxPKCEManager;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    const v0, 0x1030010

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 9

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "ACCESS_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "UID"

    const-string v4, "ACCESS_SECRET"

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AUTH_STATE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/connect"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "oauth_token"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v5, "oauth_token_secret"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v6, "uid"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v7, "state"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_1

    :catch_1
    nop

    move-object v6, v1

    goto :goto_1

    :catch_2
    nop

    move-object v5, v1

    :goto_0
    move-object v6, v5

    goto :goto_1

    :catch_3
    nop

    move-object v2, v1

    move-object v5, v2

    goto :goto_0

    :goto_1
    move-object p1, v1

    goto :goto_2

    :cond_2
    move-object p1, v1

    move-object v2, p1

    move-object v5, v2

    move-object v6, v5

    :goto_2
    if-eqz v2, :cond_6

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v1}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    return-void

    :cond_3
    sget-object p1, Lcom/dropbox/core/android/AuthActivity$TokenType;->OAUTH2:Lcom/dropbox/core/android/AuthActivity$TokenType;

    invoke-virtual {p1}, Lcom/dropbox/core/android/AuthActivity$TokenType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/dropbox/core/android/AuthActivity$TokenType;->OAUTH2CODE:Lcom/dropbox/core/android/AuthActivity$TokenType;

    invoke-virtual {p1}, Lcom/dropbox/core/android/AuthActivity$TokenType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;

    invoke-direct {p1, p0, v5, v1}, Lcom/dropbox/core/android/AuthActivity$TokenRequestAsyncTask;-><init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;Lcom/dropbox/core/android/AuthActivity$1;)V

    const/4 v2, 0x0

    :try_start_4
    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/DbxAuthFinish;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/dropbox/core/DbxAuthFinish;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxAuthFinish;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "REFRESH_TOKEN"

    invoke-virtual {p1}, Lcom/dropbox/core/DbxAuthFinish;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXPIRES_AT"

    invoke-virtual {p1}, Lcom/dropbox/core/DbxAuthFinish;->getExpiresAt()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/dropbox/core/DbxAuthFinish;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CONSUMER_KEY"

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SCOPE"

    invoke-virtual {p1}, Lcom/dropbox/core/DbxAuthFinish;->getScope()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v1, v2

    :catch_4
    :cond_6
    :goto_3
    invoke-direct {p0, v1}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->onTopResumedActivityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SIS_KEY_AUTH_STATE_NONCE"

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mPKCEManager:Lcom/dropbox/core/DbxPKCEManager;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxPKCEManager;->getCodeVerifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIS_KEY_PKCE_CODE_VERIFIER"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/dropbox/core/android/AuthActivity;->mActivityDispatchHandlerPosted:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    const-string v0, "onResume called again before Handler run"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getOfficialAuthIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mTokenAccessType:Lcom/dropbox/core/TokenAccessType;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity;->createPKCEStateNonce()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTH_QUERY_PARAMS"

    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity;->createExtraQueryParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity;->createStateNonce()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "CONSUMER_KEY"

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CONSUMER_SIG"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CALLING_PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CALLING_CLASS"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "AUTH_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DESIRED_UID"

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity;->mDesiredUid:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ALREADY_AUTHED_UIDS"

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SESSION_ID"

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/dropbox/core/android/AuthActivity$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/dropbox/core/android/AuthActivity$3;-><init>(Lcom/dropbox/core/android/AuthActivity;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/android/AuthActivity;->mActivityDispatchHandlerPosted:Z

    return-void

    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    return-void
.end method
