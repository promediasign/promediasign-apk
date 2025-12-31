.class final Lorg/apache/poi/hssf/model/InternalSheet$RecordCloner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/model/InternalSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordCloner"
.end annotation


# instance fields
.field private final _destList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet$RecordCloner;->_destList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet$RecordCloner;->_destList:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/Record;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
