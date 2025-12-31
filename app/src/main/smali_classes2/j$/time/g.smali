.class public final synthetic Lj$/time/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/q;
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/time/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public g(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/time/g;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    invoke-static {p1}, Lj$/time/LocalTime;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_0
    invoke-static {p1}, Lj$/time/LocalDateTime;->T(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_1
    invoke-static {p1}, Lj$/time/LocalDate;->U(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
