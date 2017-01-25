.class public Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;
.super Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
.source "QRCodeUrl.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "codeAsString"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->URL:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;->getCodeAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
