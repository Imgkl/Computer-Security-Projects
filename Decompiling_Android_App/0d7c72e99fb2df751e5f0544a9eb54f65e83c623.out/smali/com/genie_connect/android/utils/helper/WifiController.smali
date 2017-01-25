.class public Lcom/genie_connect/android/utils/helper/WifiController;
.super Ljava/lang/Object;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/utils/helper/WifiController$1;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsWifiPresent:Z

.field private final mNamespace:J

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "[0-9A-Fa-f]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/utils/helper/WifiController;->HEX_DIGITS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/net/wifi/WifiManager;
    .param p3, "namespace"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isWifiPresent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mIsWifiPresent:Z

    .line 27
    iput-object p2, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 28
    iput-wide p3, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mNamespace:J

    .line 29
    return-void
.end method

.method private static changeNetworkCommon(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p0, "wifiResult"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    .line 195
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 196
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 197
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 198
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 199
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 200
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 203
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v1, v2}, Lcom/genie_connect/android/utils/helper/WifiController;->quoteNonHex(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->isHidden()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 205
    return-object v0
.end method

.method private changeNetworkUnEncrypted(Landroid/net/wifi/WifiManager;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V
    .locals 4
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "settings"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    .line 53
    invoke-direct {p0, p2}, Lcom/genie_connect/android/utils/helper/WifiController;->isNetworkAlreadyAdded(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "^ WIFICONTROL: Wifi network already added!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mNamespace:J

    invoke-static {v1, v2, v3}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setWifiMd5(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->apply()V

    .line 61
    invoke-static {p2}, Lcom/genie_connect/android/utils/helper/WifiController;->changeNetworkCommon(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 62
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 63
    invoke-static {p1, v0}, Lcom/genie_connect/android/utils/helper/WifiController;->updateNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method private changeNetworkWEP(Landroid/net/wifi/WifiManager;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V
    .locals 7
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "settings"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p2}, Lcom/genie_connect/android/utils/helper/WifiController;->isNetworkAlreadyAdded(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "^ WIFICONTROL: Wifi network already added!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mNamespace:J

    invoke-static {v1, v2, v3}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setWifiMd5(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->apply()V

    .line 77
    invoke-static {p2}, Lcom/genie_connect/android/utils/helper/WifiController;->changeNetworkCommon(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 78
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getPassword()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Lcom/genie_connect/android/utils/helper/WifiController;->quoteNonHex(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 79
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 80
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 81
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 82
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 83
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 84
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 85
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 86
    invoke-static {p1, v0}, Lcom/genie_connect/android/utils/helper/WifiController;->updateNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 78
    :array_0
    .array-data 4
        0xa
        0x1a
        0x3a
    .end array-data
.end method

.method private changeNetworkWPA(Landroid/net/wifi/WifiManager;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V
    .locals 7
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "settings"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 92
    invoke-direct {p0, p2}, Lcom/genie_connect/android/utils/helper/WifiController;->isNetworkAlreadyAdded(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "^ WIFICONTROL: Wifi network already added!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mNamespace:J

    invoke-static {v1, v2, v3}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setWifiMd5(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->apply()V

    .line 100
    invoke-static {p2}, Lcom/genie_connect/android/utils/helper/WifiController;->changeNetworkCommon(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 102
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [I

    const/16 v3, 0x40

    aput v3, v2, v5

    invoke-static {v1, v2}, Lcom/genie_connect/android/utils/helper/WifiController;->quoteNonHex(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 103
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 104
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 105
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 106
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 107
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 108
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 109
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 110
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 111
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 112
    invoke-static {p1, v0}, Lcom/genie_connect/android/utils/helper/WifiController;->updateNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x22

    .line 218
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 219
    :cond_0
    const/4 p0, 0x0

    .line 225
    .end local p0    # "string":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 222
    .restart local p0    # "string":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 225
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static findNetworkInExistingConfig(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-object v3

    .line 234
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 235
    .local v0, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method private static varargs isHexOfLength(Ljava/lang/CharSequence;[I)Z
    .locals 7
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "allowedLengths"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 254
    if-eqz p0, :cond_0

    sget-object v6, Lcom/genie_connect/android/utils/helper/WifiController;->HEX_DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 265
    :cond_1
    :goto_0
    return v4

    .line 257
    :cond_2
    array-length v6, p1

    if-eqz v6, :cond_1

    .line 260
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    .line 261
    .local v3, "length":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v6, v3, :cond_1

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "length":I
    :cond_3
    move v4, v5

    .line 265
    goto :goto_0
.end method

.method private isNetworkAlreadyAdded(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)Z
    .locals 6
    .param p1, "settings"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getHash()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "newHash":Ljava/lang/String;
    iget-object v2, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mNamespace:J

    invoke-static {v2, v4, v5}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->getWifiMd5()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "oldHash":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static varargs quoteNonHex(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "allowedLengths"    # [I

    .prologue
    .line 269
    invoke-static {p0, p1}, Lcom/genie_connect/android/utils/helper/WifiController;->isHexOfLength(Ljava/lang/CharSequence;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "value":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/genie_connect/android/utils/helper/WifiController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static updateNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 281
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/genie_connect/android/utils/helper/WifiController;->findNetworkInExistingConfig(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 282
    .local v0, "foundNetworkID":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ WIFICONTROL: Removing old configuration for network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 285
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 289
    .local v1, "networkId":I
    if-ltz v1, :cond_2

    .line 291
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ WIFICONTROL: Added Network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ WIFICONTROL: Failed to enable network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ WIFICONTROL: Unable to add network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validateWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 181
    const-string v1, "^ WIFICONTROLLER: Wifimanager is null!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 190
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-boolean v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mIsWifiPresent:Z

    if-nez v1, :cond_1

    .line 186
    const-string v1, "^ WIFICONTROLLER: Device does not support wifi!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public action(Lcom/genie_connect/android/db/config/SetupConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/genie_connect/android/db/config/SetupConfig;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/genie_connect/android/utils/helper/WifiController;->validateWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    :pswitch_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/genie_connect/android/utils/helper/WifiController$1;->$SwitchMap$com$genie_connect$android$db$config$SetupConfig$WiFiAndroidBehaviour:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/SetupConfig;->getWiFiAndroidBehaviour()Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/SetupConfig;->getWifiNetworkSettings()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/utils/helper/WifiController;->upsertNetwork(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/SetupConfig;->getWifiNetworkSettings()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/utils/helper/WifiController;->removeNetwork(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isNetworkInConfigPresent(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)Z
    .locals 6
    .param p1, "settings"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Lcom/genie_connect/android/utils/helper/WifiController;->validateWifi()Z

    move-result v5

    if-nez v5, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v4

    .line 126
    :cond_1
    iget-object v5, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "ssid":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 130
    .local v0, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public removeNetwork(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V
    .locals 3
    .param p1, "settings"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/genie_connect/android/utils/helper/WifiController;->validateWifi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ WIFICONTROL: Removing configuration for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/genie_connect/android/utils/helper/WifiController;->findNetworkInExistingConfig(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 144
    .local v0, "foundNetworkID":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ WIFICONTROL: Removing network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 147
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_0
.end method

.method public upsertNetwork(Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V
    .locals 3
    .param p1, "settings"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/genie_connect/android/utils/helper/WifiController;->validateWifi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSecurity()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    move-result-object v0

    .line 156
    .local v0, "security":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    sget-object v1, Lcom/genie_connect/android/utils/helper/WifiController$1;->$SwitchMap$com$genie_connect$android$utils$helper$WifiNetworkSettings$WiFiSecurity:[I

    invoke-virtual {v0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ WIFICONTROL: Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0, v1, p1}, Lcom/genie_connect/android/utils/helper/WifiController;->changeNetworkUnEncrypted(Landroid/net/wifi/WifiManager;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    goto :goto_0

    .line 161
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ WIFICONTROL: Will not add network with unknown security "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0, v1, p1}, Lcom/genie_connect/android/utils/helper/WifiController;->changeNetworkWEP(Landroid/net/wifi/WifiManager;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    goto :goto_0

    .line 168
    :pswitch_3
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0, v1, p1}, Lcom/genie_connect/android/utils/helper/WifiController;->changeNetworkWPA(Landroid/net/wifi/WifiManager;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    goto :goto_0

    .line 175
    .end local v0    # "security":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ WIFICONTROL: Network \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has invalid configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
