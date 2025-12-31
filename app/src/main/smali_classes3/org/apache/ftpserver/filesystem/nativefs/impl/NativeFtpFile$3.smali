.class Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$3;
.super Ljava/io/FileInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->createInputStream(J)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

.field final synthetic val$raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;Ljava/io/FileDescriptor;Ljava/io/RandomAccessFile;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$3;->this$0:Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iput-object p3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$3;->val$raf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$3;->val$raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
