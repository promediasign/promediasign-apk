.class public Lorg/h2/fulltext/FullText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/fulltext/FullText$FullTextTrigger;
    }
.end annotation


# static fields
.field private static final FIELD_COLUMNS:Ljava/lang/String; = "COLUMNS"

.field private static final FIELD_KEYS:Ljava/lang/String; = "KEYS"

.field private static final FIELD_QUERY:Ljava/lang/String; = "QUERY"

.field private static final FIELD_SCHEMA:Ljava/lang/String; = "SCHEMA"

.field private static final FIELD_SCORE:Ljava/lang/String; = "SCORE"

.field private static final FIELD_TABLE:Ljava/lang/String; = "TABLE"

.field private static final SCHEMA:Ljava/lang/String; = "FT"

.field private static final SELECT_MAP_BY_WORD_ID:Ljava/lang/String; = "SELECT ROWID FROM FT.MAP WHERE WORDID=?"

.field private static final SELECT_ROW_BY_ID:Ljava/lang/String; = "SELECT KEY, INDEXID FROM FT.ROWS WHERE ID=?"

.field private static final TRIGGER_PREFIX:Ljava/lang/String; = "FT_"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColumnData(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/h2/expression/Expression;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/h2/expression/Expression;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Lorg/h2/expression/ConditionAndOr;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Lorg/h2/expression/ConditionAndOr;

    invoke-virtual {p2, v2}, Lorg/h2/expression/ConditionAndOr;->getExpression(Z)Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {p2, v1}, Lorg/h2/expression/ConditionAndOr;->getExpression(Z)Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-static {p0, p1, v0}, Lorg/h2/fulltext/FullText;->addColumnData(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/h2/expression/Expression;)V

    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullText;->addColumnData(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_0
    check-cast p2, Lorg/h2/expression/Comparison;

    invoke-virtual {p2, v2}, Lorg/h2/expression/Comparison;->getExpression(Z)Lorg/h2/expression/Expression;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {p2, v1}, Lorg/h2/expression/Comparison;->getExpression(Z)Lorg/h2/expression/Expression;

    move-result-object p2

    check-cast p2, Lorg/h2/expression/ValueExpression;

    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    if-nez p2, :cond_1

    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p0}, Lorg/h2/expression/ValueExpression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static addWords(Lorg/h2/fulltext/FullTextSettings;Ljava/util/HashSet;Ljava/io/Reader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/fulltext/FullTextSettings;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Reader;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p2}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    const/16 p2, 0x21

    const/16 v1, 0xff

    invoke-virtual {v0, p2, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getWhitespaceChars()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p2, v2

    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    iget-object p2, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/h2/fulltext/FullTextSettings;->convertWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Tokenizer error"

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static addWords(Lorg/h2/fulltext/FullTextSettings;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/fulltext/FullTextSettings;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getWhitespaceChars()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/fulltext/FullTextSettings;->convertWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static asString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x46

    if-eq p1, v0, :cond_2

    const/16 v0, 0x457

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string p0, ""

    return-object p0

    :pswitch_0
    :try_start_0
    instance-of p1, p0, Ljava/sql/Clob;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/sql/Clob;

    invoke-interface {p0}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    check-cast p0, Ljava/io/Reader;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lorg/h2/util/IOUtils;->readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :cond_2
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported column data type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :cond_3
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static closeAll()V
    .locals 0

    invoke-static {}, Lorg/h2/fulltext/FullTextSettings;->closeAll()V

    return-void
.end method

.method public static createIndex(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    const-string v0, "INSERT INTO FT.INDEXES(SCHEMA, TABLE, COLUMNS) VALUES(?, ?, ?)"

    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x3

    invoke-interface {v0, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullText;->createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullText;->indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "."

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "FT_"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "DROP TRIGGER IF EXISTS "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {p0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    if-eqz p3, :cond_0

    .line 65
    .line 66
    const-string p3, "CREATE TRIGGER IF NOT EXISTS "

    .line 67
    .line 68
    const-string v1, " AFTER INSERT, UPDATE, DELETE, ROLLBACK ON "

    .line 69
    .line 70
    invoke-static {p3, v0, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 p1, 0x2e

    .line 82
    .line 83
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, " FOR EACH ROW CALL \""

    .line 94
    .line 95
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-class p1, Lorg/h2/fulltext/FullText$FullTextTrigger;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const/16 p1, 0x22

    .line 108
    .line 109
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    :cond_0
    return-void
.end method

.method public static createResultSet(Z)Lorg/h2/tools/SimpleResultSet;
    .locals 3

    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string p0, "SCHEMA"

    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string p0, "TABLE"

    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string p0, "COLUMNS"

    const/16 v1, 0x7d3

    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string p0, "KEYS"

    :goto_0
    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    goto :goto_1

    :cond_0
    const-string p0, "QUERY"

    goto :goto_0

    :goto_1
    const-string p0, "SCORE"

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    return-object v0
.end method

.method public static createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/h2/fulltext/FullText;->createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static dropAll(Ljava/sql/Connection;)V
    .locals 2

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "DROP SCHEMA IF EXISTS FT"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "FT_"

    invoke-static {p0, v0}, Lorg/h2/fulltext/FullText;->removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->removeAllIndexes()V

    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getIgnoreList()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getWordList()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static dropIndex(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    const-string v0, "SELECT ID FROM FT.INDEXES WHERE SCHEMA=? AND TABLE=?"

    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {v0, v2, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    const-string v2, "DELETE FROM FT.INDEXES WHERE ID=?"

    invoke-interface {p0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lorg/h2/fulltext/FullText;->createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "DELETE FROM FT.ROWS WHERE INDEXID=? AND ROWNUM<10000"

    invoke-interface {p0, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    :cond_1
    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "DELETE FROM FT.MAP M WHERE NOT EXISTS (SELECT * FROM FT.ROWS R WHERE R.ID=M.ROWID) AND ROWID<10000"

    invoke-interface {p0, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p0

    if-nez p0, :cond_2

    return-void
.end method

.method public static hasChanged([Ljava/lang/Object;[Ljava/lang/Object;[I)Z
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    aget-object v4, p0, v3

    aget-object v3, p1, v3

    const/4 v5, 0x1

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    return v5

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lorg/h2/fulltext/FullText$FullTextTrigger;

    invoke-direct {v7}, Lorg/h2/fulltext/FullText$FullTextTrigger;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/h2/fulltext/FullText$FullTextTrigger;->init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p2

    invoke-interface {p2}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result p2

    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v7, p0, v1, v0}, Lorg/h2/fulltext/FullText$FullTextTrigger;->fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static init(Ljava/sql/Connection;)V
    .locals 5

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "CREATE SCHEMA IF NOT EXISTS FT"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.INDEXES(ID INT AUTO_INCREMENT PRIMARY KEY, SCHEMA VARCHAR, TABLE VARCHAR, COLUMNS VARCHAR, UNIQUE(SCHEMA, TABLE))"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.WORDS(ID INT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR, UNIQUE(NAME))"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.ROWS(ID IDENTITY, HASH INT, INDEXID INT, KEY VARCHAR, UNIQUE(HASH, INDEXID, KEY))"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.MAP(ROWID INT, WORDID INT, PRIMARY KEY(WORDID, ROWID))"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.IGNORELIST(LIST VARCHAR)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.SETTINGS(KEY VARCHAR PRIMARY KEY, VALUE VARCHAR)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE ALIAS IF NOT EXISTS FT_CREATE_INDEX FOR \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/h2/fulltext/FullText;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".createIndex\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FT_DROP_INDEX FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dropIndex\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FT_SEARCH FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".search\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FT_SEARCH_DATA FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".searchData\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FT_REINDEX FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".reindex\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CREATE ALIAS IF NOT EXISTS FT_DROP_ALL FOR \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dropAll\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object p0

    const-string v1, "SELECT * FROM FT.IGNORELIST"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/h2/fulltext/FullText;->setIgnoreList(Lorg/h2/fulltext/FullTextSettings;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "SELECT * FROM FT.SETTINGS"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "whitespaceChars"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/h2/fulltext/FullTextSettings;->setWhitespaceChars(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "SELECT * FROM FT.WORDS"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getWordList()Ljava/util/HashMap;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "NAME"

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ID"

    invoke-interface {v0, v4}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v2}, Lorg/h2/fulltext/FullTextSettings;->convertWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, Lorg/h2/fulltext/FullTextSettings;->setInitialized(Z)V

    return-void
.end method

.method public static parseKey(Ljava/sql/Connection;Ljava/lang/String;)[[Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    check-cast p0, Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p0

    check-cast p0, Lorg/h2/engine/Session;

    new-instance v2, Lorg/h2/command/Parser;

    invoke-direct {v2, p0}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v2, p1}, Lorg/h2/command/Parser;->parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/h2/fulltext/FullText;->addColumnData(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/h2/expression/Expression;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static quoteSQL(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x46

    if-eq p1, v0, :cond_2

    const/16 v0, 0x457

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string p0, ""

    return-object p0

    :pswitch_0
    instance-of p1, p0, Ljava/util/UUID;

    const-string v0, "\'"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, [B

    invoke-static {p0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported key data type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :cond_3
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/16 v0, 0x27

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    const-string v0, "\'"

    .line 10
    .line 11
    invoke-static {v0, p0, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    add-int/lit8 v3, v1, 0x2

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-ge v3, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ne v4, v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static reindex(Ljava/sql/Connection;)V
    .locals 3

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    const-string v0, "FT_"

    invoke-static {p0, v0}, Lorg/h2/fulltext/FullText;->removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/fulltext/FullTextSettings;->getWordList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "TRUNCATE TABLE FT.WORDS"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "TRUNCATE TABLE FT.ROWS"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "TRUNCATE TABLE FT.MAP"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "SELECT * FROM FT.INDEXES"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHEMA"

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TABLE"

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/h2/fulltext/FullText;->createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lorg/h2/fulltext/FullText;->indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "SELECT * FROM INFORMATION_SCHEMA.TRIGGERS"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TRIGGER_SCHEMA"

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRIGGER_NAME"

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TRIGGER "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static search(Ljava/sql/Connection;Ljava/lang/String;II)Ljava/sql/ResultSet;
    .locals 1

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/fulltext/FullText;->search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;

    move-result-object p0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;
    .locals 17

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {p4 .. p4}, Lorg/h2/fulltext/FullText;->createResultSet(Z)Lorg/h2/tools/SimpleResultSet;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v7

    invoke-interface {v7}, Ljava/sql/DatabaseMetaData;->getURL()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jdbc:columnlist:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v6

    :cond_0
    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/fulltext/FullTextSettings;->isInitialized()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static/range {p0 .. p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    :cond_2
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lorg/h2/fulltext/FullText;->addWords(Lorg/h2/fulltext/FullTextSettings;Ljava/util/HashSet;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/h2/fulltext/FullTextSettings;->getWordList()Ljava/util/HashMap;

    move-result-object v1

    const-string v9, "SELECT ROWID FROM FT.MAP WHERE WORDID=?"

    invoke-virtual {v7, v0, v9}, Lorg/h2/fulltext/FullTextSettings;->prepare(Ljava/sql/Connection;Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v12

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v5, v11}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v9}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v11

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v10, :cond_5

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_5
    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    :goto_2
    move-object v10, v12

    goto :goto_0

    :cond_7
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_5

    :cond_8
    const-string v1, "SELECT KEY, INDEXID FROM FT.ROWS WHERE ID=?"

    invoke-virtual {v7, v0, v1}, Lorg/h2/fulltext/FullTextSettings;->prepare(Ljava/sql/Connection;Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move/from16 v9, p3

    const/4 v10, 0x0

    :cond_9
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v1, v5, v11}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v11

    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_3

    :cond_a
    if-lez v9, :cond_b

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_b
    invoke-interface {v11, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lorg/h2/fulltext/FullTextSettings;->getIndexInfo(I)Lorg/h2/fulltext/IndexInfo;

    move-result-object v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-eqz p4, :cond_c

    invoke-static {v0, v12}, Lorg/h2/fulltext/FullText;->parseKey(Ljava/sql/Connection;Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v12

    iget-object v15, v11, Lorg/h2/fulltext/IndexInfo;->schema:Ljava/lang/String;

    iget-object v11, v11, Lorg/h2/fulltext/IndexInfo;->table:Ljava/lang/String;

    aget-object v16, v12, v4

    aget-object v12, v12, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v15, v14, v4

    aput-object v11, v14, v5

    aput-object v16, v14, v3

    const/4 v11, 0x3

    aput-object v12, v14, v11

    const/4 v11, 0x4

    aput-object v13, v14, v11

    invoke-virtual {v6, v14}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v11, Lorg/h2/fulltext/IndexInfo;->schema:Ljava/lang/String;

    invoke-static {v5}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lorg/h2/fulltext/IndexInfo;->table:Ljava/lang/String;

    invoke-static {v5}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " WHERE "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v5, v12, v4

    const/4 v5, 0x1

    aput-object v11, v12, v5

    invoke-virtual {v6, v12}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    :goto_4
    add-int/2addr v10, v5

    if-lez v2, :cond_9

    if-lt v10, v2, :cond_9

    :cond_d
    :goto_5
    return-object v6
.end method

.method public static searchData(Ljava/sql/Connection;Ljava/lang/String;II)Ljava/sql/ResultSet;
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/fulltext/FullText;->search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;

    move-result-object p0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static setColumns([ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_1
    if-ne v6, v5, :cond_1

    if-ge v7, v4, :cond_1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-ltz v6, :cond_2

    aput v6, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Column not found: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :cond_3
    return-void
.end method

.method public static setIgnoreList(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/h2/fulltext/FullText;->setIgnoreList(Lorg/h2/fulltext/FullTextSettings;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "TRUNCATE TABLE FT.IGNORELIST"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "INSERT INTO FT.IGNORELIST VALUES(?)"

    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p0}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method private static setIgnoreList(Lorg/h2/fulltext/FullTextSettings;Ljava/lang/String;)V
    .locals 4

    .line 2
    const/16 v0, 0x2c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getIgnoreList()Ljava/util/HashSet;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/h2/fulltext/FullTextSettings;->convertWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setWhitespaceChars(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/fulltext/FullTextSettings;->setWhitespaceChars(Ljava/lang/String;)V

    const-string v0, "MERGE INTO FT.SETTINGS VALUES(?, ?)"

    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const-string v0, "whitespaceChars"

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p0}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static throwException(Ljava/lang/String;)Ljava/sql/SQLException;
    .locals 2

    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "FULLTEXT"

    invoke-direct {v0, p0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
