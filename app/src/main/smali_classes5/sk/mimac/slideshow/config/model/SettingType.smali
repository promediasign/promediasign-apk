.class public Lsk/mimac/slideshow/config/model/SettingType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "SettingType"
.end annotation


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "key"
        required = true
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "value"
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
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/SettingType;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/SettingType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/SettingType;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/SettingType;->value:Ljava/lang/String;

    return-void
.end method
