.class public abstract Lorg/codehaus/stax2/ri/Stax2Util;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;
    }
.end annotation


# direct methods
.method public static eventTypeDesc(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "["

    .line 5
    .line 6
    const-string v1, "]"

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_1
    const-string p0, "CDATA"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_2
    const-string p0, "DTD"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    const-string p0, "ENTITY_REFERENCE"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_4
    const-string p0, "END_DOCUMENT"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_5
    const-string p0, "START_DOCUMENT"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_6
    const-string p0, "SPACE"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_7
    const-string p0, "COMMENT"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_8
    const-string p0, "CHARACTERS"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_9
    const-string p0, "PROCESSING_INSTRUCTION"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_a
    const-string p0, "END_ELEMENT"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_b
    const-string p0, "START_ELEMENT"

    .line 44
    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
