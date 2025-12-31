.class public Lorg/apache/poi/util/IntegerField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/FixedField;


# instance fields
.field private final _offset:I

.field private _value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/apache/poi/util/IntegerField;->_offset:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "negative offset"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/util/IntegerField;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/IntegerField;->set(I)V

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/util/IntegerField;-><init>(I)V

    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/util/IntegerField;->set(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/util/IntegerField;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/IntegerField;->readFromBytes([B)V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    return v0
.end method

.method public readFromBytes([B)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/IntegerField;->_offset:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    return-void
.end method

.method public readFromStream(Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    return-void
.end method

.method public set(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    return-void
.end method

.method public set(I[B)V
    .locals 0

    .line 2
    iput p1, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/IntegerField;->writeToBytes([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBytes([B)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/util/IntegerField;->_offset:I

    iget v1, p0, Lorg/apache/poi/util/IntegerField;->_value:I

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method
