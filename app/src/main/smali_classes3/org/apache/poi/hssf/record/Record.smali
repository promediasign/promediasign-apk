.class public abstract Lorg/apache/poi/hssf/record/Record;
.super Lorg/apache/poi/hssf/record/RecordBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordBase;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs to define a clone method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->serialize()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 6
    .line 7
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)[Lorg/apache/poi/hssf/record/Record;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    array-length v1, v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    aget-object v0, v0, v1

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "Re-serialised a record to clone it, but got "

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    array-length v0, v0

    .line 40
    const-string v3, " records back!"

    .line 41
    .line 42
    invoke-static {v3, v0, v2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v1
.end method

.method public abstract getSid()S
.end method

.method public final serialize()[B
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hssf/record/RecordBase;->serialize(I[B)I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
