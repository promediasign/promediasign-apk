.class public final Landroidx/media3/extractor/text/cea/Cea708Decoder;
.super Landroidx/media3/extractor/text/cea/CeaDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;,
        Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;,
        Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
    }
.end annotation


# instance fields
.field private final captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

.field private final ccData:Landroidx/media3/common/util/ParsableByteArray;

.field private final cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field private currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private final isWideAspectRatio:Z

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private previousSequenceNumber:I

.field private final selectedServiceNumber:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseCea708InitializationData(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->isWideAspectRatio:Z

    const/16 p2, 0x8

    new-array v0, p2, [Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    new-instance v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, p2, p1

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    return-void
.end method

.method private finalizeCurrentPacket()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->processCurrentPacket()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->build()Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->access$000()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget-object v3, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Landroidx/media3/common/text/Cue;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private handleC0Command(I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x11

    .line 14
    .line 15
    const-string v2, "Cea708Decoder"

    .line 16
    .line 17
    if-lt p1, v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x17

    .line 20
    .line 21
    if-gt p1, v1, :cond_0

    .line 22
    .line 23
    const-string v1, "Currently unsupported COMMAND_EXT1 Command: "

    .line 24
    .line 25
    invoke-static {p1, v1, v2}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/16 v0, 0x18

    .line 35
    .line 36
    if-lt p1, v0, :cond_1

    .line 37
    .line 38
    const/16 v0, 0x1f

    .line 39
    .line 40
    if-gt p1, v0, :cond_1

    .line 41
    .line 42
    const-string v0, "Currently unsupported COMMAND_P16 Command: "

    .line 43
    .line 44
    invoke-static {p1, v0, v2}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 48
    .line 49
    const/16 v0, 0x10

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v0, "Invalid C0 command: "

    .line 53
    .line 54
    invoke-static {p1, v0, v2}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_0
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 59
    .line 60
    const/16 v0, 0xa

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :pswitch_1
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backspace()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 81
    .line 82
    :cond_4
    :goto_1
    :pswitch_2
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleC1Command(I)V
    .locals 4

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    const-string v0, "Invalid C1 command: "

    .line 10
    .line 11
    const-string v1, "Cea708Decoder"

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 24
    .line 25
    if-eq v0, p1, :cond_9

    .line 26
    .line 27
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 30
    .line 31
    aget-object p1, v0, p1

    .line 32
    .line 33
    :goto_0
    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :pswitch_2
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 46
    .line 47
    const/16 v0, 0x20

    .line 48
    .line 49
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_8

    .line 53
    .line 54
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_8

    .line 58
    .line 59
    :pswitch_3
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    :goto_2
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetPenLocation()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_8

    .line 74
    .line 75
    :pswitch_4
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 84
    .line 85
    const/16 v0, 0x18

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetPenColor()V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_8

    .line 92
    .line 93
    :pswitch_5
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :pswitch_6
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :pswitch_7
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :goto_3
    :pswitch_8
    if-gt v2, v1, :cond_9

    .line 120
    .line 121
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 130
    .line 131
    rsub-int/lit8 v0, v2, 0x8

    .line 132
    .line 133
    aget-object p1, p1, v0

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    .line 136
    .line 137
    .line 138
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :pswitch_9
    const/4 p1, 0x1

    .line 142
    :goto_4
    if-gt p1, v1, :cond_9

    .line 143
    .line 144
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 153
    .line 154
    rsub-int/lit8 v3, p1, 0x8

    .line 155
    .line 156
    aget-object v0, v0, v3

    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    xor-int/2addr v3, v2

    .line 163
    invoke-virtual {v0, v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    .line 164
    .line 165
    .line 166
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :goto_5
    :pswitch_a
    if-gt v2, v1, :cond_9

    .line 170
    .line 171
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 180
    .line 181
    rsub-int/lit8 v0, v2, 0x8

    .line 182
    .line 183
    aget-object p1, p1, v0

    .line 184
    .line 185
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    .line 187
    .line 188
    .line 189
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :pswitch_b
    const/4 p1, 0x1

    .line 193
    :goto_6
    if-gt p1, v1, :cond_9

    .line 194
    .line 195
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_7

    .line 202
    .line 203
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 204
    .line 205
    rsub-int/lit8 v3, p1, 0x8

    .line 206
    .line 207
    aget-object v0, v0, v3

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    .line 210
    .line 211
    .line 212
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :goto_7
    :pswitch_c
    if-gt v2, v1, :cond_9

    .line 216
    .line 217
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_8

    .line 224
    .line 225
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 226
    .line 227
    rsub-int/lit8 v0, v2, 0x8

    .line 228
    .line 229
    aget-object p1, p1, v0

    .line 230
    .line 231
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    .line 232
    .line 233
    .line 234
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :pswitch_d
    add-int/lit8 p1, p1, -0x80

    .line 238
    .line 239
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 240
    .line 241
    if-eq v0, p1, :cond_9

    .line 242
    .line 243
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 244
    .line 245
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 246
    .line 247
    aget-object p1, v0, p1

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_9
    :goto_8
    :pswitch_e
    return-void

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleC2Command(I)V
    .locals 1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v0, 0x18

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private handleC3Command(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v0, 0x20

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v0, 0x28

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleDefineWindow(I)V
    .locals 14

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v0, p1

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    iget-object v7, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    iget-object v8, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    iget-object v9, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    iget-object v9, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    iget-object v10, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v10, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v10, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    iget-object v12, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v12, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    move v5, p1

    invoke-virtual/range {v1 .. v13}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defineWindow(ZZZIZIIIIIII)V

    return-void
.end method

.method private handleG0Character(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_0
    return-void
.end method

.method private handleG1Character(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void
.end method

.method private handleG2Character(I)V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p1, v0, :cond_9

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p1, v0, :cond_8

    .line 8
    .line 9
    const/16 v0, 0x25

    .line 10
    .line 11
    if-eq p1, v0, :cond_7

    .line 12
    .line 13
    const/16 v0, 0x2a

    .line 14
    .line 15
    if-eq p1, v0, :cond_6

    .line 16
    .line 17
    const/16 v0, 0x2c

    .line 18
    .line 19
    if-eq p1, v0, :cond_5

    .line 20
    .line 21
    const/16 v0, 0x3f

    .line 22
    .line 23
    if-eq p1, v0, :cond_4

    .line 24
    .line 25
    const/16 v0, 0x39

    .line 26
    .line 27
    if-eq p1, v0, :cond_3

    .line 28
    .line 29
    const/16 v0, 0x3a

    .line 30
    .line 31
    if-eq p1, v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x3c

    .line 34
    .line 35
    if-eq p1, v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x3d

    .line 38
    .line 39
    if-eq p1, v0, :cond_0

    .line 40
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch p1, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    const-string v0, "Invalid G2 character: "

    .line 48
    .line 49
    const-string v1, "Cea708Decoder"

    .line 50
    .line 51
    invoke-static {p1, v0, v1}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :pswitch_0
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 57
    .line 58
    const/16 v0, 0x250c

    .line 59
    .line 60
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :pswitch_1
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 66
    .line 67
    const/16 v0, 0x2518

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_2
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 71
    .line 72
    const/16 v0, 0x2500

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_3
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 76
    .line 77
    const/16 v0, 0x2514

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_4
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 81
    .line 82
    const/16 v0, 0x2510

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_5
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 86
    .line 87
    const/16 v0, 0x2502

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_6
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 91
    .line 92
    const/16 v0, 0x215e

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_7
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 96
    .line 97
    const/16 v0, 0x215d

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_8
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 101
    .line 102
    const/16 v0, 0x215c

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :pswitch_9
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 106
    .line 107
    const/16 v0, 0x215b

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_a
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 111
    .line 112
    const/16 v0, 0x2022

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_b
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 116
    .line 117
    const/16 v0, 0x201d

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :pswitch_c
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 121
    .line 122
    const/16 v0, 0x201c

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_d
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 126
    .line 127
    const/16 v0, 0x2019

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_e
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 131
    .line 132
    const/16 v0, 0x2018

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :pswitch_f
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 136
    .line 137
    const/16 v0, 0x2588

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 141
    .line 142
    const/16 v0, 0x2120

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 146
    .line 147
    const/16 v0, 0x153

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 151
    .line 152
    const/16 v0, 0x161

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_3
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 156
    .line 157
    const/16 v0, 0x2122

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_4
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 161
    .line 162
    const/16 v0, 0x178

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 166
    .line 167
    const/16 v0, 0x152

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_6
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 171
    .line 172
    const/16 v0, 0x160

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_7
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 176
    .line 177
    const/16 v0, 0x2026

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_8
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 181
    .line 182
    const/16 v0, 0xa0

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_9
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :goto_1
    return-void

    .line 189
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleG3Character(I)V
    .locals 2

    .line 1
    const/16 v0, 0xa0

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 6
    .line 7
    const/16 v0, 0x33c4

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "Invalid G3 character: "

    .line 14
    .line 15
    const-string v1, "Cea708Decoder"

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 21
    .line 22
    const/16 v0, 0x5f

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private handleSetPenAttributes()V
    .locals 10

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual/range {v2 .. v9}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    return-void
.end method

.method private handleSetPenColor()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-static {v3, v4, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v1

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v3, v0, v2, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    return-void
.end method

.method private handleSetPenLocation()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenLocation(II)V

    return-void
.end method

.method private handleSetWindowAttributes()V
    .locals 13

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v6

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v7

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual/range {v5 .. v12}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    return-void
.end method

.method private processCurrentPacket()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 4
    .line 5
    iget v0, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v0, v3

    .line 12
    const-string v4, "Cea708Decoder"

    .line 13
    .line 14
    if-eq v1, v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "DtvCcPacket ended prematurely; size is "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 24
    .line 25
    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    sub-int/2addr v1, v3

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", but current index is "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 39
    .line 40
    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " (sequence number "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 51
    .line 52
    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ");"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 72
    .line 73
    iget-object v5, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    .line 74
    .line 75
    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 76
    .line 77
    invoke-virtual {v0, v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->reset([BI)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-lez v1, :cond_e

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 90
    .line 91
    const/4 v5, 0x3

    .line 92
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 97
    .line 98
    const/4 v6, 0x5

    .line 99
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const/4 v6, 0x7

    .line 104
    if-ne v1, v6, :cond_2

    .line 105
    .line 106
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 112
    .line 113
    const/4 v7, 0x6

    .line 114
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-ge v1, v6, :cond_2

    .line 119
    .line 120
    const-string v6, "Invalid extended service number: "

    .line 121
    .line 122
    invoke-static {v1, v6, v4}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    if-nez v5, :cond_3

    .line 126
    .line 127
    if-eqz v1, :cond_e

    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v3, "serviceNumber is non-zero ("

    .line 132
    .line 133
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ") when blockSize is 0"

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_4

    .line 152
    .line 153
    :cond_3
    iget v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    .line 154
    .line 155
    if-eq v1, v6, :cond_4

    .line 156
    .line 157
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 158
    .line 159
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    mul-int/lit8 v5, v5, 0x8

    .line 170
    .line 171
    add-int/2addr v5, v1

    .line 172
    :goto_1
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 173
    .line 174
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-ge v1, v5, :cond_1

    .line 179
    .line 180
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 181
    .line 182
    const/16 v6, 0x8

    .line 183
    .line 184
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    const/16 v7, 0x10

    .line 189
    .line 190
    const/16 v8, 0xff

    .line 191
    .line 192
    const/16 v9, 0x9f

    .line 193
    .line 194
    const/16 v10, 0x7f

    .line 195
    .line 196
    const/16 v11, 0x1f

    .line 197
    .line 198
    if-eq v1, v7, :cond_9

    .line 199
    .line 200
    if-gt v1, v11, :cond_5

    .line 201
    .line 202
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC0Command(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    if-gt v1, v10, :cond_6

    .line 207
    .line 208
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG0Character(I)V

    .line 209
    .line 210
    .line 211
    :goto_2
    const/4 v0, 0x1

    .line 212
    goto :goto_1

    .line 213
    :cond_6
    if-gt v1, v9, :cond_7

    .line 214
    .line 215
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC1Command(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_7
    if-gt v1, v8, :cond_8

    .line 220
    .line 221
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG1Character(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_8
    const-string v6, "Invalid base command: "

    .line 226
    .line 227
    :goto_3
    invoke-static {v1, v6, v4}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_9
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 232
    .line 233
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-gt v1, v11, :cond_a

    .line 238
    .line 239
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC2Command(I)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_a
    if-gt v1, v10, :cond_b

    .line 244
    .line 245
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG2Character(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_b
    if-gt v1, v9, :cond_c

    .line 250
    .line 251
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC3Command(I)V

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_c
    if-gt v1, v8, :cond_d

    .line 256
    .line 257
    invoke-direct {p0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG3Character(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_d
    const-string v6, "Invalid extended command: "

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_e
    :goto_4
    if-eqz v0, :cond_f

    .line 265
    .line 266
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 271
    .line 272
    :cond_f
    return-void
.end method

.method private resetCueBuilders()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createSubtitle()Landroidx/media3/extractor/text/Subtitle;
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    new-instance v1, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public decode(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 8

    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_6

    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sequence number discontinuity. previous="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    :cond_5
    new-instance v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v1, v0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object p1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v0, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v0

    goto :goto_2

    :cond_6
    if-ne v1, v7, :cond_7

    const/4 v3, 0x1

    :cond_7
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object p1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    aput-byte v5, p1, v1

    add-int/2addr v1, v7

    iput v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v2

    :goto_2
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget p1, p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .locals 1

    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 1

    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v2, v1

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method public isNewSubtitleDataAvailable()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/extractor/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
