.class public Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "QrReaderConfig.java"


# instance fields
.field private final mDisableVisitorQRCode:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 23
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->QRREADER:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    const-string v0, "disableVisitorQRCode"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;->mDisableVisitorQRCode:Z

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;->mDisableVisitorQRCode:Z

    goto :goto_0
.end method


# virtual methods
.method public isDisableVisitorQRCode()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/QrReaderConfig;->mDisableVisitorQRCode:Z

    return v0
.end method
