.class public Lsk/mimac/slideshow/item/ItemStatistic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private facesAverage:Ljava/lang/Float;

.field private facesUnique:Ljava/lang/Integer;

.field private facesUniqueNew:Ljava/lang/Integer;

.field private item:Ljava/lang/String;

.field private length:I

.field private started:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/item/ItemStatistic;->item:Ljava/lang/String;

    iput-wide p2, p0, Lsk/mimac/slideshow/item/ItemStatistic;->started:J

    iput p4, p0, Lsk/mimac/slideshow/item/ItemStatistic;->length:I

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lsk/mimac/slideshow/item/ItemStatistic;
    .locals 5

    new-instance v0, Lsk/mimac/slideshow/item/ItemStatistic;

    const-string v1, "item"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "started"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "length"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lsk/mimac/slideshow/item/ItemStatistic;-><init>(Ljava/lang/String;JI)V

    const-string v1, "facesAverage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/item/ItemStatistic;->setFacesAverage(Ljava/lang/Float;)V

    :cond_0
    const-string v1, "facesUnique"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/item/ItemStatistic;->setFacesUnique(Ljava/lang/Integer;)V

    :cond_1
    const-string v1, "facesUniqueNew"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/item/ItemStatistic;->setFacesUniqueNew(Ljava/lang/Integer;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public setFacesAverage(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/item/ItemStatistic;->facesAverage:Ljava/lang/Float;

    return-void
.end method

.method public setFacesUnique(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/item/ItemStatistic;->facesUnique:Ljava/lang/Integer;

    return-void
.end method

.method public setFacesUniqueNew(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/item/ItemStatistic;->facesUniqueNew:Ljava/lang/Integer;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "item"

    iget-object v2, p0, Lsk/mimac/slideshow/item/ItemStatistic;->item:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "started"

    iget-wide v2, p0, Lsk/mimac/slideshow/item/ItemStatistic;->started:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "length"

    iget v2, p0, Lsk/mimac/slideshow/item/ItemStatistic;->length:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lsk/mimac/slideshow/item/ItemStatistic;->facesAverage:Ljava/lang/Float;

    if-eqz v1, :cond_0

    const-string v2, "facesAverage"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lsk/mimac/slideshow/item/ItemStatistic;->facesUnique:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v2, "facesUnique"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/item/ItemStatistic;->facesUniqueNew:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string v2, "facesUniqueNew"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method
