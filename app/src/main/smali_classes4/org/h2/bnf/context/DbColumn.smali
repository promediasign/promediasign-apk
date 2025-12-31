.class public Lorg/h2/bnf/context/DbColumn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dataType:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private position:I

.field private final quotedName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "COLUMN_NAME"

    .line 5
    .line 6
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/h2/bnf/context/DbColumn;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/h2/bnf/context/DbContents;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/h2/bnf/context/DbColumn;->quotedName:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "TYPE_NAME"

    .line 19
    .line 20
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    const-string v1, "PRECISION"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v1, "COLUMN_SIZE"

    .line 30
    .line 31
    :goto_0
    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v2, "ORDINAL_POSITION"

    .line 36
    .line 37
    invoke-interface {p2, v2}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, p0, Lorg/h2/bnf/context/DbColumn;->position:I

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/h2/bnf/context/DbContents;->isSQLite()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lez v1, :cond_3

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, "("

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p3, :cond_1

    .line 72
    .line 73
    const-string p3, "SCALE"

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const-string p3, "DECIMAL_DIGITS"

    .line 77
    .line 78
    :goto_1
    invoke-interface {p2, p3}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-lez p3, :cond_2

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, ", "

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :cond_2
    const-string p3, ")"

    .line 105
    .line 106
    invoke-static {p1, p3}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_3
    const-string p1, "NULLABLE"

    .line 111
    .line 112
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    const-string p1, " NOT NULL"

    .line 119
    .line 120
    invoke-static {v0, p1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :cond_4
    iput-object v0, p0, Lorg/h2/bnf/context/DbColumn;->dataType:Ljava/lang/String;

    .line 125
    .line 126
    return-void
.end method

.method public static getColumn(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;)Lorg/h2/bnf/context/DbColumn;
    .locals 2

    new-instance v0, Lorg/h2/bnf/context/DbColumn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/bnf/context/DbColumn;-><init>(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;Z)V

    return-object v0
.end method

.method public static getProcedureColumn(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;)Lorg/h2/bnf/context/DbColumn;
    .locals 2

    new-instance v0, Lorg/h2/bnf/context/DbColumn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/bnf/context/DbColumn;-><init>(Lorg/h2/bnf/context/DbContents;Ljava/sql/ResultSet;Z)V

    return-object v0
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/context/DbColumn;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/context/DbColumn;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lorg/h2/bnf/context/DbColumn;->position:I

    return v0
.end method

.method public getQuotedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/context/DbColumn;->quotedName:Ljava/lang/String;

    return-object v0
.end method
