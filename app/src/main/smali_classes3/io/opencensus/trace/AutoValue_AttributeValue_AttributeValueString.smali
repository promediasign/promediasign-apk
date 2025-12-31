.class final Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueString;
.super Lio/opencensus/trace/AttributeValue$AttributeValueString;
.source "SourceFile"


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/opencensus/trace/AttributeValue$AttributeValueString;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueString;->stringValue:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null stringValue"

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
    instance-of v0, p1, Lio/opencensus/trace/AttributeValue$AttributeValueString;

    if-eqz v0, :cond_1

    check-cast p1, Lio/opencensus/trace/AttributeValue$AttributeValueString;

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueString;->stringValue:Ljava/lang/String;

    invoke-virtual {p1}, Lio/opencensus/trace/AttributeValue$AttributeValueString;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueString;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueString;->stringValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AttributeValueString{stringValue="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueString;->stringValue:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "}"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
