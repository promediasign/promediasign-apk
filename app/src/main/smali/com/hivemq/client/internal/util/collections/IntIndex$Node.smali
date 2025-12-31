.class Lcom/hivemq/client/internal/util/collections/IntIndex$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/collections/IntIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field final key:I

.field next:Ljava/lang/Object;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->key:I

    iput-object p2, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->value:Ljava/lang/Object;

    iput-object p3, p0, Lcom/hivemq/client/internal/util/collections/IntIndex$Node;->next:Ljava/lang/Object;

    return-void
.end method
