.class public abstract Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;
.super Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
.source "BaseDeeplinkQRCode.java"


# static fields
.field public static final QRCODE_GENIE_FIELD_HASH:Ljava/lang/String; = "hash"

.field public static final QRCODE_GENIE_FIELD_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final QRCODE_GENIE_FIELD_TYPE:Ljava/lang/String; = "type"

.field public static final QRCODE_GENIE_FIELD_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final mCodeAsJson:Lorg/json/JSONObject;

.field private mGenieAction:Ljava/lang/String;

.field private mGenieEntity:Ljava/lang/String;

.field private mGenieEntityId:J

.field private mGenieHash:Ljava/lang/String;

.field private mGenieNamespace:J

.field private mGenieType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "codeAsJson"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;-><init>(Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mCodeAsJson:Lorg/json/JSONObject;

    .line 55
    return-void
.end method


# virtual methods
.method protected getCodeAsJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mCodeAsJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getGenieAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieAction:Ljava/lang/String;

    return-object v0
.end method

.method public getGenieCodeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getCodeAsJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "genie-invalid"

    .line 69
    :goto_0
    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieType:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "genie-invalid"

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGenieEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getGenieEntityId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieEntityId:J

    return-wide v0
.end method

.method public getGenieHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieHash:Ljava/lang/String;

    return-object v0
.end method

.method public getGenieNamespace()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieNamespace:J

    return-wide v0
.end method

.method public getGeniePayload()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getCodeAsJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->getCodeAsJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getGenieVersion()I
.end method

.method public getmGenieType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isValidHash()Z
.end method

.method protected setGenieEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "genieEntity"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieEntity:Ljava/lang/String;

    .line 103
    return-void
.end method

.method protected setGenieEntityId(J)V
    .locals 1
    .param p1, "genieEntityId"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieEntityId:J

    .line 107
    return-void
.end method

.method protected setGenieHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "genieHash"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieHash:Ljava/lang/String;

    .line 111
    return-void
.end method

.method protected setGenieType(Ljava/lang/String;)V
    .locals 0
    .param p1, "genieType"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method protected setmGenieAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "genieAction"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieAction:Ljava/lang/String;

    .line 119
    return-void
.end method

.method protected setmGenieNamespace(J)V
    .locals 1
    .param p1, "genieNamespace"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseDeeplinkQRCode;->mGenieNamespace:J

    .line 123
    return-void
.end method
