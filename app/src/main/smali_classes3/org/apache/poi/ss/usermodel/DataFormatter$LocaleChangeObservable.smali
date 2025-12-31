.class Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocaleChangeObservable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/usermodel/DataFormatter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/usermodel/DataFormatter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;-><init>(Lorg/apache/poi/ss/usermodel/DataFormatter;)V

    return-void
.end method


# virtual methods
.method public checkForLocaleChange()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange(Ljava/util/Locale;)V

    return-void
.end method

.method public checkForLocaleChange(Ljava/util/Locale;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->access$000(Lorg/apache/poi/ss/usermodel/DataFormatter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->access$100(Lorg/apache/poi/ss/usermodel/DataFormatter;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
