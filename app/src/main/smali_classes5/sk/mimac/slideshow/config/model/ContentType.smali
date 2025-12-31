.class public Lsk/mimac/slideshow/config/model/ContentType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "ContentType"
.end annotation


# instance fields
.field private itemId:J
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "itemId"
        required = true
    .end annotation
.end field

.field private length:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "length"
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemId()J
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/config/model/ContentType;->itemId:J

    return-wide v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/config/model/ContentType;->length:I

    return v0
.end method

.method public setItemId(J)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/config/model/ContentType;->itemId:J

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/config/model/ContentType;->length:I

    return-void
.end method
