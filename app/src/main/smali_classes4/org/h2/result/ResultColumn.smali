.class public Lorg/h2/result/ResultColumn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final alias:Ljava/lang/String;

.field final autoIncrement:Z

.field final columnName:Ljava/lang/String;

.field final columnType:I

.field final displaySize:I

.field final nullable:I

.field final precision:J

.field final scale:I

.field final schemaName:Ljava/lang/String;

.field final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/value/Transfer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/ResultColumn;->alias:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/ResultColumn;->schemaName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/ResultColumn;->tableName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/ResultColumn;->columnName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/result/ResultColumn;->columnType:I

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/result/ResultColumn;->precision:J

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/result/ResultColumn;->scale:I

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/result/ResultColumn;->displaySize:I

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/h2/result/ResultColumn;->autoIncrement:Z

    invoke-virtual {p1}, Lorg/h2/value/Transfer;->readInt()I

    move-result p1

    iput p1, p0, Lorg/h2/result/ResultColumn;->nullable:I

    return-void
.end method

.method public static writeColumn(Lorg/h2/value/Transfer;Lorg/h2/result/ResultInterface;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->getAlias(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->getSchemaName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->getTableName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->getColumnType(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->getColumnPrecision(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/h2/value/Transfer;->writeLong(J)Lorg/h2/value/Transfer;

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->getColumnScale(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->getDisplaySize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->isAutoIncrement(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/value/Transfer;->writeBoolean(Z)Lorg/h2/value/Transfer;

    invoke-interface {p1, p2}, Lorg/h2/result/ResultInterface;->getNullable(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    return-void
.end method
