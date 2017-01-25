.class public final Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;
.super Ljava/lang/Object;
.source "GamificationGameFeatures.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/features/GmListModifier;


# instance fields
.field private final mDefaultThumbnailUrl:Ljava/lang/String;

.field private final mShowThumbnail:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "showGameThumbnail"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;->mShowThumbnail:Z

    .line 43
    const-string v0, "defaultThumbnailUrl"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;->mDefaultThumbnailUrl:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getDefaultThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;->mDefaultThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceholderAssetId()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public showThumbnail()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/GamificationGameFeatures;->mShowThumbnail:Z

    return v0
.end method
