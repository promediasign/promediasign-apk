.class Lcom/hivemq/client/internal/util/Ranges$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/Ranges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field end:I

.field next:Lcom/hivemq/client/internal/util/Ranges$Range;

.field start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    iput p2, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    return-void
.end method

.method public constructor <init>(IILcom/hivemq/client/internal/util/Ranges$Range;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    iput p2, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    iput-object p3, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    return-void
.end method
