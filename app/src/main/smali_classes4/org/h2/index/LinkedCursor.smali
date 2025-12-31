.class public Lorg/h2/index/LinkedCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Cursor;


# instance fields
.field private current:Lorg/h2/result/Row;

.field private final prep:Ljava/sql/PreparedStatement;

.field private final rs:Ljava/sql/ResultSet;

.field private final session:Lorg/h2/engine/Session;

.field private final sql:Ljava/lang/String;

.field private final tableLink:Lorg/h2/table/TableLink;


# direct methods
.method public constructor <init>(Lorg/h2/table/TableLink;Ljava/sql/ResultSet;Lorg/h2/engine/Session;Ljava/lang/String;Ljava/sql/PreparedStatement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/h2/index/LinkedCursor;->session:Lorg/h2/engine/Session;

    iput-object p1, p0, Lorg/h2/index/LinkedCursor;->tableLink:Lorg/h2/table/TableLink;

    iput-object p2, p0, Lorg/h2/index/LinkedCursor;->rs:Ljava/sql/ResultSet;

    iput-object p4, p0, Lorg/h2/index/LinkedCursor;->sql:Ljava/lang/String;

    iput-object p5, p0, Lorg/h2/index/LinkedCursor;->prep:Ljava/sql/PreparedStatement;

    return-void
.end method


# virtual methods
.method public get()Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    return-object v0
.end method

.method public getSearchRow()Lorg/h2/result/SearchRow;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    return-object v0
.end method

.method public next()Z
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->rs:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->rs:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->tableLink:Lorg/h2/table/TableLink;

    iget-object v2, p0, Lorg/h2/index/LinkedCursor;->prep:Ljava/sql/PreparedStatement;

    iget-object v3, p0, Lorg/h2/index/LinkedCursor;->sql:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/h2/table/TableLink;->reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->tableLink:Lorg/h2/table/TableLink;

    invoke-virtual {v0}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    :goto_0
    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    invoke-interface {v0}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/LinkedCursor;->tableLink:Lorg/h2/table/TableLink;

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/index/LinkedCursor;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/index/LinkedCursor;->rs:Ljava/sql/ResultSet;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0}, Lorg/h2/table/Column;->getType()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Lorg/h2/value/DataType;->readValue(Lorg/h2/engine/SessionInterface;Ljava/sql/ResultSet;II)Lorg/h2/value/Value;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/index/LinkedCursor;->current:Lorg/h2/result/Row;

    invoke-interface {v2, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :goto_1
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public previous()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
