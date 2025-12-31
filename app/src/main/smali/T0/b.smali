.class public final synthetic LT0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LT0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, LT0/b;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LT0/b;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-static {p1}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->b(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-static {p1}, Lsk/mimac/slideshow/utils/TimeSlotsToScheduleConverter;->a(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->map(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lsk/mimac/slideshow/utils/DisplayInfoDto;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-class v0, Lcom/illposed/osc/OSCPacketDispatcher;

    check-cast p1, Lcom/illposed/osc/OSCPacketListener;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/illposed/osc/OSCPacketDispatcher;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, LT0/b;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
