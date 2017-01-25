.class public final Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;
.super Ljava/lang/Object;
.source "GamificationPlayerFeatures.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/features/GmListModifier;


# instance fields
.field private final mShowThumbnail:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "netFeatures"    # Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->showThumbnail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;->mShowThumbnail:Z

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
    sget v0, Lcom/eventgenie/android/R$drawable;->profile_placeholder:I

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
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/GamificationPlayerFeatures;->mShowThumbnail:Z

    return v0
.end method
