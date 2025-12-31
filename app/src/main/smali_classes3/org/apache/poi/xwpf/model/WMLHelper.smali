.class public final Lorg/apache/poi/xwpf/model/WMLHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBooleanToSTOnOff(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_0
    return-object p0
.end method

.method public static convertSTOnOffToBoolean(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)Z
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
