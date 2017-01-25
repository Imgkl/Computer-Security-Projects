.class public Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;
.super Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;
.source "QRCodeGenieIntent.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "codeAsString"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;->getCodeAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->fromUrl(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v0

    return-object v0
.end method

.method public getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->GENIE_INTENT:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QRCodeGenieIntent [getGenieIntent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;->getGenieIntent()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getQRCodeType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeGenieIntent;->getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
