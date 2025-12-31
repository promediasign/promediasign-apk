.class public Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/macros/VBAMacroReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;",
        ">;"
    }
.end annotation


# instance fields
.field charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Cp1252"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    return-void
.end method
