.class public Lorg/h2/engine/Comment;
.super Lorg/h2/engine/DbObjectBase;
.source "SourceFile"


# instance fields
.field private commentText:Ljava/lang/String;

.field private final objectName:Ljava/lang/String;

.field private final objectType:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILorg/h2/engine/DbObject;)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    invoke-static {p3}, Lorg/h2/engine/Comment;->getKey(Lorg/h2/engine/DbObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/engine/DbObjectBase;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    invoke-interface {p3}, Lorg/h2/engine/DbObject;->getType()I

    move-result p1

    iput p1, p0, Lorg/h2/engine/Comment;->objectType:I

    invoke-interface {p3}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Comment;->objectName:Ljava/lang/String;

    return-void
.end method

.method public static getKey(Lorg/h2/engine/DbObject;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/h2/engine/DbObject;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/h2/engine/Comment;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTypeName(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "type"

    .line 5
    .line 6
    invoke-static {p0, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    const-string p0, "DOMAIN"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_2
    const-string p0, "CONSTANT"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_3
    const-string p0, "SCHEMA"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_4
    const-string p0, "ALIAS"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_5
    const-string p0, "ROLE"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_6
    const-string p0, "CONSTRAINT"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_7
    const-string p0, "TRIGGER"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_8
    const-string p0, "SEQUENCE"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_9
    const-string p0, "USER"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_a
    const-string p0, "INDEX"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_b
    const-string p0, "TABLE"

    .line 42
    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    return-void
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COMMENT ON "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/engine/Comment;->objectType:I

    invoke-static {v1}, Lorg/h2/engine/Comment;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/Comment;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/Comment;->commentText:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    return-void
.end method

.method public setCommentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Comment;->commentText:Ljava/lang/String;

    return-void
.end method
