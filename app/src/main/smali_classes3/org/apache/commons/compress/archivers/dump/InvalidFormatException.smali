.class public Lorg/apache/commons/compress/archivers/dump/InvalidFormatException;
.super Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected offset:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "there was an error decoding a tape segment"

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;)V

    return-void
.end method
