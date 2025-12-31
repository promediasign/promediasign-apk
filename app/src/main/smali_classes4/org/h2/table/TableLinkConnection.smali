.class public Lorg/h2/table/TableLinkConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private conn:Ljava/sql/Connection;

.field private final driver:Ljava/lang/String;

.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/table/TableLinkConnection;",
            "Lorg/h2/table/TableLinkConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final password:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private useCounter:I

.field private final user:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lorg/h2/table/TableLinkConnection;",
            "Lorg/h2/table/TableLinkConnection;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/table/TableLinkConnection;->map:Ljava/util/HashMap;

    iput-object p2, p0, Lorg/h2/table/TableLinkConnection;->driver:Ljava/lang/String;

    iput-object p3, p0, Lorg/h2/table/TableLinkConnection;->url:Ljava/lang/String;

    iput-object p4, p0, Lorg/h2/table/TableLinkConnection;->user:Ljava/lang/String;

    iput-object p5, p0, Lorg/h2/table/TableLinkConnection;->password:Ljava/lang/String;

    return-void
.end method

.method public static open(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/TableLinkConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lorg/h2/table/TableLinkConnection;",
            "Lorg/h2/table/TableLinkConnection;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/h2/table/TableLinkConnection;"
        }
    .end annotation

    .line 1
    new-instance v6, Lorg/h2/table/TableLinkConnection;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/TableLinkConnection;-><init>(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    invoke-direct {v6}, Lorg/h2/table/TableLinkConnection;->open()V

    return-object v6

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/TableLinkConnection;

    if-nez p1, :cond_1

    invoke-direct {v6}, Lorg/h2/table/TableLinkConnection;->open()V

    invoke-virtual {p0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object v6, p1

    :goto_0
    iget p1, v6, Lorg/h2/table/TableLinkConnection;->useCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v6, Lorg/h2/table/TableLinkConnection;->useCounter:I

    monitor-exit p0

    return-object v6

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private open()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/h2/table/TableLinkConnection;->driver:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/table/TableLinkConnection;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/table/TableLinkConnection;->user:Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/table/TableLinkConnection;->password:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/h2/util/JdbcUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/TableLinkConnection;->conn:Ljava/sql/Connection;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close(Z)V
    .locals 3

    iget-object v0, p0, Lorg/h2/table/TableLinkConnection;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/h2/table/TableLinkConnection;->useCounter:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/h2/table/TableLinkConnection;->useCounter:I

    if-lez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/h2/table/TableLinkConnection;->map:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/h2/table/TableLinkConnection;->conn:Ljava/sql/Connection;

    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/h2/table/TableLinkConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/table/TableLinkConnection;

    iget-object v0, p0, Lorg/h2/table/TableLinkConnection;->driver:Ljava/lang/String;

    iget-object v2, p1, Lorg/h2/table/TableLinkConnection;->driver:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/TableLinkConnection;->url:Ljava/lang/String;

    iget-object v2, p1, Lorg/h2/table/TableLinkConnection;->url:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/TableLinkConnection;->user:Ljava/lang/String;

    iget-object v2, p1, Lorg/h2/table/TableLinkConnection;->user:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/table/TableLinkConnection;->password:Ljava/lang/String;

    iget-object p1, p1, Lorg/h2/table/TableLinkConnection;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/TableLinkConnection;->conn:Ljava/sql/Connection;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/h2/table/TableLinkConnection;->driver:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/Utils;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/h2/table/TableLinkConnection;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/Utils;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/h2/table/TableLinkConnection;->user:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/Utils;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/h2/table/TableLinkConnection;->password:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/Utils;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
