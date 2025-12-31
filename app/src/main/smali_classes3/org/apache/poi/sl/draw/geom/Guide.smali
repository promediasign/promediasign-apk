.class public Lorg/apache/poi/sl/draw/geom/Guide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/Formula;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/geom/Guide$Op;
    }
.end annotation


# instance fields
.field private final fmla:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final op:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field private final operands:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/Guide;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/sl/draw/geom/Guide;->fmla:Ljava/lang/String;

    const-string p1, "\\s+"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/Guide;->operands:[Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const-string p2, "*"

    const-string v0, "mul"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    const-string v0, "div"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "+"

    const-string v0, "add"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    const-string v0, "sub"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "?:"

    const-string v0, "ifelse"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/geom/Guide$Op;->valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide$Op;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/Guide;->op:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/draw/binding/CTGeomGuide;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Guide;->operands:[Ljava/lang/String;

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/Guide;->operands:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    aget-object v4, v4, v6

    invoke-virtual {p1, v4}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    iget-object v6, p0, Lorg/apache/poi/sl/draw/geom/Guide;->operands:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x3

    if-le v7, v8, :cond_2

    aget-object v6, v6, v8

    invoke-virtual {p1, v6}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v2

    :goto_2
    sget-object p1, Lorg/apache/poi/sl/draw/geom/Guide$1;->$SwitchMap$org$apache$poi$sl$draw$geom$Guide$Op:[I

    iget-object v8, p0, Lorg/apache/poi/sl/draw/geom/Guide;->op:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget p1, p1, v8

    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    packed-switch p1, :pswitch_data_0

    return-wide v2

    :pswitch_0
    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    :goto_3
    mul-double v2, v2, v0

    return-wide v2

    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_2
    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    goto :goto_3

    :pswitch_3
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    goto :goto_4

    :pswitch_4
    cmpg-double p1, v4, v0

    if-gez p1, :cond_3

    return-wide v0

    :cond_3
    cmpl-double p1, v4, v6

    if-lez p1, :cond_4

    return-wide v6

    :cond_4
    return-wide v4

    :pswitch_5
    mul-double v0, v0, v4

    div-double/2addr v0, v6

    return-wide v0

    :pswitch_6
    mul-double v0, v0, v0

    mul-double v4, v4, v4

    add-double/2addr v4, v0

    mul-double v6, v6, v6

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_7
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0

    :pswitch_8
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :pswitch_9
    return-wide v0

    :pswitch_a
    cmpl-double p1, v0, v2

    if-lez p1, :cond_5

    goto :goto_5

    :cond_5
    move-wide v4, v6

    :goto_5
    return-wide v4

    :pswitch_b
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    :goto_6
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    goto :goto_3

    :pswitch_c
    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    goto :goto_6

    :pswitch_d
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    mul-double v0, v0, v8

    return-wide v0

    :pswitch_e
    add-double/2addr v0, v4

    sub-double/2addr v0, v6

    return-wide v0

    :pswitch_f
    add-double/2addr v0, v4

    div-double/2addr v0, v6

    return-wide v0

    :pswitch_10
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/Guide;->name:Ljava/lang/String;

    return-object v0
.end method
