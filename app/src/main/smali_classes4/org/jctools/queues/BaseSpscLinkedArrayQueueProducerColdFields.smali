.class abstract Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected producerBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected producerBufferLimit:J

.field protected producerMask:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;-><init>()V

    return-void
.end method
