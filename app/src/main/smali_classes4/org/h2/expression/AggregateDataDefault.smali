.class Lorg/h2/expression/AggregateDataDefault;
.super Lorg/h2/expression/AggregateData;
.source "SourceFile"


# instance fields
.field private final aggregateType:I

.field private count:J

.field private distinctValues:Lorg/h2/util/ValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/ValueHashMap<",
            "Lorg/h2/expression/AggregateDataDefault;",
            ">;"
        }
    .end annotation
.end field

.field private m2:D

.field private mean:D

.field private value:Lorg/h2/value/Value;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/AggregateData;-><init>()V

    iput p1, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    return-void
.end method

.method private static divide(Lorg/h2/value/Value;J)Lorg/h2/value/Value;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    sget-object p0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v0

    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/h2/value/Value;->divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    return-object p0
.end method

.method private groupDistinct(Lorg/h2/engine/Database;I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/expression/AggregateDataDefault;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    invoke-virtual {v0}, Lorg/h2/util/ValueHashMap;->keys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/h2/expression/AggregateDataDefault;->add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V
    .locals 4

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p4, v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    if-eqz p3, :cond_2

    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->distinctValues:Lorg/h2/util/ValueHashMap;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/h2/util/ValueHashMap;->newInstance()Lorg/h2/util/ValueHashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->distinctValues:Lorg/h2/util/ValueHashMap;

    :cond_1
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->distinctValues:Lorg/h2/util/ValueHashMap;

    invoke-virtual {p1, p4, p0}, Lorg/h2/util/ValueHashMap;->put(Lorg/h2/value/Value;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget p3, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "type="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    .line 1
    invoke-static {p1, p2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    goto/16 :goto_7

    .line 2
    :pswitch_0
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p1, :cond_3

    :goto_0
    invoke-virtual {p4, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    invoke-virtual {p4}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p3

    and-long/2addr p3, v0

    :goto_2
    invoke-static {p3, p4}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    invoke-virtual {p4}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p3

    or-long/2addr p3, v0

    goto :goto_2

    :pswitch_2
    invoke-virtual {p4, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p2, :cond_5

    :goto_3
    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :cond_7
    invoke-static {v0}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p4, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :pswitch_4
    invoke-virtual {p4}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide p1

    iget-wide p3, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    cmp-long v0, p3, v2

    if-nez v0, :cond_9

    iput-wide p1, p0, Lorg/h2/expression/AggregateDataDefault;->mean:D

    const-wide/16 p1, 0x0

    :goto_5
    iput-wide p1, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    goto :goto_7

    :cond_9
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->mean:D

    sub-double v2, p1, v0

    long-to-double p3, p3

    div-double p3, v2, p3

    add-double/2addr p3, v0

    iput-wide p3, p0, Lorg/h2/expression/AggregateDataDefault;->mean:D

    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    sub-double/2addr p1, p3

    mul-double p1, p1, v2

    add-double/2addr p1, v0

    goto :goto_5

    :pswitch_5
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p1, :cond_a

    invoke-static {p2}, Lorg/h2/value/DataType;->getAddProofType(I)I

    move-result p1

    invoke-virtual {p4, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result p1

    invoke-virtual {p4, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    invoke-virtual {p2, p1}, Lorg/h2/value/Value;->add(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_6
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-eqz p2, :cond_b

    invoke-virtual {p1, p4, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    if-lez p1, :cond_c

    :cond_b
    :goto_6
    iput-object p4, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    goto :goto_7

    :pswitch_7
    iget-object p2, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-eqz p2, :cond_b

    invoke-virtual {p1, p4, p2}, Lorg/h2/engine/Database;->compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    if-gez p1, :cond_c

    goto :goto_6

    :pswitch_8
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_c
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    iput-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lorg/h2/expression/AggregateDataDefault;->groupDistinct(Lorg/h2/engine/Database;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget p1, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    .line 11
    .line 12
    const-wide/16 v0, 0x2

    .line 13
    .line 14
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p3, "type="

    .line 22
    .line 23
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p3, p0, Lorg/h2/expression/AggregateDataDefault;->aggregateType:I

    .line 27
    .line 28
    invoke-static {p1, p3}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :pswitch_0
    iget-wide v4, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    .line 33
    .line 34
    cmp-long p1, v4, v0

    .line 35
    .line 36
    if-gez p1, :cond_1

    .line 37
    .line 38
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    .line 42
    .line 43
    sub-long/2addr v4, v2

    .line 44
    long-to-double v2, v4

    .line 45
    div-double/2addr v0, v2

    .line 46
    :goto_0
    invoke-static {v0, v1}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_2

    .line 51
    :pswitch_1
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    .line 52
    .line 53
    cmp-long p1, v0, v2

    .line 54
    .line 55
    if-gez p1, :cond_2

    .line 56
    .line 57
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_2
    iget-wide v2, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    .line 61
    .line 62
    long-to-double v0, v0

    .line 63
    div-double/2addr v2, v0

    .line 64
    invoke-static {v2, v3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_2

    .line 69
    :pswitch_2
    iget-wide v4, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    .line 70
    .line 71
    cmp-long p1, v4, v0

    .line 72
    .line 73
    if-gez p1, :cond_3

    .line 74
    .line 75
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_3
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    .line 79
    .line 80
    sub-long/2addr v4, v2

    .line 81
    long-to-double v2, v4

    .line 82
    div-double/2addr v0, v2

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    goto :goto_0

    .line 88
    :pswitch_3
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    .line 89
    .line 90
    cmp-long p1, v0, v2

    .line 91
    .line 92
    if-gez p1, :cond_4

    .line 93
    .line 94
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_4
    iget-wide v2, p0, Lorg/h2/expression/AggregateDataDefault;->m2:D

    .line 98
    .line 99
    long-to-double v0, v0

    .line 100
    div-double/2addr v2, v0

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    goto :goto_0

    .line 106
    :pswitch_4
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    .line 107
    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    iget-wide v0, p0, Lorg/h2/expression/AggregateDataDefault;->count:J

    .line 111
    .line 112
    invoke-static {p1, v0, v1}, Lorg/h2/expression/AggregateDataDefault;->divide(Lorg/h2/value/Value;J)Lorg/h2/value/Value;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 118
    goto :goto_2

    .line 119
    :pswitch_5
    iget-object p1, p0, Lorg/h2/expression/AggregateDataDefault;->value:Lorg/h2/value/Value;

    .line 120
    .line 121
    :goto_2
    if-nez p1, :cond_6

    .line 122
    .line 123
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    invoke-virtual {p1, p2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_3
    return-object p1

    .line 131
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
