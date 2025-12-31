.class public Lorg/h2/table/MetaTable;
.super Lorg/h2/table/Table;
.source "SourceFile"


# static fields
.field private static final CATALOGS:I = 0x5

.field private static final CHARACTER_SET_NAME:Ljava/lang/String; = "Unicode"

.field private static final COLLATIONS:I = 0x10

.field private static final COLUMNS:I = 0x1

.field private static final COLUMN_PRIVILEGES:I = 0xf

.field private static final CONSTANTS:I = 0x16

.field private static final CONSTRAINTS:I = 0x14

.field private static final CROSS_REFERENCES:I = 0x13

.field private static final DOMAINS:I = 0x17

.field private static final FUNCTION_ALIASES:I = 0xc

.field private static final FUNCTION_COLUMNS:I = 0x15

.field private static final HELP:I = 0x7

.field private static final INDEXES:I = 0x2

.field private static final IN_DOUBT:I = 0x12

.field private static final LOCKS:I = 0x1a

.field private static final META_TABLE_TYPE_COUNT:I = 0x1d

.field private static final QUERY_STATISTICS:I = 0x1c

.field private static final RIGHTS:I = 0xb

.field private static final ROLES:I = 0xa

.field public static final ROW_COUNT_APPROXIMATION:J = 0x3e8L

.field private static final SCHEMATA:I = 0xd

.field private static final SEQUENCES:I = 0x8

.field private static final SESSIONS:I = 0x19

.field private static final SESSION_STATE:I = 0x1b

.field private static final SETTINGS:I = 0x6

.field private static final TABLES:I = 0x0

.field private static final TABLE_PRIVILEGES:I = 0xe

.field private static final TABLE_TYPES:I = 0x3

.field private static final TRIGGERS:I = 0x18

.field private static final TYPE_INFO:I = 0x4

.field private static final USERS:I = 0x9

.field private static final VIEWS:I = 0x11


# instance fields
.field private final indexColumn:I

.field private final metaIndex:Lorg/h2/index/MetaIndex;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;II)V
    .locals 32

    move-object/from16 v6, p0

    move/from16 v7, p3

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    iput v7, v6, Lorg/h2/table/MetaTable;->type:I

    const-string v0, "REMARKS"

    const-string v1, "KEY"

    const-string v2, "ID INT"

    const-string v3, "NAME"

    const-string v4, "TABLE_NAME"

    const/4 v5, 0x0

    packed-switch v7, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "QUERY_STATISTICS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v19, "AVERAGE_ROW_COUNT DOUBLE"

    const-string v20, "STD_DEV_ROW_COUNT DOUBLE"

    const-string v9, "SQL_STATEMENT"

    const-string v10, "EXECUTION_COUNT INT"

    const-string v11, "MIN_EXECUTION_TIME DOUBLE"

    const-string v12, "MAX_EXECUTION_TIME DOUBLE"

    const-string v13, "CUMULATIVE_EXECUTION_TIME DOUBLE"

    const-string v14, "AVERAGE_EXECUTION_TIME DOUBLE"

    const-string v15, "STD_DEV_EXECUTION_TIME DOUBLE"

    const-string v16, "MIN_ROW_COUNT INT"

    const-string v17, "MAX_ROW_COUNT INT"

    const-string v18, "CUMULATIVE_ROW_COUNT LONG"

    filled-new-array/range {v9 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    :goto_0
    move-object v4, v5

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "SESSION_STATE"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v0, "SQL"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "LOCKS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v0, "SESSION_ID INT"

    const-string v1, "LOCK_TYPE"

    const-string v2, "TABLE_SCHEMA"

    filled-new-array {v2, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "SESSIONS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v13, "STATEMENT_START"

    const-string v14, "CONTAINS_UNCOMMITTED"

    const-string v9, "ID INT"

    const-string v10, "USER_NAME"

    const-string v11, "SESSION_START"

    const-string v12, "STATEMENT"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-string v0, "TRIGGERS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v21, "SQL"

    const-string v22, "ID INT"

    const-string v9, "TRIGGER_CATALOG"

    const-string v10, "TRIGGER_SCHEMA"

    const-string v11, "TRIGGER_NAME"

    const-string v12, "TRIGGER_TYPE"

    const-string v13, "TABLE_CATALOG"

    const-string v14, "TABLE_SCHEMA"

    const-string v15, "TABLE_NAME"

    const-string v16, "BEFORE BIT"

    const-string v17, "JAVA_CLASS"

    const-string v18, "QUEUE_SIZE INT"

    const-string v19, "NO_WAIT BIT"

    const-string v20, "REMARKS"

    filled-new-array/range {v9 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string v0, "DOMAINS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v21, "SQL"

    const-string v22, "ID INT"

    const-string v9, "DOMAIN_CATALOG"

    const-string v10, "DOMAIN_SCHEMA"

    const-string v11, "DOMAIN_NAME"

    const-string v12, "COLUMN_DEFAULT"

    const-string v13, "IS_NULLABLE"

    const-string v14, "DATA_TYPE INT"

    const-string v15, "PRECISION INT"

    const-string v16, "SCALE INT"

    const-string v17, "TYPE_NAME"

    const-string v18, "SELECTIVITY INT"

    const-string v19, "CHECK_CONSTRAINT"

    const-string v20, "REMARKS"

    filled-new-array/range {v9 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "CONSTANTS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v14, "SQL"

    const-string v15, "ID INT"

    const-string v9, "CONSTANT_CATALOG"

    const-string v10, "CONSTANT_SCHEMA"

    const-string v11, "CONSTANT_NAME"

    const-string v12, "DATA_TYPE INT"

    const-string v13, "REMARKS"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "FUNCTION_COLUMNS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v24, "REMARKS"

    const-string v25, "COLUMN_DEFAULT"

    const-string v9, "ALIAS_CATALOG"

    const-string v10, "ALIAS_SCHEMA"

    const-string v11, "ALIAS_NAME"

    const-string v12, "JAVA_CLASS"

    const-string v13, "JAVA_METHOD"

    const-string v14, "COLUMN_COUNT INT"

    const-string v15, "POS INT"

    const-string v16, "COLUMN_NAME"

    const-string v17, "DATA_TYPE INT"

    const-string v18, "TYPE_NAME"

    const-string v19, "PRECISION INT"

    const-string v20, "SCALE SMALLINT"

    const-string v21, "RADIX SMALLINT"

    const-string v22, "NULLABLE SMALLINT"

    const-string v23, "COLUMN_TYPE SMALLINT"

    filled-new-array/range {v9 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "CONSTRAINTS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v20, "SQL"

    const-string v21, "ID INT"

    const-string v9, "CONSTRAINT_CATALOG"

    const-string v10, "CONSTRAINT_SCHEMA"

    const-string v11, "CONSTRAINT_NAME"

    const-string v12, "CONSTRAINT_TYPE"

    const-string v13, "TABLE_CATALOG"

    const-string v14, "TABLE_SCHEMA"

    const-string v15, "TABLE_NAME"

    const-string v16, "UNIQUE_INDEX_NAME"

    const-string v17, "CHECK_EXPRESSION"

    const-string v18, "COLUMN_LIST"

    const-string v19, "REMARKS"

    filled-new-array/range {v9 .. v21}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_9
    const-string v0, "CROSS_REFERENCES"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v21, "PK_NAME"

    const-string v22, "DEFERRABILITY SMALLINT"

    const-string v9, "PKTABLE_CATALOG"

    const-string v10, "PKTABLE_SCHEMA"

    const-string v11, "PKTABLE_NAME"

    const-string v12, "PKCOLUMN_NAME"

    const-string v13, "FKTABLE_CATALOG"

    const-string v14, "FKTABLE_SCHEMA"

    const-string v15, "FKTABLE_NAME"

    const-string v16, "FKCOLUMN_NAME"

    const-string v17, "ORDINAL_POSITION SMALLINT"

    const-string v18, "UPDATE_RULE SMALLINT"

    const-string v19, "DELETE_RULE SMALLINT"

    const-string v20, "FK_NAME"

    filled-new-array/range {v9 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    const-string v4, "PKTABLE_NAME"

    goto/16 :goto_1

    :pswitch_a
    const-string v0, "IN_DOUBT"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v0, "TRANSACTION"

    const-string v1, "STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "VIEWS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v16, "REMARKS"

    const-string v17, "ID INT"

    const-string v9, "TABLE_CATALOG"

    const-string v10, "TABLE_SCHEMA"

    const-string v11, "TABLE_NAME"

    const-string v12, "VIEW_DEFINITION"

    const-string v13, "CHECK_OPTION"

    const-string v14, "IS_UPDATABLE"

    const-string v15, "STATUS"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_c
    const-string v0, "COLLATIONS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "COLUMN_PRIVILEGES"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v15, "PRIVILEGE_TYPE"

    const-string v16, "IS_GRANTABLE"

    const-string v9, "GRANTOR"

    const-string v10, "GRANTEE"

    const-string v11, "TABLE_CATALOG"

    const-string v12, "TABLE_SCHEMA"

    const-string v13, "TABLE_NAME"

    const-string v14, "COLUMN_NAME"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_e
    const-string v0, "TABLE_PRIVILEGES"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v14, "PRIVILEGE_TYPE"

    const-string v15, "IS_GRANTABLE"

    const-string v9, "GRANTOR"

    const-string v10, "GRANTEE"

    const-string v11, "TABLE_CATALOG"

    const-string v12, "TABLE_SCHEMA"

    const-string v13, "TABLE_NAME"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_f
    const-string v0, "SCHEMATA"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v15, "REMARKS"

    const-string v16, "ID INT"

    const-string v9, "CATALOG_NAME"

    const-string v10, "SCHEMA_NAME"

    const-string v11, "SCHEMA_OWNER"

    const-string v12, "DEFAULT_CHARACTER_SET_NAME"

    const-string v13, "DEFAULT_COLLATION_NAME"

    const-string v14, "IS_DEFAULT BIT"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    const-string v0, "FUNCTION_ALIASES"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v19, "ID INT"

    const-string v20, "SOURCE"

    const-string v9, "ALIAS_CATALOG"

    const-string v10, "ALIAS_SCHEMA"

    const-string v11, "ALIAS_NAME"

    const-string v12, "JAVA_CLASS"

    const-string v13, "JAVA_METHOD"

    const-string v14, "DATA_TYPE INT"

    const-string v15, "TYPE_NAME"

    const-string v16, "COLUMN_COUNT INT"

    const-string v17, "RETURNS_RESULT SMALLINT"

    const-string v18, "REMARKS"

    filled-new-array/range {v9 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "RIGHTS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v14, "TABLE_NAME"

    const-string v15, "ID INT"

    const-string v9, "GRANTEE"

    const-string v10, "GRANTEETYPE"

    const-string v11, "GRANTEDROLE"

    const-string v12, "RIGHTS"

    const-string v13, "TABLE_SCHEMA"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_12
    const-string v1, "ROLES"

    invoke-virtual {v6, v1}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    const-string v1, "USERS"

    invoke-virtual {v6, v1}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v1, "ADMIN"

    filled-new-array {v3, v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    const-string v0, "SEQUENCES"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v19, "IS_CYCLE BIT"

    const-string v20, "ID INT"

    const-string v9, "SEQUENCE_CATALOG"

    const-string v10, "SEQUENCE_SCHEMA"

    const-string v11, "SEQUENCE_NAME"

    const-string v12, "CURRENT_VALUE BIGINT"

    const-string v13, "INCREMENT BIGINT"

    const-string v14, "IS_GENERATED BIT"

    const-string v15, "REMARKS"

    const-string v16, "CACHE BIGINT"

    const-string v17, "MIN_VALUE BIGINT"

    const-string v18, "MAX_VALUE BIGINT"

    filled-new-array/range {v9 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_15
    const-string v0, "HELP"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v0, "SYNTAX"

    const-string v1, "TEXT"

    const-string v3, "SECTION"

    const-string v4, "TOPIC"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_16
    const-string v0, "SETTINGS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v0, "VALUE"

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_17
    const-string v0, "CATALOGS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v0, "CATALOG_NAME"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_18
    const-string v0, "TYPE_INFO"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v21, "NULLABLE SMALLINT"

    const-string v22, "SEARCHABLE SMALLINT"

    const-string v9, "TYPE_NAME"

    const-string v10, "DATA_TYPE INT"

    const-string v11, "PRECISION INT"

    const-string v12, "PREFIX"

    const-string v13, "SUFFIX"

    const-string v14, "PARAMS"

    const-string v15, "AUTO_INCREMENT BIT"

    const-string v16, "MINIMUM_SCALE SMALLINT"

    const-string v17, "MAXIMUM_SCALE SMALLINT"

    const-string v18, "RADIX INT"

    const-string v19, "POS INT"

    const-string v20, "CASE_SENSITIVE BIT"

    filled-new-array/range {v9 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "TABLE_TYPES"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v0, "TYPE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1a
    const-string v0, "INDEXES"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v29, "INDEX_CLASS"

    const-string v30, "AFFINITY BIT"

    const-string v9, "TABLE_CATALOG"

    const-string v10, "TABLE_SCHEMA"

    const-string v11, "TABLE_NAME"

    const-string v12, "NON_UNIQUE BIT"

    const-string v13, "INDEX_NAME"

    const-string v14, "ORDINAL_POSITION SMALLINT"

    const-string v15, "COLUMN_NAME"

    const-string v16, "CARDINALITY INT"

    const-string v17, "PRIMARY_KEY BIT"

    const-string v18, "INDEX_TYPE_NAME"

    const-string v19, "IS_GENERATED BIT"

    const-string v20, "INDEX_TYPE SMALLINT"

    const-string v21, "ASC_OR_DESC"

    const-string v22, "PAGES INT"

    const-string v23, "FILTER_CONDITION"

    const-string v24, "REMARKS"

    const-string v25, "SQL"

    const-string v26, "ID INT"

    const-string v27, "SORT_TYPE INT"

    const-string v28, "CONSTRAINT_NAME"

    filled-new-array/range {v9 .. v30}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto :goto_1

    :pswitch_1b
    const-string v0, "COLUMNS"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v30, "REMARKS"

    const-string v31, "SOURCE_DATA_TYPE SMALLINT"

    const-string v9, "TABLE_CATALOG"

    const-string v10, "TABLE_SCHEMA"

    const-string v11, "TABLE_NAME"

    const-string v12, "COLUMN_NAME"

    const-string v13, "ORDINAL_POSITION INT"

    const-string v14, "COLUMN_DEFAULT"

    const-string v15, "IS_NULLABLE"

    const-string v16, "DATA_TYPE INT"

    const-string v17, "CHARACTER_MAXIMUM_LENGTH INT"

    const-string v18, "CHARACTER_OCTET_LENGTH INT"

    const-string v19, "NUMERIC_PRECISION INT"

    const-string v20, "NUMERIC_PRECISION_RADIX INT"

    const-string v21, "NUMERIC_SCALE INT"

    const-string v22, "CHARACTER_SET_NAME"

    const-string v23, "COLLATION_NAME"

    const-string v24, "TYPE_NAME"

    const-string v25, "NULLABLE INT"

    const-string v26, "IS_COMPUTED BIT"

    const-string v27, "SELECTIVITY INT"

    const-string v28, "CHECK_CONSTRAINT"

    const-string v29, "SEQUENCE_NAME"

    filled-new-array/range {v9 .. v31}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    goto :goto_1

    :pswitch_1c
    const-string v0, "TABLES"

    invoke-virtual {v6, v0}, Lorg/h2/engine/DbObjectBase;->setObjectName(Ljava/lang/String;)V

    const-string v19, "TABLE_CLASS"

    const-string v20, "ROW_COUNT_ESTIMATE BIGINT"

    const-string v9, "TABLE_CATALOG"

    const-string v10, "TABLE_SCHEMA"

    const-string v11, "TABLE_NAME"

    const-string v12, "TABLE_TYPE"

    const-string v13, "STORAGE_TYPE"

    const-string v14, "SQL"

    const-string v15, "REMARKS"

    const-string v16, "LAST_MODIFICATION BIGINT"

    const-string v17, "ID INT"

    const-string v18, "TYPE_NAME"

    filled-new-array/range {v9 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/h2/table/MetaTable;->createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;

    move-result-object v0

    :goto_1
    invoke-virtual {v6, v0}, Lorg/h2/table/Table;->setColumns([Lorg/h2/table/Column;)V

    if-nez v4, :cond_0

    const/4 v0, -0x1

    iput v0, v6, Lorg/h2/table/MetaTable;->indexColumn:I

    iput-object v5, v6, Lorg/h2/table/MetaTable;->metaIndex:Lorg/h2/index/MetaIndex;

    goto :goto_2

    :cond_0
    invoke-virtual {v6, v4}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/table/Column;->getColumnId()I

    move-result v1

    iput v1, v6, Lorg/h2/table/MetaTable;->indexColumn:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/h2/table/Column;

    aput-object v0, v1, v8

    invoke-static {v1}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    new-instance v1, Lorg/h2/index/MetaIndex;

    invoke-direct {v1, v6, v0, v8}, Lorg/h2/index/MetaIndex;-><init>(Lorg/h2/table/MetaTable;[Lorg/h2/table/IndexColumn;Z)V

    iput-object v1, v6, Lorg/h2/table/MetaTable;->metaIndex:Lorg/h2/index/MetaIndex;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs add(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    array-length v0, p2

    new-array v0, v0, [Lorg/h2/value/Value;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    if-nez v2, :cond_0

    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;",
            "Lorg/h2/engine/DbObject;",
            "Ljava/lang/String;",
            "Lorg/h2/table/Table;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/h2/engine/User;

    invoke-virtual {v0}, Lorg/h2/engine/User;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "YES"

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    const-string v0, "NO"

    goto :goto_0

    :goto_1
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez p5, :cond_1

    const/4 v1, 0x0

    move-object v3, p3

    move-object v6, p6

    move-object v7, v8

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, p5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    move-object v3, p3

    move-object v7, p6

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private addPrivileges(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;",
            "Lorg/h2/engine/DbObject;",
            "Ljava/lang/String;",
            "Lorg/h2/table/Table;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    const-string v7, "SELECT"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    const-string v7, "INSERT"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_2

    const-string v7, "UPDATE"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_3

    const-string v6, "DELETE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/table/MetaTable;->addPrivilege(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    if-eqz v1, :cond_1

    invoke-static {p2}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2, p3}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p3

    if-gez p3, :cond_2

    return v1

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p1, p2, p4}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    if-lez p1, :cond_3

    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method private varargs createColumns([Ljava/lang/String;)[Lorg/h2/table/Column;
    .locals 6

    array-length v0, p1

    new-array v0, v0, [Lorg/h2/table/Column;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto :goto_1

    :cond_0
    const/16 v4, 0xd

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v5

    iget v5, v5, Lorg/h2/value/DataType;->type:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v4, v5

    :goto_1
    new-instance v5, Lorg/h2/table/Column;

    invoke-direct {v5, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLocalTempTables()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getMetaTableTypeCount()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method private static getRefAction(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method private getTablesByName(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p2}, Lorg/h2/engine/Database;->getTableOrViewByName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLocalTempTables()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/h2/table/Table;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private identifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 0

    const-string p1, "META"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "META"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "META"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkSupportAlter()V
    .locals 1

    const-string v0, "META"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public generateRows(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Ljava/util/ArrayList;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Lorg/h2/result/SearchRow;",
            "Lorg/h2/result/SearchRow;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v8, Lorg/h2/table/MetaTable;->indexColumn:I

    if-ltz v3, :cond_2

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v8, Lorg/h2/table/MetaTable;->indexColumn:I

    invoke-interface {v2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    move-object v9, v1

    move-object v10, v2

    goto :goto_2

    :cond_1
    move-object v9, v1

    :goto_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :goto_2
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v11

    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->isAdmin()Z

    move-result v1

    iget v2, v8, Lorg/h2/table/MetaTable;->type:I

    const/4 v3, 0x3

    const-string v5, "REFERENTIAL"

    const-string v6, "PRIMARY KEY"

    const/16 v12, 0x9

    const-string v36, "NO"

    const-string v37, "YES"

    const/4 v13, 0x4

    const-string v38, "FALSE"

    const-string v39, "TRUE"

    const/4 v14, 0x1

    const/4 v7, 0x0

    const-string v4, ""

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v8, Lorg/h2/table/MetaTable;->type:I

    .line 1
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    goto/16 :goto_5e

    .line 2
    :pswitch_0
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getQueryStatisticsData()Lorg/h2/engine/QueryStatisticsData;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lorg/h2/engine/QueryStatisticsData;->getQueries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;

    iget-object v12, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->sqlStatement:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMinNanos:J

    long-to-double v5, v5

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v9

    div-double/2addr v5, v9

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMaxNanos:J

    long-to-double v5, v5

    div-double/2addr v5, v9

    div-double/2addr v5, v9

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeCumulativeNanos:J

    long-to-double v5, v5

    div-double/2addr v5, v9

    div-double/2addr v5, v9

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->executionTimeMeanNanos:D

    div-double/2addr v5, v9

    div-double/2addr v5, v9

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->getExecutionTimeStandardDeviation()D

    move-result-wide v5

    div-double/2addr v5, v9

    div-double/2addr v5, v9

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountCumulative:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->rowCountMean:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/engine/QueryStatisticsData$QueryEntry;->getRowCountStandardDeviation()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    filled-new-array/range {v12 .. v23}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getVariableNames()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/h2/engine/Session;->getVariable(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v5

    const-string v6, "@"

    .line 3
    invoke-static {v6, v4}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    const-string v9, "SET @"

    const-string v10, " "

    .line 5
    invoke-static {v9, v4, v10}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6
    invoke-virtual {v5}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v11, v4}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getLocalTempTables()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TABLE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getSchemaSearchPath()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    new-instance v2, Lorg/h2/util/StatementBuilder;

    const-string v3, "SET SCHEMA_SEARCH_PATH "

    invoke-direct {v2, v3}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    :goto_6
    if-ge v7, v3, :cond_5

    aget-object v4, v1, v7

    const-string v5, ", "

    invoke-virtual {v2, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_5
    const-string v1, "SCHEMA_SEARCH_PATH"

    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SET SCHEMA "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCHEMA"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_5e

    :pswitch_2
    iget-object v2, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v7}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_63

    aget-object v6, v2, v5

    if-nez v1, :cond_8

    if-ne v6, v0, :cond_7

    goto :goto_8

    :cond_7
    move-object/from16 p2, v2

    goto :goto_b

    :cond_8
    :goto_8
    invoke-virtual {v6}, Lorg/h2/engine/Session;->getLocks()[Lorg/h2/table/Table;

    move-result-object v9

    array-length v10, v9

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v10, :cond_7

    aget-object v13, v9, v12

    invoke-virtual {v13}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v14

    invoke-virtual {v14}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 p2, v2

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getId()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v6}, Lorg/h2/table/Table;->isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "WRITE"

    goto :goto_a

    :cond_9
    const-string v7, "READ"

    :goto_a
    filled-new-array {v14, v15, v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    const/4 v7, 0x0

    goto :goto_9

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p2

    const/4 v7, 0x0

    goto :goto_7

    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_63

    aget-object v9, v5, v7

    if-nez v1, :cond_b

    if-ne v9, v0, :cond_a

    goto :goto_d

    :cond_a
    move-wide/from16 v22, v2

    goto :goto_f

    :cond_b
    :goto_d
    invoke-virtual {v9}, Lorg/h2/engine/Session;->getCurrentCommand()Lorg/h2/command/Command;

    move-result-object v10

    invoke-virtual {v9}, Lorg/h2/engine/Session;->getCurrentCommandStart()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_c

    move-wide v12, v2

    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/h2/engine/Session;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v9}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v14

    invoke-virtual {v14}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v17

    new-instance v14, Ljava/sql/Timestamp;

    move-wide/from16 v22, v2

    invoke-virtual {v9}, Lorg/h2/engine/Session;->getSessionStart()J

    move-result-wide v2

    invoke-direct {v14, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v14}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v18

    if-nez v10, :cond_d

    const/16 v19, 0x0

    goto :goto_e

    :cond_d
    invoke-virtual {v10}, Lorg/h2/command/Command;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    :goto_e
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v12, v13}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/h2/engine/Session;->containsUncommitted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :goto_f
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v2, v22

    goto :goto_c

    :pswitch_4
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v13}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    check-cast v1, Lorg/h2/schema/TriggerObject;

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getTypeNameList()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->isBefore()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getTriggerClassName()Ljava/lang/String;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->isNoWait()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v12, v35

    move-object/from16 v16, v35

    filled-new-array/range {v12 .. v25}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_5
    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllUserDataTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/UserDataType;

    invoke-virtual {v2}, Lorg/h2/engine/UserDataType;->getColumn()Lorg/h2/table/Column;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lorg/h2/table/Column;->getDefaultSQL()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lorg/h2/table/Column;->isNullable()Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v16, v37

    goto :goto_12

    :cond_e
    move-object/from16 v16, v36

    :goto_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/table/Column;->getDataType()Lorg/h2/value/DataType;

    move-result-object v6

    iget v6, v6, Lorg/h2/value/DataType;->sqlType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/table/Column;->getPrecisionAsInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/table/Column;->getScale()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v3}, Lorg/h2/table/Column;->getDataType()Lorg/h2/value/DataType;

    move-result-object v5

    iget-object v5, v5, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "VALUE"

    invoke-virtual {v3, v0, v7}, Lorg/h2/table/Column;->getCheckConstraintSQL(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/UserDataType;->getCreateSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v13, "PUBLIC"

    move-object/from16 v12, v35

    move-object/from16 v20, v5

    filled-new-array/range {v12 .. v25}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_6
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    check-cast v1, Lorg/h2/schema/Constant;

    invoke-virtual {v1}, Lorg/h2/schema/Constant;->getValue()Lorg/h2/expression/ValueExpression;

    move-result-object v2

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/expression/ValueExpression;->getType()I

    move-result v5

    invoke-static {v5}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lorg/h2/expression/ValueExpression;->getSQL()Ljava/lang/String;

    move-result-object v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v35

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_13

    :pswitch_7
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v12}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    check-cast v1, Lorg/h2/engine/FunctionAlias;

    :try_start_0
    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethods()[Lorg/h2/engine/FunctionAlias$JavaMethod;

    move-result-object v2
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    goto :goto_14

    :catch_0
    const/4 v7, 0x0

    new-array v2, v7, [Lorg/h2/engine/FunctionAlias$JavaMethod;

    :goto_14
    array-length v3, v2

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v3, :cond_f

    aget-object v5, v2, v6

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v9

    invoke-static {v9}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v9

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v10

    invoke-virtual {v10}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    move-object v14, v10

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethodName()Ljava/lang/String;

    move-result-object v16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getParameterCount()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v10

    invoke-static {v10}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v7, v9, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    move-object/from16 v21, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 p1, v13

    iget-wide v12, v9, Lorg/h2/value/DataType;->defaultPrecision:J

    invoke-static {v12, v13}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v9, Lorg/h2/value/DataType;->defaultScale:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v27, ""

    const/16 v28, 0x0

    const-string v18, "0"

    const-string v19, "P0"

    const-string v24, "10"

    const-string v25, "2"

    const-string v26, "5"

    const/4 v7, 0x1

    move-object/from16 v12, v35

    move-object/from16 v13, p1

    filled-new-array/range {v12 .. v28}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v11, v9}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_16

    :cond_10
    const/4 v7, 0x1

    :goto_16
    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getColumnClasses()[Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    :goto_17
    array-length v12, v9

    if-ge v10, v12, :cond_12

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam()Z

    move-result v12

    if-eqz v12, :cond_11

    if-nez v10, :cond_11

    move-object/from16 p1, v0

    move-object/from16 v29, v1

    move-object v7, v2

    move/from16 v30, v3

    goto/16 :goto_18

    :cond_11
    aget-object v12, v9, v10

    invoke-static {v12}, Lorg/h2/value/DataType;->getTypeFromClass(Ljava/lang/Class;)I

    move-result v13

    invoke-static {v13}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v12

    xor-int/2addr v12, v7

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v14

    invoke-virtual {v14}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethodName()Ljava/lang/String;

    move-result-object v17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 p1, v0

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getParameterCount()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/h2/engine/FunctionAlias$JavaMethod;->hasConnectionParam()Z

    move-result v18

    const/16 v19, 0x1

    xor-int/lit8 v18, v18, 0x1

    move-object/from16 v29, v1

    add-int v1, v10, v18

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "P"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v13, Lorg/h2/value/DataType;->type:I

    invoke-static {v7}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v1, v13, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    move-object/from16 v21, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    move/from16 v30, v3

    iget-wide v2, v13, Lorg/h2/value/DataType;->defaultPrecision:J

    invoke-static {v2, v3}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v13, Lorg/h2/value/DataType;->defaultScale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 7
    invoke-static {v12, v4}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 8
    const-string v27, ""

    const/16 v28, 0x0

    const-string v24, "10"

    const-string v26, "1"

    move-object/from16 v12, v35

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v0

    filled-new-array/range {v12 .. v28}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :goto_18
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move-object v2, v7

    move-object/from16 v1, v29

    move/from16 v3, v30

    const/4 v7, 0x1

    goto/16 :goto_17

    :cond_12
    move-object/from16 p1, v0

    move-object/from16 v29, v1

    move-object v7, v2

    move/from16 v30, v3

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const/4 v14, 0x1

    goto/16 :goto_15

    :pswitch_8
    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    check-cast v2, Lorg/h2/constraint/Constraint;

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-direct {v8, v3, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_19

    :cond_13
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getUniqueIndex()Lorg/h2/index/Index;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-interface {v7}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v7

    goto :goto_1a

    :cond_14
    const/16 v19, 0x0

    :goto_1a
    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v0, v7, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v12

    if-nez v12, :cond_15

    goto :goto_19

    :cond_15
    const-string v12, "CHECK"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    move-object v12, v2

    check-cast v12, Lorg/h2/constraint/ConstraintCheck;

    invoke-virtual {v12}, Lorg/h2/constraint/ConstraintCheck;->getExpression()Lorg/h2/expression/Expression;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v20, v12

    const/4 v12, 0x0

    goto :goto_1d

    :cond_16
    const-string v12, "UNIQUE"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    goto :goto_1c

    :cond_17
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    move-object v12, v2

    check-cast v12, Lorg/h2/constraint/ConstraintReferential;

    invoke-virtual {v12}, Lorg/h2/constraint/ConstraintReferential;->getColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v12

    :goto_1b
    const/16 v20, 0x0

    goto :goto_1d

    :cond_18
    const/4 v12, 0x0

    goto :goto_1b

    :cond_19
    :goto_1c
    move-object v12, v2

    check-cast v12, Lorg/h2/constraint/ConstraintUnique;

    invoke-virtual {v12}, Lorg/h2/constraint/ConstraintUnique;->getColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v12

    goto :goto_1b

    :goto_1d
    if-eqz v12, :cond_1b

    new-instance v13, Lorg/h2/util/StatementBuilder;

    invoke-direct {v13}, Lorg/h2/util/StatementBuilder;-><init>()V

    array-length v14, v12

    move-object/from16 p2, v1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v14, :cond_1a

    move/from16 v16, v14

    aget-object v14, v12, v1

    move-object/from16 v17, v12

    const-string v12, ","

    invoke-virtual {v13, v12}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v12, v14, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v12}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v1, v1, 0x1

    move/from16 v14, v16

    move-object/from16 v12, v17

    goto :goto_1e

    :cond_1a
    invoke-virtual {v13}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_1f

    :cond_1b
    move-object/from16 p2, v1

    const/16 v21, 0x0

    :goto_1f
    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v12, v35

    move-object/from16 v16, v35

    move-object/from16 v18, v7

    filled-new-array/range {v12 .. v24}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    move-object/from16 v1, p2

    goto/16 :goto_19

    :pswitch_9
    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    check-cast v2, Lorg/h2/constraint/Constraint;

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_20

    :cond_1d
    check-cast v2, Lorg/h2/constraint/ConstraintReferential;

    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getRefColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v6

    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getRefTable()Lorg/h2/table/Table;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v0, v12, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v12

    if-nez v12, :cond_1e

    goto :goto_20

    :cond_1e
    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getUpdateAction()I

    move-result v12

    invoke-static {v12}, Lorg/h2/table/MetaTable;->getRefAction(I)I

    move-result v26

    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getDeleteAction()I

    move-result v12

    invoke-static {v12}, Lorg/h2/table/MetaTable;->getRefAction(I)I

    move-result v27

    const/4 v12, 0x0

    :goto_21
    array-length v13, v3

    if-ge v12, v13, :cond_1c

    invoke-virtual {v7}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v13

    invoke-virtual {v13}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aget-object v15, v4, v12

    iget-object v15, v15, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v15}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v16

    move-object/from16 p2, v1

    invoke-virtual/range {v16 .. v16}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aget-object v1, v3, v12

    iget-object v1, v1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v1, v12, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2}, Lorg/h2/constraint/ConstraintReferential;->getUniqueIndex()Lorg/h2/index/Index;

    move-result-object v12

    invoke-interface {v12}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "7"

    move-object/from16 v12, v35

    move-object/from16 v16, v35

    filled-new-array/range {v12 .. v25}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    move v12, v1

    move-object/from16 v1, p2

    goto :goto_21

    :pswitch_a
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_63

    if-eqz v1, :cond_63

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/store/InDoubtTransaction;

    invoke-interface {v1}, Lorg/h2/store/InDoubtTransaction;->getTransactionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/h2/store/InDoubtTransaction;->getState()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_22

    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lorg/h2/table/MetaTable;->getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v3

    sget-object v5, Lorg/h2/table/TableType;->VIEW:Lorg/h2/table/TableType;

    if-eq v3, v5, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v0, v14, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_23

    :cond_20
    move-object v3, v2

    check-cast v3, Lorg/h2/table/TableView;

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lorg/h2/table/TableView;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "INVALID"

    :goto_24
    move-object/from16 v18, v2

    goto :goto_25

    :cond_21
    const-string v2, "VALID"

    goto :goto_24

    :goto_25
    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v16, "NONE"

    const-string v17, "NO"

    move-object/from16 v12, v35

    filled-new-array/range {v12 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_23

    :pswitch_c
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v1, :cond_63

    aget-object v2, v0, v7

    invoke-static {v2}, Lorg/h2/value/CompareMode;->getName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :pswitch_d
    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_22
    :goto_27
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Right;

    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v2

    instance-of v3, v2, Lorg/h2/table/Table;

    if-nez v3, :cond_23

    goto :goto_27

    :cond_23
    move-object v13, v2

    check-cast v13, Lorg/h2/table/Table;

    invoke-direct {v8, v13, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_27

    :cond_24
    invoke-virtual {v13}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_27

    :cond_25
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v14

    invoke-virtual {v1}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v15

    invoke-virtual {v13}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v6, :cond_22

    aget-object v1, v7, v5

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v14

    move-object/from16 v4, v35

    move/from16 v17, v5

    move-object v5, v13

    move/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move v7, v15

    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivileges(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;I)V

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v7, v16

    move/from16 v6, v18

    goto :goto_28

    :pswitch_e
    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_29
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Right;

    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v2

    instance-of v3, v2, Lorg/h2/table/Table;

    if-nez v3, :cond_26

    goto :goto_29

    :cond_26
    move-object v5, v2

    check-cast v5, Lorg/h2/table/Table;

    invoke-direct {v8, v5, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_29

    :cond_27
    invoke-virtual {v5}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_29

    :cond_28
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v1}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v7

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, v35

    invoke-direct/range {v1 .. v7}, Lorg/h2/table/MetaTable;->addPrivileges(Ljava/util/ArrayList;Lorg/h2/engine/DbObject;Ljava/lang/String;Lorg/h2/table/Table;Ljava/lang/String;I)V

    goto :goto_29

    :pswitch_f
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getOwner()Lorg/h2/engine/User;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "PUBLIC"

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v17, v39

    goto :goto_2b

    :cond_29
    move-object/from16 v17, v38

    :goto_2b
    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v15, "Unicode"

    move-object/from16 v12, v35

    move-object/from16 v16, v0

    filled-new-array/range {v12 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_2a

    :pswitch_10
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v12}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    check-cast v1, Lorg/h2/engine/FunctionAlias;

    :try_start_1
    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethods()[Lorg/h2/engine/FunctionAlias$JavaMethod;

    move-result-object v2
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_2c

    :catch_1
    const/4 v2, 0x0

    new-array v3, v2, [Lorg/h2/engine/FunctionAlias$JavaMethod;

    :goto_2c
    array-length v5, v3

    const/4 v7, 0x0

    :goto_2d
    if-ge v7, v5, :cond_2a

    aget-object v6, v3, v7

    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v9

    if-nez v9, :cond_2b

    const/4 v14, 0x1

    goto :goto_2e

    :cond_2b
    const/4 v14, 0x2

    :goto_2e
    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getJavaMethodName()Ljava/lang/String;

    move-result-object v16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getDataType()I

    move-result v12

    invoke-static {v12}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v12

    iget-object v15, v12, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/h2/engine/FunctionAlias$JavaMethod;->getParameterCount()I

    move-result v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 9
    invoke-static {v14, v4}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 10
    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v1}, Lorg/h2/engine/FunctionAlias;->getSource()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v12, v35

    move-object v14, v9

    move-object v9, v15

    const/4 v6, 0x2

    move-object v15, v10

    move-object/from16 v18, v9

    filled-new-array/range {v12 .. v23}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v11, v9}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2d

    :cond_2c
    const/4 v2, 0x0

    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllAggregates()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/UserAggregate;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lorg/h2/engine/UserAggregate;->getJavaClassName()Ljava/lang/String;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v2}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v3

    iget-object v3, v3, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    const-string v13, "PUBLIC"

    const-string v16, ""

    const-string v19, "1"

    const-string v20, "2"

    move-object/from16 v12, v35

    move-object/from16 v18, v3

    filled-new-array/range {v12 .. v23}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_2f

    :pswitch_11
    const/4 v6, 0x2

    if-eqz v1, :cond_63

    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedRole()Lorg/h2/engine/Role;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantee()Lorg/h2/engine/DbObject;

    move-result-object v5

    invoke-interface {v5}, Lorg/h2/engine/DbObject;->getType()I

    move-result v7

    if-ne v7, v6, :cond_2d

    const-string v7, "USER"

    :goto_31
    move-object v13, v7

    goto :goto_32

    :cond_2d
    const-string v7, "ROLE"

    goto :goto_31

    :goto_32
    if-nez v3, :cond_33

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-eqz v3, :cond_2f

    instance-of v7, v3, Lorg/h2/schema/Schema;

    if-eqz v7, :cond_2e

    check-cast v3, Lorg/h2/schema/Schema;

    move-object v7, v3

    const/4 v3, 0x0

    goto :goto_33

    :cond_2e
    instance-of v7, v3, Lorg/h2/table/Table;

    if-eqz v7, :cond_2f

    check-cast v3, Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    goto :goto_33

    :cond_2f
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_33
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :cond_30
    move-object v3, v4

    :goto_34
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    goto :goto_35

    :cond_31
    move-object/from16 v16, v4

    :goto_35
    invoke-direct {v8, v0, v3, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v7

    if-nez v7, :cond_32

    goto :goto_30

    :cond_32
    invoke-interface {v5}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getRights()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v14, ""

    move-object/from16 v17, v3

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_33
    invoke-interface {v5}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_30

    :pswitch_12
    iget-object v2, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getAllRoles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Role;

    if-nez v1, :cond_35

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/h2/engine/RightOwner;->isRoleGranted(Lorg/h2/engine/Role;)Z

    move-result v5

    if-eqz v5, :cond_34

    :cond_35
    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v5, v6, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_36

    :pswitch_13
    iget-object v2, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/User;

    if-nez v1, :cond_37

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v5

    if-ne v5, v3, :cond_36

    :cond_37
    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/h2/engine/User;->isAdmin()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v5, v6, v7, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_37

    :pswitch_14
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v3}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    check-cast v1, Lorg/h2/schema/Sequence;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getCurrentValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getBelongsToTable()Z

    move-result v2

    if-eqz v2, :cond_38

    move-object/from16 v17, v39

    goto :goto_39

    :cond_38
    move-object/from16 v17, v38

    :goto_39
    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getCacheSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getMinValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getMaxValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->getCycle()Z

    move-result v2

    if-eqz v2, :cond_39

    move-object/from16 v22, v39

    goto :goto_3a

    :cond_39
    move-object/from16 v22, v38

    :goto_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v12, v35

    filled-new-array/range {v12 .. v23}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_38

    :pswitch_15
    const/4 v2, 0x0

    const/4 v6, 0x2

    const-string v0, "/org/h2/res/help.csv"

    :try_start_2
    invoke-static {v0}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lorg/h2/tools/Csv;

    invoke-direct {v0}, Lorg/h2/tools/Csv;-><init>()V

    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Lorg/h2/tools/Csv;->setLineCommentCharacter(C)V

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lorg/h2/tools/Csv;->read(Ljava/io/Reader;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    const/4 v7, 0x0

    :goto_3b
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v13}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v1, v2, v4, v5, v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_16
    const/4 v2, 0x0

    iget-object v3, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getAllSettings()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/engine/Setting;

    invoke-virtual {v5}, Lorg/h2/engine/Setting;->getStringValue()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/h2/engine/Setting;->getIntValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3a
    invoke-virtual {v5}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v11, v5}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_3c

    :cond_3b
    const-string v3, "info.BUILD_ID"

    const-string v5, "196"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const-string v3, "info.VERSION_MAJOR"

    const-string v5, "1"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const-string v3, "info.VERSION_MINOR"

    const-string v6, "4"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "info.VERSION"

    filled-new-array {v6, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    if-eqz v1, :cond_3c

    const-string v24, "user.variant"

    const-string v25, "file.encoding"

    const-string v12, "java.runtime.version"

    const-string v13, "java.vm.name"

    const-string v14, "java.vendor"

    const-string v15, "os.name"

    const-string v16, "os.arch"

    const-string v17, "os.version"

    const-string v18, "sun.os.patch.level"

    const-string v19, "file.separator"

    const-string v20, "path.separator"

    const-string v21, "line.separator"

    const-string v22, "user.country"

    const-string v23, "user.language"

    filled-new-array/range {v12 .. v25}, [Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    :goto_3d
    const/16 v2, 0xe

    if-ge v7, v2, :cond_3c

    aget-object v2, v1, v7

    const-string v3, "property."

    .line 11
    invoke-static {v3, v2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v2, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    :cond_3c
    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getExclusiveSession()Lorg/h2/engine/Session;

    move-result-object v1

    if-nez v1, :cond_3d

    move-object/from16 v1, v38

    goto :goto_3e

    :cond_3d
    move-object/from16 v1, v39

    :goto_3e
    const-string v2, "EXCLUSIVE"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Mode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MODE"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_3f

    :cond_3e
    const-string v5, "0"

    :goto_3f
    const-string v1, "MULTI_THREADED"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v1

    if-eqz v1, :cond_3f

    move-object/from16 v1, v39

    goto :goto_40

    :cond_3f
    move-object/from16 v1, v38

    :goto_40
    const-string v2, "MVCC"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getQueryTimeout()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUERY_TIMEOUT"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getRetentionTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RETENTION_TIME"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getLogMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOG"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/SettingsBase;->getSettings()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_40
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_42

    :cond_41
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    const-string v1, "info.CACHE_MAX_SIZE"

    const-string v2, "info.PAGE_SIZE"

    const-string v3, "info.PAGE_COUNT"

    const-string v5, "info.FILE_READ"

    const-string v6, "info.FILE_WRITE"

    if-eqz v0, :cond_42

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getWriteCountTotal()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "info.FILE_WRITE_TOTAL"

    filled-new-array {v9, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v11, v7}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getWriteCount()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v11, v7}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getReadCount()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v11, v7}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v11, v7}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v11, v7}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getCache()Lorg/h2/util/Cache;

    move-result-object v9

    invoke-interface {v9}, Lorg/h2/util/Cache;->getMaxMemory()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v11, v7}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getCache()Lorg/h2/util/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/util/Cache;->getMemory()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "info.CACHE_SIZE"

    filled-new-array {v7, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :cond_42
    iget-object v0, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/h2/mvstore/FileStore;->getWriteCount()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v11, v6}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v11, v5}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v7}, Lorg/h2/mvstore/FileStore;->getFile()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v7, 0x1000

    int-to-long v9, v7

    div-long/2addr v5, v9

    .line 13
    invoke-static {v4, v5, v6}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 14
    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    const-string v3, "4096"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v11, v2}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/mvstore/MVStore;->getCacheSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getCacheSizeUsed()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "info.CACHE_SIZE"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_5e

    :catch_3
    move-exception v0

    const-string v1, "Can not get size"

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_17
    filled-new-array/range {v35 .. v35}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_5e

    :pswitch_18
    const/4 v5, 0x0

    invoke-static {}, Lorg/h2/value/DataType;->getTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_43
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/DataType;

    iget-boolean v2, v1, Lorg/h2/value/DataType;->hidden:Z

    if-nez v2, :cond_43

    iget v2, v1, Lorg/h2/value/DataType;->sqlType:I

    if-nez v2, :cond_44

    goto :goto_43

    :cond_44
    iget-object v12, v1, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iget-wide v2, v1, Lorg/h2/value/DataType;->maxPrecision:J

    invoke-static {v2, v3}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lorg/h2/value/DataType;->prefix:Ljava/lang/String;

    iget-object v2, v1, Lorg/h2/value/DataType;->suffix:Ljava/lang/String;

    iget-object v3, v1, Lorg/h2/value/DataType;->params:Ljava/lang/String;

    iget-boolean v4, v1, Lorg/h2/value/DataType;->autoIncrement:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v18

    iget v4, v1, Lorg/h2/value/DataType;->minScale:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    iget v4, v1, Lorg/h2/value/DataType;->maxScale:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    iget-boolean v4, v1, Lorg/h2/value/DataType;->decimal:Z

    if-eqz v4, :cond_45

    const-string v4, "10"

    move-object/from16 v21, v4

    goto :goto_44

    :cond_45
    move-object/from16 v21, v5

    :goto_44
    iget v4, v1, Lorg/h2/value/DataType;->sqlTypePos:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    iget-boolean v1, v1, Lorg/h2/value/DataType;->caseSensitive:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    const-string v24, "1"

    const-string v25, "3"

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    filled-new-array/range {v12 .. v25}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto :goto_43

    :pswitch_19
    sget-object v0, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    invoke-virtual {v0}, Lorg/h2/table/TableType;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    sget-object v0, Lorg/h2/table/TableType;->TABLE_LINK:Lorg/h2/table/TableType;

    invoke-virtual {v0}, Lorg/h2/table/TableType;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    sget-object v0, Lorg/h2/table/TableType;->SYSTEM_TABLE:Lorg/h2/table/TableType;

    invoke-virtual {v0}, Lorg/h2/table/TableType;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    sget-object v0, Lorg/h2/table/TableType;->VIEW:Lorg/h2/table/TableType;

    invoke-virtual {v0}, Lorg/h2/table/TableType;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    sget-object v0, Lorg/h2/table/TableType;->EXTERNAL_TABLE_ENGINE:Lorg/h2/table/TableType;

    invoke-virtual {v0}, Lorg/h2/table/TableType;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v11, v0}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_5e

    :pswitch_1a
    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz v9, :cond_46

    if-eqz v10, :cond_46

    invoke-virtual {v9, v10}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lorg/h2/table/MetaTable;->getTablesByName(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_45

    :cond_46
    invoke-direct/range {p0 .. p1}, Lorg/h2/table/MetaTable;->getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v0, v7, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v12

    if-nez v12, :cond_47

    goto :goto_46

    :cond_47
    invoke-direct {v8, v3, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v12

    if-eqz v12, :cond_48

    goto :goto_46

    :cond_48
    invoke-virtual {v3}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v3}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v14

    const/4 v13, 0x0

    :goto_47
    if-eqz v15, :cond_55

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v13, v12, :cond_55

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/h2/index/Index;

    invoke-interface {v12}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_49

    move-object/from16 p3, v1

    move-object/from16 v37, v3

    move-object/from16 v40, v6

    :goto_48
    move/from16 v42, v13

    move-object v3, v14

    move-object/from16 v43, v15

    const/16 v41, 0x1

    goto/16 :goto_54

    :cond_49
    move-object/from16 v34, v5

    :goto_49
    if-eqz v14, :cond_4d

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4d

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/constraint/Constraint;

    invoke-virtual {v5, v12}, Lorg/h2/constraint/Constraint;->usesIndex(Lorg/h2/index/Index;)Z

    move-result v16

    if-eqz v16, :cond_4b

    invoke-interface {v12}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_4a

    invoke-virtual {v5}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    :cond_4a
    invoke-virtual {v5}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v34

    goto :goto_4a

    :cond_4b
    move-object/from16 p3, v1

    :cond_4c
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p3

    const/4 v5, 0x0

    goto :goto_49

    :cond_4d
    move-object/from16 p3, v1

    invoke-interface {v12}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v1

    instance-of v2, v12, Lorg/h2/index/MultiVersionIndex;

    if-eqz v2, :cond_4e

    move-object v2, v12

    check-cast v2, Lorg/h2/index/MultiVersionIndex;

    invoke-virtual {v2}, Lorg/h2/index/MultiVersionIndex;->getBaseIndex()Lorg/h2/index/Index;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_4b
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    :cond_4e
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_4b

    :goto_4c
    move-object/from16 v40, v6

    const/4 v5, 0x0

    :goto_4d
    array-length v6, v1

    if-ge v5, v6, :cond_54

    aget-object v6, v1, v5

    move-object/from16 v36, v1

    iget-object v1, v6, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v16

    move-object/from16 v37, v3

    invoke-virtual/range {v16 .. v16}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v16

    move/from16 v17, v13

    if-eqz v16, :cond_4f

    move-object/from16 v16, v38

    goto :goto_4e

    :cond_4f
    move-object/from16 v16, v39

    :goto_4e
    invoke-interface {v12}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v1}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v13

    invoke-virtual {v13}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v13

    if-eqz v13, :cond_50

    move-object/from16 v21, v39

    goto :goto_4f

    :cond_50
    move-object/from16 v21, v38

    :goto_4f
    invoke-interface {v12}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v13

    invoke-virtual {v13}, Lorg/h2/index/IndexType;->getSQL()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v12}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v13

    invoke-virtual {v13}, Lorg/h2/index/IndexType;->getBelongsToConstraint()Z

    move-result v13

    if-eqz v13, :cond_51

    move-object/from16 v24, v39

    goto :goto_50

    :cond_51
    move-object/from16 v24, v38

    :goto_50
    iget v13, v6, Lorg/h2/table/IndexColumn;->sortType:I

    const/16 v41, 0x1

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_52

    const-string v13, "D"

    :goto_51
    move-object/from16 v27, v13

    goto :goto_52

    :cond_52
    const-string v13, "A"

    goto :goto_51

    :goto_52
    invoke-interface {v12}, Lorg/h2/engine/DbObject;->getComment()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-interface {v12}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v29

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 p2, v5

    invoke-interface {v12}, Lorg/h2/engine/DbObject;->getId()I

    move-result v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v6, Lorg/h2/table/IndexColumn;->sortType:I

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-interface {v12}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/index/IndexType;->isAffinity()Z

    move-result v6

    if-eqz v6, :cond_53

    move-object/from16 v33, v39

    goto :goto_53

    :cond_53
    move-object/from16 v33, v38

    :goto_53
    const-string v19, "0"

    const-string v23, "3"

    const-string v25, "0"

    const-string v26, ""

    move-object v6, v12

    move-object/from16 v12, v35

    move/from16 v42, v17

    move-object v13, v3

    move-object v3, v14

    move-object v14, v7

    move-object/from16 v43, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v1

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v5

    move-object/from16 v31, v34

    move-object/from16 v32, v2

    filled-new-array/range {v12 .. v33}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    move/from16 v5, p2

    move-object v14, v3

    move-object v12, v6

    move-object/from16 v1, v36

    move-object/from16 v3, v37

    move/from16 v13, v42

    move-object/from16 v15, v43

    goto/16 :goto_4d

    :cond_54
    move-object/from16 v37, v3

    goto/16 :goto_48

    :goto_54
    add-int/lit8 v13, v42, 0x1

    move-object/from16 v1, p3

    move-object v14, v3

    move-object/from16 v3, v37

    move-object/from16 v6, v40

    move-object/from16 v15, v43

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto/16 :goto_47

    :cond_55
    move-object/from16 p3, v1

    move-object/from16 v40, v6

    const/16 v41, 0x1

    move-object/from16 v1, p3

    move-object/from16 v6, v40

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto/16 :goto_46

    :pswitch_1b
    if-eqz v9, :cond_56

    if-eqz v10, :cond_56

    invoke-virtual {v9, v10}, Lorg/h2/value/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v9}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lorg/h2/table/MetaTable;->getTablesByName(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_55

    :cond_56
    invoke-direct/range {p0 .. p1}, Lorg/h2/table/MetaTable;->getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_57
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v0, v3, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v5

    if-nez v5, :cond_58

    goto :goto_56

    :cond_58
    invoke-direct {v8, v2, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v5

    if-eqz v5, :cond_59

    goto :goto_56

    :cond_59
    invoke-virtual {v2}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v5

    iget-object v6, v8, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v6}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_57
    array-length v12, v5

    if-ge v7, v12, :cond_57

    aget-object v12, v5, v7

    invoke-virtual {v12}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v13

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v14

    invoke-virtual {v14}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v12}, Lorg/h2/table/Column;->getDefaultSQL()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lorg/h2/table/Column;->isNullable()Z

    move-result v18

    move-object/from16 p2, v1

    if-eqz v18, :cond_5a

    move-object/from16 v18, v37

    goto :goto_58

    :cond_5a
    move-object/from16 v18, v36

    :goto_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/h2/table/Column;->getType()I

    move-result v19

    move-object/from16 p3, v2

    invoke-static/range {v19 .. v19}, Lorg/h2/value/DataType;->convertTypeToSQLType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/h2/table/Column;->getPrecisionAsInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/h2/table/Column;->getPrecisionAsInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/h2/table/Column;->getPrecisionAsInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/h2/table/Column;->getScale()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v12}, Lorg/h2/table/Column;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v1

    iget-object v1, v1, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-direct {v8, v1}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/h2/table/Column;->isNullable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v12}, Lorg/h2/table/Column;->getComputed()Z

    move-result v1

    if-eqz v1, :cond_5b

    move-object/from16 v29, v39

    goto :goto_59

    :cond_5b
    move-object/from16 v29, v38

    :goto_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v12}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lorg/h2/table/Column;->getCheckConstraintSQL(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-nez v13, :cond_5c

    const/16 v32, 0x0

    goto :goto_5a

    :cond_5c
    invoke-virtual {v13}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    :goto_5a
    invoke-virtual {v12}, Lorg/h2/table/Column;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    const-string v23, "10"

    const-string v25, "Unicode"

    move-object/from16 v12, v35

    move-object v13, v14

    move-object v14, v3

    move-object/from16 v26, v6

    filled-new-array/range {v12 .. v34}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    goto/16 :goto_57

    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lorg/h2/table/MetaTable;->getAllTables(Lorg/h2/engine/Session;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v0, v14, v9, v10}, Lorg/h2/table/MetaTable;->checkIndex(Lorg/h2/engine/Session;Ljava/lang/String;Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v5

    if-nez v5, :cond_5d

    goto :goto_5b

    :cond_5d
    invoke-direct {v8, v3, v0}, Lorg/h2/table/MetaTable;->hideTable(Lorg/h2/table/Table;Lorg/h2/engine/Session;)Z

    move-result v5

    if-eqz v5, :cond_5e

    goto :goto_5b

    :cond_5e
    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-virtual {v3}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v5

    if-eqz v5, :cond_5f

    const-string v5, "GLOBAL TEMPORARY"

    :goto_5c
    move-object/from16 v16, v5

    goto :goto_5d

    :cond_5f
    const-string v5, "LOCAL TEMPORARY"

    goto :goto_5c

    :cond_60
    invoke-virtual {v3}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result v5

    if-eqz v5, :cond_61

    const-string v5, "CACHED"

    goto :goto_5c

    :cond_61
    const-string v5, "MEMORY"

    goto :goto_5c

    :goto_5d
    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_62

    if-eqz v5, :cond_62

    const-string v6, "--hide--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_62

    const-string v5, "-"

    :cond_62
    move-object/from16 v17, v5

    invoke-virtual {v3}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/h2/table/MetaTable;->identifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/table/TableType;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/table/MetaTable;->replaceNullWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/table/Table;->getMaxDataModificationId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/h2/table/Table;->getRowCountApproximation()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v21, 0x0

    move-object/from16 v12, v35

    filled-new-array/range {v12 .. v23}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v11, v3}, Lorg/h2/table/MetaTable;->add(Ljava/util/ArrayList;[Ljava/lang/String;)V

    goto/16 :goto_5b

    :cond_63
    :goto_5e
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/table/MetaTable;->metaIndex:Lorg/h2/index/MetaIndex;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/h2/index/MetaIndex;

    iget-object v2, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    invoke-static {v2}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lorg/h2/index/MetaIndex;-><init>(Lorg/h2/table/MetaTable;[Lorg/h2/table/IndexColumn;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/h2/table/MetaTable;->metaIndex:Lorg/h2/index/MetaIndex;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    iget v0, p0, Lorg/h2/table/MetaTable;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getModificationDataId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    :pswitch_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 2

    new-instance p1, Lorg/h2/index/MetaIndex;

    iget-object v0, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lorg/h2/index/MetaIndex;-><init>(Lorg/h2/table/MetaTable;[Lorg/h2/table/IndexColumn;Z)V

    return-object p1
.end method

.method public getTableType()Lorg/h2/table/TableType;
    .locals 1

    sget-object v0, Lorg/h2/table/TableType;->SYSTEM_TABLE:Lorg/h2/table/TableType;

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "META"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "META"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "META"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method
