.class public final Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/stax2/ri/Stax2Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextBuffer"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuffer;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mText:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mBuilder:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mBuilder:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mText:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mBuilder:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mText:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mBuilder:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mText:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->mBuilder:Ljava/lang/StringBuffer;

    return-void
.end method
