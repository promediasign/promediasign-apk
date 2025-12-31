.class public Lorg/apache/poi/xssf/XLSBUnsupportedException;
.super Lorg/apache/poi/UnsupportedFileFormatException;
.source "SourceFile"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = ".XLSB Binary Workbooks are not supported"

.field private static final serialVersionUID:J = 0x6cefac02f07b09a7L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ".XLSB Binary Workbooks are not supported"

    invoke-direct {p0, v0}, Lorg/apache/poi/UnsupportedFileFormatException;-><init>(Ljava/lang/String;)V

    return-void
.end method
