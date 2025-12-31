.class public Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;
.super Lorg/apache/commons/compress/archivers/ArchiveException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final format:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "The "

    .line 2
    .line 3
    const-string v1, " doesn\'t support streaming."

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;->format:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
