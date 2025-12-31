.class public Lorg/h2/message/TraceObject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ARRAY:I = 0x10

.field protected static final BLOB:I = 0x9

.field protected static final CALLABLE_STATEMENT:I = 0x0

.field protected static final CLOB:I = 0xa

.field protected static final CONNECTION:I = 0x1

.field protected static final DATABASE_META_DATA:I = 0x2

.field protected static final DATA_SOURCE:I = 0xc

.field private static final ID:[I

.field private static final LAST:I = 0x11

.field protected static final PARAMETER_META_DATA:I = 0xb

.field private static final PREFIX:[Ljava/lang/String;

.field protected static final PREPARED_STATEMENT:I = 0x3

.field protected static final RESULT_SET:I = 0x4

.field protected static final RESULT_SET_META_DATA:I = 0x5

.field protected static final SAVEPOINT:I = 0x6

.field protected static final STATEMENT:I = 0x8

.field protected static final XA_DATA_SOURCE:I = 0xd

.field protected static final XID:I = 0xf


# instance fields
.field private id:I

.field protected trace:Lorg/h2/message/Trace;

.field private traceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x11

    new-array v0, v0, [I

    sput-object v0, Lorg/h2/message/TraceObject;->ID:[I

    const-string v16, "xid"

    const-string v17, "ar"

    const-string v1, "call"

    const-string v2, "conn"

    const-string v3, "dbMeta"

    const-string v4, "prep"

    const-string v5, "rs"

    const-string v6, "rsMeta"

    const-string v7, "sp"

    const-string v8, "ex"

    const-string v9, "stat"

    const-string v10, "blob"

    const-string v11, "clob"

    const-string v12, "pMeta"

    const-string v13, "ds"

    const-string v14, "xads"

    const-string v15, "xares"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/message/TraceObject;->PREFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextId(I)I
    .locals 3

    sget-object v0, Lorg/h2/message/TraceObject;->ID:[I

    aget v1, v0, p0

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, p0

    return v1
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteJavaStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new BigDecimal(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteBytes([B)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.h2.util.StringUtils.convertHexToBytes(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteDate(Ljava/sql/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Date.valueOf(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteIntArray([I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteJavaIntArray([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "new Map()"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new Map() /* "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " */"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteTime(Ljava/sql/Time;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time.valueOf(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timestamp.valueOf(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public debugCode(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    .line 10
    .line 11
    const-string v1, " "

    .line 12
    .line 13
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v1, Lorg/h2/message/TraceObject;->PREFIX:[Ljava/lang/String;

    .line 18
    .line 19
    aget-object p2, v1, p2

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, " = "

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, "."

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, ";"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public debugCodeCall(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "();"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public debugCodeCall(Ljava/lang/String;J)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getTraceId()I
    .locals 1

    iget v0, p0, Lorg/h2/message/TraceObject;->id:I

    return v0
.end method

.method public getTraceObjectName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/h2/message/TraceObject;->PREFIX:[Ljava/lang/String;

    iget v2, p0, Lorg/h2/message/TraceObject;->traceType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/message/TraceObject;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;
    .locals 3

    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x59d8

    const-string v2, "exception"

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5dc0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0, p1, v2}, Lorg/h2/message/Trace;->info(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0, p1, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public setTrace(Lorg/h2/message/Trace;II)V
    .locals 0

    iput-object p1, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    iput p2, p0, Lorg/h2/message/TraceObject;->traceType:I

    iput p3, p0, Lorg/h2/message/TraceObject;->id:I

    return-void
.end method

.method public unsupported(Ljava/lang/String;)Ljava/sql/SQLException;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    return-object p1
.end method
