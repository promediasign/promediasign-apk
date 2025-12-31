.class public Lorg/h2/command/dml/SetTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_LITERALS:I = 0x18

.field public static final BATCH_JOINS:I = 0x2c

.field public static final BINARY_COLLATION:I = 0x26

.field public static final CACHE_SIZE:I = 0x8

.field public static final CLUSTER:I = 0xd

.field public static final COLLATION:I = 0xc

.field public static final COMPRESS_LOB:I = 0x17

.field public static final CREATE_BUILD:I = 0x22

.field public static final DATABASE_EVENT_LISTENER:I = 0xf

.field public static final DB_CLOSE_DELAY:I = 0x12

.field public static final DEFAULT_LOCK_TIMEOUT:I = 0x6

.field public static final DEFAULT_TABLE_TYPE:I = 0x7

.field public static final EXCLUSIVE:I = 0x21

.field public static final FORCE_JOIN_ORDER:I = 0x2d

.field public static final IGNORECASE:I = 0x1

.field public static final JAVA_OBJECT_SERIALIZER:I = 0x27

.field public static final LAZY_QUERY_EXECUTION:I = 0x2e

.field public static final LOCK_MODE:I = 0x11

.field public static final LOCK_TIMEOUT:I = 0x5

.field public static final LOG:I = 0x13

.field public static final MAX_LENGTH_INPLACE_LOB:I = 0x16

.field public static final MAX_LOG_SIZE:I = 0x2

.field public static final MAX_MEMORY_ROWS:I = 0x10

.field public static final MAX_MEMORY_UNDO:I = 0x15

.field public static final MAX_OPERATION_MEMORY:I = 0x20

.field public static final MODE:I = 0x3

.field public static final MULTI_THREADED:I = 0x19

.field public static final MVCC:I = 0x1f

.field public static final OPTIMIZE_REUSE_RESULTS:I = 0x1b

.field public static final QUERY_STATISTICS:I = 0x29

.field public static final QUERY_STATISTICS_MAX_ENTRIES:I = 0x2a

.field public static final QUERY_TIMEOUT:I = 0x24

.field public static final READONLY:I = 0x4

.field public static final REDO_LOG_BINARY:I = 0x25

.field public static final REFERENTIAL_INTEGRITY:I = 0x1e

.field public static final RETENTION_TIME:I = 0x28

.field public static final ROW_FACTORY:I = 0x2b

.field public static final SCHEMA:I = 0x1a

.field public static final SCHEMA_SEARCH_PATH:I = 0x1c

.field public static final THROTTLE:I = 0x14

.field public static final TRACE_LEVEL_FILE:I = 0xa

.field public static final TRACE_LEVEL_SYSTEM_OUT:I = 0x9

.field public static final TRACE_MAX_FILE_SIZE:I = 0xb

.field private static final TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNDO_LOG:I = 0x1d

.field public static final VARIABLE:I = 0x23

.field public static final WRITE_DELAY:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/h2/command/dml/SetTypes;->TYPES:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const-string v2, "IGNORECASE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "MAX_LOG_SIZE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x4

    const-string v2, "READONLY"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v2, "LOCK_TIMEOUT"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v2, "DEFAULT_LOCK_TIMEOUT"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v2, "DEFAULT_TABLE_TYPE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v2, "CACHE_SIZE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x9

    const-string v2, "TRACE_LEVEL_SYSTEM_OUT"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0xa

    const-string v2, "TRACE_LEVEL_FILE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0xb

    const-string v2, "TRACE_MAX_FILE_SIZE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0xc

    const-string v2, "COLLATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0xd

    const-string v2, "CLUSTER"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0xe

    const-string v2, "WRITE_DELAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0xf

    const-string v2, "DATABASE_EVENT_LISTENER"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x10

    const-string v2, "MAX_MEMORY_ROWS"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v2, "LOCK_MODE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x12

    const-string v2, "DB_CLOSE_DELAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x13

    const-string v2, "LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x14

    const-string v2, "THROTTLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x15

    const-string v2, "MAX_MEMORY_UNDO"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x16

    const-string v2, "MAX_LENGTH_INPLACE_LOB"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x17

    const-string v2, "COMPRESS_LOB"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x18

    const-string v2, "ALLOW_LITERALS"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x19

    const-string v2, "MULTI_THREADED"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x1a

    const-string v2, "SCHEMA"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x1b

    const-string v2, "OPTIMIZE_REUSE_RESULTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x1c

    const-string v2, "SCHEMA_SEARCH_PATH"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x1d

    const-string v2, "UNDO_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x1e

    const-string v2, "REFERENTIAL_INTEGRITY"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x1f

    const-string v2, "MVCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x20

    const-string v2, "MAX_OPERATION_MEMORY"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x21

    const-string v2, "EXCLUSIVE"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x22

    const-string v2, "CREATE_BUILD"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x23

    const-string v2, "@"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x24

    const-string v2, "QUERY_TIMEOUT"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x25

    const-string v2, "REDO_LOG_BINARY"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x26

    const-string v2, "BINARY_COLLATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x27

    const-string v2, "JAVA_OBJECT_SERIALIZER"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x28

    const-string v2, "RETENTION_TIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x29

    const-string v2, "QUERY_STATISTICS"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x2a

    const-string v2, "QUERY_STATISTICS_MAX_ENTRIES"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x2b

    const-string v2, "ROW_FACTORY"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x2c

    const-string v2, "BATCH_JOINS"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x2d

    const-string v2, "FORCE_JOIN_ORDER"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x2e

    const-string v2, "LAZY_QUERY_EXECUTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lorg/h2/command/dml/SetTypes;->getTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lorg/h2/command/dml/SetTypes;->getTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getTypeName(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/h2/command/dml/SetTypes;->getTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/h2/command/dml/SetTypes;->TYPES:Ljava/util/ArrayList;

    return-object v0
.end method
