.class public Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;
.super Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;
.source "QRCodeDeepLinkV1.java"


# static fields
.field public static final QRCODE_GENIE_FIELD_ENTITY:Ljava/lang/String; = "entity"

.field public static final QRCODE_GENIE_FIELD_ID:Ljava/lang/String; = "id"

.field public static final QRCODE_GENIE_FIELD_NAMESPACE:Ljava/lang/String; = "namespace"


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "codeAsJson"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;-><init>(Lorg/json/JSONObject;)V

    .line 48
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->setGenieType(Ljava/lang/String;)V

    .line 49
    const-string v0, "hash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->setGenieHash(Ljava/lang/String;)V

    .line 51
    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "entity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->setGenieEntity(Ljava/lang/String;)V

    .line 52
    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->setGenieEntityId(J)V

    .line 53
    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "namespace"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->setmGenieNamespace(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static addQrCodePayloadToContainer(Lorg/json/JSONObject;Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 5
    .param p0, "payload"    # Lorg/json/JSONObject;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "namespace"    # J

    .prologue
    .line 78
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v1, "outerObject":Lorg/json/JSONObject;
    invoke-static {p2, p3, p4, p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getHash(IJLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "md5":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "type"

    const-string v3, "genie-deep-link"

    invoke-static {v1, v2, v3}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v2, "version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v2, "hash"

    invoke-static {v1, v2, v0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "payload"

    invoke-static {v1, v2, p0}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 86
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getEntityDeeplinkAsJson(JLjava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p0, "namespace"    # J
    .param p2, "entityName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .prologue
    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v0, "payload":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "namespace"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v1, "entity"

    invoke-static {v0, v1, p2}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    const-string v1, "genie-deep-link"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0, p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->addQrCodePayloadToContainer(Lorg/json/JSONObject;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getEntityDeeplinkAsJson(Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;)Ljava/lang/String;
    .locals 6
    .param p0, "code"    # Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getGenieNamespace()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getGenieEntity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getGenieEntityId()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getEntityDeeplinkAsJson(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHash(IJLorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p0, "version"    # I
    .param p1, "namespace"    # J
    .param p3, "payload"    # Lorg/json/JSONObject;

    .prologue
    const/16 v4, 0x5f

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "payload"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "payload"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "id":Ljava/lang/String;
    :goto_0
    const-string v2, "<validate>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, "genie-deep-link"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "</validate>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    const-string v2, "id"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0
.end method

.method private static validateGenieCode(Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "namespace"    # J
    .param p4, "payload"    # Lorg/json/JSONObject;
    .param p5, "hash"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 139
    if-nez p4, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    invoke-static {p5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-static {p1, p2, p3, p4}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getHash(IJLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "md5":Ljava/lang/String;
    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getGenieVersion()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->GENIE_DEEPLINK:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    return-object v0
.end method

.method public isValidHash()Z
    .locals 6

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getGenieCodeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getGenieVersion()I

    move-result v1

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getGenieNamespace()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getCodeAsJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->getGenieHash()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeDeepLinkV1;->validateGenieCode(Ljava/lang/String;IJLorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
