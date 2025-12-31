.class public interface abstract Lorg/apache/ftpserver/ssl/SslConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSSLContext()Ljavax/net/ssl/SSLContext;
.end method

.method public abstract getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
.end method
