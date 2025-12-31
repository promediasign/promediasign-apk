.class final Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/CellUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnicodeMapping"
.end annotation


# instance fields
.field public final entityName:Ljava/lang/String;

.field public final resolvedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "&"

    .line 5
    .line 6
    const-string v1, ";"

    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->entityName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Lorg/apache/poi/ss/util/CellUtil$UnicodeMapping;->resolvedValue:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method
