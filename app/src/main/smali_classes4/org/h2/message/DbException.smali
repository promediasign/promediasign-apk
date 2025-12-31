.class public Lorg/h2/message/DbException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final MESSAGES:Ljava/util/Properties;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "/org/h2/res/_messages_"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lorg/h2/message/DbException;->MESSAGES:Ljava/util/Properties;

    :try_start_0
    const-string v2, "/org/h2/res/_messages_en.prop"

    invoke-static {v2}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".prop"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lorg/h2/util/SortedProperties;->fromLines(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lorg/h2/message/DbException;->MESSAGES:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private constructor <init>(Ljava/sql/SQLException;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;
    .locals 2

    instance-of v0, p0, Lorg/h2/message/DbException;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/h2/message/DbException;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/h2/message/DbException;

    check-cast p0, Ljava/sql/SQLException;

    invoke-direct {v0, p0}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fac

    invoke-static {v1, p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x15ffc

    invoke-static {v1, p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/StackOverflowError;

    const v1, 0xc350

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    :cond_6
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Lorg/h2/message/DbException;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/message/DbException;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const v0, 0x15fac

    invoke-static {v0, p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    const v0, 0x15faf

    invoke-static {v0, p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Ljava/sql/SQLException;

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    instance-of v0, p0, Lorg/h2/message/DbException;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v0, ": "

    .line 22
    .line 23
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    const v0, 0x15ff9

    .line 39
    .line 40
    .line 41
    filled-new-array {p1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_2
    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 2

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/IOException;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/h2/jdbc/JdbcSQLException;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/h2/jdbc/JdbcSQLException;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcSQLException;->getOriginalCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcSQLException;->getOriginalCause()Ljava/lang/Throwable;

    move-result-object p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static get(I)Lorg/h2/message/DbException;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static get(ILjava/lang/String;)Lorg/h2/message/DbException;
    .locals 0

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 1

    .line 3
    new-instance v0, Lorg/h2/message/DbException;

    invoke-static {p0, p1, p2}, Lorg/h2/message/DbException;->getJdbcSQLException(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/jdbc/JdbcSQLException;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object v0
.end method

.method public static varargs get(I[Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 2

    .line 4
    new-instance v0, Lorg/h2/message/DbException;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/h2/message/DbException;->getJdbcSQLException(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/jdbc/JdbcSQLException;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object v0
.end method

.method public static getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    const p1, 0x15f98

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method private static varargs getJdbcSQLException(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/jdbc/JdbcSQLException;
    .locals 7

    invoke-static {p0}, Lorg/h2/api/ErrorCode;->getState(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/h2/message/DbException;->translate(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance p2, Lorg/h2/jdbc/JdbcSQLException;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/h2/jdbc/JdbcSQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    return-object p2
.end method

.method public static getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/h2/util/StringUtils;->addAsterisk(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const p1, 0xa410

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;
    .locals 1

    .line 2
    invoke-static {p0, p1}, Lorg/h2/util/StringUtils;->addAsterisk(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/h2/message/DbException;

    const/4 v0, 0x0

    filled-new-array {p0, p2}, [Ljava/lang/String;

    move-result-object p0

    const p2, 0xa411

    invoke-static {p2, v0, p0}, Lorg/h2/message/DbException;->getJdbcSQLException(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/jdbc/JdbcSQLException;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object p1
.end method

.method public static getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 1

    const v0, 0xc3b4

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static throwInternalError()Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    const-string v0, "Unexpected code path"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;
    .locals 1

    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/sql/SQLException;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static traceThrowable(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method private static varargs translate(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/h2/message/DbException;->MESSAGES:Ljava/util/Properties;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "(Message "

    .line 14
    .line 15
    const-string v1, " not found)"

    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    if-eqz p1, :cond_4

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :goto_1
    array-length v1, p1

    .line 25
    if-ge p0, v1, :cond_3

    .line 26
    .line 27
    aget-object v1, p1, p0

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-lez v2, :cond_2

    .line 36
    .line 37
    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    aput-object v1, p1, p0

    .line 42
    .line 43
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_4
    return-object v0
.end method


# virtual methods
.method public addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 8

    invoke-virtual {p0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v5

    instance-of v0, v5, Lorg/h2/jdbc/JdbcSQLException;

    if-eqz v0, :cond_1

    check-cast v5, Lorg/h2/jdbc/JdbcSQLException;

    invoke-virtual {v5}, Lorg/h2/jdbc/JdbcSQLException;->getSQL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v5, p1}, Lorg/h2/jdbc/JdbcSQLException;->setSQL(Ljava/lang/String;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v7, Lorg/h2/jdbc/JdbcSQLException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/h2/jdbc/JdbcSQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    new-instance p1, Lorg/h2/message/DbException;

    invoke-direct {p1, v7}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object p1
.end method

.method public getErrorCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getSQLException()Ljava/sql/SQLException;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/h2/message/DbException;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public setSource(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/message/DbException;->source:Ljava/lang/Object;

    return-void
.end method
