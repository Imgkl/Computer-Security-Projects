.class public final Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;
.super Ljava/lang/Object;
.source "GamificationTrophyFeatures.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/features/GmListModifier;


# instance fields
.field private final mShowThumbnail:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "showTrophyThumbnail"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;->mShowThumbnail:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getDefaultThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaceholderAssetId()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public showThumbnail()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/GamificationTrophyFeatures;->mShowThumbnail:Z

    return v0
.end method
