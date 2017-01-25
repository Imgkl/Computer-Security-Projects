.class public Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;
.super Ljava/lang/Object;
.source "WifiNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$1;,
        Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    }
.end annotation


# instance fields
.field private final mPassword:Ljava/lang/String;

.field private final mSecurity:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

.field private final mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "security"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p3, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mSecurity:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    .line 13
    iput-object p1, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mSsid:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mPassword:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSecurity()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSecurity()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :goto_1
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :goto_2
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 22
    :cond_0
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 34
    :cond_2
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurity()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mSecurity:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mSsid:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mSecurity:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$1;->$SwitchMap$com$genie_connect$android$utils$helper$WifiNetworkSettings$WiFiSecurity:[I

    iget-object v2, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mSecurity:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    invoke-virtual {v2}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0

    .line 66
    .end local v0    # "result":Z
    :pswitch_0
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mSsid:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    .line 67
    .restart local v0    # "result":Z
    goto :goto_0

    .line 69
    .end local v0    # "result":Z
    :pswitch_1
    const/4 v0, 0x0

    .line 70
    .restart local v0    # "result":Z
    goto :goto_0

    .line 72
    .end local v0    # "result":Z
    :pswitch_2
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    .line 73
    .restart local v0    # "result":Z
    goto :goto_0

    .line 75
    .end local v0    # "result":Z
    :pswitch_3
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    .line 76
    .restart local v0    # "result":Z
    goto :goto_0

    .line 78
    .end local v0    # "result":Z
    :pswitch_4
    iget-object v1, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    .line 79
    .restart local v0    # "result":Z
    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
