.class public Lio/milton/http/http11/auth/Nonce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final issued:Ljava/util/Date;

.field private final nonceCount:J

.field private final value:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/auth/Nonce;->value:Ljava/util/UUID;

    iput-object p2, p0, Lio/milton/http/http11/auth/Nonce;->issued:Ljava/util/Date;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lio/milton/http/http11/auth/Nonce;->nonceCount:J

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/Date;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/auth/Nonce;->value:Ljava/util/UUID;

    iput-object p2, p0, Lio/milton/http/http11/auth/Nonce;->issued:Ljava/util/Date;

    iput-wide p3, p0, Lio/milton/http/http11/auth/Nonce;->nonceCount:J

    return-void
.end method


# virtual methods
.method public getIssued()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/Nonce;->issued:Ljava/util/Date;

    return-object v0
.end method

.method public getNonceCount()J
    .locals 2

    iget-wide v0, p0, Lio/milton/http/http11/auth/Nonce;->nonceCount:J

    return-wide v0
.end method

.method public getValue()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/auth/Nonce;->value:Ljava/util/UUID;

    return-object v0
.end method

.method public increaseNonceCount(J)Lio/milton/http/http11/auth/Nonce;
    .locals 3

    new-instance v0, Lio/milton/http/http11/auth/Nonce;

    iget-object v1, p0, Lio/milton/http/http11/auth/Nonce;->value:Ljava/util/UUID;

    iget-object v2, p0, Lio/milton/http/http11/auth/Nonce;->issued:Ljava/util/Date;

    invoke-direct {v0, v1, v2, p1, p2}, Lio/milton/http/http11/auth/Nonce;-><init>(Ljava/util/UUID;Ljava/util/Date;J)V

    return-object v0
.end method
