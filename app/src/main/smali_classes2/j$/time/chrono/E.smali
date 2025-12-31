.class final Lj$/time/chrono/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x54b386e71d87ec81L


# instance fields
.field private a:B

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lj$/time/chrono/E;->a:B

    iput-object p2, p0, Lj$/time/chrono/E;->b:Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/E;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lj$/time/chrono/E;->a:B

    packed-switch v0, :pswitch_data_0

    .line 0
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget v0, Lj$/time/chrono/g;->e:I

    .line 0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 0
    invoke-static {v0}, Lj$/time/chrono/a;->r(Ljava/lang/String;)Lj$/time/chrono/l;

    move-result-object v0

    .line 0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    new-instance v3, Lj$/time/chrono/g;

    invoke-direct {v3, v0, v1, v2, p1}, Lj$/time/chrono/g;-><init>(Lj$/time/chrono/l;III)V

    goto/16 :goto_0

    .line 0
    :pswitch_1
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    sget-object v2, Lj$/time/chrono/G;->d:Lj$/time/chrono/G;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    new-instance v3, Lj$/time/chrono/I;

    add-int/lit16 v0, v0, -0x21f

    invoke-static {v0, v1, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/I;-><init>(Lj$/time/LocalDate;)V

    goto/16 :goto_0

    .line 0
    :pswitch_2
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    sget-object v2, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    new-instance v3, Lj$/time/chrono/C;

    add-int/lit16 v0, v0, 0x777

    invoke-static {v0, v1, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/C;-><init>(Lj$/time/LocalDate;)V

    goto/16 :goto_0

    .line 0
    :pswitch_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/o;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    invoke-static {v0, v1, v2, p1}, Lj$/time/chrono/q;->Y(Lj$/time/chrono/o;III)Lj$/time/chrono/q;

    move-result-object v3

    goto :goto_0

    .line 0
    :pswitch_4
    sget-object v0, Lj$/time/chrono/y;->d:Lj$/time/chrono/y;

    .line 0
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    invoke-static {p1}, Lj$/time/chrono/y;->q(I)Lj$/time/chrono/y;

    move-result-object v3

    goto :goto_0

    .line 0
    :pswitch_5
    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    .line 0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    sget-object v2, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    new-instance v3, Lj$/time/chrono/x;

    invoke-static {v0, v1, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    goto :goto_0

    .line 0
    :pswitch_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/d;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/ZoneOffset;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneId;

    invoke-interface {v0, v1}, Lj$/time/chrono/d;->o(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoZonedDateTime;->j(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    goto :goto_0

    .line 0
    :pswitch_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/ChronoLocalDate;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/LocalTime;

    invoke-interface {v0, p1}, Lj$/time/chrono/ChronoLocalDate;->z(Lj$/time/LocalTime;)Lj$/time/chrono/d;

    move-result-object v3

    goto :goto_0

    .line 0
    :pswitch_8
    sget v0, Lj$/time/chrono/a;->c:I

    .line 0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-static {p1}, Lj$/time/chrono/a;->r(Ljava/lang/String;)Lj$/time/chrono/l;

    move-result-object v3

    .line 0
    :goto_0
    iput-object v3, p0, Lj$/time/chrono/E;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    iget-byte v0, p0, Lj$/time/chrono/E;->a:B

    iget-object v1, p0, Lj$/time/chrono/E;->b:Ljava/lang/Object;

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast v1, Lj$/time/chrono/g;

    invoke-virtual {v1, p1}, Lj$/time/chrono/g;->a(Ljava/io/DataOutput;)V

    goto/16 :goto_0

    :pswitch_1
    check-cast v1, Lj$/time/chrono/I;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 0
    :pswitch_2
    check-cast v1, Lj$/time/chrono/C;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 0
    :pswitch_3
    check-cast v1, Lj$/time/chrono/q;

    invoke-virtual {v1, p1}, Lj$/time/chrono/q;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    :pswitch_4
    check-cast v1, Lj$/time/chrono/y;

    invoke-virtual {v1, p1}, Lj$/time/chrono/y;->B(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_5
    check-cast v1, Lj$/time/chrono/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 0
    invoke-static {v1, v0}, Lj$/time/temporal/l;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    move-result v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 0
    :pswitch_6
    check-cast v1, Lj$/time/chrono/k;

    invoke-virtual {v1, p1}, Lj$/time/chrono/k;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    :pswitch_7
    check-cast v1, Lj$/time/chrono/f;

    invoke-virtual {v1, p1}, Lj$/time/chrono/f;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    :pswitch_8
    check-cast v1, Lj$/time/chrono/a;

    .line 0
    invoke-interface {v1}, Lj$/time/chrono/l;->m()Ljava/lang/String;

    move-result-object v0

    .line 0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
