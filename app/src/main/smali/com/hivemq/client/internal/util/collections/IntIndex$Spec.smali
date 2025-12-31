.class public Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/IntIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final keyFunction:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final minCapacity:I

.field final nodeThresholdFactor:F


# direct methods
.method public constructor <init>(Ljava/util/function/ToIntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p0, p1, v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/ToIntFunction;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TE;>;I)V"
        }
    .end annotation

    .line 2
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, p1, p2, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/ToIntFunction;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TE;>;IF)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->keyFunction:Ljava/util/function/ToIntFunction;

    iput p2, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->minCapacity:I

    iput p3, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;->nodeThresholdFactor:F

    return-void
.end method
