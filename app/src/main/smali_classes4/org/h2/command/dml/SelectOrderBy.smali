.class public Lorg/h2/command/dml/SelectOrderBy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public columnIndexExpr:Lorg/h2/expression/Expression;

.field public descending:Z

.field public expression:Lorg/h2/expression/Expression;

.field public nullsFirst:Z

.field public nullsLast:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    :goto_0
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/h2/command/dml/SelectOrderBy;->columnIndexExpr:Lorg/h2/expression/Expression;

    goto :goto_0

    :goto_1
    iget-boolean v1, p0, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    if-eqz v1, :cond_1

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lorg/h2/command/dml/SelectOrderBy;->nullsFirst:Z

    if-eqz v1, :cond_2

    const-string v1, " NULLS FIRST"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    iget-boolean v1, p0, Lorg/h2/command/dml/SelectOrderBy;->nullsLast:Z

    if-eqz v1, :cond_3

    const-string v1, " NULLS LAST"

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
