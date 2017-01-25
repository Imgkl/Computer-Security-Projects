.class public final Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;
.super Lcom/genie_connect/android/db/config/features/BaseFeatures;
.source "ExhibitorFeatures.java"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    const-string v0, "features_exhibitors"

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

.method public showThumbnail()Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/genie_connect/android/db/config/features/BaseFeatures;->showThumbnail()Z

    move-result v0

    goto :goto_0
.end method
