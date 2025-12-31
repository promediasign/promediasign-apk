.class Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->listFiles()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$1;->this$0:Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
