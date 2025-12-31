.class public Lorg/h2/command/dml/AlterTableSet;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private checkExisting:Z

.field private ifTableExists:Z

.field private tableName:Ljava/lang/String;

.field private final type:I

.field private final value:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    iput p3, p0, Lorg/h2/command/dml/AlterTableSet;->type:I

    iput-boolean p4, p0, Lorg/h2/command/dml/AlterTableSet;->value:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/command/dml/AlterTableSet;->type:I

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCheckExisting(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/AlterTableSet;->checkExisting:Z

    return-void
.end method

.method public setIfTableExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/AlterTableSet;->ifTableExists:Z

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/AlterTableSet;->tableName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/h2/command/dml/AlterTableSet;->tableName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lorg/h2/command/dml/AlterTableSet;->ifTableExists:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    const v0, 0xa476

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/h2/command/dml/AlterTableSet;->tableName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    throw v0

    .line 31
    :cond_1
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 32
    .line 33
    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/16 v3, 0xf

    .line 38
    .line 39
    invoke-virtual {v2, v0, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-virtual {v0, v2, v3, v3}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 46
    .line 47
    .line 48
    iget v2, p0, Lorg/h2/command/dml/AlterTableSet;->type:I

    .line 49
    .line 50
    const/16 v3, 0x37

    .line 51
    .line 52
    if-eq v2, v3, :cond_2

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "type="

    .line 57
    .line 58
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lorg/h2/command/dml/AlterTableSet;->type:I

    .line 62
    .line 63
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 68
    .line 69
    iget-boolean v3, p0, Lorg/h2/command/dml/AlterTableSet;->value:Z

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget-boolean v4, p0, Lorg/h2/command/dml/AlterTableSet;->checkExisting:Z

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v4, 0x0

    .line 77
    :goto_0
    invoke-virtual {v0, v2, v3, v4}, Lorg/h2/table/Table;->setCheckForeignKeyConstraints(Lorg/h2/engine/Session;ZZ)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return v1
.end method
