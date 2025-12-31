.class public interface abstract Lorg/apache/ftpserver/ftplet/UserManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract authenticate(Lorg/apache/ftpserver/ftplet/Authentication;)Lorg/apache/ftpserver/ftplet/User;
.end method

.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract doesExist(Ljava/lang/String;)Z
.end method

.method public abstract getAdminName()Ljava/lang/String;
.end method

.method public abstract getAllUserNames()[Ljava/lang/String;
.end method

.method public abstract getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;
.end method

.method public abstract isAdmin(Ljava/lang/String;)Z
.end method

.method public abstract save(Lorg/apache/ftpserver/ftplet/User;)V
.end method
