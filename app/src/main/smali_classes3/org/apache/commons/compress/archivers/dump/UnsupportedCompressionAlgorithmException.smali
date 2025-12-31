.class public Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;
.super Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "this file uses an unsupported compression algorithm."

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "this file uses an unsupported compression algorithm: "

    const-string v1, "."

    .line 2
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;)V

    return-void
.end method
