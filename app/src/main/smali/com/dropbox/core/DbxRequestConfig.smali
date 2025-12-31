.class public Lcom/dropbox/core/DbxRequestConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxRequestConfig$Builder;
    }
.end annotation


# instance fields
.field private final clientIdentifier:Ljava/lang/String;

.field private final httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

.field private final maxRetries:I

.field private final userLocale:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-ltz p4, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig;->clientIdentifier:Ljava/lang/String;

    invoke-static {p2}, Lcom/dropbox/core/DbxRequestConfig;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig;->userLocale:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/DbxRequestConfig;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    iput p4, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxRetries"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "httpRequestor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "clientIdentifier"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/DbxRequestConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "clientIdentifier"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v2, 0x1

    aget-object v2, p0, v2

    array-length v3, p0

    if-ne v3, v1, :cond_3

    const/4 v1, 0x2

    aget-object p0, p0, v1

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dropbox/core/DbxRequestConfig;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getClientIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->clientIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    return-object v0
.end method

.method public getMaxRetries()I
    .locals 1

    iget v0, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    return v0
.end method

.method public getUserLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->userLocale:Ljava/lang/String;

    return-object v0
.end method
