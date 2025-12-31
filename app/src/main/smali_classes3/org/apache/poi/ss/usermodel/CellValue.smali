.class public final Lorg/apache/poi/ss/usermodel/CellValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FALSE:Lorg/apache/poi/ss/usermodel/CellValue;

.field public static final TRUE:Lorg/apache/poi/ss/usermodel/CellValue;


# instance fields
.field private final _booleanValue:Z

.field private final _cellType:Lorg/apache/poi/ss/usermodel/CellType;

.field private final _errorCode:I

.field private final _numberValue:D

.field private final _textValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v7, Lorg/apache/poi/ss/usermodel/CellValue;

    sget-object v8, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object v0, v7

    move-object v1, v8

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Lorg/apache/poi/ss/usermodel/CellType;DZLjava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/CellValue;->TRUE:Lorg/apache/poi/ss/usermodel/CellValue;

    new-instance v7, Lorg/apache/poi/ss/usermodel/CellValue;

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Lorg/apache/poi/ss/usermodel/CellType;DZLjava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/CellValue;->FALSE:Lorg/apache/poi/ss/usermodel/CellValue;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .line 1
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Lorg/apache/poi/ss/usermodel/CellType;DZLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 2
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Lorg/apache/poi/ss/usermodel/CellType;DZLjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/usermodel/CellType;DZLjava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    iput-wide p2, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_numberValue:D

    iput-boolean p4, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_booleanValue:Z

    iput-object p5, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_textValue:Ljava/lang/String;

    iput p6, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_errorCode:I

    return-void
.end method

.method public static getError(I)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 8

    new-instance v7, Lorg/apache/poi/ss/usermodel/CellValue;

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, v7

    move v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Lorg/apache/poi/ss/usermodel/CellType;DZLjava/lang/String;I)V

    return-object v7
.end method

.method public static valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/CellValue;->TRUE:Lorg/apache/poi/ss/usermodel/CellValue;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/CellValue;->FALSE:Lorg/apache/poi/ss/usermodel/CellValue;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public formatAsString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellValue$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_3

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "<error unexpected cell type "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ">"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_errorCode:I

    .line 46
    .line 47
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_booleanValue:Z

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const-string v0, "TRUE"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "FALSE"

    .line 60
    .line 61
    :goto_0
    return-object v0

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "\""

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_textValue:Ljava/lang/String;

    .line 70
    .line 71
    const/16 v2, 0x22

    .line 72
    .line 73
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_4
    iget-wide v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_numberValue:D

    .line 79
    .line 80
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_booleanValue:Z

    return v0
.end method

.method public getCellType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "4.2"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method public getErrorValue()B
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_errorCode:I

    int-to-byte v0, v0

    return v0
.end method

.method public getNumberValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_numberValue:D

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_textValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
