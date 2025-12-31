.class public Lorg/h2/tools/SimpleResultSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/sql/ResultSet;
.implements Ljava/sql/ResultSetMetaData;
.implements Lorg/h2/jdbc/JdbcResultSetBackwardsCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/tools/SimpleResultSet$SimpleArray;,
        Lorg/h2/tools/SimpleResultSet$Column;
    }
.end annotation


# instance fields
.field private autoClose:Z

.field private columns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/tools/SimpleResultSet$Column;",
            ">;"
        }
    .end annotation
.end field

.field private currentRow:[Ljava/lang/Object;

.field private rowId:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lorg/h2/tools/SimpleRowSource;

.field private wasNull:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/tools/SimpleResultSet;->autoClose:Z

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->rows:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/h2/tools/SimpleRowSource;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/tools/SimpleResultSet;->autoClose:Z

    iput-object p1, p0, Lorg/h2/tools/SimpleResultSet;->source:Lorg/h2/tools/SimpleRowSource;

    return-void
.end method

.method private static asInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/sql/Blob;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/sql/Blob;

    invoke-interface {p0}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method private static asReader(Ljava/lang/Object;)Ljava/io/Reader;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/sql/Clob;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/sql/Clob;

    invoke-interface {p0}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, Ljava/io/Reader;

    return-object p0
.end method

.method private checkColumnIndex(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "columnIndex"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->currentRow:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->checkColumnIndex(I)V

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->currentRow:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/h2/tools/SimpleResultSet;->wasNull:Z

    return-object p1

    :cond_2
    const/16 p1, 0x7d0

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private getColumn(I)Lorg/h2/tools/SimpleResultSet$Column;
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/h2/tools/SimpleResultSet;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/tools/SimpleResultSet$Column;

    return-object p1
.end method

.method public static getUnsupportedException()Ljava/sql/SQLException;
    .locals 1

    const v0, 0xc3b4

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v0

    return-object v0
.end method

.method private update(ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->currentRow:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v0, p1

    return-void
.end method

.method private update(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->currentRow:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v0, p1

    return-void
.end method


# virtual methods
.method public absolute(I)Z
    .locals 0

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public addColumn(Ljava/lang/String;III)V
    .locals 7

    .line 1
    invoke-static {p2}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(I)I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    iget-object v4, v0, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method public addColumn(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->rows:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add a column after adding rows"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "C"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v0, Lorg/h2/tools/SimpleResultSet$Column;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet$Column;-><init>()V

    iput-object p1, v0, Lorg/h2/tools/SimpleResultSet$Column;->name:Ljava/lang/String;

    iput p2, v0, Lorg/h2/tools/SimpleResultSet$Column;->sqlType:I

    iput p4, v0, Lorg/h2/tools/SimpleResultSet$Column;->precision:I

    iput p5, v0, Lorg/h2/tools/SimpleResultSet$Column;->scale:I

    iput-object p3, v0, Lorg/h2/tools/SimpleResultSet$Column;->sqlTypeName:Ljava/lang/String;

    iget-object p1, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addRow([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->rows:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add a row when using RowSource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public afterLast()V
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public beforeFirst()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/tools/SimpleResultSet;->autoClose:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->source:Lorg/h2/tools/SimpleRowSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/tools/SimpleRowSource;->reset()V

    :cond_0
    return-void

    :cond_1
    const v0, 0x16010

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public cancelRowUpdates()V
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public clearWarnings()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->currentRow:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->rows:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    iget-object v1, p0, Lorg/h2/tools/SimpleResultSet;->source:Lorg/h2/tools/SimpleRowSource;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/h2/tools/SimpleRowSource;->close()V

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->source:Lorg/h2/tools/SimpleRowSource;

    :cond_0
    return-void
.end method

.method public deleteRow()V
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lorg/h2/tools/SimpleResultSet;->getColumn(I)Lorg/h2/tools/SimpleResultSet$Column;

    move-result-object v2

    iget-object v2, v2, Lorg/h2/tools/SimpleResultSet$Column;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_0

    return v1

    :cond_1
    const v0, 0xa48a

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public first()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/tools/SimpleResultSet$SimpleArray;

    invoke-direct {v0, p1}, Lorg/h2/tools/SimpleResultSet$SimpleArray;-><init>([Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    return-object p1
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getAutoClose()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/tools/SimpleResultSet;->autoClose:Z

    return v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/tools/SimpleResultSet;->asInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Blob;

    return-object p1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    :goto_0
    return p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(I)[B
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/h2/util/JdbcUtils;->serialize(Ljava/lang/Object;Lorg/h2/store/DataHandler;)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    check-cast p1, [B

    return-object p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getCatalogName(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/tools/SimpleResultSet;->asReader(Ljava/lang/Object;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Clob;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    return-object p1
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result p1

    invoke-static {p1}, Lorg/h2/value/DataType;->getTypeClassName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getColumnDisplaySize(I)I
    .locals 0

    const/16 p1, 0xf

    return p1
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getColumn(I)Lorg/h2/tools/SimpleResultSet$Column;

    move-result-object p1

    iget-object p1, p1, Lorg/h2/tools/SimpleResultSet$Column;->name:Ljava/lang/String;

    return-object p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getColumnLabel(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnType(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getColumn(I)Lorg/h2/tools/SimpleResultSet$Column;

    move-result-object p1

    iget p1, p1, Lorg/h2/tools/SimpleResultSet$Column;->sqlType:I

    return p1
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getColumn(I)Lorg/h2/tools/SimpleResultSet$Column;

    move-result-object p1

    iget-object p1, p1, Lorg/h2/tools/SimpleResultSet$Column;->sqlTypeName:Ljava/lang/String;

    return-object p1
.end method

.method public getConcurrency()I
    .locals 1

    const/16 v0, 0x3ef

    return v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Date;

    return-object p1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 0

    .line 4
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFetchDirection()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getFetchSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :goto_0
    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getHoldability()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 0

    return-object p0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 0

    .line 1
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 0

    .line 1
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getPrecision(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getColumn(I)Lorg/h2/tools/SimpleResultSet$Column;

    move-result-object p1

    iget p1, p1, Lorg/h2/tools/SimpleResultSet$Column;->precision:I

    return p1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 0

    .line 1
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRow()I
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->currentRow:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 0

    .line 1
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 0

    .line 1
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getScale(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getColumn(I)Lorg/h2/tools/SimpleResultSet$Column;

    move-result-object p1

    iget p1, p1, Lorg/h2/tools/SimpleResultSet$Column;->scale:I

    return p1
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    :goto_0
    return p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/h2/tools/SimpleResultSet;->columns:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/tools/SimpleResultSet$Column;

    iget p1, p1, Lorg/h2/tools/SimpleResultSet$Column;->sqlType:I

    const/16 v1, 0x7d5

    if-eq p1, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast v0, Ljava/sql/Clob;

    invoke-interface {v0}, Ljava/sql/Clob;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2, p1}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Time;

    return-object p1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 0

    .line 4
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/tools/SimpleResultSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Timestamp;

    return-object p1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/tools/SimpleResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 0

    .line 4
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getType()I
    .locals 1

    iget-boolean v0, p0, Lorg/h2/tools/SimpleResultSet;->autoClose:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3eb

    return v0

    :cond_0
    const/16 v0, 0x3ec

    return v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 0

    .line 1
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insertRow()V
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isAfterLast()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isAutoIncrement(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isBeforeFirst()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isCaseSensitive(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->rows:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->source:Lorg/h2/tools/SimpleRowSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrency(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDefinitelyWritable(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isFirst()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isLast()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isNullable(I)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public isReadOnly(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isSearchable(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isSigned(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public isWritable(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public last()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public moveToCurrentRow()V
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public moveToInsertRow()V
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public next()Z
    .locals 3

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->source:Lorg/h2/tools/SimpleRowSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    invoke-interface {v0}, Lorg/h2/tools/SimpleRowSource;->readRow()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->currentRow:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    return v1

    :cond_0
    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->rows:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget v2, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget v0, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    iget-object v2, p0, Lorg/h2/tools/SimpleResultSet;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/h2/tools/SimpleResultSet;->rows:Ljava/util/ArrayList;

    iget v2, p0, Lorg/h2/tools/SimpleResultSet;->rowId:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->currentRow:[Ljava/lang/Object;

    return v1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/tools/SimpleResultSet;->currentRow:[Ljava/lang/Object;

    :cond_2
    iget-boolean v0, p0, Lorg/h2/tools/SimpleResultSet;->autoClose:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/h2/tools/SimpleResultSet;->close()V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public previous()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public refreshRow()V
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public relative(I)Z
    .locals 0

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public rowDeleted()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setAutoClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/tools/SimpleResultSet;->autoClose:Z

    return-void
.end method

.method public setFetchDirection(I)V
    .locals 0

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFetchSize(I)V
    .locals 0

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateArray(ILjava/sql/Array;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBlob(ILjava/io/InputStream;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBoolean(IZ)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateByte(IB)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBytes(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateClob(ILjava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateClob(ILjava/io/Reader;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateDouble(ID)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 0

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateFloat(IF)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateInt(II)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateLong(IJ)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateNClob(ILjava/io/Reader;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateNull(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateRow()V
    .locals 1

    invoke-static {}, Lorg/h2/tools/SimpleResultSet;->getUnsupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateRowId(ILjava/sql/RowId;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateShort(IS)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/h2/tools/SimpleResultSet;->update(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public wasNull()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/tools/SimpleResultSet;->wasNull:Z

    return v0
.end method
