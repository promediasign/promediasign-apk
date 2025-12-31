.class public Lorg/h2/value/DataType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GEOMETRY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final GEOMETRY_CLASS_NAME:Ljava/lang/String; = "com.vividsolutions.jts.geom.Geometry"

.field private static final TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPES_BY_NAME:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/value/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPES_BY_VALUE_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/value/DataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_RESULT_SET:I = -0xa


# instance fields
.field public autoIncrement:Z

.field public caseSensitive:Z

.field public decimal:Z

.field public defaultDisplaySize:I

.field public defaultPrecision:J

.field public defaultScale:I

.field public hidden:Z

.field public jdbc:Ljava/lang/String;

.field public maxPrecision:J

.field public maxScale:I

.field public memory:I

.field public minScale:I

.field public name:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public sqlType:I

.field public sqlTypePos:I

.field public suffix:Ljava/lang/String;

.field public supportsPrecision:Z

.field public supportsScale:Z

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/h2/value/DataType;->TYPES:Ljava/util/ArrayList;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/value/DataType;->TYPES_BY_NAME:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/HashMap;

    :try_start_0
    const-string v0, "com.vividsolutions.jts.geom.Geometry"

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lorg/h2/value/DataType;->GEOMETRY_CLASS:Ljava/lang/Class;

    new-instance v4, Lorg/h2/value/DataType;

    invoke-direct {v4}, Lorg/h2/value/DataType;-><init>()V

    const-string v0, "NULL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Null"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v10, "CHARACTER VARYING"

    const-string v11, "TID"

    const-string v5, "VARCHAR"

    const-string v6, "VARCHAR2"

    const-string v7, "NVARCHAR"

    const-string v8, "NVARCHAR2"

    const-string v9, "VARCHAR_CASESENSITIVE"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    const/16 v1, 0xd

    const/16 v2, 0xc

    const-string v3, "String"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v0, "LONGVARCHAR"

    const-string v1, "LONGNVARCHAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xd

    const/4 v2, -0x1

    const-string v3, "String"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v0, "CHARACTER"

    const-string v1, "NCHAR"

    const-string v2, "CHAR"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x15

    const/4 v2, 0x1

    const-string v3, "String"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v0, "VARCHAR_IGNORECASE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xe

    const/16 v2, 0xc

    const-string v3, "String"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-static/range {v7 .. v12}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "BIT"

    const-string v1, "BOOL"

    const-string v2, "BOOLEAN"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x10

    const-string v2, "Boolean"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v10, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "TINYINT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v0, 0x2

    const/4 v1, -0x6

    const-string v2, "Byte"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v9, 0x6

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "YEAR"

    const-string v1, "INT2"

    const-string v2, "SMALLINT"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string v2, "Short"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v6, 0xa

    const/16 v7, 0xa

    const/16 v9, 0xb

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "INT4"

    const-string v1, "SIGNED"

    const-string v2, "INTEGER"

    const-string v4, "INT"

    const-string v5, "MEDIUMINT"

    filled-new-array {v2, v4, v5, v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    const/4 v0, 0x4

    const/4 v1, 0x4

    const-string v2, "Int"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "SERIAL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    const-string v2, "Int"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v11, 0x0

    const/16 v6, 0x13

    const/16 v7, 0x13

    const/16 v9, 0x14

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "INT8"

    const-string v1, "LONG"

    const-string v2, "BIGINT"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    const/4 v0, 0x5

    const/4 v1, -0x5

    const-string v2, "Long"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "IDENTITY"

    const-string v1, "BIGSERIAL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x5

    const/4 v1, -0x5

    const-string v2, "Long"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    const v6, 0x7fffffff

    const v7, 0xffff

    const/16 v8, 0x7fff

    const v9, 0xffff

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "DECIMAL"

    const-string v1, "DEC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    const/4 v0, 0x6

    const/4 v1, 0x3

    const-string v2, "BigDecimal"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "NUMERIC"

    const-string v1, "NUMBER"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x6

    const/4 v1, 0x2

    const-string v2, "BigDecimal"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v10, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/16 v9, 0xf

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "REAL"

    const-string v1, "FLOAT4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    const/16 v0, 0x8

    const/4 v1, 0x7

    const-string v2, "Float"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v6, 0x11

    const/16 v7, 0x11

    const/16 v9, 0x18

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "DOUBLE"

    const-string v1, "DOUBLE PRECISION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x7

    const/16 v1, 0x8

    const-string v2, "Double"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    invoke-static/range {v6 .. v11}, Lorg/h2/value/DataType;->createDecimal(IIIIZZ)Lorg/h2/value/DataType;

    move-result-object v3

    const-string v0, "FLOAT"

    const-string v1, "FLOAT8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x7

    const/4 v1, 0x6

    const-string v2, "Double"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x6

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "TIME"

    invoke-static {v0, v3, v2, v1}, Lorg/h2/value/DataType;->createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;

    move-result-object v7

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x38

    const/16 v4, 0x9

    const/16 v5, 0x5c

    const-string v6, "Time"

    invoke-static/range {v4 .. v9}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v0, 0x8

    const/16 v1, 0xa

    const-string v3, "DATE"

    invoke-static {v0, v3, v2, v1}, Lorg/h2/value/DataType;->createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;

    move-result-object v7

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v4, 0xa

    const/16 v5, 0x5b

    const-string v6, "Date"

    invoke-static/range {v4 .. v9}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/16 v0, 0x17

    const-string v2, "TIMESTAMP"

    invoke-static {v0, v2, v1, v0}, Lorg/h2/value/DataType;->createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;

    move-result-object v6

    const-string v0, "DATETIME2"

    const-string v1, "SMALLDATETIME"

    const-string v3, "DATETIME"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x38

    const/16 v3, 0xb

    const/16 v4, 0x5d

    const-string v5, "Timestamp"

    invoke-static/range {v3 .. v8}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const-string v0, "TIMESTAMP_TZ"

    const/16 v1, 0x1e

    const/16 v2, 0xa

    invoke-static {v1, v0, v2, v1}, Lorg/h2/value/DataType;->createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;

    move-result-object v6

    const-string v0, "TIMESTAMP WITH TIME ZONE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3a

    const/16 v3, 0x18

    const/16 v4, 0x7de

    const-string v5, "TimestampTimeZone"

    invoke-static/range {v3 .. v8}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v0, "VARBINARY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v1, 0xc

    const/4 v2, -0x3

    const-string v3, "Bytes"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v0, "BYTEA"

    const-string v1, "LONG RAW"

    const-string v2, "BINARY"

    const-string v3, "RAW"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xc

    const/4 v2, -0x2

    const-string v3, "Bytes"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v0, "LONGVARBINARY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x4

    const-string v3, "Bytes"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v0, "UUID"

    const-string v1, "UNIQUEIDENTIFIER"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x14

    const/4 v2, -0x2

    const-string v3, "Bytes"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v0, "OBJECT"

    const-string v1, "JAVA_OBJECT"

    const-string v2, "OTHER"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    const/16 v1, 0x13

    const/16 v2, 0x457

    const-string v3, "Object"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    invoke-static {}, Lorg/h2/value/DataType;->createLob()Lorg/h2/value/DataType;

    move-result-object v10

    const-string v4, "IMAGE"

    const-string v5, "OID"

    const-string v0, "BLOB"

    const-string v1, "TINYBLOB"

    const-string v2, "MEDIUMBLOB"

    const-string v3, "LONGBLOB"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x68

    const/16 v7, 0xf

    const/16 v8, 0x7d4

    const-string v9, "Blob"

    invoke-static/range {v7 .. v12}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    invoke-static {}, Lorg/h2/value/DataType;->createLob()Lorg/h2/value/DataType;

    move-result-object v3

    const-string v9, "NTEXT"

    const-string v10, "NCLOB"

    const-string v4, "CLOB"

    const-string v5, "TINYTEXT"

    const-string v6, "TEXT"

    const-string v7, "MEDIUMTEXT"

    const-string v8, "LONGTEXT"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x68

    const/16 v0, 0x10

    const/16 v1, 0x7d5

    const-string v2, "Clob"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    const-string v0, "GEOMETRY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v1, 0x16

    const/16 v2, 0x457

    const-string v3, "Geometry"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    new-instance v10, Lorg/h2/value/DataType;

    invoke-direct {v10}, Lorg/h2/value/DataType;-><init>()V

    const-string v0, "("

    iput-object v0, v10, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    const-string v0, "\')"

    iput-object v0, v10, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    const-string v0, "ARRAY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x20

    const/16 v7, 0x11

    const/16 v8, 0x7d3

    const-string v9, "Array"

    invoke-static/range {v7 .. v12}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    new-instance v3, Lorg/h2/value/DataType;

    invoke-direct {v3}, Lorg/h2/value/DataType;-><init>()V

    const-string v0, "RESULT_SET"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x190

    const/16 v0, 0x12

    const/16 v1, -0xa

    const-string v2, "ResultSet"

    invoke-static/range {v0 .. v5}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v4

    iput-boolean v0, v4, Lorg/h2/value/DataType;->supportsPrecision:Z

    iput-boolean v0, v4, Lorg/h2/value/DataType;->supportsScale:Z

    const-string v0, "ENUM"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x30

    const/16 v1, 0x19

    const/16 v2, 0x457

    const-string v3, "Enum"

    invoke-static/range {v1 .. v6}, Lorg/h2/value/DataType;->add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V

    sget-object v0, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/Value;->getOrder(I)I

    goto :goto_1

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(IILjava/lang/String;Lorg/h2/value/DataType;[Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_4

    new-instance v2, Lorg/h2/value/DataType;

    invoke-direct {v2}, Lorg/h2/value/DataType;-><init>()V

    iput p0, v2, Lorg/h2/value/DataType;->type:I

    iput p1, v2, Lorg/h2/value/DataType;->sqlType:I

    iput-object p2, v2, Lorg/h2/value/DataType;->jdbc:Ljava/lang/String;

    aget-object v3, p4, v1

    iput-object v3, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    iget-boolean v3, p3, Lorg/h2/value/DataType;->autoIncrement:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->autoIncrement:Z

    iget-boolean v3, p3, Lorg/h2/value/DataType;->decimal:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->decimal:Z

    iget-wide v3, p3, Lorg/h2/value/DataType;->maxPrecision:J

    iput-wide v3, v2, Lorg/h2/value/DataType;->maxPrecision:J

    iget v3, p3, Lorg/h2/value/DataType;->maxScale:I

    iput v3, v2, Lorg/h2/value/DataType;->maxScale:I

    iget v3, p3, Lorg/h2/value/DataType;->minScale:I

    iput v3, v2, Lorg/h2/value/DataType;->minScale:I

    iget-object v3, p3, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    iput-object v3, v2, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    iget-object v3, p3, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    iput-object v3, v2, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    iget-object v3, p3, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    iput-object v3, v2, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    iget-boolean v3, p3, Lorg/h2/value/DataType;->supportsPrecision:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->supportsPrecision:Z

    iget-boolean v3, p3, Lorg/h2/value/DataType;->supportsScale:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->supportsScale:Z

    iget-wide v3, p3, Lorg/h2/value/DataType;->defaultPrecision:J

    iput-wide v3, v2, Lorg/h2/value/DataType;->defaultPrecision:J

    iget v3, p3, Lorg/h2/value/DataType;->defaultScale:I

    iput v3, v2, Lorg/h2/value/DataType;->defaultScale:I

    iget v3, p3, Lorg/h2/value/DataType;->defaultDisplaySize:I

    iput v3, v2, Lorg/h2/value/DataType;->defaultDisplaySize:I

    iget-boolean v3, p3, Lorg/h2/value/DataType;->caseSensitive:Z

    iput-boolean v3, v2, Lorg/h2/value/DataType;->caseSensitive:Z

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v2, Lorg/h2/value/DataType;->hidden:Z

    iput p5, v2, Lorg/h2/value/DataType;->memory:I

    sget-object v4, Lorg/h2/value/DataType;->TYPES:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/value/DataType;

    iget v5, v5, Lorg/h2/value/DataType;->sqlType:I

    iget v6, v2, Lorg/h2/value/DataType;->sqlType:I

    if-ne v5, v6, :cond_1

    iget v5, v2, Lorg/h2/value/DataType;->sqlTypePos:I

    add-int/2addr v5, v3

    iput v5, v2, Lorg/h2/value/DataType;->sqlTypePos:I

    goto :goto_2

    :cond_2
    sget-object v3, Lorg/h2/value/DataType;->TYPES_BY_NAME:Ljava/util/HashMap;

    iget-object v4, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v3, Lorg/h2/value/DataType;->TYPES:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static convertSQLTypeToValueType(I)I
    .locals 3

    .line 1
    const/16 v0, -0x10

    if-eq p0, v0, :cond_5

    const/16 v0, -0xf

    if-eq p0, v0, :cond_4

    const/16 v0, -0xa

    if-eq p0, v0, :cond_3

    const/16 v0, -0x9

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    const/16 v1, 0x10

    if-eq p0, v1, :cond_2

    const/16 v2, 0x457

    if-eq p0, v2, :cond_1

    const/16 v2, 0x7d0

    if-eq p0, v2, :cond_1

    const/16 v2, 0x7db

    if-eq p0, v2, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0xc354

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :pswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_1
    const/16 p0, 0x11

    return p0

    :pswitch_2
    const/16 p0, 0xb

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    const/16 p0, 0xa

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_6
    const/4 p0, 0x7

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/4 p0, 0x0

    return p0

    :pswitch_b
    return v0

    :pswitch_c
    const/4 p0, 0x5

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :cond_0
    :pswitch_e
    return v1

    :cond_1
    const/16 p0, 0x13

    return p0

    :cond_2
    :pswitch_f
    const/4 p0, 0x1

    return p0

    :cond_3
    const/16 p0, 0x12

    return p0

    :cond_4
    :pswitch_10
    const/16 p0, 0x15

    return p0

    :cond_5
    :pswitch_11
    const/16 p0, 0xd

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_11
        :pswitch_a
        :pswitch_10
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d3
        :pswitch_1
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public static convertSQLTypeToValueType(ILjava/lang/String;)I
    .locals 1

    .line 2
    const/16 v0, 0x457

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "geometry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x16

    return p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(I)I

    move-result p0

    return p0
.end method

.method public static convertTo(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/jdbc/JdbcConnection;",
            "Lorg/h2/value/Value;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Ljava/sql/Blob;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Lorg/h2/jdbc/JdbcBlob;

    invoke-direct {p2, p0, p1, v1}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    return-object p2

    :cond_0
    const-class v0, Ljava/sql/Clob;

    if-ne p2, v0, :cond_1

    new-instance p2, Lorg/h2/jdbc/JdbcClob;

    invoke-direct {p2, p0, p1, v1}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    return-object p2

    :cond_1
    const-class v0, Ljava/sql/Array;

    if-ne p2, v0, :cond_2

    new-instance p2, Lorg/h2/jdbc/JdbcArray;

    invoke-direct {p2, p0, p1, v1}, Lorg/h2/jdbc/JdbcArray;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    return-object p2

    :cond_2
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, p2}, Lorg/h2/api/CustomDataTypesHandler;->getObject(Lorg/h2/value/Value;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->serializeJavaObject:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/h2/util/JdbcUtils;->deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p0

    :cond_4
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "converting to class "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/h2/value/DataType;->convertToValue1(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    :cond_0
    return-object p1
.end method

.method private static convertToValue1(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;
    .locals 5

    if-nez p1, :cond_0

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    :cond_0
    const/16 v0, 0x13

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, Lorg/h2/value/Value;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/h2/value/Value;

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_6

    new-instance p0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-static {p0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/math/BigDecimal;

    invoke-static {p1}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_c

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p0

    return-object p0

    :cond_c
    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    check-cast p1, [B

    invoke-static {p1}, Lorg/h2/value/ValueBytes;->get([B)Lorg/h2/value/ValueBytes;

    move-result-object p0

    return-object p0

    :cond_d
    instance-of v0, p1, Ljava/sql/Date;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/sql/Date;

    invoke-static {p1}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p0

    return-object p0

    :cond_e
    instance-of v0, p1, Ljava/sql/Time;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/sql/Time;

    invoke-static {p1}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/sql/Timestamp;

    invoke-static {p1}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0

    :cond_10
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_11

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    return-object p0

    :cond_11
    instance-of v0, p1, Ljava/io/Reader;

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_12

    new-instance p2, Ljava/io/BufferedReader;

    check-cast p1, Ljava/io/Reader;

    invoke-direct {p2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    invoke-interface {p0, p2, v2, v3}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    :cond_12
    instance-of v0, p1, Ljava/sql/Clob;

    if-eqz v0, :cond_13

    :try_start_0
    check-cast p1, Ljava/sql/Clob;

    new-instance p2, Ljava/io/BufferedReader;

    invoke-interface {p1}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    invoke-interface {p1}, Ljava/sql/Clob;->length()J

    move-result-wide v0

    invoke-interface {p0, p2, v0, v1}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_13
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_14

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    check-cast p1, Ljava/io/InputStream;

    invoke-interface {p0, p1, v2, v3}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    :cond_14
    instance-of v0, p1, Ljava/sql/Blob;

    if-eqz v0, :cond_15

    :try_start_1
    check-cast p1, Ljava/sql/Blob;

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p0

    invoke-interface {p1}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-interface {p1}, Ljava/sql/Blob;->length()J

    move-result-wide v0

    invoke-interface {p0, p2, v0, v1}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_15
    instance-of v0, p1, Ljava/sql/Array;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/sql/Array;

    :try_start_2
    invoke-interface {p1}, Ljava/sql/Array;->getArray()Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x11

    invoke-static {p0, p1, p2}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_16
    instance-of v0, p1, Ljava/sql/ResultSet;

    if-eqz v0, :cond_18

    instance-of p0, p1, Lorg/h2/tools/SimpleResultSet;

    check-cast p1, Ljava/sql/ResultSet;

    if-eqz p0, :cond_17

    invoke-static {p1}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object p0

    return-object p0

    :cond_17
    const p0, 0x7fffffff

    invoke-static {p1, p0}, Lorg/h2/value/ValueResultSet;->getCopy(Ljava/sql/ResultSet;I)Lorg/h2/value/ValueResultSet;

    move-result-object p0

    return-object p0

    :cond_18
    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_19

    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/h2/value/ValueUuid;->get(JJ)Lorg/h2/value/ValueUuid;

    move-result-object p0

    return-object p0

    :cond_19
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v2, v1, [Lorg/h2/value/Value;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1a

    aget-object v4, v0, v3

    invoke-static {p0, v4, p2}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v2}, Lorg/h2/value/ValueArray;->get(Ljava/lang/Class;[Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p0

    return-object p0

    :cond_1b
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1c

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-static {p1}, Lorg/h2/value/DataType;->isGeometry(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Lorg/h2/value/ValueGeometry;->getFromGeometry(Ljava/lang/Object;)Lorg/h2/value/ValueGeometry;

    move-result-object p0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/LocalDateTimeUtils;->isLocalDate(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p1}, Lorg/h2/util/LocalDateTimeUtils;->localDateToDateValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/LocalDateTimeUtils;->isLocalTime(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Lorg/h2/util/LocalDateTimeUtils;->localTimeToTimeValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/LocalDateTimeUtils;->isLocalDateTime(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Lorg/h2/util/LocalDateTimeUtils;->localDateTimeToValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/LocalDateTimeUtils;->isOffsetDateTime(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p1}, Lorg/h2/util/LocalDateTimeUtils;->offsetDateTimeToValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    :cond_21
    instance-of v0, p1, Lorg/h2/api/TimestampWithTimeZone;

    if-eqz v0, :cond_22

    check-cast p1, Lorg/h2/api/TimestampWithTimeZone;

    invoke-static {p1}, Lorg/h2/value/ValueTimestampTimeZone;->get(Lorg/h2/api/TimestampWithTimeZone;)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0

    return-object p0

    :cond_22
    sget-object v0, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    if-eqz v0, :cond_23

    invoke-interface {v0, p2, p1, p0}, Lorg/h2/api/CustomDataTypesHandler;->getValue(ILjava/lang/Object;Lorg/h2/store/DataHandler;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    :cond_23
    invoke-static {p1, v1, p0}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object p0

    return-object p0
.end method

.method public static convertTypeToSQLType(I)I
    .locals 0

    invoke-static {p0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object p0

    iget p0, p0, Lorg/h2/value/DataType;->sqlType:I

    return p0
.end method

.method private static createDate(ILjava/lang/String;II)Lorg/h2/value/DataType;
    .locals 2

    .line 1
    new-instance v0, Lorg/h2/value/DataType;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/h2/value/DataType;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " \'"

    .line 7
    .line 8
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, v0, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    .line 13
    .line 14
    const-string p1, "\'"

    .line 15
    .line 16
    iput-object p1, v0, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    .line 17
    .line 18
    int-to-long p0, p0

    .line 19
    iput-wide p0, v0, Lorg/h2/value/DataType;->maxPrecision:J

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    iput-boolean v1, v0, Lorg/h2/value/DataType;->supportsScale:Z

    .line 27
    .line 28
    iput p2, v0, Lorg/h2/value/DataType;->maxScale:I

    .line 29
    .line 30
    iput-wide p0, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    .line 31
    .line 32
    iput p2, v0, Lorg/h2/value/DataType;->defaultScale:I

    .line 33
    .line 34
    iput p3, v0, Lorg/h2/value/DataType;->defaultDisplaySize:I

    .line 35
    .line 36
    return-object v0
.end method

.method private static createDecimal(IIIIZZ)Lorg/h2/value/DataType;
    .locals 3

    new-instance v0, Lorg/h2/value/DataType;

    invoke-direct {v0}, Lorg/h2/value/DataType;-><init>()V

    int-to-long v1, p0

    iput-wide v1, v0, Lorg/h2/value/DataType;->maxPrecision:J

    int-to-long p0, p1

    iput-wide p0, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    iput p2, v0, Lorg/h2/value/DataType;->defaultScale:I

    iput p3, v0, Lorg/h2/value/DataType;->defaultDisplaySize:I

    const/4 p0, 0x1

    if-eqz p4, :cond_0

    const-string p1, "PRECISION,SCALE"

    iput-object p1, v0, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    iput-boolean p0, v0, Lorg/h2/value/DataType;->supportsPrecision:Z

    iput-boolean p0, v0, Lorg/h2/value/DataType;->supportsScale:Z

    :cond_0
    iput-boolean p0, v0, Lorg/h2/value/DataType;->decimal:Z

    iput-boolean p5, v0, Lorg/h2/value/DataType;->autoIncrement:Z

    return-object v0
.end method

.method private static createLob()Lorg/h2/value/DataType;
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/h2/value/DataType;->createString(Z)Lorg/h2/value/DataType;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lorg/h2/value/DataType;->maxPrecision:J

    iput-wide v1, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    return-object v0
.end method

.method private static createString(Z)Lorg/h2/value/DataType;
    .locals 3

    new-instance v0, Lorg/h2/value/DataType;

    invoke-direct {v0}, Lorg/h2/value/DataType;-><init>()V

    const-string v1, "\'"

    iput-object v1, v0, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    iput-object v1, v0, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    const-string v1, "LENGTH"

    iput-object v1, v0, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    iput-boolean p0, v0, Lorg/h2/value/DataType;->caseSensitive:Z

    const/4 p0, 0x1

    iput-boolean p0, v0, Lorg/h2/value/DataType;->supportsPrecision:Z

    const-wide/32 v1, 0x7fffffff

    iput-wide v1, v0, Lorg/h2/value/DataType;->maxPrecision:J

    iput-wide v1, v0, Lorg/h2/value/DataType;->defaultPrecision:J

    const p0, 0x7fffffff

    iput p0, v0, Lorg/h2/value/DataType;->defaultDisplaySize:I

    return-object v0
.end method

.method public static getAddProofType(I)I
    .locals 1

    const/4 v0, 0x5

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/h2/api/CustomDataTypesHandler;->getAddProofType(I)I

    move-result p0

    :cond_0
    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    return v0

    :pswitch_4
    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getDataType(I)Lorg/h2/value/DataType;
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    sget-object v0, Lorg/h2/value/DataType;->TYPES_BY_VALUE_TYPE:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/DataType;

    if-nez v1, :cond_0

    sget-object v2, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lorg/h2/api/CustomDataTypesHandler;->getDataTypeById(I)Lorg/h2/value/DataType;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/h2/value/DataType;

    :cond_1
    return-object v1

    :cond_2
    const p0, 0xc354

    const-string v0, "?"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getDefaultForPrimitiveType(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "primitive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;
    .locals 2

    sget-object v0, Lorg/h2/value/DataType;->TYPES_BY_NAME:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/value/DataType;

    if-nez v0, :cond_0

    sget-object v1, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lorg/h2/api/CustomDataTypesHandler;->getDataTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getTypeClassName(I)Ljava/lang/String;
    .locals 2

    const-class v0, Ljava/lang/Object;

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/h2/api/CustomDataTypesHandler;->getDataTypeClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_1
    const-class p0, Lorg/h2/api/TimestampWithTimeZone;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string p0, "com.vividsolutions.jts.geom.Geometry"

    return-object p0

    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const-class p0, Ljava/sql/ResultSet;

    goto :goto_0

    :pswitch_5
    const-class p0, Ljava/sql/Array;

    goto :goto_0

    :pswitch_6
    const-class p0, Ljava/sql/Clob;

    goto :goto_0

    :pswitch_7
    const-class p0, Ljava/sql/Blob;

    goto :goto_0

    :pswitch_8
    const-class p0, Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    const-class p0, [B

    goto :goto_0

    :pswitch_a
    const-class p0, Ljava/sql/Timestamp;

    goto :goto_0

    :pswitch_b
    const-class p0, Ljava/sql/Date;

    goto :goto_0

    :pswitch_c
    const-class p0, Ljava/sql/Time;

    goto :goto_0

    :pswitch_d
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :pswitch_e
    const-class p0, Ljava/lang/Double;

    goto :goto_0

    :pswitch_f
    const-class p0, Ljava/math/BigDecimal;

    goto :goto_0

    :pswitch_10
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :pswitch_11
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :pswitch_12
    const-class p0, Ljava/lang/Short;

    goto :goto_0

    :pswitch_13
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :pswitch_14
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_15
    const/4 p0, 0x0

    return-object p0

    :pswitch_16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getTypeFromClass(Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lorg/h2/util/Utils;->getNonPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :cond_1
    const-class v1, Ljava/lang/String;

    if-ne v1, p0, :cond_2

    const/16 p0, 0xd

    return p0

    :cond_2
    const-class v1, Ljava/lang/Integer;

    if-ne v1, p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-class v1, Ljava/lang/Long;

    if-ne v1, p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-class v1, Ljava/lang/Boolean;

    if-ne v1, p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const-class v1, Ljava/lang/Double;

    if-ne v1, p0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-class v1, Ljava/lang/Byte;

    if-ne v1, p0, :cond_7

    const/4 p0, 0x2

    return p0

    :cond_7
    const-class v1, Ljava/lang/Short;

    if-ne v1, p0, :cond_8

    const/4 p0, 0x3

    return p0

    :cond_8
    const-class v1, Ljava/lang/Character;

    if-eq v1, p0, :cond_20

    const-class v1, Ljava/lang/Float;

    if-ne v1, p0, :cond_9

    const/16 p0, 0x8

    return p0

    :cond_9
    const-class v1, [B

    if-ne v1, p0, :cond_a

    const/16 p0, 0xc

    return p0

    :cond_a
    const-class v1, Ljava/util/UUID;

    if-ne v1, p0, :cond_b

    const/16 p0, 0x14

    return p0

    :cond_b
    const-class v1, Ljava/lang/Void;

    if-ne v1, p0, :cond_c

    return v0

    :cond_c
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x6

    return p0

    :cond_d
    const-class v0, Ljava/sql/ResultSet;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p0, 0x12

    return p0

    :cond_e
    const-class v0, Lorg/h2/value/Value$ValueBlob;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v1, 0xf

    if-eqz v0, :cond_f

    return v1

    :cond_f
    const-class v0, Lorg/h2/value/Value$ValueClob;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v2, 0x10

    if-eqz v0, :cond_10

    return v2

    :cond_10
    const-class v0, Ljava/sql/Date;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v3, 0xa

    if-eqz v0, :cond_11

    return v3

    :cond_11
    const-class v0, Ljava/sql/Time;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v4, 0x9

    if-eqz v0, :cond_12

    return v4

    :cond_12
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v5, 0xb

    if-eqz v0, :cond_13

    return v5

    :cond_13
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v5

    :cond_14
    const-class v0, Ljava/io/Reader;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v2

    :cond_15
    const-class v0, Ljava/sql/Clob;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v2

    :cond_16
    const-class v0, Ljava/io/InputStream;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    const-class v0, Ljava/sql/Blob;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    :cond_18
    const-class v0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 p0, 0x11

    return p0

    :cond_19
    invoke-static {p0}, Lorg/h2/value/DataType;->isGeometryClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 p0, 0x16

    return p0

    :cond_1a
    invoke-static {p0}, Lorg/h2/util/LocalDateTimeUtils;->isLocalDate(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v3

    :cond_1b
    invoke-static {p0}, Lorg/h2/util/LocalDateTimeUtils;->isLocalTime(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v4

    :cond_1c
    invoke-static {p0}, Lorg/h2/util/LocalDateTimeUtils;->isLocalDateTime(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v5

    :cond_1d
    invoke-static {p0}, Lorg/h2/util/LocalDateTimeUtils;->isOffsetDateTime(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 p0, 0x18

    return p0

    :cond_1e
    sget-object v0, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v0, :cond_1f

    invoke-interface {v0, p0}, Lorg/h2/api/CustomDataTypesHandler;->getTypeIdFromClass(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_1f
    const/16 p0, 0x13

    return p0

    :cond_20
    const/16 p0, 0x5602

    const-string v0, "char (not supported)"

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_21
    :goto_0
    return v0
.end method

.method public static getTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/DataType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/h2/value/DataType;->TYPES:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I
    .locals 1

    invoke-interface {p0, p1}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v0

    invoke-interface {p0, p1}, Ljava/sql/ResultSetMetaData;->getColumnTypeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isGeometry(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/value/DataType;->isGeometryClass(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isGeometryClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    sget-object v0, Lorg/h2/value/DataType;->GEOMETRY_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLargeObject(I)Z
    .locals 1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isStringType(I)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;
    .locals 3

    const-string v0, "type="

    const-wide/16 v1, -0x1

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    :try_start_0
    sget-object v1, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v1, :cond_0

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-interface {v1, p3, p1, p0}, Lorg/h2/api/CustomDataTypesHandler;->getValue(ILjava/lang/Object;Lorg/h2/store/DataHandler;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p0

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto/16 :goto_6

    :cond_1
    invoke-static {p0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_2
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/api/TimestampWithTimeZone;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/h2/value/ValueTimestampTimeZone;->get(Lorg/h2/api/TimestampWithTimeZone;)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_3
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    :cond_3
    invoke-static {p0}, Lorg/h2/value/ValueGeometry;->getFromGeometry(Ljava/lang/Object;)Lorg/h2/value/ValueGeometry;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lorg/h2/value/ValueStringFixed;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringFixed;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_5
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lorg/h2/value/ValueUuid;->get([B)Lorg/h2/value/ValueUuid;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_6
    sget-boolean p3, Lorg/h2/engine/SysProperties;->serializeJavaObject:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object p0

    goto/16 :goto_6

    :cond_7
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lorg/h2/value/ValueJavaObject;->getNoCopy(Ljava/lang/Object;[BLorg/h2/store/DataHandler;)Lorg/h2/value/ValueJavaObject;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_7
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/sql/ResultSet;

    if-nez p0, :cond_9

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    :cond_9
    invoke-static {p0}, Lorg/h2/value/ValueResultSet;->get(Ljava/sql/ResultSet;)Lorg/h2/value/ValueResultSet;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    if-nez p1, :cond_a

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    :cond_a
    invoke-interface {p1}, Ljava/sql/Array;->getArray()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-nez p1, :cond_b

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    :cond_b
    array-length p2, p1

    new-array p3, p2, [Lorg/h2/value/Value;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_c

    aget-object v2, p1, v1

    invoke-static {p0, v2, v0}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    invoke-static {p3}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_9
    if-nez p0, :cond_e

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    :goto_2
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_3

    :cond_d
    sget-object p2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p2, p1}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_3

    :cond_e
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_2

    :cond_f
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p2

    invoke-interface {p2}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p2

    new-instance p3, Ljava/io/BufferedReader;

    invoke-direct {p3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {p2, p3, v1, v2}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p1

    :goto_3
    if-eqz p0, :cond_10

    :goto_4
    invoke-interface {p0, p1}, Lorg/h2/engine/SessionInterface;->addTemporaryLob(Lorg/h2/value/Value;)V

    :cond_10
    move-object p0, p1

    goto/16 :goto_6

    :pswitch_a
    if-nez p0, :cond_12

    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p0

    if-nez p0, :cond_11

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_5

    :cond_11
    const/16 p1, 0xf

    invoke-static {p1, p0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_12
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_13

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_4

    :cond_13
    invoke-interface {p0}, Lorg/h2/engine/SessionInterface;->getDataHandler()Lorg/h2/store/DataHandler;

    move-result-object p2

    invoke-interface {p2}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p2

    invoke-interface {p2, p1, v1, v2}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_4

    :pswitch_b
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    invoke-static {p0}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_c
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    invoke-static {p0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_d
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    invoke-static {p0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_e
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    invoke-static {p0}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_f
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    invoke-static {p0}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_10
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    invoke-static {p0}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_11
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getFloat(I)F

    move-result p0

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    invoke-static {p0}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p0

    goto/16 :goto_6

    :pswitch_12
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDouble(I)D

    move-result-wide p2

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    invoke-static {p2, p3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p0

    goto :goto_6

    :pswitch_13
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    invoke-static {p0}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p0

    goto :goto_6

    :pswitch_14
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide p2

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p0

    goto :goto_6

    :pswitch_15
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result p0

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :pswitch_16
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getShort(I)S

    move-result p0

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    invoke-static {p0}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p0

    goto :goto_6

    :pswitch_17
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getByte(I)B

    move-result p0

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    invoke-static {p0}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p0

    goto :goto_6

    :pswitch_18
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result p0

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result p1

    if-eqz p1, :cond_20

    goto/16 :goto_0

    :cond_20
    invoke-static {p0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p0

    :goto_6
    return-object p0

    :pswitch_19
    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_7
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static supportsAdd(I)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lorg/h2/api/CustomDataTypesHandler;->supportsAdd(I)Z

    move-result p0

    return p0

    :cond_0
    return v0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
