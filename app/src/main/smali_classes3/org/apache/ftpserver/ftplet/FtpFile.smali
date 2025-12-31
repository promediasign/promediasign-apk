.class public interface abstract Lorg/apache/ftpserver/ftplet/FtpFile;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createInputStream(J)Ljava/io/InputStream;
.end method

.method public abstract createOutputStream(J)Ljava/io/OutputStream;
.end method

.method public abstract delete()Z
.end method

.method public abstract doesExist()Z
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public abstract getLastModified()J
.end method

.method public abstract getLinkCount()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOwnerName()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isReadable()Z
.end method

.method public abstract isRemovable()Z
.end method

.method public abstract isWritable()Z
.end method

.method public abstract listFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/FtpFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mkdir()Z
.end method

.method public abstract move(Lorg/apache/ftpserver/ftplet/FtpFile;)Z
.end method

.method public abstract setLastModified(J)Z
.end method
