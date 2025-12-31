.class final Lorg/h2/command/dml/SelectUnion$LazyResultUnion;
.super Lorg/h2/result/LazyResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/command/dml/SelectUnion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LazyResultUnion"
.end annotation


# instance fields
.field columnCount:I

.field l:Lorg/h2/result/ResultInterface;

.field leftDone:Z

.field r:Lorg/h2/result/ResultInterface;

.field rightDone:Z

.field final synthetic this$0:Lorg/h2/command/dml/SelectUnion;


# direct methods
.method public constructor <init>(Lorg/h2/command/dml/SelectUnion;[Lorg/h2/expression/Expression;I)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->this$0:Lorg/h2/command/dml/SelectUnion;

    invoke-direct {p0, p2}, Lorg/h2/result/LazyResult;-><init>([Lorg/h2/expression/Expression;)V

    iput p3, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->columnCount:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lorg/h2/result/LazyResult;->close()V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->l:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->close()V

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->r:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->close()V

    :cond_1
    return-void
.end method

.method public fetchNextRow()[Lorg/h2/value/Value;
    .locals 4

    iget-boolean v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->rightDone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->leftDone:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->l:Lorg/h2/result/ResultInterface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->this$0:Lorg/h2/command/dml/SelectUnion;

    invoke-static {v0}, Lorg/h2/command/dml/SelectUnion;->access$000(Lorg/h2/command/dml/SelectUnion;)Lorg/h2/command/dml/Query;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->l:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->l:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->l:Lorg/h2/result/ResultInterface;

    :goto_0
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    :cond_2
    iput-boolean v2, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->leftDone:Z

    :cond_3
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->r:Lorg/h2/result/ResultInterface;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->this$0:Lorg/h2/command/dml/SelectUnion;

    invoke-static {v0}, Lorg/h2/command/dml/SelectUnion;->access$100(Lorg/h2/command/dml/SelectUnion;)Lorg/h2/command/dml/Query;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->r:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    :cond_4
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->r:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->r:Lorg/h2/result/ResultInterface;

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->rightDone:Z

    return-object v1
.end method

.method public getVisibleColumnCount()I
    .locals 1

    iget v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->columnCount:I

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/h2/result/LazyResult;->reset()V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->l:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->r:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->leftDone:Z

    iput-boolean v0, p0, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;->rightDone:Z

    return-void
.end method
