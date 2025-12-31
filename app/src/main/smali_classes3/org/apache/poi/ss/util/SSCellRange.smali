.class public final Lorg/apache/poi/ss/util/SSCellRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CellRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lorg/apache/poi/ss/usermodel/Cell;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/CellRange<",
        "TK;>;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _firstColumn:I

.field private final _firstRow:I

.field private final _flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final _height:I

.field private final _width:I


# direct methods
.method private constructor <init>(IIII[Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[TK;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstRow:I

    iput p2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstColumn:I

    iput p3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    iput p4, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    invoke-virtual {p5}, [Lorg/apache/poi/ss/usermodel/Cell;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/ss/usermodel/Cell;

    iput-object p1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    return-void
.end method

.method public static create(IIIILjava/util/List;Ljava/lang/Class;)Lorg/apache/poi/ss/util/SSCellRange;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">(IIII",
            "Ljava/util/List<",
            "TB;>;",
            "Ljava/lang/Class<",
            "TB;>;)",
            "Lorg/apache/poi/ss/util/SSCellRange<",
            "TB;>;"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    mul-int v1, p2, p3

    if-ne v1, v0, :cond_0

    invoke-static {p5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Lorg/apache/poi/ss/usermodel/Cell;

    move-object v5, p5

    check-cast v5, [Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {p4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p4, Lorg/apache/poi/ss/util/SSCellRange;

    move-object v0, p4

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/SSCellRange;-><init>(IIII[Lorg/apache/poi/ss/usermodel/Cell;)V

    return-object p4

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array size mismatch."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation

    .line 1
    const-string v0, ")."

    .line 2
    .line 3
    const-string v1, " is outside the allowable range (0.."

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    iget v2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    .line 8
    .line 9
    if-ge p1, v2, :cond_1

    .line 10
    .line 11
    if-ltz p2, :cond_0

    .line 12
    .line 13
    iget v2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    .line 14
    .line 15
    if-ge p2, v2, :cond_0

    .line 16
    .line 17
    mul-int v2, v2, p1

    .line 18
    .line 19
    add-int/2addr v2, p2

    .line 20
    iget-object p1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    .line 21
    .line 22
    aget-object p1, p1, v2

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 26
    .line 27
    const-string v2, "Specified colummn "

    .line 28
    .line 29
    invoke-static {p2, v2, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 52
    .line 53
    const-string v2, "Specified row "

    .line 54
    .line 55
    invoke-static {p1, v2, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    .line 60
    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2
.end method

.method public getCells()[[Lorg/apache/poi/ss/usermodel/Cell;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v1, [[Lorg/apache/poi/ss/usermodel/Cell;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v3, [Lorg/apache/poi/ss/usermodel/Cell;

    iget v4, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    mul-int v5, v4, v2

    iget-object v6, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    const/4 v7, 0x0

    invoke-static {v6, v5, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFlattenedCells()[Lorg/apache/poi/ss/usermodel/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/Cell;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/Cell;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    return v0
.end method

.method public getReferenceText()Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstRow:I

    iget v2, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/poi/ss/util/SSCellRange;->_firstColumn:I

    iget v4, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopLeftCell()Lorg/apache/poi/ss/usermodel/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;

    iget-object v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_flattenedArray:[Lorg/apache/poi/ss/usermodel/Cell;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange;->_height:I

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange;->_width:I

    mul-int v0, v0, v1

    return v0
.end method
