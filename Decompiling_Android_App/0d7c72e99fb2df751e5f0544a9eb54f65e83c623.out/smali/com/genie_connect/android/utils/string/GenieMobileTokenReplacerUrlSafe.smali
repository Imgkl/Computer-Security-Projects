.class public Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacerUrlSafe;
.super Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
.source "GenieMobileTokenReplacerUrlSafe.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V
    .locals 0
    .param p1, "visitor"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .param p2, "mWifiNetworkSettings"    # Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected replace(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "find"    # Ljava/lang/String;
    .param p3, "replace"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p2}, Lcom/a_vcard/android/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 25
    :cond_0
    :try_start_0
    invoke-static {p3}, Lcom/a_vcard/android/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-static {p1, p2, v0}, Lcom/genie_connect/android/utils/string/StringUtils;->replaceAll(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0

    .line 25
    :cond_1
    const-string/jumbo v0, "utf-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method
