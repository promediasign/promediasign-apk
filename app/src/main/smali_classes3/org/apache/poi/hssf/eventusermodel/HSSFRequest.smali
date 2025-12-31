.class public Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _records:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/eventusermodel/HSSFListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->_records:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addListener(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;S)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->_records:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->_records:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListenerForAllRecords(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V
    .locals 4

    invoke-static {}, Lorg/apache/poi/hssf/record/RecordFactory;->getAllKnownRecordSIDs()[S

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, v0, v2

    invoke-virtual {p0, p1, v3}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->addListener(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;S)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processRecord(Lorg/apache/poi/hssf/record/Record;)S
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->_records:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/hssf/eventusermodel/AbortableHSSFListener;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/apache/poi/hssf/eventusermodel/AbortableHSSFListener;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/eventusermodel/AbortableHSSFListener;->abortableProcessRecord(Lorg/apache/poi/hssf/record/Record;)S

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    check-cast v3, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;

    invoke-interface {v3, p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFListener;->processRecord(Lorg/apache/poi/hssf/record/Record;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method
