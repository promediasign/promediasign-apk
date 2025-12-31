.class public final Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XSSFSheetRef"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->id:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->name:Ljava/lang/String;

    return-object v0
.end method
