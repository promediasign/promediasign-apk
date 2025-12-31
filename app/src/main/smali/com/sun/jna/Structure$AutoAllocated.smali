.class Lcom/sun/jna/Structure$AutoAllocated;
.super Lcom/sun/jna/Memory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Structure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoAllocated"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-super {p0}, Lcom/sun/jna/Memory;->clear()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auto-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/sun/jna/Memory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
