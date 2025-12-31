.class public final Lcom/dropbox/core/util/IOUtil$ReadException;
.super Lcom/dropbox/core/util/IOUtil$WrappedException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/util/IOUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/core/util/IOUtil$WrappedException;-><init>(Ljava/io/IOException;)V

    return-void
.end method
