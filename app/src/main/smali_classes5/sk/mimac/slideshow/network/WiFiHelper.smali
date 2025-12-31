.class public abstract Lsk/mimac/slideshow/network/WiFiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/network/WiFiHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/network/WiFiHelper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->lambda$connectToNetwork$1(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void
.end method

.method public static synthetic b(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->lambda$connectToNetwork$2(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->lambda$connectToNetwork$0(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void
.end method

.method public static connectToNetwork(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;-><init>(Lsk/mimac/slideshow/network/WiFiHelper$1;)V

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$102(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$202(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    const-string v3, "hidden"

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$302(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;Z)Z

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$402(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Lsk/mimac/slideshow/utils/SleepUtils;->sleep(J)V

    sget-object p0, Lsk/mimac/slideshow/network/WiFiHelper;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Connecting to WiFi network {}"

    invoke-interface {p0, v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$200(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$200(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$200(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    invoke-static {v0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$200(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WiFi password is too short (length={})"

    invoke-interface {p0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lsk/mimac/slideshow/network/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/network/a;-><init>(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;I)V

    invoke-static {p0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance p0, Lsk/mimac/slideshow/network/a;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lsk/mimac/slideshow/network/a;-><init>(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;I)V

    invoke-static {p0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lsk/mimac/slideshow/utils/SleepUtils;->sleep(J)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge p0, v3, :cond_3

    new-instance p0, Lsk/mimac/slideshow/network/a;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lsk/mimac/slideshow/network/a;-><init>(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;I)V

    :goto_0
    invoke-static {p0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lsk/mimac/slideshow/network/a;

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3}, Lsk/mimac/slideshow/network/a;-><init>(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;I)V

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Lsk/mimac/slideshow/utils/SleepUtils;->sleep(J)V

    return-void
.end method

.method private static connectToNetworkNewAndroid(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->createSuggestion(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lsk/mimac/slideshow/network/WiFiHelper;->sendIntent(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static connectToNetworkOldAndroid(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 8

    .line 1
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "wifi"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 14
    .line 15
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$100(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lsk/mimac/slideshow/network/WiFiHelper;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$300(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 35
    .line 36
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 49
    .line 50
    const/4 v5, 0x2

    .line 51
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 70
    .line 71
    const/4 v6, 0x3

    .line 72
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 73
    .line 74
    .line 75
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 76
    .line 77
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->hasPassword()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$200(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Lsk/mimac/slideshow/network/WiFiHelper;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v0, v2}, Lsk/mimac/slideshow/network/WiFiHelper;->removePreviousConfig(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    const/4 v2, -0x1

    .line 117
    const-string v4, "wifi_error_connecting"

    .line 118
    .line 119
    const-string v5, ": "

    .line 120
    .line 121
    if-ne v1, v2, :cond_1

    .line 122
    .line 123
    sget-object v0, Lsk/mimac/slideshow/network/WiFiHelper;->LOG:Lorg/slf4j/Logger;

    .line 124
    .line 125
    const-string v1, "Can\'t connect to to WiFi network {}, can\'t add network"

    .line 126
    .line 127
    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {v4, v5, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$100(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const-string v1, " - Can\'t add network"

    .line 143
    .line 144
    invoke-static {p0, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    :goto_1
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->showToast(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const-string v6, " - Can\'t save configuration"

    .line 157
    .line 158
    const-string v7, "Can\'t connect to to WiFi network {}, can\'t save configuration"

    .line 159
    .line 160
    if-nez v2, :cond_2

    .line 161
    .line 162
    sget-object v0, Lsk/mimac/slideshow/network/WiFiHelper;->LOG:Lorg/slf4j/Logger;

    .line 163
    .line 164
    invoke-interface {v0, v7, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    :goto_2
    invoke-static {v4, v5, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$100(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {p0, v6, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_3

    .line 192
    .line 193
    sget-object v0, Lsk/mimac/slideshow/network/WiFiHelper;->LOG:Lorg/slf4j/Logger;

    .line 194
    .line 195
    invoke-interface {v0, v7, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_3
    sget-object v0, Lsk/mimac/slideshow/network/WiFiHelper;->LOG:Lorg/slf4j/Logger;

    .line 205
    .line 206
    const-string v1, "Successfully added WiFi network {}"

    .line 207
    .line 208
    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v1, "wifi_added"

    .line 217
    .line 218
    invoke-static {v1, v5, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 219
    .line 220
    .line 221
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$100(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    goto :goto_1
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    if-ltz v0, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x22

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "\""

    .line 35
    .line 36
    invoke-static {v0, p0, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_2
    :goto_0
    return-object p0
.end method

.method private static createSuggestion(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Landroid/net/wifi/WifiNetworkSuggestion;
    .locals 3

    invoke-static {}, Landroidx/appcompat/widget/a;->c()Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$100(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/widget/a;->o(Landroid/net/wifi/WifiNetworkSuggestion$Builder;Ljava/lang/String;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->hasPassword()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WPA3"

    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$400(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$200(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/widget/a;->v(Landroid/net/wifi/WifiNetworkSuggestion$Builder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$200(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/widget/a;->z(Landroid/net/wifi/WifiNetworkSuggestion$Builder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$300(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Z

    move-result p0

    invoke-static {v0, p0}, Landroidx/appcompat/widget/a;->p(Landroid/net/wifi/WifiNetworkSuggestion$Builder;Z)V

    invoke-static {v0}, Landroidx/appcompat/widget/a;->d(Landroid/net/wifi/WifiNetworkSuggestion$Builder;)Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->lambda$connectToNetwork$3(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void
.end method

.method private static synthetic lambda$connectToNetwork$0(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "wifi_error_connecting"

    .line 7
    .line 8
    const-string v2, ": "

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$100(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, " - password is too short"

    .line 18
    .line 19
    invoke-static {p0, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->showToast(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static synthetic lambda$connectToNetwork$1(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 4

    .line 1
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "wifi_connecting"

    .line 9
    .line 10
    const-string v3, ": "

    .line 11
    .line 12
    invoke-static {v2, v3, v1}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->access$100(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static synthetic lambda$connectToNetwork$2(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 0

    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->connectToNetworkOldAndroid(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void
.end method

.method private static synthetic lambda$connectToNetwork$3(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V
    .locals 0

    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->connectToNetworkNewAndroid(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)V

    return-void
.end method

.method public static processConnectionResult(ILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    const-string p0, "android.provider.extra.WIFI_NETWORK_RESULT_LIST"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lsk/mimac/slideshow/network/WiFiHelper;->LOG:Lorg/slf4j/Logger;

    const-string v1, "WiFi network connection finished with code={}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "wifi_error_connecting"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - ADD_OR_UPDATE_FAILED"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->showToast(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    const-string p0, "wifi_added"

    invoke-static {p0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lsk/mimac/slideshow/network/WiFiHelper;->LOG:Lorg/slf4j/Logger;

    const-string p1, "User refused to add WiFi"

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static removePreviousConfig(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static sendIntent(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/WifiNetworkSuggestion;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_ADD_NETWORKS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.provider.extra.WIFI_NETWORK_LIST"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->SLIDESHOW_ACTIVITY:Lsk/mimac/slideshow/display/SlideshowActivity;

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lsk/mimac/slideshow/network/WiFiHelper;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t connect to to WiFi network"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifi_error_connecting"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/network/WiFiHelper;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static showToast(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
