.class abstract Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueuePrePad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueuePrePad<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected consumerBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected consumerMask:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueuePrePad;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic lvConsumerIndex()J
.end method

.method public abstract synthetic lvProducerIndex()J
.end method
