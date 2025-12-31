.class public Lorg/apache/ftpserver/ConnectionConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private anonymousLoginEnabled:Z

.field private loginFailureDelay:I

.field private maxAnonymousLogins:I

.field private maxLoginFailures:I

.field private maxLogins:I

.field private maxThreads:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLogins:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->anonymousLoginEnabled:Z

    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxAnonymousLogins:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLoginFailures:I

    const/16 v0, 0x1f4

    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->loginFailureDelay:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxThreads:I

    return-void
.end method


# virtual methods
.method public createConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;
    .locals 8

    new-instance v7, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;

    iget-boolean v1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->anonymousLoginEnabled:Z

    iget v2, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->loginFailureDelay:I

    iget v3, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLogins:I

    iget v4, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxAnonymousLogins:I

    iget v5, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLoginFailures:I

    iget v6, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxThreads:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;-><init>(ZIIIII)V

    return-object v7
.end method

.method public getLoginFailureDelay()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->loginFailureDelay:I

    return v0
.end method

.method public getMaxAnonymousLogins()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxAnonymousLogins:I

    return v0
.end method

.method public getMaxLoginFailures()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLoginFailures:I

    return v0
.end method

.method public getMaxLogins()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLogins:I

    return v0
.end method

.method public getMaxThreads()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxThreads:I

    return v0
.end method

.method public isAnonymousLoginEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->anonymousLoginEnabled:Z

    return v0
.end method

.method public setAnonymousLoginEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->anonymousLoginEnabled:Z

    return-void
.end method

.method public setLoginFailureDelay(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->loginFailureDelay:I

    return-void
.end method

.method public setMaxAnonymousLogins(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxAnonymousLogins:I

    return-void
.end method

.method public setMaxLoginFailures(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLoginFailures:I

    return-void
.end method

.method public setMaxLogins(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxLogins:I

    return-void
.end method

.method public setMaxThreads(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/ConnectionConfigFactory;->maxThreads:I

    return-void
.end method
