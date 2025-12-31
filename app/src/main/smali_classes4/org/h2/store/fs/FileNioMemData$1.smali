.class final Lorg/h2/store/fs/FileNioMemData$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FileNioMemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/h2/compress/CompressLZF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/fs/FileNioMemData$1;->initialValue()Lorg/h2/compress/CompressLZF;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Lorg/h2/compress/CompressLZF;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    return-object v0
.end method
