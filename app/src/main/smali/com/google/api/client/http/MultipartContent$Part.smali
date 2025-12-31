.class public final Lcom/google/api/client/http/MultipartContent$Part;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/MultipartContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field content:Lcom/google/api/client/http/HttpContent;

.field encoding:Lcom/google/api/client/http/HttpEncoding;

.field headers:Lcom/google/api/client/http/HttpHeaders;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpContent;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/api/client/http/MultipartContent$Part;-><init>(Lcom/google/api/client/http/HttpHeaders;Lcom/google/api/client/http/HttpContent;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpHeaders;Lcom/google/api/client/http/HttpContent;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/api/client/http/MultipartContent$Part;->setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/MultipartContent$Part;

    invoke-virtual {p0, p2}, Lcom/google/api/client/http/MultipartContent$Part;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/MultipartContent$Part;

    return-void
.end method


# virtual methods
.method public setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/MultipartContent$Part;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/MultipartContent$Part;->content:Lcom/google/api/client/http/HttpContent;

    return-object p0
.end method

.method public setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/MultipartContent$Part;
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/MultipartContent$Part;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object p0
.end method
