.class public abstract Lcom/genie_connect/android/db/config/features/BaseFeatures;
.super Ljava/lang/Object;
.source "BaseFeatures.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/features/GmListModifier;


# static fields
.field public static final CONFIG_FEATURES_DOWNLOADRS:Ljava/lang/String; = "features_downloads"

.field public static final CONFIG_FEATURES_EXHIBITORS:Ljava/lang/String; = "features_exhibitors"

.field public static final CONFIG_FEATURES_GAMIFICATION:Ljava/lang/String; = "features_gamification"

.field public static final CONFIG_FEATURES_MYEVENT:Ljava/lang/String; = "features_myevent"

.field public static final CONFIG_FEATURES_NETWORKING:Ljava/lang/String; = "features_networking"

.field public static final CONFIG_FEATURES_POI:Ljava/lang/String; = "features_poi"

.field public static final CONFIG_FEATURES_PRODUCTS:Ljava/lang/String; = "features_products"

.field public static final CONFIG_FEATURES_SCHEDULE:Ljava/lang/String; = "features_schedule"

.field public static final CONFIG_FEATURES_SPEAKER:Ljava/lang/String; = "features_speakers"

.field private static final DEFAULT_THUMBNAIL_URL:Ljava/lang/String; = "defaultThumbnailUrl"

.field private static final SHOW_THUMBNAIL:Ljava/lang/String; = "showThumbnail"

.field public static final VERSION_1:I = 0x1

.field public static final VERSION_COMPATIBILITY:I


# instance fields
.field private final mDefaultThumbnailUrl:Ljava/lang/String;

.field private final mShowThumbnail:Z

.field private final mType:Ljava/lang/String;

.field private final mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mType:Ljava/lang/String;

    .line 61
    if-nez p2, :cond_0

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mVersion:I

    .line 63
    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mShowThumbnail:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mDefaultThumbnailUrl:Ljava/lang/String;

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "defaultThumbnailUrl"

    invoke-static {p2, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mDefaultThumbnailUrl:Ljava/lang/String;

    .line 67
    const-string v0, "showThumbnail"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mShowThumbnail:Z

    .line 68
    iput v1, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mVersion:I

    goto :goto_0
.end method


# virtual methods
.method public getDefaultThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mDefaultThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mVersion:I

    return v0
.end method

.method public showThumbnail()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/BaseFeatures;->mShowThumbnail:Z

    return v0
.end method
