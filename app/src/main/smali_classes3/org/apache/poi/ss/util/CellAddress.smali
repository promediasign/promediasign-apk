.class public Lorg/apache/poi/ss/util/CellAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/util/CellAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final A1:Lorg/apache/poi/ss/util/CellAddress;


# instance fields
.field private final _col:I

.field private final _row:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    sput-object v0, Lorg/apache/poi/ss/util/CellAddress;->A1:Lorg/apache/poi/ss/util/CellAddress;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    iput p2, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/util/CellAddress;->compareTo(Lorg/apache/poi/ss/util/CellAddress;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/poi/ss/util/CellAddress;)I
    .locals 2

    .line 2
    iget v0, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    iget v1, p1, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    iget p1, p1, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    sub-int/2addr v0, p1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ss/util/CellAddress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/ss/util/CellAddress;

    iget v1, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    iget v3, p1, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    iget p1, p1, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public formatAsString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/CellAddress;->_row:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellAddress;->_col:I

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
