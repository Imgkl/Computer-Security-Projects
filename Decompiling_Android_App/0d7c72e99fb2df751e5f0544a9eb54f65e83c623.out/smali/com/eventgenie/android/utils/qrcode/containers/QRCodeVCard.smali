.class public Lcom/eventgenie/android/utils/qrcode/containers/QRCodeVCard;
.super Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
.source "QRCodeVCard.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "codeAsString"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->VCARD:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    return-object v0
.end method
