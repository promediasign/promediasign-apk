.class abstract Lj$/util/stream/C;
.super Lj$/util/stream/D;
.source "SourceFile"


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;II)V
    .locals 0

    iput p3, p0, Lj$/util/stream/C;->l:I

    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method final M()Z
    .locals 1

    iget v0, p0, Lj$/util/stream/C;->l:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/G;
    .locals 1

    iget v0, p0, Lj$/util/stream/C;->l:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-virtual {p0}, Lj$/util/stream/b;->parallel()Lj$/util/stream/h;

    return-object p0

    .line 0
    :pswitch_0
    invoke-virtual {p0}, Lj$/util/stream/b;->parallel()Lj$/util/stream/h;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/G;
    .locals 1

    iget v0, p0, Lj$/util/stream/C;->l:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-virtual {p0}, Lj$/util/stream/b;->sequential()Lj$/util/stream/h;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/G;

    return-object v0

    .line 0
    :pswitch_0
    invoke-virtual {p0}, Lj$/util/stream/b;->sequential()Lj$/util/stream/h;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/G;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    iget v0, p0, Lj$/util/stream/C;->l:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-virtual {p0}, Lj$/util/stream/D;->spliterator()Lj$/util/E;

    move-result-object v0

    return-object v0

    .line 0
    :pswitch_0
    invoke-virtual {p0}, Lj$/util/stream/D;->spliterator()Lj$/util/E;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unordered()Lj$/util/stream/h;
    .locals 3

    iget v0, p0, Lj$/util/stream/C;->l:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-virtual {p0}, Lj$/util/stream/b;->H()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/w;

    sget v1, Lj$/util/stream/e3;->r:I

    const/4 v2, 0x1

    .line 0
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/b;II)V

    :goto_0
    return-object v0

    .line 0
    :pswitch_0
    invoke-virtual {p0}, Lj$/util/stream/b;->H()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    goto :goto_1

    :cond_1
    new-instance v0, Lj$/util/stream/w;

    sget v1, Lj$/util/stream/e3;->r:I

    const/4 v2, 0x1

    .line 0
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/b;II)V

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
