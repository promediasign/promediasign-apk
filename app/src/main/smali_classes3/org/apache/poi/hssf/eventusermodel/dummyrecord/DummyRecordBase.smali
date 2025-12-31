.class abstract Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;
.super Lorg/apache/poi/hssf/record/Record;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRecordSize()I
    .locals 2

    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Cannot serialize a dummy record"

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSid()S
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public serialize(I[B)I
    .locals 0

    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Cannot serialize a dummy record"

    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
