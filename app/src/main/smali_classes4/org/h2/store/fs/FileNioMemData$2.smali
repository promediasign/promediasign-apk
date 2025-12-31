.class final Lorg/h2/store/fs/FileNioMemData$2;
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
        "[B>;"
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
    invoke-virtual {p0}, Lorg/h2/store/fs/FileNioMemData$2;->initialValue()[B

    move-result-object v0

    return-object v0
.end method

.method public initialValue()[B
    .locals 1

    .line 2
    const/high16 v0, 0x20000

    new-array v0, v0, [B

    return-object v0
.end method
