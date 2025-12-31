.class abstract Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final C_INDEX_OFFSET:J


# instance fields
.field protected consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->C_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;-><init>()V

    return-void
.end method


# virtual methods
.method public final lvConsumerIndex()J
    .locals 3

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->C_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract synthetic lvProducerIndex()J
.end method

.method public final soConsumerIndex(J)V
    .locals 6

    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method
