.class Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field baseI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field currentBase:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field currentMaster:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field lastI:Ljava/lang/Long;

.field masterI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;

.field final synthetic val$vmasterI:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;Ljava/util/Iterator;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->this$0:Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->val$vmasterI:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    iget-object p1, p1, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable;->_baseItems:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->baseI:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->masterI:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->baseI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->masterI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->baseI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->baseI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    move-wide v3, v1

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->masterI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->masterI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    cmp-long v0, v3, v1

    if-gtz v0, :cond_7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    cmp-long v6, v1, v3

    if-nez v6, :cond_6

    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    :cond_6
    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentBase:Ljava/util/Map$Entry;

    goto :goto_3

    :cond_7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move-object v0, v5

    :goto_1
    iput-object v5, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->lastI:Ljava/lang/Long;

    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/CombinedIterable$1;->currentMaster:Ljava/util/Map$Entry;

    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :goto_3
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
