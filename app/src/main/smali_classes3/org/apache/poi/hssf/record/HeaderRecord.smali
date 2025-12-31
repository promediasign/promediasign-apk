.class public final Lorg/apache/poi/hssf/record/HeaderRecord;
.super Lorg/apache/poi/hssf/record/HeaderFooterBase;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x14s


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterBase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterBase;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderRecord;->clone()Lorg/apache/poi/hssf/record/HeaderRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/HeaderRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[HEADER]\n    .header = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/HEADER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
