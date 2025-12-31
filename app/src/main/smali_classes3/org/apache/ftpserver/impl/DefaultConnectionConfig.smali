.class public Lorg/apache/ftpserver/impl/DefaultConnectionConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ConnectionConfig;


# instance fields
.field private anonymousLoginEnabled:Z

.field private loginFailureDelay:I

.field private maxAnonymousLogins:I

.field private maxLoginFailures:I

.field private maxLogins:I

.field private maxThreads:I


# direct methods
.method public constructor <init>(ZIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->anonymousLoginEnabled:Z

    iput p2, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->loginFailureDelay:I

    iput p3, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxLogins:I

    iput p4, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxAnonymousLogins:I

    iput p5, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxLoginFailures:I

    iput p6, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxThreads:I

    return-void
.end method


# virtual methods
.method public getLoginFailureDelay()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->loginFailureDelay:I

    return v0
.end method

.method public getMaxAnonymousLogins()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxAnonymousLogins:I

    return v0
.end method

.method public getMaxLoginFailures()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxLoginFailures:I

    return v0
.end method

.method public getMaxLogins()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxLogins:I

    return v0
.end method

.method public getMaxThreads()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->maxThreads:I

    return v0
.end method

.method public isAnonymousLoginEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultConnectionConfig;->anonymousLoginEnabled:Z

    return v0
.end method
