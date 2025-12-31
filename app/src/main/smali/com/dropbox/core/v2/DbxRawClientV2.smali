.class public abstract Lcom/dropbox/core/v2/DbxRawClientV2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;
    }
.end annotation


# static fields
.field private static final JSON:Lcom/fasterxml/jackson/core/JsonFactory;

.field private static final RAND:Ljava/util/Random;


# instance fields
.field private final host:Lcom/dropbox/core/DbxHost;

.field private final requestConfig:Lcom/dropbox/core/DbxRequestConfig;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->JSON:Lcom/fasterxml/jackson/core/JsonFactory;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->RAND:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iput-object p2, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->host:Lcom/dropbox/core/DbxHost;

    iput-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "host"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/dropbox/core/v2/DbxRawClientV2;)Lcom/dropbox/core/DbxRequestConfig;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    return-object p0
.end method

.method private static executeRetriable(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;->execute()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;->execute()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/RetryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    if-ge v0, p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/dropbox/core/RetryException;->getBackoffMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->sleepQuietlyWithJitter(J)V

    goto :goto_0

    :cond_1
    throw v1
.end method

.method private executeRetriableWithRefresh(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/DbxRawClientV2;->executeRetriable(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/dropbox/core/InvalidAccessTokenException;->getAuthError()Lcom/dropbox/core/v2/auth/AuthError;

    move-result-object v1

    sget-object v2, Lcom/dropbox/core/v2/auth/AuthError;->EXPIRED_ACCESS_TOKEN:Lcom/dropbox/core/v2/auth/AuthError;

    invoke-virtual {v2, v1}, Lcom/dropbox/core/v2/auth/AuthError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->canRefreshAccessToken()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->refreshAccessToken()Lcom/dropbox/core/oauth/DbxRefreshResult;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/DbxRawClientV2;->executeRetriable(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    throw v0

    :cond_1
    throw v0
.end method

.method private static headerSafeJson(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    sget-object v1, Lcom/dropbox/core/v2/DbxRawClientV2;->JSON:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Impossible"

    invoke-static {p1, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private refreshAccessTokenIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->needsRefreshAccessToken()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->refreshAccessToken()Lcom/dropbox/core/oauth/DbxRefreshResult;
    :try_end_0
    .catch Lcom/dropbox/core/oauth/DbxOAuthException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/dropbox/core/oauth/DbxOAuthException;->getDbxOAuthError()Lcom/dropbox/core/oauth/DbxOAuthError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/oauth/DbxOAuthError;->getError()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid_grant"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static sleepQuietlyWithJitter(J)V
    .locals 3

    sget-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->RAND:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method private static writeAsBytes(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;TT;)[B"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Impossible"

    invoke-static {p1, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abstract addAuthHeaders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract canRefreshAccessToken()Z
.end method

.method public downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            "ResT:",
            "Ljava/lang/Object;",
            "ErrT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TArgT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TResT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TErrT;>;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "TResT;>;"
        }
    .end annotation

    move-object v9, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez p4, :cond_0

    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->refreshAccessTokenIfNeeded()V

    :cond_0
    iget-object v0, v9, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v3, v0}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/dropbox/core/DbxRequestUtil;->addPathRootHeader(Ljava/util/List;Lcom/dropbox/core/v2/common/PathRoot;)Ljava/util/List;

    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Dropbox-API-Arg"

    move-object v2, p3

    move-object/from16 v4, p6

    invoke-static {v4, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->headerSafeJson(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Content-Type"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    new-array v6, v0, [B

    iget-object v0, v9, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v10

    new-instance v11, Lcom/dropbox/core/v2/DbxRawClientV2$2;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p4

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2$2;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;[BLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V

    iget-object v0, v9, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/dropbox/core/v2/DbxRawClientV2$2;->access$200(Lcom/dropbox/core/v2/DbxRawClientV2$2;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->executeRetriableWithRefresh(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/DbxDownloader;

    return-object v0
.end method

.method public getHost()Lcom/dropbox/core/DbxHost;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->host:Lcom/dropbox/core/DbxHost;

    return-object v0
.end method

.method public getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    return-object v0
.end method

.method public abstract needsRefreshAccessToken()Z
.end method

.method public abstract refreshAccessToken()Lcom/dropbox/core/oauth/DbxRefreshResult;
.end method

.method public rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            "ResT:",
            "Ljava/lang/Object;",
            "ErrT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TArgT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TResT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TErrT;>;)TResT;"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p3

    move-object/from16 v1, p5

    invoke-static {v1, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->writeAsBytes(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)[B

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez p4, :cond_0

    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxRawClientV2;->refreshAccessTokenIfNeeded()V

    :cond_0
    iget-object v0, v9, Lcom/dropbox/core/v2/DbxRawClientV2;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getNotify()Ljava/lang/String;

    move-result-object v0

    move-object v4, p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v9, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v3, v0}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/dropbox/core/DbxRequestUtil;->addPathRootHeader(Ljava/util/List;Lcom/dropbox/core/v2/common/PathRoot;)Ljava/util/List;

    :cond_1
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v10

    new-instance v11, Lcom/dropbox/core/v2/DbxRawClientV2$1;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p4

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2$1;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;[BLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V

    iget-object v0, v9, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/dropbox/core/v2/DbxRawClientV2$1;->access$100(Lcom/dropbox/core/v2/DbxRawClientV2$1;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->executeRetriableWithRefresh(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
