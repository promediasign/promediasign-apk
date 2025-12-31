.class Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellKey"
.end annotation


# instance fields
.field private final _col:I

.field private _hash:I

.field private final _row:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_hash:I

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_row:I

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_col:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_row:I

    iget v2, p1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_row:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_col:I

    iget p1, p1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_col:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_row:I

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_col:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_hash:I

    :cond_0
    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet$CellKey;->_hash:I

    return v0
.end method
