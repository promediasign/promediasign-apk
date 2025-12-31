.class public Lorg/h2/result/SimpleRowValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/result/SearchRow;


# instance fields
.field private data:Lorg/h2/value/Value;

.field private index:I

.field private key:J

.field private version:I

.field private final virtualColumnCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/h2/result/SimpleRowValue;->virtualColumnCount:I

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lorg/h2/result/SimpleRowValue;->virtualColumnCount:I

    return v0
.end method

.method public getKey()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/result/SimpleRowValue;->key:J

    return-wide v0
.end method

.method public getMemory()I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/value/Value;->getMemory()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getValue(I)Lorg/h2/value/Value;
    .locals 1

    iget v0, p0, Lorg/h2/result/SimpleRowValue;->index:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/h2/result/SimpleRowValue;->version:I

    return v0
.end method

.method public setKey(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/result/SimpleRowValue;->key:J

    return-void
.end method

.method public setKeyAndVersion(Lorg/h2/result/SearchRow;)V
    .locals 2

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/result/SimpleRowValue;->key:J

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p1

    iput p1, p0, Lorg/h2/result/SimpleRowValue;->version:I

    return-void
.end method

.method public setValue(ILorg/h2/value/Value;)V
    .locals 0

    iput p1, p0, Lorg/h2/result/SimpleRowValue;->index:I

    iput-object p2, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "( /* "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/h2/result/SimpleRowValue;->key:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " */ "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/h2/result/SimpleRowValue;->data:Lorg/h2/value/Value;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "null"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    const-string v2, " )"

    .line 30
    .line 31
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
