.class public Lcom/eventgenie/android/utils/qrcode/containers/QRCodeFactory;
.super Ljava/lang/Object;
.source "QRCodeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/genie_connect/android/db/config/AppConfig;)Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "conf"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 48
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x0

    .line 84
    :goto_0
    return-object v3

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeFactory;->parseJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 52
    .local v2, "json":Lorg/json/JSONObject;
    if-nez v2, :cond_5

    .line 53
    invoke-static {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeFactory;->isUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    invoke-static {p1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->isThisValidGenieIntentUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    new-instance v3, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;

    invoke-direct {v3, p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;-><init>(Ljava/lang/String;)V

    .local v3, "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    goto :goto_0

    .line 57
    .end local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :cond_1
    new-instance v3, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;

    invoke-direct {v3, p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;-><init>(Ljava/lang/String;)V

    .restart local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    goto :goto_0

    .line 59
    .end local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :cond_2
    invoke-static {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeFactory;->isVCard(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 60
    new-instance v3, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeVCard;

    invoke-direct {v3, p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeVCard;-><init>(Ljava/lang/String;)V

    .restart local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    goto :goto_0

    .line 61
    .end local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :cond_3
    invoke-static {p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeFactory;->isCompuSystems(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 62
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v4

    .line 63
    .local v4, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    new-instance v3, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;

    invoke-direct {v3, v4, p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;-><init>(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Ljava/lang/String;)V

    .line 64
    .restart local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    goto :goto_0

    .line 65
    .end local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    .end local v4    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    goto :goto_0

    .line 68
    .end local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :cond_5
    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "codeType":Ljava/lang/String;
    const-string/jumbo v5, "version"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "codeVersion":I
    const-string v5, "genie-deep-link"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 72
    packed-switch v1, :pswitch_data_0

    .line 77
    const/4 v3, 0x0

    .restart local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    goto :goto_0

    .line 74
    .end local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :pswitch_0
    new-instance v3, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;

    invoke-direct {v3, v2}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;-><init>(Lorg/json/JSONObject;)V

    .line 75
    .restart local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    goto :goto_0

    .line 80
    .end local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "result":Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static isCompuSystems(Ljava/lang/String;)Z
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "csicsi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    const-string/jumbo v1, "|"

    invoke-static {p0, v1}, Lcom/genie_connect/android/utils/string/StringUtils;->countMatches(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 90
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 91
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return v1

    .line 100
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v1, 0x1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_0
.end method

.method private static isVCard(Ljava/lang/String;)Z
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const-string v2, "MECARD:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 113
    goto :goto_0
.end method

.method private static parseJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
