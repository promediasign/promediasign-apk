.class public final Lcom/dropbox/core/DbxRequestConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final clientIdentifier:Ljava/lang/String;

.field private httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

.field private maxRetries:I

.field private userLocale:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->clientIdentifier:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    sget-object p1, Lcom/dropbox/core/http/StandardHttpRequestor;->INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    const/4 p1, 0x0

    iput p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/dropbox/core/DbxRequestConfig$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/DbxRequestConfig;
    .locals 7

    new-instance v6, Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->clientIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    iget v4, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v6
.end method

.method public withHttpRequestor(Lcom/dropbox/core/http/HttpRequestor;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "httpRequestor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
