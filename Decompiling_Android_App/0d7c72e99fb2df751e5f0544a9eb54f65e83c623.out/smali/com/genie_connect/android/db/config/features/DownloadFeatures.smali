.class public final Lcom/genie_connect/android/db/config/features/DownloadFeatures;
.super Lcom/genie_connect/android/db/config/features/BaseFeatures;
.source "DownloadFeatures.java"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    const-string v0, "features_downloads"

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/features/BaseFeatures;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getPlaceholderAssetId()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    return v0
.end method
