.class abstract Lorg/h2/command/dml/Select$LazyResultSelect;
.super Lorg/h2/result/LazyResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/command/dml/Select;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LazyResultSelect"
.end annotation


# instance fields
.field columnCount:I

.field rowNumber:I

.field final synthetic this$0:Lorg/h2/command/dml/Select;


# direct methods
.method public constructor <init>(Lorg/h2/command/dml/Select;[Lorg/h2/expression/Expression;I)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->this$0:Lorg/h2/command/dml/Select;

    invoke-direct {p0, p2}, Lorg/h2/result/LazyResult;-><init>([Lorg/h2/expression/Expression;)V

    iput p3, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->columnCount:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/h2/command/dml/Select;->access$000(Lorg/h2/command/dml/Select;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/result/LazyResult;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/h2/result/LazyResult;->close()V

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$200(Lorg/h2/command/dml/Select;)V

    :cond_0
    return-void
.end method

.method public final getVisibleColumnCount()I
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$100(Lorg/h2/command/dml/Select;)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/h2/result/LazyResult;->reset()V

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$200(Lorg/h2/command/dml/Select;)V

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->this$0:Lorg/h2/command/dml/Select;

    invoke-static {v0}, Lorg/h2/command/dml/Select;->access$300(Lorg/h2/command/dml/Select;)Lorg/h2/table/TableFilter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->reset()V

    iget-object v0, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->this$0:Lorg/h2/command/dml/Select;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/command/dml/Select;->access$400(Lorg/h2/command/dml/Select;I)V

    iput v1, p0, Lorg/h2/command/dml/Select$LazyResultSelect;->rowNumber:I

    return-void
.end method
