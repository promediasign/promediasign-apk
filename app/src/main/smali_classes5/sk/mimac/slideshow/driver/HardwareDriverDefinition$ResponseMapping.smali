.class public Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/driver/HardwareDriverDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseMapping"
.end annotation


# instance fields
.field private response:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;->response:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$ResponseMapping;->value:Ljava/lang/String;

    return-void
.end method
