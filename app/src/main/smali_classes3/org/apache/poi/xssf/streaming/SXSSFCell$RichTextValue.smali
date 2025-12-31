.class Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichTextValue"
.end annotation


# instance fields
.field _value:Lorg/apache/poi/ss/usermodel/RichTextString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method public getValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->_value:Lorg/apache/poi/ss/usermodel/RichTextString;

    return-object v0
.end method

.method public isRichText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->_value:Lorg/apache/poi/ss/usermodel/RichTextString;

    return-void
.end method
