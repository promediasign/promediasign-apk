.class final Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueLong;
.super Lio/opencensus/trace/AttributeValue$AttributeValueLong;
.source "SourceFile"


# instance fields
.field private final longValue:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Lio/opencensus/trace/AttributeValue$AttributeValueLong;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueLong;->longValue:Ljava/lang/Long;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null longValue"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lio/opencensus/trace/AttributeValue$AttributeValueLong;

    if-eqz v0, :cond_1

    check-cast p1, Lio/opencensus/trace/AttributeValue$AttributeValueLong;

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueLong;->longValue:Ljava/lang/Long;

    invoke-virtual {p1}, Lio/opencensus/trace/AttributeValue$AttributeValueLong;->getLongValue()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getLongValue()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueLong;->longValue:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueLong;->longValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttributeValueLong{longValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueLong;->longValue:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
