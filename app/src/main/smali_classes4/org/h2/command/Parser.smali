.class public Lorg/h2/command/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AT:I = 0xc

.field private static final BIGGER:I = 0x8

.field private static final BIGGER_EQUAL:I = 0x7

.field private static final CHAR_DOLLAR_QUOTED_STRING:I = 0x9

.field private static final CHAR_DOT:I = 0x8

.field private static final CHAR_END:I = 0x1

.field private static final CHAR_NAME:I = 0x4

.field private static final CHAR_QUOTED:I = 0x3

.field private static final CHAR_SPECIAL_1:I = 0x5

.field private static final CHAR_SPECIAL_2:I = 0x6

.field private static final CHAR_STRING:I = 0x7

.field private static final CHAR_VALUE:I = 0x2

.field private static final CLOSE:I = 0x11

.field private static final CURRENT_DATE:I = 0x16

.field private static final CURRENT_TIME:I = 0x17

.field private static final CURRENT_TIMESTAMP:I = 0x15

.field private static final END:I = 0x4

.field private static final EQUAL:I = 0x6

.field private static final FALSE:I = 0x14

.field private static final IDENTIFIER:I = 0x2

.field private static final KEYWORD:I = 0x1

.field private static final MINUS:I = 0xd

.field private static final NOT_EQUAL:I = 0xb

.field private static final NULL:I = 0x12

.field private static final OPEN:I = 0x10

.field private static final PARAMETER:I = 0x3

.field private static final PLUS:I = 0xe

.field private static final ROWNUM:I = 0x18

.field private static final SMALLER:I = 0x9

.field private static final SMALLER_EQUAL:I = 0xa

.field private static final SPATIAL_INTERSECTS:I = 0x19

.field private static final STRING_CONCAT:I = 0xf

.field private static final TABLE_FILTER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/h2/table/TableFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRUE:I = 0x13

.field private static final VALUE:I = 0x5


# instance fields
.field private characterTypes:[I

.field private createView:Lorg/h2/command/ddl/CreateView;

.field private currentPrepared:Lorg/h2/command/Prepared;

.field private currentSelect:Lorg/h2/command/dml/Select;

.field private currentToken:Ljava/lang/String;

.field private currentTokenQuoted:Z

.field private currentTokenType:I

.field private currentValue:Lorg/h2/value/Value;

.field private final database:Lorg/h2/engine/Database;

.field private expectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final identifiersToUpper:Z

.field private indexedParameterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private lastParseIndex:I

.field private orderInFrom:I

.field private originalSQL:Ljava/lang/String;

.field private parameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private parseIndex:I

.field private recompileAlways:Z

.field private rightsChecked:Z

.field private schemaName:Ljava/lang/String;

.field private final session:Lorg/h2/engine/Session;

.field private sqlCommand:Ljava/lang/String;

.field private sqlCommandChars:[C

.field private suppliedParameterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/h2/command/Parser$1;

    invoke-direct {v0}, Lorg/h2/command/Parser$1;-><init>()V

    sput-object v0, Lorg/h2/command/Parser;->TABLE_FILTER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    iput-boolean v0, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    iput-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    return-void
.end method

.method private addExpected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addRoleOrRight(Lorg/h2/command/ddl/GrantRevoke;)Z
    .locals 3

    const-string v0, "SELECT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/h2/command/ddl/GrantRevoke;->addRight(I)V

    return v1

    :cond_0
    const-string v0, "DELETE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addRight(I)V

    return v1

    :cond_1
    const-string v0, "INSERT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const-string v0, "UPDATE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const-string v0, "ALL"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    goto :goto_0

    :cond_4
    const-string v0, "ALTER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v0, "ANY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "SCHEMA"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addRight(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addTable(Lorg/h2/table/Table;)V

    return v2

    :cond_5
    const-string v0, "CONNECT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "RESOURCE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addRoleName(Ljava/lang/String;)V

    return v2
.end method

.method private checkLiterals(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getAllowLiterals()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllowLiterals()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x16004

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private checkRunOver(III)V
    .locals 0

    if-ge p1, p2, :cond_0

    return-void

    :cond_0
    iput p3, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkSchema(Lorg/h2/schema/Schema;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x15fe0

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private columnIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/Column;
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/h2/command/Parser;->tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/command/Parser;->tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p4, Lorg/h2/command/dml/NoOperation;

    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p4, p1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    :cond_0
    return-object p4
.end method

.method public static compareTableFilters(Lorg/h2/table/TableFilter;Lorg/h2/table/TableFilter;)I
    .locals 0

    invoke-virtual {p0}, Lorg/h2/table/TableFilter;->getOrderInFrom()I

    move-result p0

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getOrderInFrom()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private createAffinityIndex(Lorg/h2/schema/Schema;Ljava/lang/String;[Lorg/h2/table/IndexColumn;)Lorg/h2/command/ddl/CreateIndex;
    .locals 2

    new-instance v0, Lorg/h2/command/ddl/CreateIndex;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p1}, Lorg/h2/command/ddl/CreateIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/CreateIndex;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lorg/h2/command/ddl/CreateIndex;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/CreateIndex;->setAffinity(Z)V

    return-object v0
.end method

.method private equalsToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private findFunctionAlias(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;
    .locals 4

    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getSchemaSearchPath()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/h2/schema/Schema;->findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "SESSION"

    invoke-direct {p0, v1, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/Mode;->sysDummy1:Z

    if-eqz v1, :cond_2

    const-string v1, "SYSIBM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private findSequence(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/schema/Sequence;
    .locals 4

    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getSchemaSearchPath()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAggregateType(Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lorg/h2/expression/Aggregate;->getAggregateType(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private static getCompareType(I)I
    .locals 1

    const/16 v0, 0x19

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDualTable(Z)Lorg/h2/table/Table;
    .locals 3

    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v1, "PUBLIC"

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    new-instance v2, Lorg/h2/table/RangeTable;

    invoke-direct {v2, v0, v1, v1, p1}, Lorg/h2/table/RangeTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    return-object v2
.end method

.method private static getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private getNested(Lorg/h2/table/TableFilter;)Lorg/h2/table/TableFilter;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SYSTEM_JOIN_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lorg/h2/table/TableFilter;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->getDualTable(Z)Lorg/h2/table/Table;

    move-result-object v4

    iget-boolean v6, p0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v7, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getOrderInFrom()I

    move-result v8

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;ILorg/h2/table/IndexHints;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    return-object v0
.end method

.method private static getSaveTokenType(Ljava/lang/String;Z)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x17

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const-string p1, "WITH"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v4

    :cond_0
    const-string p1, "WHERE"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_2
    const-string p1, "UNIQUE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :cond_1
    const-string p1, "UNION"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_3
    const-string p1, "TODAY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "TRUE"

    const/16 v0, 0x13

    invoke-static {p0, p1, v0}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_4
    const-string p1, "SYSTIMESTAMP"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    const-string p1, "SYSTIME"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const-string p1, "SYSDATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    const-string p1, "SELECT"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_5
    const-string p1, "ROWNUM"

    const/16 v0, 0x18

    invoke-static {p0, p1, v0}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_6
    const-string p1, "PRIMARY"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_7
    const-string v0, "ON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    :cond_6
    if-eqz p1, :cond_7

    const-string p1, "OFFSET"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v4

    :cond_7
    const-string p1, "ORDER"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_8
    const-string p1, "NOT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v4

    :cond_8
    const-string p1, "NATURAL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v4

    :cond_9
    const-string p1, "NULL"

    const/16 v0, 0x12

    invoke-static {p0, p1, v0}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_9
    const-string p1, "MINUS"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_a
    const-string p1, "LIMIT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v4

    :cond_a
    const-string p1, "LIKE"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_b
    const-string p1, "JOIN"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_c
    const-string p1, "INNER"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v4

    :cond_b
    const-string p1, "INTERSECT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v4

    :cond_c
    const-string p1, "IS"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_d
    const-string p1, "HAVING"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_e
    const-string p1, "GROUP"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_f
    const-string v0, "FROM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v4

    :cond_d
    const-string v0, "FOR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v4

    :cond_e
    const-string v0, "FULL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v4

    :cond_f
    if-eqz p1, :cond_10

    const-string p1, "FETCH"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_10
    const-string p1, "FALSE"

    const/16 v0, 0x14

    invoke-static {p0, p1, v0}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_10
    const-string p1, "EXCEPT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return v4

    :cond_11
    const-string p1, "EXISTS"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_11
    const-string p1, "DISTINCT"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_12
    const-string p1, "CHECK"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    return v4

    :cond_12
    const-string p1, "CURRENT_TIMESTAMP"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v3

    :cond_13
    const-string p1, "CURRENT_TIME"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    return v1

    :cond_14
    const-string p1, "CURRENT_DATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    return v2

    :cond_15
    const-string p1, "CROSS"

    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSchema()Lorg/h2/schema/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    return-object v0
.end method

.method private getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;
    .locals 1

    .line 2
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const v0, 0x15fdf

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private getSpecialType(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 p1, 0x24

    if-eq v0, p1, :cond_1

    const/16 p1, 0x25

    if-eq v0, p1, :cond_0

    const/16 p1, 0x2f

    if-eq v0, p1, :cond_0

    const/16 p1, 0x5b

    if-eq v0, p1, :cond_0

    const/16 p1, 0x5d

    if-eq v0, p1, :cond_0

    const/16 p1, 0x7b

    if-eq v0, p1, :cond_0

    const/16 p1, 0x7d

    if-eq v0, p1, :cond_0

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0xc

    return p1

    :pswitch_1
    const/16 p1, 0x8

    return p1

    :pswitch_2
    const/4 p1, 0x6

    return p1

    :pswitch_3
    const/16 p1, 0x9

    return p1

    :pswitch_4
    const/16 p1, 0xd

    return p1

    :pswitch_5
    const/16 p1, 0xe

    return p1

    :pswitch_6
    const/16 p1, 0x11

    return p1

    :pswitch_7
    const/16 p1, 0x10

    return p1

    :cond_0
    :pswitch_8
    return v2

    :cond_1
    :pswitch_9
    const/4 p1, 0x3

    return p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b

    const/16 v1, 0x21

    const/16 v3, 0xb

    if-eq v0, v1, :cond_9

    const/16 v1, 0x26

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_b

    const-string v0, "||"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0xf

    return p1

    :cond_3
    const-string v0, ">="

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x7

    return p1

    :cond_4
    const-string v0, "<="

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0xa

    return p1

    :cond_5
    const-string v0, "<>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v3

    :cond_6
    const-string v0, "::"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    const-string v0, ":="

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v2

    :cond_8
    const-string v0, "&&"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x19

    return p1

    :cond_9
    const-string v0, "!="

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    :cond_a
    const-string v0, "!~"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v2

    :cond_b
    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_8
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method private getSyntaxError()Lorg/h2/message/DbException;
    .locals 4

    iget-object v0, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v2, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object v0

    return-object v0
.end method

.method private getTokenType(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    invoke-static {p1, v0}, Lorg/h2/command/Parser;->getSaveTokenType(Ljava/lang/String;Z)I

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    iput-object v1, v0, Lorg/h2/command/Parser;->originalSQL:Ljava/lang/String;

    iput-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    new-array v4, v3, [C

    new-array v3, v3, [I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v1, 0x20

    aput-char v1, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v6, v2, :cond_19

    aget-char v10, v4, v6

    const/16 v11, 0x5b

    const/16 v12, 0x5d

    const/4 v13, 0x3

    const/16 v14, 0x22

    if-eq v10, v11, :cond_17

    if-eq v10, v12, :cond_7

    const/16 v11, 0x5f

    const/4 v12, 0x4

    if-eq v10, v11, :cond_e

    const/16 v11, 0x60

    if-eq v10, v11, :cond_15

    const/16 v11, 0xd

    const/16 v15, 0xa

    const/4 v5, 0x2

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    packed-switch v10, :pswitch_data_2

    goto/16 :goto_e

    :pswitch_0
    add-int/lit8 v5, v6, 0x1

    aget-char v8, v4, v5

    const/16 v10, 0x2f

    const/16 v12, 0x2a

    if-ne v8, v12, :cond_4

    aput-char v1, v4, v6

    aput-char v1, v4, v5

    add-int/lit8 v5, v6, 0x2

    invoke-direct {v0, v5, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    :goto_2
    aget-char v7, v4, v5

    if-ne v7, v12, :cond_3

    add-int/lit8 v7, v5, 0x1

    aget-char v8, v4, v7

    if-eq v8, v10, :cond_1

    goto :goto_6

    :cond_1
    aput-char v1, v4, v5

    aput-char v1, v4, v7

    :goto_3
    move v6, v7

    :goto_4
    const/4 v7, 0x1

    :cond_2
    :goto_5
    const/4 v8, 0x0

    goto/16 :goto_15

    :cond_3
    :goto_6
    add-int/lit8 v7, v5, 0x1

    aput-char v1, v4, v5

    invoke-direct {v0, v7, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    move v5, v7

    goto :goto_2

    :cond_4
    if-ne v8, v10, :cond_7

    move v5, v6

    :goto_7
    aget-char v7, v4, v5

    if-eq v7, v15, :cond_6

    if-eq v7, v11, :cond_6

    add-int/lit8 v7, v2, -0x1

    if-lt v5, v7, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 v7, v5, 0x1

    aput-char v1, v4, v5

    invoke-direct {v0, v7, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    move v5, v7

    goto :goto_7

    :cond_6
    :goto_8
    move v6, v5

    goto :goto_4

    :cond_7
    :pswitch_1
    const/4 v8, 0x5

    goto/16 :goto_15

    :pswitch_2
    const/16 v5, 0x8

    const/16 v8, 0x8

    goto/16 :goto_15

    :pswitch_3
    add-int/lit8 v5, v6, 0x1

    aget-char v5, v4, v5

    const/16 v8, 0x2d

    if-ne v5, v8, :cond_7

    move v5, v6

    :goto_9
    aget-char v7, v4, v5

    if-eq v7, v15, :cond_6

    if-eq v7, v11, :cond_6

    add-int/lit8 v7, v2, -0x1

    if-lt v5, v7, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v7, v5, 0x1

    aput-char v1, v4, v5

    invoke-direct {v0, v7, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    move v5, v7

    goto :goto_9

    :pswitch_4
    const/4 v5, 0x7

    aput v5, v3, v6

    move v8, v6

    :goto_a
    add-int/2addr v8, v9

    aget-char v10, v4, v8

    const/16 v11, 0x27

    if-eq v10, v11, :cond_9

    invoke-direct {v0, v8, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    goto :goto_a

    :cond_9
    move v6, v8

    const/4 v8, 0x7

    goto/16 :goto_15

    :pswitch_5
    add-int/lit8 v10, v6, 0x1

    aget-char v11, v4, v10

    const/16 v13, 0x24

    if-ne v11, v13, :cond_d

    if-eqz v6, :cond_a

    add-int/lit8 v11, v6, -0x1

    aget-char v11, v4, v11

    if-gt v11, v1, :cond_d

    :cond_a
    aput-char v1, v4, v6

    aput-char v1, v4, v10

    add-int/lit8 v5, v6, 0x2

    invoke-direct {v0, v5, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    :goto_b
    aget-char v7, v4, v5

    if-ne v7, v13, :cond_c

    add-int/lit8 v7, v5, 0x1

    aget-char v8, v4, v7

    if-eq v8, v13, :cond_b

    goto :goto_c

    :cond_b
    aput-char v1, v4, v5

    aput-char v1, v4, v7

    goto/16 :goto_3

    :cond_c
    :goto_c
    add-int/lit8 v7, v5, 0x1

    const/16 v8, 0x9

    aput v8, v3, v5

    invoke-direct {v0, v7, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    move v5, v7

    goto :goto_b

    :cond_d
    if-eq v8, v12, :cond_e

    if-ne v8, v5, :cond_7

    :cond_e
    :goto_d
    const/4 v8, 0x4

    goto/16 :goto_15

    :pswitch_6
    iget-object v8, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v8}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v8

    iget-boolean v8, v8, Lorg/h2/engine/Mode;->supportPoundSymbolForColumnNames:Z

    if-eqz v8, :cond_f

    goto :goto_d

    :cond_f
    :goto_e
    const/16 v8, 0x61

    if-lt v10, v8, :cond_10

    const/16 v8, 0x7a

    if-gt v10, v8, :cond_10

    iget-boolean v5, v0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-eqz v5, :cond_e

    add-int/lit8 v10, v10, -0x20

    int-to-char v5, v10

    aput-char v5, v4, v6

    :goto_f
    const/4 v7, 0x1

    goto :goto_d

    :cond_10
    const/16 v8, 0x41

    if-lt v10, v8, :cond_11

    const/16 v8, 0x5a

    if-gt v10, v8, :cond_11

    goto :goto_d

    :cond_11
    const/16 v8, 0x30

    if-lt v10, v8, :cond_12

    const/16 v8, 0x39

    if-gt v10, v8, :cond_12

    const/4 v8, 0x2

    goto/16 :goto_15

    :cond_12
    if-le v10, v1, :cond_2

    invoke-static {v10}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_13

    goto/16 :goto_5

    :cond_13
    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-eqz v5, :cond_e

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v5, v10, :cond_e

    aput-char v5, v4, v6

    goto :goto_f

    :pswitch_7
    aput v13, v3, v6

    move v5, v6

    :goto_10
    add-int/2addr v5, v9

    aget-char v8, v4, v5

    if-eq v8, v14, :cond_14

    invoke-direct {v0, v5, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    goto :goto_10

    :cond_14
    move v6, v5

    :goto_11
    const/4 v8, 0x3

    goto :goto_15

    :pswitch_8
    const/4 v5, 0x6

    const/4 v8, 0x6

    goto :goto_15

    :cond_15
    aput-char v14, v4, v6

    aput v13, v3, v6

    move v5, v6

    :goto_12
    add-int/2addr v5, v9

    aget-char v7, v4, v5

    if-eq v7, v11, :cond_16

    invoke-direct {v0, v5, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    aget-char v7, v4, v5

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    aput-char v7, v4, v5

    goto :goto_12

    :cond_16
    aput-char v14, v4, v5

    :goto_13
    move v6, v5

    const/4 v7, 0x1

    goto :goto_11

    :cond_17
    iget-object v5, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v5

    iget-boolean v5, v5, Lorg/h2/engine/Mode;->squareBracketQuotedNames:Z

    if-eqz v5, :cond_7

    aput-char v14, v4, v6

    aput v13, v3, v6

    move v5, v6

    :goto_14
    add-int/2addr v5, v9

    aget-char v7, v4, v5

    if-eq v7, v12, :cond_18

    invoke-direct {v0, v5, v2, v6}, Lorg/h2/command/Parser;->checkRunOver(III)V

    goto :goto_14

    :cond_18
    aput-char v14, v4, v5

    goto :goto_13

    :goto_15
    aput v8, v3, v6

    add-int/2addr v6, v9

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_19
    iput-object v4, v0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    aput v9, v3, v2

    iput-object v3, v0, Lorg/h2/command/Parser;->characterTypes:[I

    if-eqz v7, :cond_1a

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    iput-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    :cond_1a
    const/4 v1, 0x0

    iput v1, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_8
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private isKeyword(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public static isKeyword(Ljava/lang/String;Z)Z
    .locals 2

    .line 2
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/h2/command/Parser;->getSaveTokenType(Ljava/lang/String;Z)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private isSelect()Z
    .locals 2

    iget v0, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    :goto_0
    const-string v1, "("

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SELECT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FROM"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "WITH"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iput v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return v1
.end method

.method private isToken(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->addExpected(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private parse(Ljava/lang/String;Z)Lorg/h2/command/Prepared;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->initialize(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    :goto_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    iput-object p1, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    iput-object p1, p0, Lorg/h2/command/Parser;->createView:Lorg/h2/command/ddl/CreateView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/h2/command/Parser;->recompileAlways:Z

    iget-object p1, p0, Lorg/h2/command/Parser;->suppliedParameterList:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parsePrepared()Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method private parseAction()I
    .locals 1

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCascadeOrRestrict()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "NO"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACTION"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "SET"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "NULL"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-string v0, "DEFAULT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method private parseAlter()Lorg/h2/command/Prepared;
    .locals 1

    const-string v0, "TABLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterTable()Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "USER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterUser()Lorg/h2/command/ddl/AlterUser;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "INDEX"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterIndex()Lorg/h2/command/ddl/AlterIndexRename;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "SCHEMA"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterSchema()Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "SEQUENCE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterSequence()Lorg/h2/command/dml/AlterSequence;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "VIEW"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterView()Lorg/h2/command/ddl/AlterView;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseAlterIndex()Lorg/h2/command/ddl/AlterIndexRename;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    new-instance v3, Lorg/h2/command/ddl/AlterIndexRename;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v3, v4}, Lorg/h2/command/ddl/AlterIndexRename;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v3, v2}, Lorg/h2/command/ddl/AlterIndexRename;->setOldSchema(Lorg/h2/schema/Schema;)V

    invoke-virtual {v3, v1}, Lorg/h2/command/ddl/AlterIndexRename;->setOldName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/AlterIndexRename;->setIfExists(Z)V

    const-string v0, "RENAME"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "TO"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/AlterIndexRename;->setNewName(Ljava/lang/String;)V

    return-object v3
.end method

.method private parseAlterSchema()Lorg/h2/command/Prepared;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    const-string v3, "RENAME"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v3, "TO"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_0
    const v0, 0x15fdf

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Lorg/h2/command/ddl/AlterSchemaRename;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/AlterSchemaRename;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v0, v4}, Lorg/h2/command/ddl/AlterSchemaRename;->setOldSchema(Lorg/h2/schema/Schema;)V

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    invoke-virtual {v0, v3}, Lorg/h2/command/ddl/AlterSchemaRename;->setNewName(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseAlterSequence()Lorg/h2/command/dml/AlterSequence;
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/dml/AlterSequence;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/dml/AlterSequence;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, v1}, Lorg/h2/command/dml/AlterSequence;->setSequenceName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/h2/command/dml/AlterSequence;->setIfExists(Z)V

    :goto_0
    const-string v0, "RESTART"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WITH"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/dml/AlterSequence;->setStartWith(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_0
    const-string v0, "INCREMENT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/dml/AlterSequence;->setIncrement(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_1
    const-string v0, "MINVALUE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/dml/AlterSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_2
    const-string v1, "NOMINVALUE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v3}, Lorg/h2/command/dml/AlterSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_3
    const-string v1, "MAXVALUE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/dml/AlterSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_4
    const-string v4, "NOMAXVALUE"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Lorg/h2/command/dml/AlterSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_5
    const-string v4, "CYCLE"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v2, v0}, Lorg/h2/command/dml/AlterSequence;->setCycle(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_6
    const-string v5, "NOCYCLE"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_7
    const-string v5, "NO"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x1

    const-string v8, "CACHE"

    if-eqz v5, :cond_b

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_5
    invoke-static {v6, v7}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Lorg/h2/command/dml/AlterSequence;->setCacheSize(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    goto :goto_6

    :cond_c
    const-string v0, "NOCACHE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    return-object v2
.end method

.method private parseAlterTable()Lorg/h2/command/Prepared;
    .locals 15

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    const-string v4, "ADD"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v2, v3, v1}, Lorg/h2/command/Parser;->parseAlterTableAddConstraintIf(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/DefineCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2, v3, v1}, Lorg/h2/command/Parser;->parseAlterTableAddColumn(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v4, "SET"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    const-string v4, "REFERENTIAL_INTEGRITY"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readBooleanSetting()Z

    move-result v4

    new-instance v5, Lorg/h2/command/dml/AlterTableSet;

    iget-object v7, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v8, 0x37

    invoke-direct {v5, v7, v3, v8, v4}, Lorg/h2/command/dml/AlterTableSet;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V

    invoke-virtual {v5, v2}, Lorg/h2/command/dml/AlterTableSet;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/h2/command/dml/AlterTableSet;->setIfTableExists(Z)V

    const-string v1, "CHECK"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5, v6}, Lorg/h2/command/dml/AlterTableSet;->setCheckExisting(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "NOCHECK"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v5, v0}, Lorg/h2/command/dml/AlterTableSet;->setCheckExisting(Z)V

    :cond_3
    :goto_0
    return-object v5

    :cond_4
    const-string v5, "RENAME"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "CONSTRAINT"

    const-string v9, "TO"

    const-string v10, "COLUMN"

    if-eqz v7, :cond_7

    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v4, Lorg/h2/command/ddl/AlterTableRenameColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v3}, Lorg/h2/command/ddl/AlterTableRenameColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setIfTableExists(Z)V

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setOldColumnName(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setNewColumnName(Ljava/lang/String;)V

    return-object v4

    :cond_5
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v4, Lorg/h2/command/ddl/AlterTableRenameConstraint;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v3}, Lorg/h2/command/ddl/AlterTableRenameConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameConstraint;->setConstraintName(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameConstraint;->setNewConstraintName(Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v1, v4}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    new-instance v3, Lorg/h2/command/ddl/AlterTableRename;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/h2/command/ddl/AlterTableRename;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v3, v2}, Lorg/h2/command/ddl/AlterTableRename;->setOldTableName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/AlterTableRename;->setNewTableName(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/h2/command/ddl/AlterTableRename;->setIfTableExists(Z)V

    const-string v0, "HIDDEN"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/AlterTableRename;->setHidden(Z)V

    return-object v3

    :cond_7
    const-string v7, "DROP"

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    new-instance v5, Lorg/h2/command/ddl/AlterTableDropConstraint;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    invoke-direct {v5, v6, v7, v0}, Lorg/h2/command/ddl/AlterTableDropConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    invoke-virtual {v5, v4}, Lorg/h2/command/ddl/AlterTableDropConstraint;->setConstraintName(Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v1, v5}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_8
    const-string v4, "FOREIGN"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "KEY"

    if-eqz v4, :cond_9

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    new-instance v5, Lorg/h2/command/ddl/AlterTableDropConstraint;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    invoke-direct {v5, v6, v7, v0}, Lorg/h2/command/ddl/AlterTableDropConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    invoke-virtual {v5, v4}, Lorg/h2/command/ddl/AlterTableDropConstraint;->setConstraintName(Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v1, v5}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v4, "INDEX"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/h2/command/ddl/DropIndex;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/h2/command/ddl/DropIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/DropIndex;->setIndexName(Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v1, v4}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v4, "PRIMARY"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v1}, Lorg/h2/command/Parser;->tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_b
    invoke-virtual {v0}, Lorg/h2/table/Table;->getPrimaryKey()Lorg/h2/index/Index;

    move-result-object v0

    new-instance v1, Lorg/h2/command/ddl/DropIndex;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, v3}, Lorg/h2/command/ddl/DropIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropIndex;->setIndexName(Ljava/lang/String;)V

    return-object v1

    :cond_c
    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v8

    new-instance v11, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v11, v0, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {p0, v3, v2, v1}, Lorg/h2/command/Parser;->tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;

    move-result-object v13

    :cond_d
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v13, :cond_e

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual {v13, v0}, Lorg/h2/table/Table;->doesColumnExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_f
    invoke-virtual {v13, v0}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ","

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v11, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    invoke-virtual {v11, v12}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setColumnsToRemove(Ljava/util/ArrayList;)V

    return-object v11

    :cond_10
    const-string v8, "CHANGE"

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/h2/command/Parser;->columnIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v5

    if-nez v5, :cond_11

    goto :goto_1

    :cond_11
    invoke-virtual {v5}, Lorg/h2/table/Column;->isNullable()Z

    move-result v6

    :goto_1
    invoke-direct {p0, v4, v6}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    new-instance v5, Lorg/h2/command/ddl/AlterTableRenameColumn;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v5, v6, v3}, Lorg/h2/command/ddl/AlterTableRenameColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v5, v2}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setIfTableExists(Z)V

    invoke-virtual {v5, v0}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setOldColumnName(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setNewColumnName(Ljava/lang/String;)V

    return-object v5

    :cond_12
    const-string v8, "MODIFY"

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/h2/command/Parser;->parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v8, "ALTER"

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v2, v8, v1}, Lorg/h2/command/Parser;->columnIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v10

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v0, Lorg/h2/command/ddl/AlterTableRenameColumn;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v4, v3}, Lorg/h2/command/ddl/AlterTableRenameColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setIfTableExists(Z)V

    invoke-virtual {v0, v8}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setOldColumnName(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setNewColumnName(Ljava/lang/String;)V

    return-object v0

    :cond_14
    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const/16 v7, 0x9

    const-string v9, "NOT"

    const/16 v11, 0xa

    const-string v12, "DEFAULT"

    const-string v13, "NULL"

    if-eqz v5, :cond_16

    invoke-direct {p0, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v4, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    invoke-virtual {v0, v10}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    invoke-virtual {v0, v11}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setDefaultExpression(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_15
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v13}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v0, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v4, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    invoke-virtual {v0, v10}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    invoke-virtual {v0, v7}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    return-object v0

    :cond_16
    const-string v5, "TYPE"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-direct {p0, v3, v2, v8, v1}, Lorg/h2/command/Parser;->parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "DATA"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v8, v1}, Lorg/h2/command/Parser;->parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    :cond_18
    new-instance v4, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    invoke-virtual {v4, v10}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    invoke-direct {p0, v13}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v4, v7}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    return-object v4

    :cond_19
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0, v13}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    return-object v4

    :cond_1a
    invoke-direct {p0, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v4, v11}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setDefaultExpression(Lorg/h2/expression/Expression;)V

    return-object v4

    :cond_1b
    const-string v1, "INVISIBLE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x57

    if-eqz v1, :cond_1c

    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setVisible(Z)V

    return-object v4

    :cond_1c
    const-string v0, "VISIBLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    invoke-virtual {v4, v6}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setVisible(Z)V

    return-object v4

    :cond_1d
    const-string v0, "RESTART"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "WITH"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    new-instance v4, Lorg/h2/command/dml/AlterSequence;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v3}, Lorg/h2/command/dml/AlterSequence;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v4, v10}, Lorg/h2/command/dml/AlterSequence;->setColumn(Lorg/h2/table/Column;)V

    invoke-virtual {v4, v0}, Lorg/h2/command/dml/AlterSequence;->setStartWith(Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v3, v2, v1, v4}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_1e
    const-string v0, "SELECTIVITY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v4, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    invoke-virtual {v0, v10}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setSelectivity(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_1f
    invoke-direct {p0, v3, v2, v8, v1}, Lorg/h2/command/Parser;->parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseAlterTableAddColumn(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;
    .locals 3

    const-string v0, "COLUMN"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    new-instance v0, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    const/4 p2, 0x7

    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "("

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "AFTER"

    const-string v1, "BEFORE"

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfNotExists(Z)V

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, ","

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ")"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setAddBefore(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, p3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setAddAfter(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result p2

    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfNotExists(Z)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setNewColumns(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private parseAlterTableAddConstraintIf(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/DefineCommand;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/Mode;->indexDefinitionInCreateTable:Z

    iget-object v5, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v5

    iget-boolean v5, v5, Lorg/h2/engine/Mode;->allowAffinityKey:Z

    const-string v6, "CONSTRAINT"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    move-object v10, v6

    move v6, v4

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move-object v10, v8

    move-object v11, v10

    const/4 v6, 0x0

    :goto_0
    const-string v12, "PRIMARY"

    invoke-direct {v0, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "INDEX"

    const-string v14, "KEY"

    const-string v15, "("

    if-eqz v12, :cond_3

    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v4, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v5, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v2, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    const/4 v2, 0x6

    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    invoke-virtual {v4, v11}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setComment(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setConstraintName(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIfTableExists(Z)V

    const-string v1, "HASH"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4, v7}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setPrimaryKeyHash(Z)V

    :cond_1
    invoke-direct {v0, v15}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    invoke-direct {v0, v13}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    iget-object v3, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3, v1}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndex(Lorg/h2/index/Index;)V

    :cond_2
    return-object v4

    :cond_3
    const-string v12, "BTREE"

    const-string v7, "USING"

    if-eqz v4, :cond_8

    invoke-direct {v0, v13}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_4
    iget v4, v0, Lorg/h2/command/Parser;->lastParseIndex:I

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->read()V

    iget-object v5, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {v5}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v5

    if-eqz v5, :cond_5

    iput v4, v0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->read()V

    return-object v8

    :cond_5
    new-instance v4, Lorg/h2/command/ddl/CreateIndex;

    iget-object v5, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v2}, Lorg/h2/command/ddl/CreateIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v4, v11}, Lorg/h2/command/ddl/CreateIndex;->setComment(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/CreateIndex;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/h2/command/ddl/CreateIndex;->setIfTableExists(Z)V

    invoke-direct {v0, v15}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/CreateIndex;->setIndexName(Ljava/lang/String;)V

    invoke-direct {v0, v15}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/CreateIndex;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    invoke-direct {v0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {v0, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_7
    return-object v4

    :cond_8
    if-eqz v5, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIfAffinity()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v0, v15}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    invoke-direct {v0, v2, v1, v4}, Lorg/h2/command/Parser;->createAffinityIndex(Lorg/h2/schema/Schema;Ljava/lang/String;[Lorg/h2/table/IndexColumn;)Lorg/h2/command/ddl/CreateIndex;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/h2/command/ddl/CreateIndex;->setIfTableExists(Z)V

    return-object v1

    :cond_9
    const-string v4, "CHECK"

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v5, v7, v2, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setCheckExpression(Lorg/h2/expression/Expression;)V

    goto/16 :goto_1

    :cond_a
    const-string v5, "UNIQUE"

    invoke-direct {v0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {v0, v13}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    new-instance v5, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v8, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v5, v8, v2, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    invoke-direct {v0, v15}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v15}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    invoke-direct {v0, v13}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    iget-object v8, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v8, v2}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndex(Lorg/h2/index/Index;)V

    :cond_c
    invoke-direct {v0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {v0, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    const-string v5, "FOREIGN"

    invoke-direct {v0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v5, v7, v2, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v0, v15}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    invoke-direct {v0, v13}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v7, v6}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndex(Lorg/h2/index/Index;)V

    :cond_e
    const-string v6, "REFERENCES"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v0, v5, v2, v1}, Lorg/h2/command/Parser;->parseReferences(Lorg/h2/command/ddl/AlterTableAddConstraint;Lorg/h2/schema/Schema;Ljava/lang/String;)V

    :cond_f
    :goto_1
    const-string v2, "NOCHECK"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v5, v9}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setCheckExisting(Z)V

    goto :goto_2

    :cond_10
    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setCheckExisting(Z)V

    :goto_2
    invoke-virtual {v5, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIfTableExists(Z)V

    invoke-virtual {v5, v10}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setConstraintName(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setComment(Ljava/lang/String;)V

    return-object v5

    :cond_11
    if-nez v10, :cond_12

    return-object v8

    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/command/Parser;->columnIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result v1

    :goto_0
    invoke-direct {p0, p3, v1}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object p3

    new-instance v1, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v1, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    const/16 p1, 0xb

    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    invoke-virtual {v1, p3}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setNewColumn(Lorg/h2/table/Column;)V

    return-object v1
.end method

.method private parseAlterUser()Lorg/h2/command/ddl/AlterUser;
    .locals 3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SET"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/h2/command/ddl/AlterUser;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Database;->getUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    const-string v0, "PASSWORD"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setPassword(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_0
    const-string v0, "SALT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setSalt(Lorg/h2/expression/Expression;)V

    const-string v0, "HASH"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setHash(Lorg/h2/expression/Expression;)V

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    const-string v1, "RENAME"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "TO"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v1, Lorg/h2/command/ddl/AlterUser;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Database;->getUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setNewName(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string v1, "ADMIN"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lorg/h2/command/ddl/AlterUser;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Database;->getUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    const-string v0, "TRUE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setAdmin(Z)V

    goto :goto_2

    :cond_4
    const-string v0, "FALSE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    return-object v1

    :cond_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseAlterView()Lorg/h2/command/ddl/AlterView;
    .locals 5

    new-instance v0, Lorg/h2/command/ddl/AlterView;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/AlterView;-><init>(Lorg/h2/engine/Session;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterView;->setIfExists(Z)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v3

    instance-of v4, v3, Lorg/h2/table/TableView;

    if-nez v4, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fb5

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    check-cast v3, Lorg/h2/table/TableView;

    invoke-virtual {v0, v3}, Lorg/h2/command/ddl/AlterView;->setView(Lorg/h2/table/TableView;)V

    const-string v1, "RECOMPILE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseAnalyze()Lorg/h2/command/Prepared;
    .locals 2

    new-instance v0, Lorg/h2/command/ddl/Analyze;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/Analyze;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "TABLE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/Analyze;->setTable(Lorg/h2/table/Table;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/Analyze;->setTop(I)V

    :cond_0
    const-string v1, "SAMPLE_SIZE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/Analyze;->setTop(I)V

    :cond_1
    return-object v0
.end method

.method private parseAutoIncrement(Lorg/h2/table/Column;)V
    .locals 11

    const-string v0, "("

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v3

    const-string v0, ","

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v1

    :cond_0
    const-string v0, ")"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    move-wide v9, v1

    move-wide v7, v3

    goto :goto_0

    :cond_1
    move-wide v7, v1

    move-wide v9, v7

    :goto_0
    const/4 v6, 0x1

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lorg/h2/table/Column;->setAutoIncrement(ZJJ)V

    return-void
.end method

.method private parseBackup()Lorg/h2/command/Prepared;
    .locals 2

    new-instance v0, Lorg/h2/command/dml/BackupCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/BackupCommand;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "TO"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/BackupCommand;->setFileName(Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method private parseBegin()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "WORK"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TRANSACTION"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_0
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    return-object v0
.end method

.method private parseCall()Lorg/h2/command/dml/Call;
    .locals 2

    new-instance v0, Lorg/h2/command/dml/Call;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Call;-><init>(Lorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Call;->setExpression(Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method private parseCascadeOrRestrict()Ljava/lang/Integer;
    .locals 1

    const-string v0, "CASCADE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "RESTRICT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseCheckpoint()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "SYNC"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4c

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x49

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    :goto_0
    return-object v0
.end method

.method private parseColumn(Lorg/h2/table/Table;)Lorg/h2/table/Column;
    .locals 2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->rowId:Z

    if-eqz v1, :cond_0

    const-string v1, "_ROWID_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/h2/table/Table;->getRowIdColumn()Lorg/h2/table/Column;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p1

    return-object p1
.end method

.method private parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;
    .locals 13

    const-string v0, "IDENTITY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "BIGSERIAL"

    const-string v3, "SERIAL"

    const/4 v4, 0x1

    if-nez v1, :cond_2

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/h2/table/Column;

    const/4 v5, 0x4

    invoke-direct {v1, p1, v5}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lorg/h2/table/Column;->setOriginalSQL(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->serialColumnIsNotPK:Z

    if-nez p1, :cond_3

    :goto_0
    invoke-virtual {v1, v4}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v1, Lorg/h2/table/Column;

    const/4 v5, 0x5

    invoke-direct {v1, p1, v5}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lorg/h2/table/Column;->setOriginalSQL(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->serialColumnIsNotPK:Z

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    const-string p1, "INVISIBLE"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const/4 v11, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {v1, v11}, Lorg/h2/table/Column;->setVisible(Z)V

    goto :goto_3

    :cond_4
    const-string p1, "VISIBLE"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1, v4}, Lorg/h2/table/Column;->setVisible(Z)V

    :cond_5
    :goto_3
    const-string p1, "NOT"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const-string v12, "NULL"

    if-eqz v5, :cond_6

    invoke-direct {p0, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lorg/h2/table/Column;->setNullable(Z)V

    goto :goto_4

    :cond_6
    invoke-direct {p0, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v4}, Lorg/h2/table/Column;->setNullable(Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lorg/h2/table/Column;->isNullable()Z

    move-result v5

    and-int/2addr p2, v5

    invoke-virtual {v1, p2}, Lorg/h2/table/Column;->setNullable(Z)V

    :goto_4
    const-string p2, "AS"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/h2/table/Column;->setComputedExpression(Lorg/h2/expression/Expression;)V

    goto/16 :goto_6

    :cond_8
    const-string v5, "DEFAULT"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v5, p2}, Lorg/h2/table/Column;->setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    goto :goto_6

    :cond_9
    const-string v6, "GENERATED"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "ALWAYS"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "BY"

    if-nez v6, :cond_a

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p2, "("

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    const-wide/16 v5, 0x1

    if-eqz p2, :cond_c

    const-string p2, "START"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p2, "WITH"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v8

    const-string p2, ","

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const-string p2, "INCREMENT"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v5

    :cond_b
    const-string p2, ")"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    move-wide v7, v8

    move-wide v9, v5

    goto :goto_5

    :cond_c
    move-wide v7, v5

    move-wide v9, v7

    :goto_5
    invoke-virtual {v1, v4}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    const/4 v6, 0x1

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Lorg/h2/table/Column;->setAutoIncrement(ZJJ)V

    :cond_d
    :goto_6
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-direct {p0, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lorg/h2/table/Column;->setNullable(Z)V

    goto :goto_7

    :cond_e
    invoke-direct {p0, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_7
    const-string p2, "AUTO_INCREMENT"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_9

    :cond_f
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    invoke-virtual {v1, v4}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    :goto_8
    invoke-direct {p0, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    :goto_9
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_8

    :cond_11
    :goto_a
    const-string p1, "NULL_TO_DEFAULT"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {v1, v4}, Lorg/h2/table/Column;->setConvertNullToDefault(Z)V

    :cond_12
    const-string p1, "SEQUENCE"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lorg/h2/command/Parser;->readSequence()Lorg/h2/schema/Sequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/table/Column;->setSequence(Lorg/h2/schema/Sequence;)V

    :cond_13
    const-string p1, "SELECTIVITY"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/table/Column;->setSelectivity(I)V

    :cond_14
    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {v1, p1}, Lorg/h2/table/Column;->setComment(Ljava/lang/String;)V

    :cond_15
    return-object v1
.end method

.method private parseColumnList()[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;
    .locals 4

    .line 2
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v1

    const-string v2, ")"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->parseColumn(Lorg/h2/table/Table;)Lorg/h2/table/Column;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const p1, 0xa489

    invoke-virtual {v2}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/table/Column;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/h2/table/Column;

    return-object p1
.end method

.method private parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    const-string v2, "LONG"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "RAW"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " RAW"

    .line 1
    :goto_0
    invoke-static {v0, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2
    :cond_1
    const-string v2, "DOUBLE"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PRECISION"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " PRECISION"

    goto :goto_0

    :cond_2
    const-string v2, "CHARACTER"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "VARYING"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " VARYING"

    goto :goto_0

    :cond_3
    const-string v2, "TIMESTAMP"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "WITH"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TIMEZONE"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, " WITH TIMEZONE"

    goto :goto_0

    :cond_4
    const-string v2, "TIME"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "ZONE"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, " WITH TIME ZONE"

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    :goto_1
    iget-boolean v4, v1, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v4, :cond_6

    invoke-static {v0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v4, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, v0}, Lorg/h2/engine/Database;->findUserDataType(Ljava/lang/String;)Lorg/h2/engine/UserDataType;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/h2/engine/UserDataType;->getColumn()Lorg/h2/table/Column;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Column;->getType()I

    move-result v4

    invoke-static {v4}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v4

    invoke-virtual {v0}, Lorg/h2/table/Column;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lorg/h2/table/Column;->getOriginalSQL()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v10

    invoke-virtual {v0}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v12

    invoke-virtual {v0}, Lorg/h2/table/Column;->getScale()I

    move-result v13

    invoke-virtual {v0}, Lorg/h2/table/Column;->getEnumerators()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v8

    move-object v8, v0

    move-object v0, v9

    move-object/from16 v9, v21

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v4

    if-eqz v4, :cond_1f

    const/4 v8, 0x0

    move-wide v10, v5

    move-object v9, v8

    move-object v14, v9

    const/4 v12, -0x1

    const/4 v13, -0x1

    :goto_2
    iget-object v15, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v15}, Lorg/h2/engine/Database;->getIgnoreCase()Z

    move-result v15

    const/16 v3, 0xd

    if-eqz v15, :cond_8

    iget v15, v4, Lorg/h2/value/DataType;->type:I

    if-ne v15, v3, :cond_8

    const-string v15, "VARCHAR_CASESENSITIVE"

    invoke-direct {v1, v15, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v0, "VARCHAR_IGNORECASE"

    invoke-static {v0}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v4

    :cond_8
    if-eqz v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->read()V

    :cond_9
    cmp-long v2, v10, v5

    if-nez v2, :cond_a

    iget-wide v10, v4, Lorg/h2/value/DataType;->defaultPrecision:J

    :cond_a
    if-ne v12, v7, :cond_b

    iget v12, v4, Lorg/h2/value/DataType;->defaultDisplaySize:I

    :cond_b
    if-ne v13, v7, :cond_c

    iget v13, v4, Lorg/h2/value/DataType;->defaultScale:I

    :cond_c
    iget-boolean v2, v4, Lorg/h2/value/DataType;->supportsPrecision:Z

    const-string v5, ","

    const-string v6, ")"

    const-string v7, "("

    if-nez v2, :cond_12

    iget-boolean v2, v4, Lorg/h2/value/DataType;->supportsScale:Z

    if-eqz v2, :cond_d

    goto/16 :goto_6

    :cond_d
    iget v2, v4, Lorg/h2/value/DataType;->type:I

    const/16 v15, 0x19

    if-ne v2, v15, :cond_11

    invoke-direct {v1, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-direct {v1, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    invoke-direct {v1, v6}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [Ljava/lang/String;

    :cond_f
    move-object v2, v0

    :try_start_0
    invoke-static {v14}, Lorg/h2/value/ValueEnum;->check([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_10
    :goto_4
    move-object v7, v4

    :goto_5
    move/from16 v16, v12

    move v15, v13

    move-object/from16 v17, v14

    move-wide v13, v10

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3, v2}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_11
    invoke-direct {v1, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    invoke-direct {v1, v6}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_4

    :cond_12
    :goto_6
    invoke-direct {v1, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "MAX"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v17

    const-string v2, "K"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-wide/16 v19, 0x400

    :goto_7
    mul-long v17, v17, v19

    goto :goto_8

    :cond_13
    const-string v2, "M"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-wide/32 v19, 0x100000

    goto :goto_7

    :cond_14
    const-string v2, "G"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-wide/32 v19, 0x40000000

    goto :goto_7

    :cond_15
    :goto_8
    const-wide v19, 0x7fffffffffffffffL

    cmp-long v2, v17, v19

    move-object v15, v4

    if-lez v2, :cond_16

    move-wide/from16 v3, v19

    goto :goto_9

    :cond_16
    move-wide/from16 v3, v17

    :goto_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "CHAR"

    invoke-direct {v1, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-object v7, v15

    iget-boolean v12, v7, Lorg/h2/value/DataType;->supportsScale:Z

    if-eqz v12, :cond_19

    invoke-direct {v1, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readInt()I

    move-result v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide v10, v3

    move v3, v5

    goto :goto_a

    :cond_17
    iget v5, v7, Lorg/h2/value/DataType;->type:I

    const/16 v12, 0xb

    if-ne v5, v12, :cond_18

    invoke-static {v3, v4}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v3

    goto :goto_a

    :cond_18
    move-wide v10, v3

    const/4 v3, 0x0

    goto :goto_a

    :cond_19
    move-wide v10, v3

    move v3, v13

    :goto_a
    invoke-static {v10, v11}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v12

    .line 3
    invoke-static {v0, v6}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v13, v3

    goto :goto_b

    :cond_1a
    move-object v7, v4

    .line 4
    :goto_b
    invoke-direct {v1, v6}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_5

    :goto_c
    const-string v3, "FOR"

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "BIT"

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v3, "DATA"

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    iget v3, v7, Lorg/h2/value/DataType;->type:I

    const/16 v2, 0xd

    if-ne v3, v2, :cond_1b

    const-string v2, "BINARY"

    invoke-static {v2}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v4

    goto :goto_d

    :cond_1b
    move-object v4, v7

    :goto_d
    const-string v2, "UNSIGNED"

    invoke-direct {v1, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    iget v12, v4, Lorg/h2/value/DataType;->type:I

    int-to-long v2, v15

    cmp-long v4, v2, v13

    if-gtz v4, :cond_1e

    new-instance v2, Lorg/h2/table/Column;

    move-object v10, v2

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII[Ljava/lang/String;)V

    if-eqz v8, :cond_1d

    invoke-virtual {v8}, Lorg/h2/table/Column;->isNullable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/h2/table/Column;->setNullable(Z)V

    iget-object v3, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v8}, Lorg/h2/table/Column;->getDefaultExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/h2/table/Column;->setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    invoke-virtual {v8}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v3

    const/16 v4, 0x32

    if-eq v3, v4, :cond_1c

    invoke-virtual {v2, v3}, Lorg/h2/table/Column;->setSelectivity(I)V

    :cond_1c
    iget-object v3, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    move-object/from16 v4, p1

    invoke-virtual {v8, v3, v4}, Lorg/h2/table/Column;->getCheckConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v3

    iget-object v4, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4, v3}, Lorg/h2/table/Column;->addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    :cond_1d
    invoke-virtual {v2, v9}, Lorg/h2/table/Column;->setComment(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/h2/table/Column;->setOriginalSQL(Ljava/lang/String;)V

    return-object v2

    :cond_1e
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const v2, 0x15fc3

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1f
    const v0, 0xc354

    iget-object v2, v1, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseComment()Lorg/h2/command/Prepared;
    .locals 9

    const-string v0, "ON"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "TABLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_c

    const-string v0, "VIEW"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "COLUMN"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_1
    const-string v0, "CONSTANT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    :goto_0
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_2
    const-string v0, "CONSTRAINT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const-string v0, "ALIAS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto :goto_0

    :cond_4
    const-string v0, "INDEX"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string v0, "ROLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-string v0, "SCHEMA"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_0

    :cond_7
    const-string v0, "SEQUENCE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_0

    :cond_8
    const-string v0, "TRIGGER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_0

    :cond_9
    const-string v0, "USER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_0

    :cond_a
    const-string v0, "DOMAIN"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    goto :goto_0

    :cond_b
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_2
    new-instance v7, Lorg/h2/command/ddl/SetComment;

    iget-object v8, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v7, v8}, Lorg/h2/command/ddl/SetComment;-><init>(Lorg/h2/engine/Session;)V

    if-eqz v6, :cond_12

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v6

    :cond_d
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "."

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v8}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v2, :cond_f

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "database name"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_f
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_10

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_11

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lorg/h2/command/ddl/SetComment;->setColumn(Z)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lorg/h2/command/ddl/SetComment;->setColumnName(Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "table.column"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_12
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v2, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lorg/h2/command/ddl/SetComment;->setSchemaName(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/h2/command/ddl/SetComment;->setObjectName(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/h2/command/ddl/SetComment;->setObjectType(I)V

    const-string v0, "IS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/h2/command/ddl/SetComment;->setCommentExpression(Lorg/h2/expression/Expression;)V

    return-object v7
.end method

.method private parseCommit()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "TRANSACTION"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4e

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setTransactionName(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x47

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    const-string v1, "WORK"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    return-object v0
.end method

.method private parseCreate()Lorg/h2/command/Prepared;
    .locals 13

    const-string v0, "OR"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "REPLACE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "FORCE"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "VIEW"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3, v0}, Lorg/h2/command/Parser;->parseCreateView(ZZ)Lorg/h2/command/ddl/CreateView;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "ALIAS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseCreateFunctionAlias(Z)Lorg/h2/command/ddl/CreateFunctionAlias;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "SEQUENCE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateSequence()Lorg/h2/command/ddl/CreateSequence;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "USER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateUser()Lorg/h2/command/ddl/CreateUser;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "TRIGGER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseCreateTrigger(Z)Lorg/h2/command/ddl/CreateTrigger;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, "ROLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateRole()Lorg/h2/command/ddl/CreateRole;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, "SCHEMA"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateSchema()Lorg/h2/command/ddl/CreateSchema;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "CONSTANT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateConstant()Lorg/h2/command/ddl/CreateConstant;

    move-result-object v0

    return-object v0

    :cond_8
    const-string v0, "DOMAIN"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateUserDataType()Lorg/h2/command/ddl/CreateUserDataType;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "TYPE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateUserDataType()Lorg/h2/command/ddl/CreateUserDataType;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v0, "DATATYPE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateUserDataType()Lorg/h2/command/ddl/CreateUserDataType;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "AGGREGATE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseCreateAggregate(Z)Lorg/h2/command/ddl/CreateAggregate;

    move-result-object v0

    return-object v0

    :cond_c
    const-string v0, "LINKED"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0, v2, v2, v3}, Lorg/h2/command/Parser;->parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v4, "MEMORY"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :cond_e
    const-string v4, "CACHED"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_f
    const/4 v4, 0x0

    goto :goto_1

    :goto_2
    const-string v6, "LOCAL"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "TEMPORARY"

    const-string v8, "TABLE"

    if-eqz v6, :cond_11

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v1, v2, v3}, Lorg/h2/command/Parser;->parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v4}, Lorg/h2/command/Parser;->parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v6, "GLOBAL"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v1, v1, v3}, Lorg/h2/command/Parser;->parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v1, v1, v4}, Lorg/h2/command/Parser;->parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v6, "TEMP"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_22

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto/16 :goto_9

    :cond_14
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez v4, :cond_16

    if-nez v5, :cond_16

    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getDefaultTableType()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3

    :cond_15
    const/4 v1, 0x0

    :goto_3
    move v4, v1

    :cond_16
    invoke-direct {p0, v2, v2, v4}, Lorg/h2/command/Parser;->parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;

    move-result-object v0

    return-object v0

    :cond_17
    const-string v0, "PRIMARY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "ON"

    const-string v4, "HASH"

    const/4 v5, 0x0

    if-eqz v0, :cond_19

    const-string v0, "KEY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v6

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    move-object v8, v5

    move v2, v6

    move-object v9, v7

    :goto_4
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_6

    :cond_18
    move-object v8, v5

    move-object v9, v8

    goto :goto_4

    :cond_19
    const-string v0, "UNIQUE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "SPATIAL"

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "INDEX"

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v8

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v9

    move v2, v8

    move-object v8, v5

    :goto_5
    const/4 v5, 0x0

    move v12, v6

    move v6, v0

    move v0, v12

    goto :goto_6

    :cond_1a
    move-object v8, v5

    move-object v9, v8

    goto :goto_5

    :goto_6
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    new-instance v9, Lorg/h2/command/ddl/CreateIndex;

    iget-object v10, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/h2/command/ddl/CreateIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v9, v2}, Lorg/h2/command/ddl/CreateIndex;->setIfNotExists(Z)V

    invoke-virtual {v9, v5}, Lorg/h2/command/ddl/CreateIndex;->setPrimaryKey(Z)V

    invoke-virtual {v9, v3}, Lorg/h2/command/ddl/CreateIndex;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lorg/h2/command/ddl/CreateIndex;->setUnique(Z)V

    invoke-virtual {v9, v8}, Lorg/h2/command/ddl/CreateIndex;->setIndexName(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/h2/command/ddl/CreateIndex;->setComment(Ljava/lang/String;)V

    const-string v2, "("

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/h2/command/ddl/CreateIndex;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    const-string v2, "USING"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    if-nez v0, :cond_1f

    if-nez v7, :cond_1e

    const-string v2, "BTREE"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_7

    :cond_1b
    const-string v2, "RTREE"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v0

    const/4 v7, 0x1

    goto :goto_8

    :cond_1c
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_8

    :cond_1d
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1e
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_20
    :goto_7
    move v1, v0

    :goto_8
    invoke-virtual {v9, v1}, Lorg/h2/command/ddl/CreateIndex;->setHash(Z)V

    invoke-virtual {v9, v7}, Lorg/h2/command/ddl/CreateIndex;->setSpatial(Z)V

    return-object v9

    :cond_21
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_22
    :goto_9
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0, v1, v1, v3}, Lorg/h2/command/Parser;->parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v1, v1, v4}, Lorg/h2/command/Parser;->parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;

    move-result-object v0

    return-object v0
.end method

.method private parseCreateAggregate(Z)Lorg/h2/command/ddl/CreateAggregate;
    .locals 3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    new-instance v1, Lorg/h2/command/ddl/CreateAggregate;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/CreateAggregate;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/CreateAggregate;->setForce(Z)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v2, p1}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->getAggregateType(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/CreateAggregate;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/CreateAggregate;->setSchema(Lorg/h2/schema/Schema;)V

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/CreateAggregate;->setIfNotExists(Z)V

    const-string p1, "FOR"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/CreateAggregate;->setJavaClassMethod(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const v0, 0x15fdc

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseCreateConstant()Lorg/h2/command/ddl/CreateConstant;
    .locals 6

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VALUE"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    new-instance v4, Lorg/h2/command/ddl/CreateConstant;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v2}, Lorg/h2/command/ddl/CreateConstant;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/CreateConstant;->setConstantName(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/h2/command/ddl/CreateConstant;->setExpression(Lorg/h2/expression/Expression;)V

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/CreateConstant;->setIfNotExists(Z)V

    return-object v4

    :cond_0
    const v0, 0x16002

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseCreateFunctionAlias(Z)Lorg/h2/command/ddl/CreateFunctionAlias;
    .locals 5

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v2, v1}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->getAggregateType(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    new-instance v2, Lorg/h2/command/ddl/CreateFunctionAlias;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/CreateFunctionAlias;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setForce(Z)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setAliasName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateFunctionAlias;->setIfNotExists(Z)V

    const-string p1, "DETERMINISTIC"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setDeterministic(Z)V

    const-string p1, "NOBUFFER"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setBufferResultSetToLocalTemp(Z)V

    const-string p1, "AS"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "FOR"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setJavaClassMethod(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    const p1, 0x15fdc

    invoke-static {p1, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;
    .locals 5

    const-string v0, "TABLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/ddl/CreateLinkedTable;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/CreateLinkedTable;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setTemporary(Z)V

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setGlobalTemporary(Z)V

    invoke-virtual {v2, p3}, Lorg/h2/command/ddl/CreateLinkedTable;->setForce(Z)V

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateLinkedTable;->setIfNotExists(Z)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateLinkedTable;->setTableName(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setComment(Ljava/lang/String;)V

    const-string p1, "("

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setDriver(Ljava/lang/String;)V

    const-string p1, ","

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setUrl(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setUser(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setPassword(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setOriginalSchema(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setOriginalTable(Ljava/lang/String;)V

    const-string p1, ")"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "EMIT"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const-string p1, "UPDATES"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setEmitUpdates(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "READONLY"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setReadOnly(Z)V

    :cond_2
    :goto_0
    return-object v2
.end method

.method private parseCreateRole()Lorg/h2/command/ddl/CreateRole;
    .locals 2

    new-instance v0, Lorg/h2/command/ddl/CreateRole;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/CreateRole;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateRole;->setIfNotExists(Z)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateRole;->setRoleName(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseCreateSchema()Lorg/h2/command/ddl/CreateSchema;
    .locals 2

    new-instance v0, Lorg/h2/command/ddl/CreateSchema;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/CreateSchema;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateSchema;->setIfNotExists(Z)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateSchema;->setSchemaName(Ljava/lang/String;)V

    const-string v1, "AUTHORIZATION"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateSchema;->setAuthorization(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string v1, "WITH"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableEngineParams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateSchema;->setTableEngineParams(Ljava/util/ArrayList;)V

    :cond_1
    return-object v0
.end method

.method private parseCreateSequence()Lorg/h2/command/ddl/CreateSequence;
    .locals 11

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/ddl/CreateSequence;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/CreateSequence;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setIfNotExists(Z)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateSequence;->setSequenceName(Ljava/lang/String;)V

    :goto_0
    const-string v0, "START"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WITH"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setStartWith(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_0
    const-string v0, "INCREMENT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setIncrement(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_1
    const-string v0, "MINVALUE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_2
    const-string v1, "NOMINVALUE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/CreateSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_3
    const-string v1, "MAXVALUE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_4
    const-string v4, "NOMAXVALUE"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/CreateSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_5
    const-string v4, "CYCLE"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v2, v6}, Lorg/h2/command/ddl/CreateSequence;->setCycle(Z)V

    goto :goto_0

    :cond_6
    const-string v5, "NOCYCLE"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    :goto_3
    invoke-virtual {v2, v7}, Lorg/h2/command/ddl/CreateSequence;->setCycle(Z)V

    goto :goto_0

    :cond_7
    const-string v5, "NO"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v8, 0x1

    const-string v10, "CACHE"

    if-eqz v5, :cond_b

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_4
    invoke-static {v8, v9}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setCacheSize(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    goto :goto_5

    :cond_c
    const-string v0, "NOCACHE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    const-string v0, "BELONGS_TO_TABLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v2, v6}, Lorg/h2/command/ddl/CreateSequence;->setBelongsToTable(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "ORDER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_0

    :cond_f
    return-object v2
.end method

.method private parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v4

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const-string v7, "SESSION"

    iget-object v8, v0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v7}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move/from16 v7, p2

    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v8

    new-instance v9, Lorg/h2/command/ddl/CreateTable;

    iget-object v10, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v9, v10, v8}, Lorg/h2/command/ddl/CreateTable;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v9, v2}, Lorg/h2/command/ddl/CreateTable;->setPersistIndexes(Z)V

    invoke-virtual {v9, v1}, Lorg/h2/command/ddl/CreateTable;->setTemporary(Z)V

    invoke-virtual {v9, v7}, Lorg/h2/command/ddl/CreateTable;->setGlobalTemporary(Z)V

    invoke-virtual {v9, v4}, Lorg/h2/command/ddl/CreateTable;->setIfNotExists(Z)V

    invoke-virtual {v9, v5}, Lorg/h2/command/ddl/CreateTable;->setTableName(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/h2/command/ddl/CreateTable;->setComment(Ljava/lang/String;)V

    const-string v4, "("

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    const-string v11, "AUTO_INCREMENT"

    const-string v12, "NOT"

    if-eqz v4, :cond_d

    const-string v4, ")"

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    :goto_1
    invoke-direct {v0, v5, v8, v6}, Lorg/h2/command/Parser;->parseAlterTableAddConstraintIf(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/DefineCommand;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v9, v4}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    goto/16 :goto_7

    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v13

    invoke-virtual {v13}, Lorg/h2/table/Column;->isAutoIncrement()Z

    move-result v14

    const/4 v15, 0x6

    if-eqz v14, :cond_2

    invoke-virtual {v13}, Lorg/h2/table/Column;->isPrimaryKey()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v13, v6}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    new-instance v14, Lorg/h2/table/IndexColumn;

    invoke-direct {v14}, Lorg/h2/table/IndexColumn;-><init>()V

    new-array v7, v3, [Lorg/h2/table/IndexColumn;

    aput-object v14, v7, v6

    aget-object v14, v7, v6

    invoke-virtual {v13}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v14, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    new-instance v10, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v14, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v10, v14, v8, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    invoke-virtual {v10, v15}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    invoke-virtual {v10, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    invoke-virtual {v9, v10}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    :cond_2
    invoke-virtual {v9, v13}, Lorg/h2/command/ddl/CreateTable;->addColumn(Lorg/h2/table/Column;)V

    const-string v7, "CONSTRAINT"

    invoke-direct {v0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    iget-object v10, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v10}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v10

    iget-boolean v10, v10, Lorg/h2/engine/Mode;->allowAffinityKey:Z

    if-eqz v10, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIfAffinity()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    const-string v14, "PRIMARY"

    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "KEY"

    if-eqz v14, :cond_6

    invoke-direct {v0, v15}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v14, "HASH"

    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v14

    new-instance v15, Lorg/h2/table/IndexColumn;

    invoke-direct {v15}, Lorg/h2/table/IndexColumn;-><init>()V

    new-array v2, v3, [Lorg/h2/table/IndexColumn;

    aput-object v15, v2, v6

    aget-object v15, v2, v6

    invoke-virtual {v13}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    new-instance v3, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v15, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v3, v15, v8, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    invoke-virtual {v3, v14}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setPrimaryKeyHash(Z)V

    const/4 v14, 0x6

    invoke-virtual {v3, v14}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    invoke-virtual {v3, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    invoke-virtual {v9, v3}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    invoke-direct {v0, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {v0, v13}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    :cond_5
    if-eqz v10, :cond_8

    invoke-direct {v0, v8, v5, v2}, Lorg/h2/command/Parser;->createAffinityIndex(Lorg/h2/schema/Schema;Ljava/lang/String;[Lorg/h2/table/IndexColumn;)Lorg/h2/command/ddl/CreateIndex;

    move-result-object v2

    goto :goto_4

    :cond_6
    if-eqz v10, :cond_7

    invoke-direct {v0, v15}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v2, Lorg/h2/table/IndexColumn;

    invoke-direct {v2}, Lorg/h2/table/IndexColumn;-><init>()V

    const/4 v3, 0x1

    new-array v10, v3, [Lorg/h2/table/IndexColumn;

    aput-object v2, v10, v6

    aget-object v2, v10, v6

    invoke-virtual {v13}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    invoke-direct {v0, v8, v5, v10}, Lorg/h2/command/Parser;->createAffinityIndex(Lorg/h2/schema/Schema;Ljava/lang/String;[Lorg/h2/table/IndexColumn;)Lorg/h2/command/ddl/CreateIndex;

    move-result-object v2

    :goto_4
    invoke-virtual {v9, v2}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    goto :goto_5

    :cond_7
    const-string v2, "UNIQUE"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v3, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v3, v8, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    invoke-virtual {v2, v7}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setConstraintName(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    new-instance v3, Lorg/h2/table/IndexColumn;

    invoke-direct {v3}, Lorg/h2/table/IndexColumn;-><init>()V

    const/4 v10, 0x1

    new-array v14, v10, [Lorg/h2/table/IndexColumn;

    aput-object v3, v14, v6

    aget-object v3, v14, v6

    iput-object v4, v3, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    invoke-virtual {v2, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_5
    invoke-direct {v0, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "NULL"

    if-eqz v2, :cond_9

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Lorg/h2/table/Column;->setNullable(Z)V

    goto :goto_6

    :cond_9
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_6
    const-string v2, "CHECK"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v13, v3, v2}, Lorg/h2/table/Column;->addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    :cond_a
    const-string v2, "REFERENCES"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v3, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v3, v8, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    invoke-virtual {v2, v7}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setConstraintName(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    new-instance v3, Lorg/h2/table/IndexColumn;

    invoke-direct {v3}, Lorg/h2/table/IndexColumn;-><init>()V

    const/4 v7, 0x1

    new-array v10, v7, [Lorg/h2/table/IndexColumn;

    aput-object v3, v10, v6

    aget-object v3, v10, v6

    iput-object v4, v3, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    invoke-virtual {v2, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    invoke-direct {v0, v2, v8, v5}, Lorg/h2/command/Parser;->parseReferences(Lorg/h2/command/ddl/AlterTableAddConstraint;Lorg/h2/schema/Schema;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    :cond_b
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v2, p3

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_d
    :goto_8
    const-string v2, "COMMENT"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "="

    if-eqz v2, :cond_e

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    :cond_e
    const-string v2, "ENGINE"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    const-string v4, "InnoDb"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_9

    :cond_f
    const-string v4, "MyISAM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    invoke-static {v2}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/h2/command/ddl/CreateTable;->setTableEngine(Ljava/lang/String;)V

    :cond_12
    :goto_9
    const-string v2, "WITH"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readTableEngineParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/h2/command/ddl/CreateTable;->setTableEngineParams(Ljava/util/ArrayList;)V

    :cond_13
    invoke-direct {v0, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    iget v2, v0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_14

    iget-object v2, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->getType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_14

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_a

    :cond_14
    iget-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v2, v0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v3, "integer"

    invoke-static {v1, v2, v3}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_15
    :goto_a
    const-string v2, "DEFAULT"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const-string v2, "CHARSET"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "UTF8"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "UTF8MB4"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_16
    const-string v2, "PERSISTENT"

    if-eqz v1, :cond_1b

    const-string v1, "ON"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "COMMIT"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v1, "DROP"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v9}, Lorg/h2/command/ddl/CreateTable;->setOnCommitDrop()V

    goto :goto_b

    :cond_17
    const-string v1, "DELETE"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "ROWS"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/h2/command/ddl/CreateTable;->setOnCommitTruncate()V

    goto :goto_b

    :cond_18
    invoke-direct {v0, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v9, v6}, Lorg/h2/command/ddl/CreateTable;->setPersistData(Z)V

    goto :goto_b

    :cond_19
    const-string v1, "LOGGED"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_1a
    :goto_b
    const-string v1, "TRANSACTIONAL"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/h2/command/ddl/DefineCommand;->setTransactional(Z)V

    goto :goto_c

    :cond_1b
    if-nez p3, :cond_1c

    invoke-direct {v0, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lorg/h2/command/ddl/CreateTable;->setPersistData(Z)V

    :cond_1c
    :goto_c
    const-string v1, "HIDDEN"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/h2/command/ddl/CreateTable;->setHidden(Z)V

    goto :goto_d

    :cond_1d
    const/4 v1, 0x1

    :goto_d
    const-string v2, "AS"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "SORTED"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v9, v1}, Lorg/h2/command/ddl/CreateTable;->setSortedInsertMode(Z)V

    :cond_1e
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/h2/command/ddl/CreateTable;->setQuery(Lorg/h2/command/dml/Query;)V

    :cond_1f
    const-string v1, "ROW_FORMAT"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    :cond_20
    return-object v9
.end method

.method private parseCreateTrigger(Z)Lorg/h2/command/ddl/CreateTrigger;
    .locals 12

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    const-string v3, "INSTEAD"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-string v3, "OF"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const-string v3, "BEFORE"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "AFTER"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_2
    const-string v9, "INSERT"

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const-string v9, "UPDATE"

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    or-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_4
    const-string v9, "DELETE"

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    or-int/lit8 v7, v7, 0x4

    goto :goto_2

    :cond_5
    const-string v9, "SELECT"

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    or-int/lit8 v7, v7, 0x8

    goto :goto_2

    :cond_6
    const-string v8, "ROLLBACK"

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_2
    const-string v9, ","

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "ON"

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    new-instance v2, Lorg/h2/command/ddl/CreateTrigger;

    iget-object v10, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lorg/h2/command/ddl/CreateTrigger;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setForce(Z)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateTrigger;->setTriggerName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateTrigger;->setIfNotExists(Z)V

    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/CreateTrigger;->setInsteadOf(Z)V

    invoke-virtual {v2, v6}, Lorg/h2/command/ddl/CreateTrigger;->setBefore(Z)V

    invoke-virtual {v2, v8}, Lorg/h2/command/ddl/CreateTrigger;->setOnRollback(Z)V

    invoke-virtual {v2, v7}, Lorg/h2/command/ddl/CreateTrigger;->setTypeMask(I)V

    invoke-virtual {v2, v9}, Lorg/h2/command/ddl/CreateTrigger;->setTableName(Ljava/lang/String;)V

    const-string p1, "FOR"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "EACH"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "ROW"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/h2/command/ddl/CreateTrigger;->setRowBased(Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v4}, Lorg/h2/command/ddl/CreateTrigger;->setRowBased(Z)V

    :goto_3
    const-string p1, "QUEUE"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setQueueSize(I)V

    :cond_8
    const-string p1, "NOWAIT"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setNoWait(Z)V

    const-string p1, "AS"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setTriggerSource(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string p1, "CALL"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setTriggerClassName(Ljava/lang/String;)V

    :goto_4
    return-object v2

    :cond_a
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseCreateUser()Lorg/h2/command/ddl/CreateUser;
    .locals 2

    new-instance v0, Lorg/h2/command/ddl/CreateUser;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/CreateUser;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setIfNotExists(Z)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setUserName(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setComment(Ljava/lang/String;)V

    const-string v1, "PASSWORD"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setPassword(Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_0
    const-string v1, "SALT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setSalt(Lorg/h2/expression/Expression;)V

    const-string v1, "HASH"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setHash(Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_1
    const-string v1, "IDENTIFIED"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BY"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string v1, "ADMIN"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setAdmin(Z)V

    :cond_2
    return-object v0

    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseCreateUserDataType()Lorg/h2/command/ddl/CreateUserDataType;
    .locals 5

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    new-instance v1, Lorg/h2/command/ddl/CreateUserDataType;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/CreateUserDataType;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/CreateUserDataType;->setTypeName(Ljava/lang/String;)V

    const-string v2, "AS"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "VALUE"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v2

    const-string v3, "CHECK"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4, v3}, Lorg/h2/table/Column;->addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/h2/table/Column;->rename(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/CreateUserDataType;->setColumn(Lorg/h2/table/Column;)V

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/CreateUserDataType;->setIfNotExists(Z)V

    return-object v1
.end method

.method private parseCreateView(ZZ)Lorg/h2/command/ddl/CreateView;
    .locals 5

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/ddl/CreateView;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/CreateView;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    iput-object v2, p0, Lorg/h2/command/Parser;->createView:Lorg/h2/command/ddl/CreateView;

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateView;->setViewName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateView;->setIfNotExists(Z)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateView;->setComment(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateView;->setOrReplace(Z)V

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateView;->setForce(Z)V

    const-string p2, "("

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseColumnList()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateView;->setColumnNames([Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "AS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->setParsingView(Z)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/command/Prepared;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v0}, Lorg/h2/engine/Session;->setParsingView(Z)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateView;->setSelect(Lorg/h2/command/dml/Query;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v0}, Lorg/h2/engine/Session;->setParsingView(Z)V

    throw v1
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateView;->setSelectSQL(Ljava/lang/String;)V

    :goto_1
    iget p1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_1

    :cond_1
    :goto_2
    return-object v2

    :cond_2
    throw v0
.end method

.method private parseDeallocate()Lorg/h2/command/ddl/DeallocateProcedure;
    .locals 3

    const-string v0, "PLAN"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/h2/command/ddl/DeallocateProcedure;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DeallocateProcedure;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DeallocateProcedure;->setProcedureName(Ljava/lang/String;)V

    return-object v1
.end method

.method private parseDelete()Lorg/h2/command/dml/Delete;
    .locals 4

    new-instance v0, Lorg/h2/command/dml/Delete;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Delete;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "TOP"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    iget v2, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    const-string v3, "FROM"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readSimpleTableFilter(I)Lorg/h2/table/TableFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Delete;->setTableFilter(Lorg/h2/table/TableFilter;)V

    const-string v3, "WHERE"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Delete;->setCondition(Lorg/h2/expression/Expression;)V

    :cond_1
    const-string v3, "LIMIT"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Delete;->setLimit(Lorg/h2/expression/Expression;)V

    const-string v1, "DELETE"

    invoke-direct {p0, v0, v1, v2}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object v0
.end method

.method private parseDrop()Lorg/h2/command/Prepared;
    .locals 9

    const-string v0, "TABLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CASCADE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/h2/command/ddl/DropTable;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/h2/command/ddl/DropTable;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v5, v4}, Lorg/h2/command/ddl/DropTable;->setTableName(Ljava/lang/String;)V

    :goto_0
    const-string v4, ","

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/h2/command/ddl/DropTable;

    iget-object v7, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/h2/command/ddl/DropTable;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v6, v4}, Lorg/h2/command/ddl/DropTable;->setTableName(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/h2/command/ddl/DropTable;->addNextDropTable(Lorg/h2/command/ddl/DropTable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v5, v0}, Lorg/h2/command/ddl/DropTable;->setIfExists(Z)V

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5, v2}, Lorg/h2/command/ddl/DropTable;->setDropAction(I)V

    const-string v0, "CONSTRAINTS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string v0, "RESTRICT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v3}, Lorg/h2/command/ddl/DropTable;->setDropAction(I)V

    goto :goto_1

    :cond_2
    const-string v0, "IGNORE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lorg/h2/command/ddl/DropTable;->setDropAction(I)V

    :cond_3
    :goto_1
    return-object v5

    :cond_4
    const-string v0, "INDEX"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/ddl/DropIndex;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropIndex;->setIndexName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropIndex;->setIfExists(Z)V

    return-object v2

    :cond_5
    const-string v0, "USER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    new-instance v2, Lorg/h2/command/ddl/DropUser;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v3}, Lorg/h2/command/ddl/DropUser;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/DropUser;->setUserName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropUser;->setIfExists(Z)V

    return-object v2

    :cond_6
    const-string v0, "SEQUENCE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/ddl/DropSequence;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropSequence;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropSequence;->setSequenceName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropSequence;->setIfExists(Z)V

    return-object v2

    :cond_7
    const-string v0, "CONSTANT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/ddl/DropConstant;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropConstant;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropConstant;->setConstantName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropConstant;->setIfExists(Z)V

    return-object v2

    :cond_8
    const-string v0, "TRIGGER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/ddl/DropTrigger;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropTrigger;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropTrigger;->setTriggerName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropTrigger;->setIfExists(Z)V

    return-object v2

    :cond_9
    const-string v0, "VIEW"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/ddl/DropView;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropView;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropView;->setViewName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropView;->setIfExists(Z)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCascadeOrRestrict()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropView;->setDropAction(I)V

    :cond_a
    return-object v2

    :cond_b
    const-string v0, "ROLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    new-instance v1, Lorg/h2/command/ddl/DropRole;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DropRole;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/DropRole;->setRoleName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropRole;->setIfExists(Z)V

    return-object v1

    :cond_c
    const-string v0, "ALIAS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/command/ddl/DropFunctionAlias;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropFunctionAlias;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropFunctionAlias;->setAliasName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropFunctionAlias;->setIfExists(Z)V

    return-object v2

    :cond_d
    const-string v0, "SCHEMA"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    new-instance v1, Lorg/h2/command/ddl/DropSchema;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DropSchema;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/DropSchema;->setSchemaName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropSchema;->setIfExists(Z)V

    return-object v1

    :cond_e
    const-string v0, "ALL"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "OBJECTS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v0, Lorg/h2/command/ddl/DropDatabase;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/DropDatabase;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/DropDatabase;->setDropAllObjects(Z)V

    const-string v1, "DELETE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "FILES"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/DropDatabase;->setDeleteFiles(Z)V

    :cond_f
    return-object v0

    :cond_10
    const-string v0, "DOMAIN"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDropUserDataType()Lorg/h2/command/ddl/DropUserDataType;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "TYPE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDropUserDataType()Lorg/h2/command/ddl/DropUserDataType;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, "DATATYPE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDropUserDataType()Lorg/h2/command/ddl/DropUserDataType;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, "AGGREGATE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDropAggregate()Lorg/h2/command/ddl/DropAggregate;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseDropAggregate()Lorg/h2/command/ddl/DropAggregate;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    new-instance v1, Lorg/h2/command/ddl/DropAggregate;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DropAggregate;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/DropAggregate;->setName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropAggregate;->setIfExists(Z)V

    return-object v1
.end method

.method private parseDropUserDataType()Lorg/h2/command/ddl/DropUserDataType;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    new-instance v1, Lorg/h2/command/ddl/DropUserDataType;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DropUserDataType;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/DropUserDataType;->setTypeName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropUserDataType;->setIfExists(Z)V

    return-object v1
.end method

.method private parseEndOfQuery(Lorg/h2/command/dml/Query;)V
    .locals 12

    const-string v0, "ORDER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FIRST"

    const-string v2, ","

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    const-string v0, "BY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    instance-of v4, p1, Lorg/h2/command/dml/Select;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lorg/h2/command/dml/Select;

    iput-object v4, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v4

    :cond_1
    const-string v5, "="

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v3

    new-instance v6, Lorg/h2/command/dml/SelectOrderBy;

    invoke-direct {v6}, Lorg/h2/command/dml/SelectOrderBy;-><init>()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v7

    if-eqz v5, :cond_2

    instance-of v5, v7, Lorg/h2/expression/ValueExpression;

    if-eqz v5, :cond_2

    invoke-virtual {v7}, Lorg/h2/expression/Expression;->getType()I

    move-result v5

    const/4 v8, 0x4

    if-ne v5, v8, :cond_2

    :goto_0
    iput-object v7, v6, Lorg/h2/command/dml/SelectOrderBy;->columnIndexExpr:Lorg/h2/expression/Expression;

    goto :goto_1

    :cond_2
    instance-of v5, v7, Lorg/h2/expression/Parameter;

    if-eqz v5, :cond_3

    iput-boolean v3, p0, Lorg/h2/command/Parser;->recompileAlways:Z

    goto :goto_0

    :cond_3
    iput-object v7, v6, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    :goto_1
    const-string v5, "DESC"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-boolean v3, v6, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    goto :goto_2

    :cond_4
    const-string v5, "ASC"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_2
    const-string v5, "NULLS"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v3, v6, Lorg/h2/command/dml/SelectOrderBy;->nullsFirst:Z

    goto :goto_3

    :cond_5
    const-string v5, "LAST"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    iput-boolean v3, v6, Lorg/h2/command/dml/SelectOrderBy;->nullsLast:Z

    :cond_6
    :goto_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v4}, Lorg/h2/command/dml/Query;->setOrder(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    :cond_7
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    const-string v4, "ONLY"

    const-string v5, "FETCH"

    const-string v6, "OFFSET"

    const/4 v7, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    iput-object v7, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "ROWS"

    const-string v10, "ROW"

    if-eqz v8, :cond_8

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v8

    iget-object v11, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v8, v11}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/h2/command/dml/Query;->setOffset(Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_8
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "NEXT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v3}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/command/dml/Query;->setLimit(Lorg/h2/expression/Expression;)V

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v8, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v8}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/command/dml/Query;->setLimit(Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_b
    :goto_4
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_c
    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    :cond_d
    const-string v0, "LIMIT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    iput-object v7, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v7, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v7}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/command/dml/Query;->setLimit(Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v6}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/command/dml/Query;->setOffset(Lorg/h2/expression/Expression;)V

    goto :goto_5

    :cond_e
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v6

    invoke-virtual {p1, v1}, Lorg/h2/command/dml/Query;->setOffset(Lorg/h2/expression/Expression;)V

    invoke-virtual {p1, v6}, Lorg/h2/command/dml/Query;->setLimit(Lorg/h2/expression/Expression;)V

    :cond_f
    :goto_5
    const-string v1, "SAMPLE_SIZE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v6}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/command/dml/Query;->setSampleSize(Lorg/h2/expression/Expression;)V

    :cond_10
    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    :cond_11
    const-string v0, "FOR"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "UPDATE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "OF"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6

    :cond_13
    const-string v0, "NOWAIT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_6
    invoke-virtual {p1, v3}, Lorg/h2/command/dml/Query;->setForUpdate(Z)V

    goto :goto_7

    :cond_14
    const-string p1, "READ"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_15
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_16
    :goto_7
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->isolationLevelInSelectOrInsertStatement:Z

    if-eqz p1, :cond_17

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIsolationClause()V

    :cond_17
    return-void
.end method

.method private parseExecute()Lorg/h2/command/Prepared;
    .locals 3

    new-instance v0, Lorg/h2/command/dml/ExecuteProcedure;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/ExecuteProcedure;-><init>(Lorg/h2/engine/Session;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1}, Lorg/h2/engine/Session;->getProcedure(Ljava/lang/String;)Lorg/h2/engine/Procedure;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/ExecuteProcedure;->setProcedure(Lorg/h2/engine/Procedure;)V

    const-string v1, "("

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/command/dml/ExecuteProcedure;->setExpression(ILorg/h2/expression/Expression;)V

    const-string v2, ")"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ","

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const v0, 0x15fdd

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseExplain()Lorg/h2/command/dml/Explain;
    .locals 3

    new-instance v0, Lorg/h2/command/dml/Explain;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Explain;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "ANALYZE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Explain;->setExecuteCommand(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "PLAN"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FOR"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    const-string v1, "SELECT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "FROM"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "("

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "WITH"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "DELETE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDelete()Lorg/h2/command/dml/Delete;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Explain;->setCommand(Lorg/h2/command/Prepared;)V

    goto :goto_3

    :cond_3
    const-string v1, "UPDATE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseUpdate()Lorg/h2/command/dml/Update;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, "INSERT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseInsert()Lorg/h2/command/dml/Insert;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v1, "MERGE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseMerge()Lorg/h2/command/dml/Merge;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/h2/command/dml/Query;->setNeverLazy(Z)V

    goto :goto_1

    :goto_3
    return-object v0
.end method

.method private parseGrantRevoke(I)Lorg/h2/command/ddl/GrantRevoke;
    .locals 4

    new-instance v0, Lorg/h2/command/ddl/GrantRevoke;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/GrantRevoke;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/GrantRevoke;->setOperationType(I)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->addRoleOrRight(Lorg/h2/command/ddl/GrantRevoke;)Z

    move-result v1

    :cond_0
    :goto_0
    const-string v2, ","

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->addRoleOrRight(Lorg/h2/command/ddl/GrantRevoke;)Z

    invoke-virtual {v0}, Lorg/h2/command/ddl/GrantRevoke;->isRightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/h2/command/ddl/GrantRevoke;->isRoleMode()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x15fd8

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    if-eqz v1, :cond_4

    const-string v1, "ON"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SCHEMA"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/GrantRevoke;->setSchema(Lorg/h2/schema/Schema;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/GrantRevoke;->addTable(Lorg/h2/table/Table;)V

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    :goto_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    const-string p1, "TO"

    :goto_2
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p1, "FROM"

    goto :goto_2

    :goto_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/GrantRevoke;->setGranteeName(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseHelp()Lorg/h2/command/Prepared;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM INFORMATION_SCHEMA.HELP"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    if-nez v2, :cond_0

    const-string v4, " WHERE "

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v4, " AND "

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    const-string v4, "UPPER(TOPIC) LIKE ?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lorg/h2/command/Parser;->prepare(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0
.end method

.method private parseIndexColumnList()[Lorg/h2/table/IndexColumn;
    .locals 3

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    new-instance v1, Lorg/h2/table/IndexColumn;

    invoke-direct {v1}, Lorg/h2/table/IndexColumn;-><init>()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "ASC"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "DESC"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput v2, v1, Lorg/h2/table/IndexColumn;->sortType:I

    :cond_2
    :goto_0
    const-string v2, "NULLS"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "FIRST"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Lorg/h2/table/IndexColumn;->sortType:I

    or-int/lit8 v2, v2, 0x2

    :goto_1
    iput v2, v1, Lorg/h2/table/IndexColumn;->sortType:I

    goto :goto_2

    :cond_3
    const-string v2, "LAST"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    iget v2, v1, Lorg/h2/table/IndexColumn;->sortType:I

    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_4
    :goto_2
    const-string v1, ","

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ")"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/table/IndexColumn;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method private parseIndexHints(Lorg/h2/table/Table;)Lorg/h2/table/IndexHints;
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "("

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, ")"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/table/Table;->getIndex(Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v2

    invoke-interface {v2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v2, ","

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lorg/h2/table/IndexHints;->createUseIndexHints(Ljava/util/LinkedHashSet;)Lorg/h2/table/IndexHints;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseInsert()Lorg/h2/command/dml/Insert;
    .locals 11

    new-instance v0, Lorg/h2/command/dml/Insert;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Insert;-><init>(Lorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    const-string v1, "INTO"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Insert;->setTable(Lorg/h2/table/Table;)V

    const-string v2, "("

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ")"

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Insert;->setQuery(Lorg/h2/command/dml/Query;)V

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Insert;->setColumns([Lorg/h2/table/Column;)V

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    const-string v6, "DIRECT"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {v0, v7}, Lorg/h2/command/dml/Insert;->setInsertFromSelect(Z)V

    :cond_2
    const-string v6, "SORTED"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v7}, Lorg/h2/command/dml/Insert;->setSortedInsertMode(Z)V

    :cond_3
    const-string v6, "DEFAULT"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "="

    const-string v9, "VALUES"

    const-string v10, ","

    if-eqz v7, :cond_4

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->addRow([Lorg/h2/expression/Expression;)V

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_6
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lorg/h2/expression/Expression;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Insert;->addRow([Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_9
    const-string v2, "SET"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez v3, :cond_c

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    :cond_a
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumn(Lorg/h2/table/Table;)Lorg/h2/table/Column;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getDefault()Lorg/h2/expression/ValueExpression;

    move-result-object v4

    goto :goto_2

    :cond_b
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/h2/table/Column;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/h2/table/Column;

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->setColumns([Lorg/h2/table/Column;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->addRow([Lorg/h2/expression/Expression;)V

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->setQuery(Lorg/h2/command/dml/Query;)V

    :cond_e
    :goto_3
    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->onDuplicateKeyUpdate:Z

    if-eqz v2, :cond_11

    const-string v2, "ON"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "DUPLICATE"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "KEY"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "UPDATE"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_f
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumn(Lorg/h2/table/Table;)Lorg/h2/table/Column;

    move-result-object v2

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getDefault()Lorg/h2/expression/ValueExpression;

    move-result-object v3

    goto :goto_4

    :cond_10
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    :goto_4
    invoke-virtual {v0, v2, v3}, Lorg/h2/command/dml/Insert;->addAssignmentForDuplicate(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_11
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/Mode;->isolationLevelInSelectOrInsertStatement:Z

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIsolationClause()V

    :cond_12
    return-object v0
.end method

.method private parseIsolationClause()V
    .locals 1

    const-string v0, "WITH"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "RR"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UR"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "USE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AND"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "KEEP"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "SHARE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UPDATE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EXCLUSIVE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_2
    const-string v0, "LOCKS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private parseJoinTableFilter(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;)V
    .locals 5

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getNestedJoin()Lorg/h2/table/TableFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lorg/h2/command/Parser$2;

    invoke-direct {v4, p0, p2}, Lorg/h2/command/Parser$2;-><init>(Lorg/h2/command/Parser;Lorg/h2/command/dml/Select;)V

    invoke-virtual {v3, v4}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    :cond_0
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v4

    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {p2, v3, v1}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v4}, Lorg/h2/command/dml/Select;->addCondition(Lorg/h2/expression/Expression;)V

    :cond_3
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->removeJoinCondition()V

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->removeJoin()V

    invoke-virtual {p2, v3, v0}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    :goto_1
    move-object p1, v3

    goto :goto_0
.end method

.method private parseMerge()Lorg/h2/command/dml/Merge;
    .locals 5

    new-instance v0, Lorg/h2/command/dml/Merge;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Merge;-><init>(Lorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    const-string v1, "INTO"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->setTable(Lorg/h2/table/Table;)V

    const-string v2, "("

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ")"

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->setQuery(Lorg/h2/command/dml/Query;)V

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Merge;->setColumns([Lorg/h2/table/Column;)V

    :cond_1
    const-string v3, "KEY"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->setKeys([Lorg/h2/table/Column;)V

    :cond_2
    const-string v1, "VALUES"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    const-string v3, "DEFAULT"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/h2/expression/Expression;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->addRow([Lorg/h2/expression/Expression;)V

    const-string v1, ","

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->setQuery(Lorg/h2/command/dml/Query;)V

    :goto_2
    return-object v0
.end method

.method private parsePrepare()Lorg/h2/command/Prepared;
    .locals 5

    .line 1
    const-string v0, "COMMIT"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    .line 12
    .line 13
    const/16 v2, 0x4d

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setTransactionName(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "("

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    const-string v3, "C"

    .line 44
    .line 45
    invoke-static {v2, v3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x1

    .line 50
    invoke-direct {p0, v3, v4}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    const-string v3, ")"

    .line 58
    .line 59
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const-string v3, ","

    .line 67
    .line 68
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    :goto_1
    const-string v1, "AS"

    .line 75
    .line 76
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lorg/h2/command/Parser;->parsePrepared()Lorg/h2/command/Prepared;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Lorg/h2/command/ddl/PrepareProcedure;

    .line 84
    .line 85
    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    .line 86
    .line 87
    invoke-direct {v2, v3}, Lorg/h2/command/ddl/PrepareProcedure;-><init>(Lorg/h2/engine/Session;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/PrepareProcedure;->setProcedureName(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/PrepareProcedure;->setPrepared(Lorg/h2/command/Prepared;)V

    .line 94
    .line 95
    .line 96
    return-object v2
.end method

.method private parsePrepared()Lorg/h2/command/Prepared;
    .locals 7

    iget v0, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    iget-object v1, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v1, Lorg/h2/command/dml/NoOperation;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x28

    if-eq v1, v4, :cond_1

    const/16 v4, 0x3b

    if-eq v1, v4, :cond_1a

    const/16 v4, 0x3f

    const-string v5, "CALL"

    if-eq v1, v4, :cond_19

    const/16 v4, 0x4d

    if-eq v1, v4, :cond_17

    const/16 v4, 0x50

    if-eq v1, v4, :cond_16

    const/16 v4, 0x6d

    if-eq v1, v4, :cond_17

    const/16 v4, 0x70

    if-eq v1, v4, :cond_16

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v1, "WITH"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_1
    const-string v1, "VALUES"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseValues()Lorg/h2/command/dml/Select;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_2
    const-string v1, "UPDATE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseUpdate()Lorg/h2/command/dml/Update;

    move-result-object v1

    goto/16 :goto_4

    :cond_2
    const-string v1, "USE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseUse()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_3
    const-string v1, "TRUNCATE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseTruncate()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_4
    const-string v1, "SELECT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "SET"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSet()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :cond_4
    const-string v1, "SAVEPOINT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSavepoint()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto/16 :goto_4

    :cond_5
    const-string v1, "SCRIPT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseScript()Lorg/h2/command/dml/ScriptCommand;

    move-result-object v1

    goto/16 :goto_4

    :cond_6
    const-string v1, "SHUTDOWN"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseShutdown()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto/16 :goto_4

    :cond_7
    const-string v1, "SHOW"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseShow()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_5
    const-string v1, "ROLLBACK"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseRollback()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto/16 :goto_4

    :cond_8
    const-string v1, "REVOKE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x32

    :goto_1
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseGrantRevoke(I)Lorg/h2/command/ddl/GrantRevoke;

    move-result-object v1

    goto/16 :goto_4

    :cond_9
    const-string v1, "RUNSCRIPT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseRunScript()Lorg/h2/command/dml/RunScriptCommand;

    move-result-object v1

    goto/16 :goto_4

    :cond_a
    const-string v1, "RELEASE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseReleaseSavepoint()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :cond_b
    const-string v1, "REPLACE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseReplace()Lorg/h2/command/dml/Replace;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_6
    const-string v1, "INSERT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseInsert()Lorg/h2/command/dml/Insert;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_7
    const-string v1, "HELP"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseHelp()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_8
    const-string v1, "GRANT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v1, 0x31

    goto :goto_1

    :pswitch_9
    const-string v1, "FROM"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_0

    :pswitch_a
    const-string v1, "EXPLAIN"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseExplain()Lorg/h2/command/dml/Explain;

    move-result-object v1

    goto/16 :goto_4

    :cond_c
    const-string v1, "EXECUTE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseExecute()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_b
    const-string v1, "DELETE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDelete()Lorg/h2/command/dml/Delete;

    move-result-object v1

    goto/16 :goto_4

    :cond_d
    const-string v1, "DROP"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDrop()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :cond_e
    const-string v1, "DECLARE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreate()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :cond_f
    const-string v1, "DEALLOCATE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDeallocate()Lorg/h2/command/ddl/DeallocateProcedure;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_c
    const-string v1, "COMMIT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCommit()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto/16 :goto_4

    :cond_10
    const-string v1, "CREATE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2

    :cond_11
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCall()Lorg/h2/command/dml/Call;

    move-result-object v1

    goto/16 :goto_4

    :cond_12
    const-string v1, "CHECKPOINT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCheckpoint()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto/16 :goto_4

    :cond_13
    const-string v1, "COMMENT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseComment()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_d
    const-string v1, "BACKUP"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseBackup()Lorg/h2/command/Prepared;

    move-result-object v1

    goto :goto_4

    :cond_14
    const-string v1, "BEGIN"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseBegin()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto :goto_4

    :pswitch_e
    const-string v1, "ALTER"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlter()Lorg/h2/command/Prepared;

    move-result-object v1

    goto :goto_4

    :cond_15
    const-string v1, "ANALYZE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAnalyze()Lorg/h2/command/Prepared;

    move-result-object v1

    goto :goto_4

    :cond_16
    const-string v1, "PREPARE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parsePrepare()Lorg/h2/command/Prepared;

    move-result-object v1

    goto :goto_4

    :cond_17
    const-string v1, "MERGE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseMerge()Lorg/h2/command/dml/Merge;

    move-result-object v1

    goto :goto_4

    :cond_18
    move-object v1, v3

    goto :goto_4

    :cond_19
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Parameter;

    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v1, v4}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    const-string v1, "="

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1a
    new-instance v1, Lorg/h2/command/dml/NoOperation;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v4}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    :goto_4
    iget-object v4, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_5
    if-ge v2, v4, :cond_1c

    iget-object v5, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1b

    iget-object v5, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    new-instance v6, Lorg/h2/expression/Parameter;

    invoke-direct {v6, v2}, Lorg/h2/expression/Parameter;-><init>(I)V

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1c
    iget-object v2, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    iput-object v2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    :cond_1d
    const-string v2, "{"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_1e
    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v4

    long-to-int v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_21

    iget-object v4, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_21

    iget-object v4, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    if-eqz v2, :cond_20

    const-string v4, ":"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    const-string v2, ","

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "}"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    invoke-virtual {v4}, Lorg/h2/expression/Parameter;->checkSet()V

    goto :goto_6

    :cond_1f
    iget-object v2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :cond_20
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_21
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_22
    :goto_7
    if-eqz v1, :cond_23

    invoke-direct {p0, v1, v3, v0}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object v1

    :cond_23
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseReferences(Lorg/h2/command/ddl/AlterTableAddConstraint;Lorg/h2/schema/Schema;Ljava/lang/String;)V
    .locals 2

    const-string v0, "("

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefTableName(Lorg/h2/schema/Schema;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefIndexColumns([Lorg/h2/table/IndexColumn;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefTableName(Lorg/h2/schema/Schema;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefIndexColumns([Lorg/h2/table/IndexColumn;)V

    :cond_1
    :goto_0
    const-string p2, "INDEX"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p3

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p3, v0, p2}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefIndex(Lorg/h2/index/Index;)V

    :cond_2
    :goto_1
    const-string p2, "ON"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "DELETE"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAction()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setDeleteAction(I)V

    goto :goto_1

    :cond_3
    const-string p2, "UPDATE"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAction()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setUpdateAction(I)V

    goto :goto_1

    :cond_4
    const-string p1, "NOT"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "DEFERRABLE"

    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_2
    return-void
.end method

.method private parseReleaseSavepoint()Lorg/h2/command/Prepared;
    .locals 2

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "SAVEPOINT"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    return-object v0
.end method

.method private parseReplace()Lorg/h2/command/dml/Replace;
    .locals 5

    new-instance v0, Lorg/h2/command/dml/Replace;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Replace;-><init>(Lorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    const-string v1, "INTO"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->setTable(Lorg/h2/table/Table;)V

    const-string v2, "("

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ")"

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->setQuery(Lorg/h2/command/dml/Query;)V

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->setColumns([Lorg/h2/table/Column;)V

    :cond_1
    const-string v1, "VALUES"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    const-string v3, "DEFAULT"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/h2/expression/Expression;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->addRow([Lorg/h2/expression/Expression;)V

    const-string v1, ","

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->setQuery(Lorg/h2/command/dml/Query;)V

    :goto_2
    return-object v0
.end method

.method private parseRollback()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "TRANSACTION"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4f

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setTransactionName(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "TO"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SAVEPOINT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setSavepointName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "WORK"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x48

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    :goto_0
    return-object v0
.end method

.method private parseRunScript()Lorg/h2/command/dml/RunScriptCommand;
    .locals 2

    new-instance v0, Lorg/h2/command/dml/RunScriptCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "FROM"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setFileNameExpr(Lorg/h2/expression/Expression;)V

    const-string v1, "COMPRESSION"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setCompressionAlgorithm(Ljava/lang/String;)V

    :cond_0
    const-string v1, "CIPHER"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setCipher(Ljava/lang/String;)V

    const-string v1, "PASSWORD"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setPassword(Lorg/h2/expression/Expression;)V

    :cond_1
    const-string v1, "CHARSET"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setCharset(Ljava/nio/charset/Charset;)V

    :cond_2
    return-object v0
.end method

.method private parseSavepoint()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4a

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setSavepointName(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseScript()Lorg/h2/command/dml/ScriptCommand;
    .locals 8

    new-instance v0, Lorg/h2/command/dml/ScriptCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/ScriptCommand;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "SIMPLE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "NODATA"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "NOPASSWORDS"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "NOSETTINGS"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "DROP"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "BLOCKSIZE"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lorg/h2/command/dml/ScriptCommand;->setLobBlockSize(J)V

    :cond_0
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/ScriptCommand;->setData(Z)V

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/ScriptCommand;->setPasswords(Z)V

    invoke-virtual {v0, v4}, Lorg/h2/command/dml/ScriptCommand;->setSettings(Z)V

    invoke-virtual {v0, v5}, Lorg/h2/command/dml/ScriptCommand;->setDrop(Z)V

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setSimple(Z)V

    const-string v1, "TO"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setFileNameExpr(Lorg/h2/expression/Expression;)V

    const-string v1, "COMPRESSION"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setCompressionAlgorithm(Ljava/lang/String;)V

    :cond_1
    const-string v1, "CIPHER"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setCipher(Ljava/lang/String;)V

    const-string v1, "PASSWORD"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setPassword(Lorg/h2/expression/Expression;)V

    :cond_2
    const-string v1, "CHARSET"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setCharset(Ljava/nio/charset/Charset;)V

    :cond_3
    const-string v1, "SCHEMA"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v1

    :cond_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setSchemaNames(Ljava/util/Set;)V

    goto :goto_0

    :cond_5
    const-string v1, "TABLE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setTables(Ljava/util/Collection;)V

    :cond_7
    :goto_0
    return-object v0
.end method

.method private parseSelect()Lorg/h2/command/dml/Query;
    .locals 5

    iget-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectUnion()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lorg/h2/command/Prepared;->setParameterList(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->init()V

    return-object v1
.end method

.method private parseSelectSimple()Lorg/h2/command/dml/Select;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "SELECT"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "FROM"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_0
    new-instance v6, Lorg/h2/command/dml/Select;

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v6, v7}, Lorg/h2/command/dml/Select;-><init>(Lorg/h2/engine/Session;)V

    iget v7, v0, Lorg/h2/command/Parser;->lastParseIndex:I

    iget-object v8, v0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    iput-object v6, v0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    iput-object v6, v0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    if-eqz v2, :cond_1

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->parseSelectSimpleFromPart(Lorg/h2/command/dml/Select;)V

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->parseSelectSimpleSelectPart(Lorg/h2/command/dml/Select;)V

    goto :goto_1

    :cond_1
    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->parseSelectSimpleSelectPart(Lorg/h2/command/dml/Select;)V

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {v0, v5}, Lorg/h2/command/Parser;->getDualTable(Z)Lorg/h2/table/Table;

    move-result-object v11

    new-instance v2, Lorg/h2/table/TableFilter;

    iget-object v10, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iget-boolean v13, v0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v14, v0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;ILorg/h2/table/IndexHints;)V

    invoke-virtual {v6, v2, v3}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    goto :goto_1

    :cond_2
    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->parseSelectSimpleFromPart(Lorg/h2/command/dml/Select;)V

    :goto_1
    const-string v2, "WHERE"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/h2/command/dml/Select;->addCondition(Lorg/h2/expression/Expression;)V

    :cond_3
    iput-object v8, v0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v2, "GROUP"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "BY"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/h2/command/dml/Select;->setGroupQuery()V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ","

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v6, v2}, Lorg/h2/command/dml/Select;->setGroupBy(Ljava/util/ArrayList;)V

    :cond_5
    iput-object v6, v0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v2, "HAVING"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v6}, Lorg/h2/command/dml/Select;->setGroupQuery()V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/h2/command/dml/Select;->setHaving(Lorg/h2/expression/Expression;)V

    :cond_6
    iget-object v2, v0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Lorg/h2/command/Prepared;->setParameterList(Ljava/util/ArrayList;)V

    iput-object v8, v0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {v0, v6, v1, v7}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object v6

    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private parseSelectSimpleFromPart(Lorg/h2/command/dml/Select;)V
    .locals 1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/h2/command/Parser;->parseJoinTableFilter(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;)V

    const-string v0, ","

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->isForceJoinOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->getTopFilters()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/command/Parser;->sortTableFilters(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private parseSelectSimpleSelectPart(Lorg/h2/command/dml/Select;)V
    .locals 6

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v2, "TOP"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Query;->setLimit(Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_0
    const-string v2, "LIMIT"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Query;->setOffset(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_1
    :goto_1
    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v0, "DISTINCT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    goto :goto_2

    :cond_2
    const-string v0, "ALL"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_2
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    const-string v2, "*"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/h2/expression/Wildcard;

    invoke-direct {v2, v1, v1}, Lorg/h2/expression/Wildcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    const-string v3, "AS"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/DbSettings;->aliasColumnName:Z

    iget-object v5, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v5

    iget-boolean v5, v5, Lorg/h2/engine/Mode;->aliasColumnName:Z

    or-int/2addr v4, v5

    new-instance v5, Lorg/h2/expression/Alias;

    invoke-direct {v5, v2, v3, v4}, Lorg/h2/expression/Alias;-><init>(Lorg/h2/expression/Expression;Ljava/lang/String;Z)V

    move-object v2, v5

    goto :goto_3

    :goto_4
    const-string v2, ","

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/h2/command/dml/Select;->setExpressions(Ljava/util/ArrayList;)V

    return-void
.end method

.method private parseSelectSub()Lorg/h2/command/dml/Query;
    .locals 2

    const-string v0, "("

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectUnion()Lorg/h2/command/dml/Query;

    move-result-object v0

    const-string v1, ")"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "WITH"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseWith()Lorg/h2/command/dml/Query;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->setNeverLazy(Z)V

    return-object v0

    :cond_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectSimple()Lorg/h2/command/dml/Select;

    move-result-object v0

    return-object v0
.end method

.method private parseSelectUnion()Lorg/h2/command/dml/Query;
    .locals 3

    iget v0, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectSub()Lorg/h2/command/dml/Query;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/h2/command/Parser;->parseSelectUnionExtension(Lorg/h2/command/dml/Query;IZ)Lorg/h2/command/dml/Query;

    move-result-object v0

    return-object v0
.end method

.method private parseSelectUnionExtension(Lorg/h2/command/dml/Query;IZ)Lorg/h2/command/dml/Query;
    .locals 2

    :goto_0
    const-string v0, "UNION"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/h2/command/dml/SelectUnion;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p1}, Lorg/h2/command/dml/SelectUnion;-><init>(Lorg/h2/engine/Session;Lorg/h2/command/dml/Query;)V

    const-string p1, "ALL"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const-string p1, "DISTINCT"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectSub()Lorg/h2/command/dml/Query;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/SelectUnion;->setRight(Lorg/h2/command/dml/Query;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const-string v0, "MINUS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "EXCEPT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v0, "INTERSECT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/h2/command/dml/SelectUnion;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p1}, Lorg/h2/command/dml/SelectUnion;-><init>(Lorg/h2/engine/Session;Lorg/h2/command/dml/Query;)V

    const/4 p1, 0x3

    :goto_2
    invoke-virtual {v0, p1}, Lorg/h2/command/dml/SelectUnion;->setUnionType(I)V

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->parseEndOfQuery(Lorg/h2/command/dml/Query;)V

    :cond_4
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object p1

    :cond_5
    :goto_3
    new-instance v0, Lorg/h2/command/dml/SelectUnion;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p1}, Lorg/h2/command/dml/SelectUnion;-><init>(Lorg/h2/engine/Session;Lorg/h2/command/dml/Query;)V

    const/4 p1, 0x2

    goto :goto_2
.end method

.method private parseSet()Lorg/h2/command/Prepared;
    .locals 6

    const-string v0, "@"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setExpression(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_0
    const-string v0, "AUTOCOMMIT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readBooleanSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x45

    goto :goto_0

    :cond_1
    const/16 v0, 0x46

    :goto_0
    new-instance v1, Lorg/h2/command/dml/TransactionCommand;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, v0}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    return-object v1

    :cond_2
    const-string v0, "MVCC"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readBooleanSetting()Z

    move-result v0

    new-instance v1, Lorg/h2/command/dml/Set;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v3, 0x1f

    invoke-direct {v1, v2, v3}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Set;->setInt(I)V

    return-object v1

    :cond_3
    const-string v0, "EXCLUSIVE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setExpression(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_4
    const-string v0, "IGNORECASE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readBooleanSetting()Z

    move-result v0

    new-instance v2, Lorg/h2/command/dml/Set;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v3, v1}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-virtual {v2, v0}, Lorg/h2/command/dml/Set;->setInt(I)V

    return-object v2

    :cond_5
    const-string v0, "PASSWORD"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x13

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/ddl/AlterUser;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setPassword(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_6
    const-string v0, "SALT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/ddl/AlterUser;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setSalt(Lorg/h2/expression/Expression;)V

    const-string v1, "HASH"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setHash(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_7
    const-string v0, "MODE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0

    :cond_8
    const-string v0, "COMPRESS_LOB"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    iget v1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    return-object v0

    :cond_a
    const-string v0, "DATABASE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "COLLATION"

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSetCollation()Lorg/h2/command/dml/Set;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSetCollation()Lorg/h2/command/dml/Set;

    move-result-object v0

    return-object v0

    :cond_c
    const-string v0, "BINARY_COLLATION"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSetBinaryCollation()Lorg/h2/command/dml/Set;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, "CLUSTER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0

    :cond_e
    const-string v0, "DATABASE_EVENT_LISTENER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0

    :cond_f
    const-string v0, "ALLOW_LITERALS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v5, 0x18

    invoke-direct {v0, v4, v5}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    const-string v4, "NONE"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_4

    :cond_10
    const-string v3, "ALL"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_4

    :cond_11
    const-string v2, "NUMBERS"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_3
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_4

    :cond_12
    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result v1

    goto :goto_3

    :goto_4
    return-object v0

    :cond_13
    const-string v0, "DEFAULT_TABLE_TYPE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v4, 0x7

    invoke-direct {v0, v2, v4}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    const-string v2, "MEMORY"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_5
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_6

    :cond_14
    const-string v1, "CACHED"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_6

    :cond_15
    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result v1

    goto :goto_5

    :goto_6
    return-object v0

    :cond_16
    const-string v0, "CREATE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_17
    const-string v0, "HSQLDB.DEFAULT_TABLE_TYPE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_18
    const-string v0, "PAGE_STORE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_19
    const-string v0, "CACHE_TYPE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1a
    const-string v0, "FILE_LOCK"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1b
    const-string v0, "DB_CLOSE_ON_EXIT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1c
    const-string v0, "AUTO_SERVER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1d
    const-string v0, "AUTO_SERVER_PORT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1e
    const-string v0, "AUTO_RECONNECT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1f
    const-string v0, "ASSERT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_20
    const-string v0, "ACCESS_MODE_DATA"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_21
    const-string v0, "OPEN_NEW"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_22
    const-string v0, "JMX"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_23
    const-string v0, "PAGE_SIZE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_24
    const-string v0, "RECOVER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_25
    const-string v0, "NAMES"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_26
    const-string v0, "SCHEMA"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0

    :cond_27
    const-string v0, "DATESTYLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    const-string v0, "ISO"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_7

    :cond_28
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_29
    :goto_7
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_2a
    const-string v0, "SEARCH_PATH"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1c

    if-nez v0, :cond_30

    invoke-static {v1}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_8

    :cond_2b
    const-string v0, "JAVA_OBJECT_SERIALIZER"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSetJavaObjectSerializer()Lorg/h2/command/dml/Set;

    move-result-object v0

    return-object v0

    :cond_2c
    const-string v0, "LOGSIZE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {v2}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    :cond_2d
    const-string v0, "FOREIGN_KEY_CHECKS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    :cond_2e
    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/command/dml/SetTypes;->getType(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2f

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v1, Lorg/h2/command/dml/Set;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, v0}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Set;->setExpression(Lorg/h2/expression/Expression;)V

    return-object v1

    :cond_2f
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_30
    :goto_8
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v2, v1}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_9
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, ","

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_9

    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Set;->setStringArray([Ljava/lang/String;)V

    return-object v0
.end method

.method private parseSetBinaryCollation()Lorg/h2/command/dml/Set;
    .locals 3

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    const-string v2, "UNSIGNED"

    invoke-direct {p0, v1, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SIGNED"

    invoke-direct {p0, v1, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BINARY_COLLATION"

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private parseSetCollation()Lorg/h2/command/dml/Set;
    .locals 3

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    const-string v2, "OFF"

    invoke-direct {p0, v1, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Lorg/h2/value/CompareMode;->getCollator(Ljava/lang/String;)Ljava/text/Collator;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v1, "STRENGTH"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PRIMARY"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_1

    :cond_1
    const-string v1, "SECONDARY"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "TERTIARY"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "IDENTICAL"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/text/Collator;->getStrength()I

    move-result v1

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0

    :cond_6
    const-string v0, "collation"

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseSetJavaObjectSerializer()Lorg/h2/command/dml/Set;
    .locals 3

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseShow()Lorg/h2/command/Prepared;
    .locals 5

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "CLIENT_ENCODING"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\'UNICODE\' AS CLIENT_ENCODING FROM DUAL"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    const-string v2, "DEFAULT_TRANSACTION_ISOLATION"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\'read committed\' AS DEFAULT_TRANSACTION_ISOLATION FROM DUAL"

    goto :goto_0

    :cond_1
    const-string v2, "TRANSACTION"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ISOLATION"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "LEVEL"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "\'read committed\' AS TRANSACTION_ISOLATION FROM DUAL"

    goto :goto_0

    :cond_2
    const-string v2, "DATESTYLE"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\'ISO\' AS DATESTYLE FROM DUAL"

    goto :goto_0

    :cond_3
    const-string v2, "SERVER_VERSION"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\'8.1.4\' AS SERVER_VERSION FROM DUAL"

    goto :goto_0

    :cond_4
    const-string v2, "SERVER_ENCODING"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\'UTF8\' AS SERVER_ENCODING FROM DUAL"

    goto :goto_0

    :cond_5
    const-string v2, "TABLES"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "FROM"

    if-eqz v2, :cond_7

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    const-string v2, "PUBLIC"

    :goto_1
    const-string v3, "TABLE_NAME, TABLE_SCHEMA FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA=? ORDER BY TABLE_NAME"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string v2, "COLUMNS"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v4

    :cond_8
    const-string v2, "C.COLUMN_NAME FIELD, C.TYPE_NAME || \'(\' || C.NUMERIC_PRECISION || \')\' TYPE, C.IS_NULLABLE \"NULL\", CASE (SELECT MAX(I.INDEX_TYPE_NAME) FROM INFORMATION_SCHEMA.INDEXES I WHERE I.TABLE_SCHEMA=C.TABLE_SCHEMA AND I.TABLE_NAME=C.TABLE_NAME AND I.COLUMN_NAME=C.COLUMN_NAME)WHEN \'PRIMARY KEY\' THEN \'PRI\' WHEN \'UNIQUE INDEX\' THEN \'UNI\' ELSE \'\' END KEY, IFNULL(COLUMN_DEFAULT, \'NULL\') DEFAULT FROM INFORMATION_SCHEMA.COLUMNS C WHERE C.TABLE_NAME=? AND C.TABLE_SCHEMA=? ORDER BY C.ORDINAL_POSITION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    goto :goto_2

    :cond_9
    const-string v2, "DATABASES"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SCHEMAS"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA"

    goto/16 :goto_0

    :cond_b
    :goto_3
    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getAllowLiterals()Z

    move-result v2

    :try_start_0
    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lorg/h2/command/Parser;->prepare(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/h2/command/Prepared;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    throw v0
.end method

.method private parseShutdown()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "IMMEDIATELY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x51

    goto :goto_0

    :cond_0
    const-string v0, "COMPACT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x52

    goto :goto_0

    :cond_1
    const-string v0, "DEFRAG"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x54

    goto :goto_0

    :cond_2
    const-string v0, "SCRIPT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const/16 v0, 0x50

    :goto_0
    new-instance v1, Lorg/h2/command/dml/TransactionCommand;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, v0}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    return-object v1
.end method

.method private parseSimpleOrderList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    new-instance v1, Lorg/h2/command/dml/SelectOrderBy;

    invoke-direct {v1}, Lorg/h2/command/dml/SelectOrderBy;-><init>()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    iput-object v2, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    const-string v2, "DESC"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    goto :goto_0

    :cond_1
    const-string v2, "ASC"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method private parseSingleCommonTableExpression()Lorg/h2/table/TableView;
    .locals 18

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v11

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "("

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseColumnList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    new-instance v8, Lorg/h2/table/Column;

    const/16 v9, 0xd

    invoke-direct {v8, v7, v9}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    iget-object v5, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v0}, Lorg/h2/engine/Session;->findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v5

    if-eqz v5, :cond_4

    instance-of v6, v5, Lorg/h2/table/TableView;

    const v7, 0xa475

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Lorg/h2/table/TableView;

    invoke-virtual {v6}, Lorg/h2/table/TableView;->isTableExpression()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v5}, Lorg/h2/engine/Session;->removeLocalTempTable(Lorg/h2/table/Table;)V

    goto :goto_1

    :cond_2
    invoke-static {v7, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {v7, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    new-instance v5, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v5}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    iget-object v6, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v6}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v6

    iput v6, v5, Lorg/h2/command/ddl/CreateTableData;->id:I

    iput-object v2, v5, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    iput-object v0, v5, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    const/4 v13, 0x1

    iput-boolean v13, v5, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    iput-boolean v13, v5, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    iput-boolean v12, v5, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    iput-boolean v13, v5, Lorg/h2/command/ddl/CreateTableData;->create:Z

    iget-object v2, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iput-object v2, v5, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    invoke-virtual {v11, v5}, Lorg/h2/schema/Schema;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object v2

    iget-object v5, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v5, v2}, Lorg/h2/engine/Session;->addLocalTempTable(Lorg/h2/table/Table;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v5, "AS"

    invoke-direct {v1, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v3

    const-string v5, ")"

    invoke-direct {v1, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/command/Prepared;->prepare()V

    invoke-virtual {v3}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    if-eqz v4, :cond_5

    aget-object v6, v4, v5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Expression;

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getColumnName()Ljava/lang/String;

    move-result-object v6

    :goto_3
    new-instance v7, Lorg/h2/table/Column;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/expression/Expression;

    invoke-virtual {v8}, Lorg/h2/expression/Expression;->getType()I

    move-result v8

    invoke-direct {v7, v6, v8}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v2}, Lorg/h2/engine/Session;->removeLocalTempTable(Lorg/h2/table/Table;)V

    iget-object v2, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v16

    new-instance v17, Lorg/h2/table/TableView;

    iget-object v7, v1, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    new-array v2, v12, [Lorg/h2/table/Column;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Lorg/h2/table/Column;

    iget-object v9, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v10, 0x1

    move-object/from16 v2, v17

    move-object v3, v11

    move/from16 v4, v16

    move-object v5, v0

    move-object v6, v15

    invoke-direct/range {v2 .. v10}, Lorg/h2/table/TableView;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V

    invoke-virtual/range {v17 .. v17}, Lorg/h2/table/TableView;->isRecursiveQueryDetected()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v17, Lorg/h2/table/TableView;

    iget-object v7, v1, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    new-array v2, v12, [Lorg/h2/table/Column;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Lorg/h2/table/Column;

    iget-object v9, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v10, 0x0

    move-object/from16 v2, v17

    move-object v3, v11

    move/from16 v4, v16

    move-object v5, v0

    move-object v6, v15

    invoke-direct/range {v2 .. v10}, Lorg/h2/table/TableView;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V

    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/h2/table/TableView;->setTableExpression(Z)V

    invoke-virtual {v0, v13}, Lorg/h2/engine/DbObjectBase;->setTemporary(Z)V

    iget-object v2, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Session;->addLocalTempTable(Lorg/h2/table/Table;)V

    invoke-virtual {v0, v13}, Lorg/h2/table/Table;->setOnCommitDrop(Z)V

    return-object v0

    :goto_4
    iget-object v3, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v2}, Lorg/h2/engine/Session;->removeLocalTempTable(Lorg/h2/table/Table;)V

    throw v0
.end method

.method private parseTruncate()Lorg/h2/command/Prepared;
    .locals 3

    const-string v0, "TABLE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v0

    new-instance v1, Lorg/h2/command/ddl/TruncateTable;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/TruncateTable;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/TruncateTable;->setTable(Lorg/h2/table/Table;)V

    return-object v1
.end method

.method private parseUpdate()Lorg/h2/command/dml/Update;
    .locals 11

    new-instance v0, Lorg/h2/command/dml/Update;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Update;-><init>(Lorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    iget v1, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readSimpleTableFilter(I)Lorg/h2/table/TableFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Update;->setTableFilter(Lorg/h2/table/TableFilter;)V

    const-string v4, "SET"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v4, "("

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "="

    const-string v6, ","

    if-eqz v4, :cond_2

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v4

    :cond_0
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readTableColumn(Lorg/h2/table/TableFilter;)Lorg/h2/table/Column;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v3, ")"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Column;

    invoke-virtual {v0, v2, v3}, Lorg/h2/command/dml/Update;->setAssignment(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/table/Column;

    iget-object v9, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v10, "ARRAY_GET"

    invoke-static {v9, v10}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v10

    invoke-static {v10}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-virtual {v9}, Lorg/h2/expression/Function;->doneWithParameters()V

    invoke-virtual {v0, v8, v9}, Lorg/h2/command/dml/Update;->setAssignment(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readTableColumn(Lorg/h2/table/TableFilter;)Lorg/h2/table/Column;

    move-result-object v2

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v4, "DEFAULT"

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getDefault()Lorg/h2/expression/ValueExpression;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v2, v4}, Lorg/h2/command/dml/Update;->setAssignment(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    :goto_2
    const-string v2, "WHERE"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Update;->setCondition(Lorg/h2/expression/Expression;)V

    :cond_5
    const-string v2, "ORDER"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "BY"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSimpleOrderList()Ljava/util/ArrayList;

    :cond_6
    const-string v2, "LIMIT"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Update;->setLimit(Lorg/h2/expression/Expression;)V

    :cond_7
    const-string v2, "UPDATE"

    invoke-direct {p0, v0, v2, v1}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object v0
.end method

.method private parseUse()Lorg/h2/command/Prepared;
    .locals 3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseValues()Lorg/h2/command/dml/Select;
    .locals 5

    new-instance v0, Lorg/h2/command/dml/Select;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Select;-><init>(Lorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseValuesTable(I)Lorg/h2/table/TableFilter;

    move-result-object v1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lorg/h2/expression/Wildcard;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lorg/h2/expression/Wildcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Select;->setExpressions(Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->init()V

    return-object v0
.end method

.method private parseValuesTable(I)Lorg/h2/table/TableFilter;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v2, "PUBLIC"

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v3, "TABLE"

    invoke-static {v2, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/TableFunction;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v4

    :goto_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "("

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x0

    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v9

    iget-object v10, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v9, v10}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getType()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "C"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, -0x1

    if-nez v13, :cond_1

    if-ne v10, v15, :cond_0

    const/16 v10, 0xd

    :cond_0
    invoke-static {v10}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v13

    move/from16 v20, v8

    iget-wide v7, v13, Lorg/h2/value/DataType;->defaultPrecision:J

    iget v14, v13, Lorg/h2/value/DataType;->defaultScale:I

    iget v13, v13, Lorg/h2/value/DataType;->defaultDisplaySize:I

    move/from16 v21, v12

    new-instance v12, Lorg/h2/table/Column;

    move/from16 v19, v13

    move-object v13, v12

    move/from16 v18, v14

    move-object v14, v11

    move-object/from16 v22, v1

    const/4 v1, -0x1

    move v15, v10

    move-wide/from16 v16, v7

    invoke-direct/range {v13 .. v19}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move-object/from16 v22, v1

    move/from16 v20, v8

    move/from16 v21, v12

    const/4 v1, -0x1

    :goto_2
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v7

    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getScale()I

    move-result v12

    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v13

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v23, 0x520a

    move/from16 v15, v20

    if-ge v15, v14, :cond_b

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/h2/table/Column;

    invoke-virtual {v14}, Lorg/h2/table/Column;->getType()I

    move-result v1

    invoke-static {v1, v10}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v1

    move-object v10, v4

    move-object/from16 v24, v5

    invoke-virtual {v14}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    invoke-virtual {v14}, Lorg/h2/table/Column;->getScale()I

    move-result v4

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-virtual {v14}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v4

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v19

    new-instance v4, Lorg/h2/table/Column;

    move-object v13, v4

    move-object v14, v11

    move v7, v15

    move v15, v1

    invoke-direct/range {v13 .. v19}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    invoke-virtual {v3, v7, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v24

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, ","

    if-eqz v6, :cond_3

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, v1

    move-object v4, v10

    move/from16 v8, v21

    move-object/from16 v1, v22

    goto/16 :goto_1

    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    const-string v5, ")"

    invoke-direct {v0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_6

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v1, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    invoke-static/range {v23 .. v23}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_6
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_9

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    invoke-virtual {v6}, Lorg/h2/table/Column;->getType()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    new-instance v7, Lorg/h2/table/Column;

    invoke-virtual {v6}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v13, 0xd

    const-wide/16 v14, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    invoke-virtual {v3, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-array v6, v4, [Lorg/h2/expression/Expression;

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_8

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/expression/Expression;

    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    new-instance v7, Lorg/h2/expression/ExpressionList;

    invoke-direct {v7, v6}, Lorg/h2/expression/ExpressionList;-><init>([Lorg/h2/expression/Expression;)V

    invoke-virtual {v2, v5, v7}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v3}, Lorg/h2/expression/TableFunction;->setColumns(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    new-instance v13, Lorg/h2/table/FunctionTable;

    iget-object v1, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    move-object/from16 v4, v22

    invoke-direct {v13, v4, v1, v2, v2}, Lorg/h2/table/FunctionTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Lorg/h2/expression/FunctionCall;)V

    new-instance v1, Lorg/h2/table/TableFilter;

    iget-object v12, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iget-boolean v15, v0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v2, v0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const/16 v18, 0x0

    const/4 v14, 0x0

    move-object v11, v1

    move-object/from16 v16, v2

    move/from16 v17, p1

    invoke-direct/range {v11 .. v18}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;ILorg/h2/table/IndexHints;)V

    return-object v1

    :cond_a
    move-object v4, v10

    move-object/from16 v1, v22

    goto/16 :goto_0

    :cond_b
    invoke-static/range {v23 .. v23}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private parseWith()Lorg/h2/command/dml/Query;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "RECURSIVE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSingleCommonTableExpression()Lorg/h2/table/TableView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectUnion()Lorg/h2/command/dml/Query;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/command/Prepared;->setPrepareAlways(Z)V

    return-object v0
.end method

.method private static prepare(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/h2/command/Prepared;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;)",
            "Lorg/h2/command/Prepared;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/Value;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    const/16 v2, 0x5f

    if-nez v1, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_4

    if-ne v4, v2, :cond_5

    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    invoke-static {p0, v1}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_8
    return-object p0

    :cond_9
    :goto_1
    const-string p0, "\"\""

    return-object p0
.end method

.method private read()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    iget-object v2, v0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, v0, Lorg/h2/command/Parser;->characterTypes:[I

    iget v3, v0, Lorg/h2/command/Parser;->parseIndex:I

    iput v3, v0, Lorg/h2/command/Parser;->lastParseIndex:I

    aget v4, v2, v3

    :goto_0
    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    aget v4, v2, v3

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    add-int/lit8 v6, v3, 0x1

    aget-char v7, v5, v3

    const-string v8, ""

    iput-object v8, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "\'"

    const/4 v11, 0x4

    const/4 v12, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x1

    packed-switch v4, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :goto_1
    :pswitch_0
    aget v1, v2, v6

    const/16 v4, 0x9

    if-ne v1, v4, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v10, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    invoke-static {v1}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v1, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    iput v12, v0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void

    :pswitch_1
    aget v1, v2, v6

    if-eq v1, v13, :cond_3

    iput v14, v0, Lorg/h2/command/Parser;->currentTokenType:I

    const-string v1, "."

    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :cond_3
    invoke-direct {v0, v3, v6}, Lorg/h2/command/Parser;->readDecimal(II)V

    return-void

    :pswitch_2
    move v1, v6

    :goto_2
    move v2, v1

    :goto_3
    aget-char v3, v5, v2

    const/16 v4, 0x27

    if-ne v3, v4, :cond_6

    if-nez v9, :cond_4

    iget-object v3, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v9, v1

    goto :goto_5

    .line 1
    :cond_4
    invoke-static {v9}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2
    iget-object v6, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :goto_5
    add-int/lit8 v1, v2, 0x1

    aget-char v3, v5, v1

    if-eq v3, v4, :cond_5

    iput-object v10, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    invoke-static {v9}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v3

    iget-boolean v3, v3, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v2, v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    iput v1, v0, Lorg/h2/command/Parser;->parseIndex:I

    iput v12, v0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void

    :cond_5
    add-int/lit8 v1, v2, 0x2

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_3
    aget v1, v2, v6

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    add-int/lit8 v6, v3, 0x2

    :cond_7
    iget-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->getSpecialType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/h2/command/Parser;->currentTokenType:I

    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :pswitch_4
    iget-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->getSpecialType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/h2/command/Parser;->currentTokenType:I

    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :goto_6
    :pswitch_5
    aget v1, v2, v6

    if-eq v1, v11, :cond_8

    if-eq v1, v13, :cond_8

    iget-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->getTokenType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/h2/command/Parser;->currentTokenType:I

    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :pswitch_6
    move v2, v6

    :goto_7
    move v1, v2

    :goto_8
    aget-char v3, v5, v1

    const/16 v4, 0x22

    if-ne v3, v4, :cond_b

    if-nez v9, :cond_9

    iget-object v3, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object v9, v2

    goto :goto_a

    .line 3
    :cond_9
    invoke-static {v9}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4
    iget-object v6, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :goto_a
    add-int/lit8 v2, v1, 0x1

    aget-char v3, v5, v2

    if-eq v3, v4, :cond_a

    invoke-static {v9}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    iput v2, v0, Lorg/h2/command/Parser;->parseIndex:I

    iput-boolean v14, v0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    iput v13, v0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void

    :cond_a
    add-int/lit8 v2, v1, 0x2

    goto :goto_7

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :pswitch_7
    const-string v2, "0"

    const-wide/32 v8, 0x7fffffff

    const/16 v4, 0x39

    const/16 v10, 0x30

    if-ne v7, v10, :cond_11

    aget-char v14, v5, v6

    const/16 v15, 0x58

    if-ne v14, v15, :cond_11

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v3, v13

    const-wide/16 v13, 0x0

    :goto_b
    aget-char v7, v5, v3

    const/16 v15, 0x41

    if-lt v7, v10, :cond_c

    if-le v7, v4, :cond_d

    :cond_c
    if-lt v7, v15, :cond_10

    const/16 v4, 0x46

    if-le v7, v4, :cond_d

    goto :goto_d

    :cond_d
    shl-long/2addr v13, v11

    int-to-long v10, v7

    add-long/2addr v13, v10

    if-lt v7, v15, :cond_e

    const/16 v7, 0x37

    goto :goto_c

    :cond_e
    const/16 v7, 0x30

    :goto_c
    int-to-long v10, v7

    sub-long/2addr v13, v10

    cmp-long v7, v13, v8

    if-lez v7, :cond_f

    invoke-direct {v0, v6, v3}, Lorg/h2/command/Parser;->readHexDecimal(II)V

    return-void

    :cond_f
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x39

    const/16 v10, 0x30

    const/4 v11, 0x4

    goto :goto_b

    :cond_10
    :goto_d
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    long-to-int v1, v13

    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    iput v12, v0, Lorg/h2/command/Parser;->currentTokenType:I

    iput-object v2, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    iput v3, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :cond_11
    const/16 v4, 0x30

    sub-int/2addr v7, v4

    int-to-long v10, v7

    :goto_e
    aget-char v7, v5, v6

    if-lt v7, v4, :cond_15

    const/16 v13, 0x39

    if-le v7, v13, :cond_12

    goto :goto_10

    :cond_12
    const-wide/16 v14, 0xa

    mul-long v10, v10, v14

    add-int/lit8 v7, v7, -0x30

    int-to-long v14, v7

    add-long/2addr v10, v14

    cmp-long v7, v10, v8

    if-lez v7, :cond_14

    :cond_13
    :goto_f
    invoke-direct {v0, v3, v6}, Lorg/h2/command/Parser;->readDecimal(II)V

    goto :goto_11

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_15
    :goto_10
    const/16 v4, 0x2e

    if-eq v7, v4, :cond_13

    const/16 v4, 0x45

    if-eq v7, v4, :cond_13

    const/16 v4, 0x4c

    if-ne v7, v4, :cond_16

    goto :goto_f

    :cond_16
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    long-to-int v1, v10

    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    iput v12, v0, Lorg/h2/command/Parser;->currentTokenType:I

    iput-object v2, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    :goto_11
    return-void

    :pswitch_8
    iput-object v8, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, v0, Lorg/h2/command/Parser;->currentTokenType:I

    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private read(Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->addExpected(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readAggregate(ILjava/lang/String;)Lorg/h2/expression/Expression;
    .locals 5

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->setGroupQuery()V

    const/4 v0, 0x1

    const-string v1, "DISTINCT"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    const-string p1, "*"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lorg/h2/expression/Aggregate;

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p1, p2, v2, v0, p2}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    instance-of v3, v1, Lorg/h2/expression/Wildcard;

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    new-instance p1, Lorg/h2/expression/Aggregate;

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p1, p2, v2, v0, p2}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    goto/16 :goto_1

    :cond_1
    new-instance p2, Lorg/h2/expression/Aggregate;

    iget-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p2, v0, v1, v2, p1}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    move-object p1, p2

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "GROUP_CONCAT"

    invoke-direct {p0, v1, p2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v3, "BY"

    const-string v4, "ORDER"

    if-eqz v1, :cond_4

    new-instance v2, Lorg/h2/expression/Aggregate;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    iget-object v1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {v2, v0, p2, v1, p1}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSimpleOrderList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/expression/Aggregate;->setGroupConcatOrder(Ljava/util/ArrayList;)V

    :cond_3
    const-string p1, "SEPARATOR"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/expression/Aggregate;->setGroupConcatSeparator(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_4
    const-string v1, "STRING_AGG"

    invoke-direct {p0, v1, p2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance v2, Lorg/h2/expression/Aggregate;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    iget-object v1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {v2, v0, p2, v1, p1}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    const-string p1, ","

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/expression/Aggregate;->setGroupConcatSeparator(Lorg/h2/expression/Expression;)V

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSimpleOrderList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/expression/Aggregate;->setGroupConcatOrder(Ljava/util/ArrayList;)V

    :cond_5
    :goto_0
    move-object p1, v2

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    new-instance v0, Lorg/h2/expression/Aggregate;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    move-object p1, v0

    :goto_1
    const-string p2, ")"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object p1

    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readAliasIdentifier()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readAnd()Lorg/h2/expression/Expression;
    .locals 4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readCondition()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "AND"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/h2/expression/ConditionAndOr;

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readCondition()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readBooleanSetting()Z
    .locals 2

    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return v0

    :cond_0
    const-string v0, "TRUE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ON"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "FALSE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OFF"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private readCase()Lorg/h2/expression/Expression;
    .locals 9

    const-string v0, "END"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "CASE"

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "ELSE"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    return-object v1

    :cond_1
    const-string v3, "WHEN"

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "THEN"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v4, v2}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    :cond_2
    add-int/lit8 v6, v7, 0x1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v8, v2}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v8

    invoke-virtual {v8, v6, v4}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v4, v7, 0x1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v4, v8

    :goto_2
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    :cond_7
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lorg/h2/expression/Function;->doneWithParameters()V

    return-object v4
.end method

.method private readColumnIdentifier()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "identifier"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readCommentIf()Ljava/lang/String;
    .locals 1

    const-string v0, "COMMENT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private readConcat()Lorg/h2/expression/Expression;
    .locals 12

    invoke-direct {p0}, Lorg/h2/command/Parser;->readSum()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "||"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/h2/expression/Operation;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readSum()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v1, "~"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0xe

    const-string v4, "X"

    const-string v5, "CAST"

    const-string v6, "*"

    if-eqz v1, :cond_2

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v1, v5}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v1

    new-instance v5, Lorg/h2/table/Column;

    invoke-direct {v5, v4, v3}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    invoke-virtual {v1, v2, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v0

    :goto_1
    new-instance v0, Lorg/h2/expression/CompareLike;

    iget-object v7, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readSum()Lorg/h2/expression/Expression;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "!~"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v1, v5}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v1

    new-instance v5, Lorg/h2/table/Column;

    invoke-direct {v5, v4, v3}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    invoke-virtual {v1, v2, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    move-object v8, v1

    goto :goto_2

    :cond_3
    move-object v8, v0

    :goto_2
    new-instance v0, Lorg/h2/expression/ConditionNot;

    new-instance v1, Lorg/h2/expression/CompareLike;

    iget-object v7, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readSum()Lorg/h2/expression/Expression;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    invoke-direct {v0, v1}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method private readCondition()Lorg/h2/expression/Expression;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "NOT"

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lorg/h2/expression/ConditionNot;

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readCondition()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    return-object v1

    :cond_0
    const-string v2, "EXISTS"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "("

    const-string v4, ")"

    if-eqz v2, :cond_1

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v2, Lorg/h2/expression/ConditionExists;

    invoke-direct {v2, v1}, Lorg/h2/expression/ConditionExists;-><init>(Lorg/h2/command/dml/Query;)V

    return-object v2

    :cond_1
    const-string v2, "INTERSECTS"

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    const-string v5, ","

    if-eqz v2, :cond_2

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-direct {v0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v3, Lorg/h2/expression/Comparison;

    iget-object v4, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5, v1, v2}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v2

    :goto_0
    move-object v8, v2

    :cond_3
    iget v2, v0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "NULL"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_5

    invoke-direct {v0, v7}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput v2, v0, Lorg/h2/command/Parser;->parseIndex:I

    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    goto/16 :goto_6

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    const-string v6, "LIKE"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const-string v11, "ESCAPE"

    const/4 v12, 0x0

    if-eqz v6, :cond_7

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v9

    invoke-direct {v0, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v6

    move-object v12, v6

    :cond_6
    iput-boolean v10, v0, Lorg/h2/command/Parser;->recompileAlways:Z

    new-instance v13, Lorg/h2/expression/CompareLike;

    iget-object v7, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v11, 0x0

    move-object v6, v13

    move-object v10, v12

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    move-object v8, v13

    goto/16 :goto_b

    :cond_7
    const-string v6, "ILIKE"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v7, "CAST"

    invoke-static {v6, v7}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v15

    new-instance v6, Lorg/h2/table/Column;

    const-string v7, "X"

    const/16 v13, 0xe

    invoke-direct {v6, v7, v13}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v15, v6}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    invoke-virtual {v15, v9, v8}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v16

    invoke-direct {v0, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v12

    :cond_8
    move-object/from16 v17, v12

    iput-boolean v10, v0, Lorg/h2/command/Parser;->recompileAlways:Z

    new-instance v8, Lorg/h2/expression/CompareLike;

    iget-object v14, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/16 v18, 0x0

    move-object v13, v8

    invoke-direct/range {v13 .. v18}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    goto/16 :goto_b

    :cond_9
    const-string v6, "REGEXP"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v9

    new-instance v12, Lorg/h2/expression/CompareLike;

    iget-object v7, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    :goto_2
    move-object v8, v12

    goto/16 :goto_b

    :cond_a
    const-string v6, "IS"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const/16 v9, 0x15

    const/16 v10, 0x10

    const-string v11, "FROM"

    const-string v13, "DISTINCT"

    if-eqz v6, :cond_d

    invoke-direct {v0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Lorg/h2/expression/Comparison;

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v9, 0x7

    invoke-direct {v6, v7, v9, v8, v12}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    :goto_3
    move-object v8, v6

    goto/16 :goto_b

    :cond_b
    invoke-direct {v0, v13}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-direct {v0, v11}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v6, Lorg/h2/expression/Comparison;

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v9

    invoke-direct {v6, v7, v10, v8, v9}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_3

    :cond_c
    new-instance v6, Lorg/h2/expression/Comparison;

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v10

    invoke-direct {v6, v7, v9, v8, v10}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_3

    :cond_d
    invoke-direct {v0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Lorg/h2/expression/Comparison;

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8, v12}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_3

    :cond_e
    invoke-direct {v0, v13}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {v0, v11}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance v6, Lorg/h2/expression/Comparison;

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v10

    invoke-direct {v6, v7, v9, v8, v10}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_3

    :cond_f
    new-instance v6, Lorg/h2/expression/Comparison;

    iget-object v7, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v9

    invoke-direct {v6, v7, v10, v8, v9}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_3

    :cond_10
    const-string v6, "IN"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v6}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v6

    iget-boolean v6, v6, Lorg/h2/engine/Mode;->prohibitEmptyInPredicate:Z

    if-nez v6, :cond_11

    invoke-static {v9}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v8

    goto/16 :goto_b

    :cond_11
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v9

    invoke-virtual {v9, v10}, Lorg/h2/command/dml/Query;->setNeverLazy(Z)V

    new-instance v12, Lorg/h2/expression/ConditionInSelect;

    iget-object v7, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/ConditionInSelect;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V

    :goto_4
    move-object v8, v12

    goto :goto_5

    :cond_13
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v6

    :cond_14
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_15

    instance-of v9, v7, Lorg/h2/expression/Subquery;

    if-eqz v9, :cond_15

    check-cast v7, Lorg/h2/expression/Subquery;

    invoke-virtual {v7}, Lorg/h2/expression/Subquery;->getQuery()Lorg/h2/command/dml/Query;

    move-result-object v9

    new-instance v12, Lorg/h2/expression/ConditionInSelect;

    iget-object v7, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/ConditionInSelect;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V

    goto :goto_4

    :cond_15
    new-instance v7, Lorg/h2/expression/ConditionIn;

    iget-object v9, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v7, v9, v8, v6}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    move-object v8, v7

    :goto_5
    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_16
    const-string v6, "BETWEEN"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v6

    const-string v7, "AND"

    invoke-direct {v0, v7}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v7

    new-instance v11, Lorg/h2/expression/Comparison;

    iget-object v12, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v13, 0x3

    invoke-direct {v11, v12, v13, v6, v8}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    new-instance v6, Lorg/h2/expression/Comparison;

    iget-object v12, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v6, v12, v10, v7, v8}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    new-instance v8, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {v8, v9, v11, v6}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto/16 :goto_b

    :cond_17
    iget v6, v0, Lorg/h2/command/Parser;->currentTokenType:I

    invoke-static {v6}, Lorg/h2/command/Parser;->getCompareType(I)I

    move-result v11

    if-gez v11, :cond_18

    :goto_6
    return-object v8

    :cond_18
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->read()V

    const-string v6, "ALL"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v9

    new-instance v12, Lorg/h2/expression/ConditionInSelect;

    iget-object v7, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v10, 0x1

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/ConditionInSelect;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V

    :goto_7
    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_19
    const-string v6, "ANY"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_20

    const-string v6, "SOME"

    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto/16 :goto_a

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v6

    sget-boolean v7, Lorg/h2/engine/SysProperties;->OLD_STYLE_OUTER_JOIN:Z

    if-eqz v7, :cond_1f

    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string v7, "+"

    invoke-direct {v0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    instance-of v7, v8, Lorg/h2/expression/ExpressionColumn;

    if-eqz v7, :cond_21

    instance-of v7, v6, Lorg/h2/expression/ExpressionColumn;

    if-eqz v7, :cond_21

    move-object v7, v8

    check-cast v7, Lorg/h2/expression/ExpressionColumn;

    move-object v12, v6

    check-cast v12, Lorg/h2/expression/ExpressionColumn;

    iget-object v13, v0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-virtual {v13}, Lorg/h2/command/dml/Select;->getTopFilters()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/h2/table/TableFilter;

    :goto_8
    if-eqz v15, :cond_1b

    invoke-virtual {v7, v15, v9}, Lorg/h2/expression/ExpressionColumn;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    invoke-virtual {v12, v15, v9}, Lorg/h2/expression/ExpressionColumn;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    invoke-virtual {v15}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v15

    goto :goto_8

    :cond_1c
    invoke-virtual {v7}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v7

    invoke-virtual {v12}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v12

    new-instance v14, Lorg/h2/expression/Comparison;

    iget-object v15, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v14, v15, v11, v8, v6}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    if-eqz v7, :cond_1e

    if-eqz v12, :cond_1e

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1d

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v7, v12, v10, v9, v14}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_9

    :cond_1d
    invoke-virtual {v12, v14}, Lorg/h2/table/TableFilter;->mapAndAddFilter(Lorg/h2/expression/Expression;)V

    :goto_9
    invoke-static {v10}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v6

    goto/16 :goto_3

    :cond_1e
    move-object v8, v14

    goto :goto_b

    :cond_1f
    new-instance v7, Lorg/h2/expression/Comparison;

    iget-object v9, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v7, v9, v11, v8, v6}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v8, v7

    goto :goto_b

    :cond_20
    :goto_a
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v9

    new-instance v12, Lorg/h2/expression/ConditionInSelect;

    iget-object v7, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v10, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/ConditionInSelect;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V

    goto/16 :goto_7

    :cond_21
    :goto_b
    if-eqz v2, :cond_3

    new-instance v2, Lorg/h2/expression/ConditionNot;

    invoke-direct {v2, v8}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0
.end method

.method private readDecimal(II)V
    .locals 8

    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    iget-object v1, p0, Lorg/h2/command/Parser;->characterTypes:[I

    :goto_0
    aget v2, v1, p2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    aget-char v2, v0, p2

    const/16 v4, 0x45

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v4, :cond_1

    const/16 v4, 0x65

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v2, p2, 0x1

    aget-char v4, v0, v2

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_2

    const/16 v7, 0x2d

    if-ne v4, v7, :cond_3

    :cond_2
    add-int/lit8 v2, p2, 0x2

    :cond_3
    aget p2, v1, v2

    if-ne p2, v3, :cond_7

    :goto_2
    add-int/2addr v2, v6

    aget p2, v1, v2

    if-ne p2, v3, :cond_4

    goto :goto_2

    :cond_4
    move p2, v2

    const/4 v1, 0x1

    :goto_3
    iput p2, p0, Lorg/h2/command/Parser;->parseIndex:I

    iget-object v2, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    const/4 v2, 0x5

    if-nez v1, :cond_6

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_6

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/h2/value/ValueLong;->MAX:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_6

    aget-char p1, v0, p2

    const/16 p2, 0x4c

    if-ne p1, p2, :cond_5

    iget p1, p0, Lorg/h2/command/Parser;->parseIndex:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/h2/command/Parser;->parseIndex:I

    :cond_5
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    iput v2, p0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void

    :cond_6
    :try_start_0
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    goto :goto_4

    :catch_0
    move-exception p2

    const/16 v0, 0x5602

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0
.end method

.method private readExpression()Lorg/h2/expression/Expression;
    .locals 4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAnd()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "OR"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/h2/expression/ConditionAndOr;

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAnd()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readFactor()Lorg/h2/expression/Expression;
    .locals 4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "*"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v1, "/"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_1
    const-string v1, "%"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x6

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private readFromAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "AS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "LEFT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RIGHT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FULL"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method private readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 9

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->readJavaFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/JavaFunction;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->getAggregateType(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->readAggregate(ILjava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->findAggregate(Ljava/lang/String;)Lorg/h2/engine/UserAggregate;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readJavaAggregate(Lorg/h2/engine/UserAggregate;)Lorg/h2/expression/JavaAggregate;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0, v0, p2}, Lorg/h2/command/Parser;->readJavaFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/JavaFunction;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lorg/h2/expression/Function;->getFunctionType()I

    move-result p2

    const/16 v1, 0x49

    const/4 v2, 0x2

    const-string v3, "FROM"

    const/4 v4, 0x1

    const-string v5, ","

    const/4 v6, 0x0

    const-string v7, ")"

    if-eq p2, v1, :cond_1a

    const/16 v1, 0x78

    if-eq p2, v1, :cond_19

    const/16 v1, 0x12c

    if-eq p2, v1, :cond_15

    const/16 v1, 0x4d

    if-eq p2, v1, :cond_13

    const/16 v1, 0x4e

    if-eq p2, v1, :cond_c

    const/16 v1, 0x66

    if-eq p2, v1, :cond_a

    const/16 v1, 0x67

    if-eq p2, v1, :cond_a

    const/16 v1, 0xca

    if-eq p2, v1, :cond_8

    const/16 v1, 0xcb

    if-eq p2, v1, :cond_7

    const/16 v0, 0xdf

    if-eq p2, v0, :cond_5

    const/16 v0, 0xe0

    if-eq p2, v0, :cond_5

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1d

    :goto_0
    add-int/lit8 p2, v6, 0x1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_7

    :cond_4
    move v6, p2

    goto :goto_0

    :cond_5
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "="

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    add-int/2addr v6, v4

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lorg/h2/expression/TableFunction;

    invoke-virtual {v0, p2}, Lorg/h2/expression/TableFunction;->setColumns(Ljava/util/ArrayList;)V

    goto/16 :goto_b

    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, "AS"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    goto/16 :goto_7

    :cond_8
    iget-object p2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->swapConvertFunctionParameters:Z

    if-eqz p2, :cond_9

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    goto/16 :goto_7

    :cond_9
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget-object p2, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/expression/Function;->isDatePart(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_2

    :cond_b
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    :goto_2
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    goto/16 :goto_7

    :cond_c
    const-string p2, "LEADING"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string p2, "LTRIM"

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p1

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_f

    :goto_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const-string p2, "TRAILING"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string p2, "RTRIM"

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p1

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_4

    :cond_e
    const-string p2, "BOTH"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_4

    :cond_f
    :goto_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    goto :goto_6

    :cond_10
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    :cond_11
    :goto_6
    invoke-virtual {p1, v6, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    if-eqz v0, :cond_12

    invoke-virtual {p1, v4, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    :cond_12
    :goto_7
    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_13
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_14

    const-string p2, "IN"

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_14
    :goto_8
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    goto :goto_7

    :cond_15
    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "OVER"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "("

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    if-nez p1, :cond_17

    iget-object p2, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    if-eqz p2, :cond_16

    goto :goto_9

    :cond_16
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_17
    :goto_9
    new-instance p2, Lorg/h2/expression/Rownum;

    if-nez p1, :cond_18

    iget-object p1, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    :cond_18
    invoke-direct {p2, p1}, Lorg/h2/expression/Rownum;-><init>(Lorg/h2/command/Prepared;)V

    return-object p2

    :cond_19
    iget-object p2, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "FOR"

    if-eqz p2, :cond_1b

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    :goto_a
    goto/16 :goto_3

    :cond_1b
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-static {v6}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    goto :goto_a

    :cond_1c
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_a

    :cond_1d
    :goto_b
    invoke-virtual {p1}, Lorg/h2/expression/Function;->doneWithParameters()V

    return-object p1
.end method

.method private readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;
    .locals 1

    const-string v0, "("

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v0, p1}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/expression/Function;->doneWithParameters()V

    return-object p1
.end method

.method private readHexDecimal(II)V
    .locals 3

    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    :cond_0
    add-int/lit8 p2, p2, 0x1

    aget-char v1, v0, p2

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    :cond_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    const/16 v2, 0x46

    if-le v1, v2, :cond_0

    :cond_2
    iput p2, p0, Lorg/h2/command/Parser;->parseIndex:I

    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    const/4 p1, 0x5

    iput p1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void
.end method

.method private readIdentifierWithSchema()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const-string v1, "identifier"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    iput-object p1, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    const-string p1, "."

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-static {p1, v0, v1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    iget p1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-static {p1, v0, v1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    iget-object p1, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-static {p1, v0, v1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readIf(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->addExpected(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private readIfAffinity()Z
    .locals 1

    const-string v0, "AFFINITY"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SHARD"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private readIfEqualOrTo()V
    .locals 1

    const-string v0, "="

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TO"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private readIfExists(Z)Z
    .locals 1

    const-string v0, "IF"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "EXISTS"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private readIfMore()Z
    .locals 2

    const-string v0, ","

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ")"

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private readIfNotExists()Z
    .locals 1

    const-string v0, "IF"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NOT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "EXISTS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private readInt()I
    .locals 3

    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    :cond_2
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return v0

    :cond_3
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "integer"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readJavaAggregate(Lorg/h2/engine/UserAggregate;)Lorg/h2/expression/JavaAggregate;
    .locals 3

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ")"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lorg/h2/expression/JavaAggregate;

    iget-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {v0, p1, v1, v2}, Lorg/h2/expression/JavaAggregate;-><init>(Lorg/h2/engine/UserAggregate;[Lorg/h2/expression/Expression;Lorg/h2/command/dml/Select;)V

    iget-object p1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->setGroupQuery()V

    return-object v0
.end method

.method private readJavaFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/JavaFunction;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->findFunctionAlias(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    const-string v1, ")"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    if-lez v0, :cond_1

    const-string v0, ","

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_2
    new-array v0, v0, [Lorg/h2/expression/Expression;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p2, Lorg/h2/expression/JavaFunction;

    invoke-direct {p2, p1, v0}, Lorg/h2/expression/JavaFunction;-><init>(Lorg/h2/engine/FunctionAlias;[Lorg/h2/expression/Expression;)V

    return-object p2

    :cond_3
    const p1, 0x15fa6

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    const/4 v5, 0x0

    move-object/from16 v6, p1

    move-object v7, v6

    const/4 v8, 0x0

    :goto_0
    const-string v9, "RIGHT"

    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "OUTER"

    const-string v11, "ON"

    const-string v12, "JOIN"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v9, :cond_2

    invoke-direct {v1, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {v1, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v7

    invoke-direct {v1, v7, v0, v2, v14}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v7

    invoke-direct {v1, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v13

    :cond_0
    if-eqz v4, :cond_1

    invoke-direct {v1, v6}, Lorg/h2/command/Parser;->getNested(Lorg/h2/table/TableFilter;)Lorg/h2/table/TableFilter;

    move-result-object v6

    :cond_1
    invoke-virtual {v7, v6, v14, v5, v13}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    move-object v6, v7

    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const-string v9, "LEFT"

    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {v1, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    invoke-direct {v1, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v1, v14}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v7

    if-eqz v4, :cond_3

    invoke-direct {v1, v7, v0, v14, v14}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v7

    goto :goto_2

    :cond_3
    invoke-direct {v1, v6, v0, v5, v14}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v6

    :goto_2
    invoke-direct {v1, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v13

    :cond_4
    invoke-virtual {v6, v7, v14, v5, v13}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_5
    const-string v9, "FULL"

    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "INNER"

    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {v1, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v7

    invoke-direct {v1, v6, v0, v5, v5}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v6

    invoke-direct {v1, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v13

    :cond_6
    if-eqz v4, :cond_7

    :goto_3
    invoke-virtual {v6, v7, v5, v5, v13}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v6, v7, v3, v5, v13}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_8
    invoke-direct {v1, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v7

    :try_start_0
    invoke-direct {v1, v6, v0, v5, v5}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v1, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v13

    :cond_9
    if-eqz v4, :cond_7

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_a
    const-string v9, "CROSS"

    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {v1, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v7

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_b
    const-string v9, "NATURAL"

    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-direct {v1, v12}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v8

    invoke-virtual {v7}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v9

    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v10

    invoke-virtual {v10}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v10

    invoke-virtual {v7}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v11

    invoke-virtual {v11}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v11

    invoke-virtual {v11}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v12

    array-length v15, v9

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_f

    aget-object v16, v9, v14

    invoke-virtual/range {v16 .. v16}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v5

    array-length v0, v10

    move-object/from16 v16, v9

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v0, :cond_e

    move/from16 v17, v0

    aget-object v0, v10, v9

    move-object/from16 v18, v10

    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-virtual {v8, v0}, Lorg/h2/table/TableFilter;->addNaturalJoinColumn(Lorg/h2/table/Column;)V

    new-instance v0, Lorg/h2/expression/ExpressionColumn;

    move/from16 v19, v15

    iget-object v15, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v7}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v15, v11, v3, v5}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/h2/expression/ExpressionColumn;

    iget-object v15, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    move-object/from16 v20, v5

    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v15, v12, v5, v10}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/h2/expression/Comparison;

    iget-object v10, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v15, 0x0

    invoke-direct {v5, v10, v15, v0, v3}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    if-nez v13, :cond_c

    move-object v13, v5

    goto :goto_6

    :cond_c
    new-instance v0, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {v0, v15, v13, v5}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v13, v0

    goto :goto_6

    :cond_d
    move-object/from16 v20, v5

    move/from16 v19, v15

    const/4 v15, 0x0

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p4

    move/from16 v0, v17

    move-object/from16 v10, v18

    move/from16 v15, v19

    move-object/from16 v5, v20

    goto :goto_5

    :cond_e
    move-object/from16 v18, v10

    move/from16 v19, v15

    const/4 v15, 0x0

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p2

    move/from16 v3, p4

    move-object/from16 v9, v16

    move/from16 v15, v19

    const/4 v5, 0x0

    goto :goto_4

    :cond_f
    const/4 v15, 0x0

    if-eqz v4, :cond_10

    invoke-virtual {v6, v8, v15, v2, v13}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    move/from16 v0, p4

    goto :goto_7

    :cond_10
    move/from16 v0, p4

    invoke-virtual {v6, v8, v0, v15, v13}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    :goto_7
    move v3, v0

    move-object v7, v8

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_0

    :cond_11
    if-eqz v2, :cond_12

    if-eqz v8, :cond_12

    invoke-direct {v1, v6}, Lorg/h2/command/Parser;->getNested(Lorg/h2/table/TableFilter;)Lorg/h2/table/TableFilter;

    move-result-object v6

    :cond_12
    return-object v6

    :cond_13
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readLong()J
    .locals 3

    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    :cond_2
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return-wide v0

    :cond_3
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "long"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readPositiveInt()I
    .locals 2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "positive integer"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readSequence()Lorg/h2/schema/Sequence;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/schema/Schema;->getSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->findSequence(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const v1, 0x15fb4

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readSimpleTableFilter(I)Lorg/h2/table/TableFilter;
    .locals 9

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v2

    const-string v0, "AS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "SET"

    iget-object v1, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    new-instance v8, Lorg/h2/table/TableFilter;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iget-boolean v4, p0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v5, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const/4 v7, 0x0

    move-object v0, v8

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;ILorg/h2/table/IndexHints;)V

    return-object v8
.end method

.method private readString()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    instance-of v1, v0, Lorg/h2/expression/ValueExpression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readSum()Lorg/h2/expression/Expression;
    .locals 4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readFactor()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "+"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readFactor()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v1, "-"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readFactor()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private readTableColumn(Lorg/h2/table/TableFilter;)Lorg/h2/table/Column;
    .locals 5

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v1

    goto :goto_0

    :cond_0
    const p1, 0x15f9d

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    move-object v2, v3

    goto :goto_1

    :cond_2
    const p1, 0x15fdf

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_2

    :cond_4
    const p1, 0xa476

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->rowId:Z

    if-eqz v1, :cond_6

    const-string v1, "_ROWID_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getRowIdColumn()Lorg/h2/table/Column;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p1

    return-object p1
.end method

.method private readTableEngineParams()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method private readTableFilter(Z)Lorg/h2/table/TableFilter;
    .locals 14

    const-string v0, "("

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "INDEX"

    const-string v3, ")"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectUnion()Lorg/h2/command/dml/Query;

    move-result-object p1

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/command/Prepared;->setParameterList(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->init()V

    iget-object v0, p0, Lorg/h2/command/Parser;->createView:Lorg/h2/command/ddl/CreateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    :goto_0
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/h2/engine/Session;->getNextSystemIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-static {v0, v3, v1, p1, v4}, Lorg/h2/table/TableView;->createTempView(Lorg/h2/engine/Session;Lorg/h2/engine/User;Ljava/lang/String;Lorg/h2/command/dml/Query;Lorg/h2/command/dml/Query;)Lorg/h2/table/TableView;

    move-result-object p1

    move-object v8, p1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p0, p1, v0, v4, v4}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->getNested(Lorg/h2/table/TableFilter;)Lorg/h2/table/TableFilter;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p0, v0, v1, v4, p1}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object p1

    :goto_1
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readFromAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lorg/h2/table/TableFilter;->setAlias(Ljava/lang/String;)V

    :cond_3
    return-object p1

    :cond_4
    const-string p1, "VALUES"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->parseValuesTable(I)Lorg/h2/table/TableFilter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    :goto_2
    move-object v8, p1

    move-object v1, v5

    goto/16 :goto_6

    :cond_5
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v6, "PUBLIC"

    invoke-virtual {v0, v6}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v8

    const-string v0, "SYSTEM_RANGE"

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "GENERATE_SERIES"

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-direct {p0, v1, p1}, Lorg/h2/command/Parser;->readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    instance-of v0, p1, Lorg/h2/expression/FunctionCall;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lorg/h2/expression/FunctionCall;

    invoke-interface {v0}, Lorg/h2/expression/FunctionCall;->isDeterministic()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/h2/command/Parser;->recompileAlways:Z

    :cond_8
    new-instance v1, Lorg/h2/table/FunctionTable;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v8, v3, p1, v0}, Lorg/h2/table/FunctionTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Lorg/h2/expression/FunctionCall;)V

    move-object p1, v1

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_a
    :goto_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v9

    const-string p1, ","

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v10

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v11

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance p1, Lorg/h2/table/RangeTable;

    const/4 v12, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lorg/h2/table/RangeTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    goto :goto_2

    :cond_b
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    new-instance p1, Lorg/h2/table/RangeTable;

    invoke-direct {p1, v8, v9, v10, v4}, Lorg/h2/table/RangeTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    goto/16 :goto_2

    :cond_c
    :goto_4
    const-string v0, "DUAL"

    invoke-direct {p0, v0, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_5
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->getDualTable(Z)Lorg/h2/table/Table;

    move-result-object p1

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->sysDummy1:Z

    if-eqz v0, :cond_e

    const-string v0, "SYSDUMMY1"

    invoke-direct {p0, v0, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readTableOrView(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object p1

    goto/16 :goto_2

    :goto_6
    const-string p1, "USE"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->parseIndexHints(Lorg/h2/table/Table;)Lorg/h2/table/IndexHints;

    move-result-object v5

    move-object v9, v1

    :goto_7
    move-object v13, v5

    goto :goto_8

    :cond_f
    move-object v9, p1

    goto :goto_7

    :cond_10
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readFromAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->parseIndexHints(Lorg/h2/table/Table;)Lorg/h2/table/IndexHints;

    move-result-object v5

    :cond_11
    move-object v9, v0

    goto :goto_7

    :goto_8
    new-instance p1, Lorg/h2/table/TableFilter;

    iget-object v7, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iget-boolean v10, p0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v11, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    iget v12, p0, Lorg/h2/command/Parser;->orderInFrom:I

    add-int/lit8 v0, v12, 0x1

    iput v0, p0, Lorg/h2/command/Parser;->orderInFrom:I

    move-object v6, p1

    invoke-direct/range {v6 .. v13}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;ILorg/h2/table/IndexHints;)V

    return-object p1
.end method

.method private readTableOrView()Lorg/h2/table/Table;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readTableOrView(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    return-object v0
.end method

.method private readTableOrView(Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/schema/Schema;->getTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getSchemaSearchPath()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, v3}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, p1}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const v0, 0xa476

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readTerm()Lorg/h2/expression/Expression;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const-string v3, "."

    const/4 v4, 0x0

    if-eq v2, v1, :cond_2e

    const/4 v5, 0x2

    const-string v6, "CURRENT_TIMESTAMP"

    const-string v7, "CURRENT_DATE"

    const-string v8, "CURRENT_TIME"

    const-string v9, "("

    const/4 v10, 0x5

    if-eq v2, v5, :cond_17

    const/4 v5, 0x3

    if-eq v2, v5, :cond_e

    if-eq v2, v10, :cond_d

    const/16 v5, 0x10

    const-string v11, ")"

    if-eq v2, v5, :cond_8

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v11}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    if-nez v2, :cond_2

    iget-object v5, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    new-instance v5, Lorg/h2/expression/Rownum;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    :cond_3
    invoke-direct {v5, v2}, Lorg/h2/expression/Rownum;-><init>(Lorg/h2/command/Prepared;)V

    goto/16 :goto_11

    :pswitch_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    :goto_1
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v5

    goto/16 :goto_11

    :pswitch_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    :goto_2
    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v5

    goto/16 :goto_11

    :pswitch_3
    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v2, v6}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v5

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0, v11}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5}, Lorg/h2/expression/Function;->doneWithParameters()V

    goto/16 :goto_11

    :pswitch_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v5

    goto/16 :goto_11

    :pswitch_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-static {v1}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v2

    goto :goto_3

    :pswitch_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v5

    goto/16 :goto_11

    :pswitch_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v5

    goto/16 :goto_11

    :pswitch_8
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    iget v2, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne v2, v10, :cond_7

    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/expression/ValueExpression;->getType()I

    move-result v5

    if-ne v5, v10, :cond_6

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v5}, Lorg/h2/expression/ValueExpression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v9, v5, v7

    if-nez v9, :cond_6

    const/high16 v2, -0x80000000

    invoke-static {v2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v2

    :cond_5
    move-object v5, v2

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lorg/h2/expression/ValueExpression;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v5}, Lorg/h2/expression/ValueExpression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Lorg/h2/value/ValueLong;->MIN_BD:Ljava/math/BigDecimal;

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_5

    const-wide/high16 v5, -0x8000000000000000L

    invoke-static {v5, v6}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v2

    goto :goto_4

    :goto_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto/16 :goto_11

    :cond_7
    new-instance v5, Lorg/h2/expression/Operation;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-direct {v5, v10, v2, v4}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto/16 :goto_11

    :pswitch_9
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    new-instance v5, Lorg/h2/expression/Variable;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lorg/h2/expression/Variable;-><init>(Lorg/h2/engine/Session;Ljava/lang/String;)V

    const-string v2, ":="

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v6, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v7, "SET"

    invoke-static {v6, v7}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-virtual {v6, v1, v2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    move-object v5, v6

    goto/16 :goto_11

    :cond_8
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-direct {p0, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v5, Lorg/h2/expression/ExpressionList;

    new-array v2, v0, [Lorg/h2/expression/Expression;

    invoke-direct {v5, v2}, Lorg/h2/expression/ExpressionList;-><init>([Lorg/h2/expression/Expression;)V

    goto/16 :goto_11

    :cond_9
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v5

    const-string v2, ","

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-direct {p0, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct {p0, v11}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v5, Lorg/h2/expression/ExpressionList;

    invoke-direct {v5, v2}, Lorg/h2/expression/ExpressionList;-><init>([Lorg/h2/expression/Expression;)V

    goto/16 :goto_11

    :cond_c
    invoke-direct {p0, v11}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_d
    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-static {v2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v5

    goto/16 :goto_5

    :cond_e
    iget-object v2, p0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    iget v5, p0, Lorg/h2/command/Parser;->parseIndex:I

    aget-char v2, v2, v5

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const v5, 0x1600b

    if-eqz v2, :cond_15

    iget v2, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne v2, v10, :cond_15

    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->getType()I

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_15

    iget-object v2, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    if-nez v2, :cond_11

    iget-object v2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_f

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    goto :goto_6

    :cond_f
    invoke-static {v5}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_11
    :goto_6
    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    if-ltz v5, :cond_14

    const v6, 0x186a0

    if-ge v5, v6, :cond_14

    iget-object v6, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v5, :cond_12

    iget-object v6, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_7
    iget-object v2, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_12

    iget-object v2, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    iget-object v2, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    if-nez v2, :cond_13

    new-instance v2, Lorg/h2/expression/Parameter;

    invoke-direct {v2, v5}, Lorg/h2/expression/Parameter;-><init>(I)V

    iget-object v6, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    :goto_8
    move-object v5, v2

    goto :goto_9

    :cond_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "parameter index"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v2, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    if-nez v2, :cond_16

    new-instance v2, Lorg/h2/expression/Parameter;

    iget-object v5, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v2, v5}, Lorg/h2/expression/Parameter;-><init>(I)V

    goto :goto_8

    :goto_9
    iget-object v2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_16
    invoke-static {v5}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_17
    iget-object v2, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    if-eqz v5, :cond_1a

    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    :goto_a
    invoke-direct {p0, v4, v2}, Lorg/h2/command/Parser;->readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v5

    goto/16 :goto_11

    :cond_18
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    :goto_b
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readTermObjectDot(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v5

    goto/16 :goto_11

    :cond_19
    new-instance v5, Lorg/h2/expression/ExpressionColumn;

    iget-object v6, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v5, v6, v4, v4, v2}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1a
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_b

    :cond_1b
    const-string v5, "CASE"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-direct {p0}, Lorg/h2/command/Parser;->readCase()Lorg/h2/expression/Expression;

    move-result-object v5

    goto/16 :goto_11

    :cond_1c
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_a

    :cond_1d
    const-string v5, "CURRENT_USER"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v2, "USER"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v5

    goto/16 :goto_11

    :cond_1e
    const-string v5, "CURRENT"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v9, "DATE"

    const-string v11, "TIME"

    const-string v12, "TIMESTAMP"

    if-eqz v5, :cond_22

    invoke-direct {p0, v12}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v5

    goto/16 :goto_11

    :cond_1f
    invoke-direct {p0, v11}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    goto/16 :goto_1

    :cond_20
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto/16 :goto_2

    :cond_21
    new-instance v5, Lorg/h2/expression/ExpressionColumn;

    iget-object v6, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v5, v6, v4, v4, v2}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_22
    const-string v5, "NEXT"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "VALUE"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v2, "FOR"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readSequence()Lorg/h2/schema/Sequence;

    move-result-object v2

    new-instance v5, Lorg/h2/expression/SequenceValue;

    invoke-direct {v5, v2}, Lorg/h2/expression/SequenceValue;-><init>(Lorg/h2/schema/Sequence;)V

    goto/16 :goto_11

    :cond_23
    iget v5, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne v5, v10, :cond_2d

    iget-object v5, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v5}, Lorg/h2/value/Value;->getType()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2d

    invoke-direct {p0, v9, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "D"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto/16 :goto_f

    :cond_24
    invoke-direct {p0, v11, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    const-string v5, "T"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto/16 :goto_e

    :cond_25
    invoke-direct {p0, v12, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    const-string v5, "TS"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_d

    :cond_26
    const-string v5, "X"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v2

    goto/16 :goto_3

    :cond_27
    const-string v5, "E"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "\\\\"

    const-string v6, "\\"

    invoke-static {v2, v5, v6}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    goto/16 :goto_3

    :cond_28
    const-string v5, "N"

    invoke-direct {p0, v5, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_29
    new-instance v5, Lorg/h2/expression/ExpressionColumn;

    iget-object v6, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v5, v6, v4, v4, v2}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_2a
    :goto_d
    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-static {v2}, Lorg/h2/value/ValueTimestamp;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;

    move-result-object v2

    goto/16 :goto_3

    :cond_2b
    :goto_e
    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-static {v2}, Lorg/h2/value/ValueTime;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTime;

    move-result-object v2

    goto/16 :goto_3

    :cond_2c
    :goto_f
    iget-object v2, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-static {v2}, Lorg/h2/value/ValueDate;->parse(Ljava/lang/String;)Lorg/h2/value/ValueDate;

    move-result-object v2

    goto/16 :goto_3

    :cond_2d
    new-instance v5, Lorg/h2/expression/ExpressionColumn;

    iget-object v6, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v5, v6, v4, v4, v2}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_2e
    const-string v2, "SELECT"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "FROM"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "WITH"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_10

    :cond_2f
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_30
    :goto_10
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v2

    new-instance v5, Lorg/h2/expression/Subquery;

    invoke-direct {v5, v2}, Lorg/h2/expression/Subquery;-><init>(Lorg/h2/command/dml/Query;)V

    :cond_31
    :goto_11
    const-string v2, "["

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v6, "ARRAY_GET"

    invoke-static {v2, v6}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v5

    new-instance v6, Lorg/h2/expression/Operation;

    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    invoke-static {v7}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v7

    invoke-direct {v6, v1, v5, v7}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    invoke-virtual {v2, v1, v6}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string v5, "]"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    move-object v5, v2

    :cond_32
    const-string v2, "::"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "PG_CATALOG"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_33
    const-string v2, "REGCLASS"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "PUBLIC"

    const-string v3, "PG_GET_OID"

    invoke-direct {p0, v2, v3}, Lorg/h2/command/Parser;->findFunctionAlias(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object v2

    if-eqz v2, :cond_34

    new-array v1, v1, [Lorg/h2/expression/Expression;

    aput-object v5, v1, v0

    new-instance v5, Lorg/h2/expression/JavaFunction;

    invoke-direct {v5, v2, v1}, Lorg/h2/expression/JavaFunction;-><init>(Lorg/h2/engine/FunctionAlias;[Lorg/h2/expression/Expression;)V

    goto :goto_12

    :cond_34
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_35
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v3, "CAST"

    invoke-static {v2, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    invoke-virtual {v2, v0, v5}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    move-object v5, v2

    :cond_36
    :goto_12
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readTermObjectDot(Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/h2/command/Parser;->readWildcardOrSequenceValue(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    sget-boolean v3, Lorg/h2/engine/SysProperties;->OLD_STYLE_OUTER_JOIN:Z

    const-string v4, "("

    if-eqz v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/Parser;->readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "."

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0, p1, v1}, Lorg/h2/command/Parser;->readWildcardOrSequenceValue(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x15f9d

    if-eqz v3, :cond_5

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {v4, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->readWildcardOrSequenceValue(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v2, v3, v1, v0, p1}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_7
    invoke-static {v4, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_8
    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v2, v3, p1, v1, v0}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_9
    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v2, v3, v0, p1, v1}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private readUniqueIdentifier()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readWildcardOrSequenceValue(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 2

    const-string v0, "*"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/expression/Wildcard;

    invoke-direct {v0, p1, p2}, Lorg/h2/expression/Wildcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "NEXTVAL"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->findSequence(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lorg/h2/expression/SequenceValue;

    invoke-direct {p2, p1}, Lorg/h2/expression/SequenceValue;-><init>(Lorg/h2/schema/Sequence;)V

    return-object p2

    :cond_2
    const-string v0, "CURRVAL"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->findSequence(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {p2, v0}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p2

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-virtual {p2}, Lorg/h2/expression/Function;->doneWithParameters()V

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/command/Parser;->originalSQL:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string v0, " "

    .line 16
    .line 17
    invoke-static {p2, v0, p3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    :cond_0
    invoke-virtual {p1, p3}, Lorg/h2/command/Prepared;->setSQL(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static sortTableFilters(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/TableFilter;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/TableFilter;

    invoke-static {v0, v2}, Lorg/h2/command/Parser;->compareTableFilters(Lorg/h2/table/TableFilter;Lorg/h2/table/TableFilter;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lorg/h2/command/Parser;->TABLE_FILTER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0, p2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0xa476

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getSession()Lorg/h2/engine/Session;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/h2/command/Prepared;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->parse(Ljava/lang/String;Z)Lorg/h2/command/Prepared;

    move-result-object p1
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v1

    const v2, 0xa410

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->parse(Ljava/lang/String;Z)Lorg/h2/command/Prepared;

    move-result-object p1

    :goto_0
    iget-boolean v0, p0, Lorg/h2/command/Parser;->recompileAlways:Z

    invoke-virtual {p1, v0}, Lorg/h2/command/Prepared;->setPrepareAlways(Z)V

    iget-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/h2/command/Prepared;->setParameterList(Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->initialize(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1
.end method

.method public parseTableName(Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->initialize(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/command/Parser;->parse(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->prepare()V

    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public prepareCommand(Ljava/lang/String;)Lorg/h2/command/Command;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/command/Parser;->parse(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v0

    const-string v1, ";"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v2, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->prepare()V

    new-instance v2, Lorg/h2/command/CommandContainer;

    invoke-direct {v2, p0, p1, v0}, Lorg/h2/command/CommandContainer;-><init>(Lorg/h2/command/Parser;Ljava/lang/String;Lorg/h2/command/Prepared;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/h2/command/Parser;->originalSQL:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/h2/command/CommandList;

    invoke-direct {v1, p0, p1, v2, v0}, Lorg/h2/command/CommandList;-><init>(Lorg/h2/command/Parser;Ljava/lang/String;Lorg/h2/command/Command;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :cond_2
    return-object v2

    :goto_1
    iget-object v0, p0, Lorg/h2/command/Parser;->originalSQL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setRightsChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/Parser;->rightsChecked:Z

    return-void
.end method

.method public setSuppliedParameterList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/Parser;->suppliedParameterList:Ljava/util/ArrayList;

    return-void
.end method
