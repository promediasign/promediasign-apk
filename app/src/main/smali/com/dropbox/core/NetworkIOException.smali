.class public Lcom/dropbox/core/NetworkIOException;
.super Lcom/dropbox/core/DbxException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    invoke-static {p1}, Lcom/dropbox/core/NetworkIOException;->computeMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static computeMessage(Ljava/io/IOException;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p0, Ljavax/net/ssl/SSLHandshakeException;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    instance-of v1, p0, Ljava/security/cert/CertPathValidatorException;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p0, Ljava/security/cert/CertPathValidatorException;

    .line 18
    .line 19
    const-string v1, "[CERT PATH: "

    .line 20
    .line 21
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getCertPath()Ljava/security/cert/CertPath;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, "]"

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCause()Ljava/io/IOException;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/dropbox/core/NetworkIOException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
