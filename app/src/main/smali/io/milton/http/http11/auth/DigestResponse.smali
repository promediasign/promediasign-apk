.class public Lio/milton/http/http11/auth/DigestResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cnonce:Ljava/lang/String;

.field private final method:Lio/milton/http/Request$Method;

.field private final nc:Ljava/lang/String;

.field private final nonce:Ljava/lang/String;

.field private final qop:Ljava/lang/String;

.field private final realm:Ljava/lang/String;

.field private final responseDigest:Ljava/lang/String;

.field private final uri:Ljava/lang/String;

.field private final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/milton/http/Request$Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/auth/DigestResponse;->method:Lio/milton/http/Request$Method;

    iput-object p2, p0, Lio/milton/http/http11/auth/DigestResponse;->user:Ljava/lang/String;

    iput-object p3, p0, Lio/milton/http/http11/auth/DigestResponse;->realm:Ljava/lang/String;

    iput-object p4, p0, Lio/milton/http/http11/auth/DigestResponse;->nonce:Ljava/lang/String;

    iput-object p5, p0, Lio/milton/http/http11/auth/DigestResponse;->uri:Ljava/lang/String;

    iput-object p6, p0, Lio/milton/http/http11/auth/DigestResponse;->responseDigest:Ljava/lang/String;

    iput-object p7, p0, Lio/milton/http/http11/auth/DigestResponse;->qop:Ljava/lang/String;

    iput-object p8, p0, Lio/milton/http/http11/auth/DigestResponse;->nc:Ljava/lang/String;

    iput-object p9, p0, Lio/milton/http/http11/auth/DigestResponse;->cnonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCnonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestResponse;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lio/milton/http/Request$Method;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestResponse;->method:Lio/milton/http/Request$Method;

    return-object v0
.end method

.method public getNc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestResponse;->nc:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestResponse;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestResponse;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestResponse;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestResponse;->responseDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestResponse;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestResponse;->user:Ljava/lang/String;

    return-object v0
.end method
