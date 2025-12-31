.class public interface abstract Lcom/jcraft/jsch/HostKeyRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract add(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V
.end method

.method public abstract check(Ljava/lang/String;[B)I
.end method

.method public abstract getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;
.end method

.method public abstract getKnownHostsRepositoryID()Ljava/lang/String;
.end method

.method public abstract remove(Ljava/lang/String;Ljava/lang/String;[B)V
.end method
