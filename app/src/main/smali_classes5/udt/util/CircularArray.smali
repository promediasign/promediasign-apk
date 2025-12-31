.class public abstract Ludt/util/CircularArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected haveOverflow:Z

.field protected final max:I

.field protected position:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ludt/util/CircularArray;->position:I

    iput-boolean v0, p0, Ludt/util/CircularArray;->haveOverflow:Z

    iput p1, p0, Ludt/util/CircularArray;->max:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ludt/util/CircularArray;->array:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Ludt/util/CircularArray;->position:I

    iget v1, p0, Ludt/util/CircularArray;->max:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Ludt/util/CircularArray;->position:I

    iput-boolean v2, p0, Ludt/util/CircularArray;->haveOverflow:Z

    :cond_0
    iget-object v0, p0, Ludt/util/CircularArray;->array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ludt/util/CircularArray;->position:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Ludt/util/CircularArray;->array:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Ludt/util/CircularArray;->array:Ljava/util/List;

    iget v1, p0, Ludt/util/CircularArray;->position:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ludt/util/CircularArray;->position:I

    add-int/2addr p1, v2

    iput p1, p0, Ludt/util/CircularArray;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ludt/util/CircularArray;->array:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
