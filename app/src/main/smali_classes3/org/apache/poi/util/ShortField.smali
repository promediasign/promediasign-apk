.class public Lorg/apache/poi/util/ShortField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/FixedField;


# instance fields
.field private final _offset:I

.field private _value:S


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/apache/poi/util/ShortField;->_offset:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Illegal offset: "

    .line 1
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IS)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/poi/util/ShortField;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ShortField;->set(S)V

    return-void
.end method

.method public constructor <init>(IS[B)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/poi/util/ShortField;-><init>(I)V

    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/util/ShortField;->set(S[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/poi/util/ShortField;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ShortField;->readFromBytes([B)V

    return-void
.end method


# virtual methods
.method public get()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/util/ShortField;->_value:S

    return v0
.end method

.method public readFromBytes([B)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/ShortField;->_offset:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/util/ShortField;->_value:S

    return-void
.end method

.method public readFromStream(Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/util/ShortField;->_value:S

    return-void
.end method

.method public set(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lorg/apache/poi/util/ShortField;->_value:S

    return-void
.end method

.method public set(S[B)V
    .locals 0

    .line 2
    iput-short p1, p0, Lorg/apache/poi/util/ShortField;->_value:S

    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ShortField;->writeToBytes([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/util/ShortField;->_value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToBytes([B)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/util/ShortField;->_offset:I

    iget-short v1, p0, Lorg/apache/poi/util/ShortField;->_value:S

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method
