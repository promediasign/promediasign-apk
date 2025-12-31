.class Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlainStringValue"
.end annotation


# instance fields
.field _value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public isRichText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->_value:Ljava/lang/String;

    return-void
.end method
