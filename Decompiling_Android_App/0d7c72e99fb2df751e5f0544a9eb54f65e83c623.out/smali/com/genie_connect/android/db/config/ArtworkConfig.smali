.class public final Lcom/genie_connect/android/db/config/ArtworkConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "ArtworkConfig.java"


# static fields
.field private static final DIMENSION_OVER_WHICH_FORCE_XHDPI:I = 0x2d0

.field public static final KEY_ANDROID_ASSET_HDPI:Ljava/lang/String; = "androidHDPI"

.field public static final KEY_ANDROID_ASSET_HDPI_URL:Ljava/lang/String; = "androidHDPIUrl"

.field public static final KEY_ANDROID_ASSET_LHDPI:Ljava/lang/String; = "androidLHDPI"

.field public static final KEY_ANDROID_ASSET_LHDPI_URL:Ljava/lang/String; = "androidLHDPIUrl"

.field public static final KEY_ANDROID_ASSET_MDPI:Ljava/lang/String; = "androidMDPI"

.field public static final KEY_ANDROID_ASSET_MDPI_URL:Ljava/lang/String; = "androidMDPIUrl"

.field public static final KEY_ANDROID_ASSET_XHDPI:Ljava/lang/String; = "androidXHDPI"

.field public static final KEY_ANDROID_ASSET_XHDPI_URL:Ljava/lang/String; = "androidXHDPIUrl"

.field public static final KEY_ANDROID_ASSET_XXHDPI:Ljava/lang/String; = "androidXXHDPI"

.field public static final KEY_ANDROID_ASSET_XXHDPI_URL:Ljava/lang/String; = "androidXXHDPIUrl"

.field public static final KEY_ANDROID_ASSET_XXXHDPI:Ljava/lang/String; = "androidXXXHDPI"

.field public static final KEY_ANDROID_ASSET_XXXHDPI_URL:Ljava/lang/String; = "androidXXXHDPIUrl"

.field private static final NUMBER_OF_BUCKETS:I = 0x7

.field public static final RES_HDPI:I = 0x2

.field public static final RES_LHDPI:I = 0x3

.field public static final RES_MDPI:I = 0x1

.field public static final RES_XHDPI:I = 0x4

.field public static final RES_XXHDPI:I = 0x5

.field public static final RES_XXXHDPI:I = 0x6


# instance fields
.field private final mAllAssetUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppIconUrlArray:[Ljava/lang/String;

.field private mBackgroundColourConfig:Lcom/genie_connect/android/db/config/misc/ColourConfig;

.field private final mDashBackgroundLowerUrlArray:[Ljava/lang/String;

.field private final mDashBackgroundUpperUrlArray:[Ljava/lang/String;

.field private final mDashBackgroundUrlArray:[Ljava/lang/String;

.field private final mDefaultNewsThumbnailUrlArray:[Ljava/lang/String;

.field private mHasAppIconArtwork:Z

.field private mHasDashboardBackgroundArtwork:Z

.field private mHasDashboardBackgroundLowerArtwork:Z

.field private mHasDashboardBackgroundUpperArtwork:Z

.field private mHasNavBarLogoArtwork:Z

.field private final mIconOverrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadingScreenUrlArray:[Ljava/lang/String;

.field private mNavBarColourConfig:Lcom/genie_connect/android/db/config/misc/ColourConfig;

.field private final mNavBarLogoUrlArray:[Ljava/lang/String;

.field private mPrimaryIconSet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x7

    .line 95
    sget-object v8, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v8, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 73
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDashBackgroundUrlArray:[Ljava/lang/String;

    .line 74
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDashBackgroundUpperUrlArray:[Ljava/lang/String;

    .line 75
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDashBackgroundLowerUrlArray:[Ljava/lang/String;

    .line 76
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mNavBarLogoUrlArray:[Ljava/lang/String;

    .line 77
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mLoadingScreenUrlArray:[Ljava/lang/String;

    .line 78
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDefaultNewsThumbnailUrlArray:[Ljava/lang/String;

    .line 79
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mAppIconUrlArray:[Ljava/lang/String;

    .line 80
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mAllAssetUrls:Ljava/util/Set;

    .line 82
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mIconOverrides:Ljava/util/HashMap;

    .line 84
    iput-boolean v9, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasNavBarLogoArtwork:Z

    .line 85
    iput-boolean v9, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasAppIconArtwork:Z

    .line 86
    iput-boolean v9, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasDashboardBackgroundArtwork:Z

    .line 87
    iput-boolean v9, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasDashboardBackgroundUpperArtwork:Z

    .line 88
    iput-boolean v9, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasDashboardBackgroundLowerArtwork:Z

    .line 100
    const-string v8, "artwork"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 101
    .local v7, "parentObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    .line 103
    const-string v8, "loadingScreen"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 104
    .local v2, "childObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 105
    iget-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mLoadingScreenUrlArray:[Ljava/lang/String;

    invoke-direct {p0, v8, v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->populateAssetArray([Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 108
    :cond_0
    iget-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDashBackgroundUrlArray:[Ljava/lang/String;

    const-string v9, "dashboardBackground"

    invoke-direct {p0, v7, v8, v9}, Lcom/genie_connect/android/db/config/ArtworkConfig;->populateAssetArray(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasDashboardBackgroundArtwork:Z

    .line 109
    iget-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDashBackgroundUpperUrlArray:[Ljava/lang/String;

    const-string v9, "dashboardBackgroundUpper"

    invoke-direct {p0, v7, v8, v9}, Lcom/genie_connect/android/db/config/ArtworkConfig;->populateAssetArray(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasDashboardBackgroundUpperArtwork:Z

    .line 110
    iget-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDashBackgroundLowerUrlArray:[Ljava/lang/String;

    const-string v9, "dashboardBackgroundLower"

    invoke-direct {p0, v7, v8, v9}, Lcom/genie_connect/android/db/config/ArtworkConfig;->populateAssetArray(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasDashboardBackgroundLowerArtwork:Z

    .line 111
    iget-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mAppIconUrlArray:[Ljava/lang/String;

    const-string v9, "appIcon"

    invoke-direct {p0, v7, v8, v9}, Lcom/genie_connect/android/db/config/ArtworkConfig;->populateAssetArray(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasAppIconArtwork:Z

    .line 112
    iget-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mNavBarLogoUrlArray:[Ljava/lang/String;

    const-string v9, "navBarLogo"

    invoke-direct {p0, v7, v8, v9}, Lcom/genie_connect/android/db/config/ArtworkConfig;->populateAssetArray(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasNavBarLogoArtwork:Z

    .line 115
    const-string v8, "defaultNewsThumbnail"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_1

    .line 117
    iget-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDefaultNewsThumbnailUrlArray:[Ljava/lang/String;

    invoke-direct {p0, v8, v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->populateAssetArray([Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 120
    :cond_1
    const-string v8, "iconOverrides"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 122
    .local v5, "iconOverridesArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_3

    .line 123
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 127
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 130
    .local v4, "iconOverride":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    const-string v8, "artwork"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 132
    const-string v8, "artwork"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    .local v0, "artwork":Lorg/json/JSONObject;
    const-string v8, "icon"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "icon":Ljava/lang/String;
    new-array v1, v10, [Ljava/lang/String;

    .line 136
    .local v1, "assetArray":[Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->populateAssetArray([Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 138
    iget-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mIconOverrides:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v0    # "artwork":Lorg/json/JSONObject;
    .end local v1    # "assetArray":[Ljava/lang/String;
    .end local v3    # "icon":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "childObject":Lorg/json/JSONObject;
    .end local v4    # "iconOverride":Lorg/json/JSONObject;
    .end local v5    # "iconOverridesArray":Lorg/json/JSONArray;
    .end local v6    # "ii":I
    :cond_3
    const-string v8, "design"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 145
    if-eqz v7, :cond_4

    .line 146
    new-instance v8, Lcom/genie_connect/android/db/config/misc/ColourConfig;

    const-string v9, "navBarColour"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/genie_connect/android/db/config/misc/ColourConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mNavBarColourConfig:Lcom/genie_connect/android/db/config/misc/ColourConfig;

    .line 147
    new-instance v8, Lcom/genie_connect/android/db/config/misc/ColourConfig;

    const-string v9, "backgroundColour"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/genie_connect/android/db/config/misc/ColourConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mBackgroundColourConfig:Lcom/genie_connect/android/db/config/misc/ColourConfig;

    .line 148
    const-string v8, "primaryIconSet"

    invoke-static {v7, v8}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mPrimaryIconSet:Ljava/lang/String;

    .line 150
    :cond_4
    return-void
.end method

.method private addAssetUrlArrayToSet([Ljava/lang/String;)V
    .locals 5
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 173
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 174
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mAllAssetUrls:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static getAssetUrl([Ljava/lang/String;FZJ)Ljava/lang/String;
    .locals 3
    .param p0, "assetArray"    # [Ljava/lang/String;
    .param p1, "density"    # F
    .param p2, "lng"    # Z
    .param p3, "smallestDimension"    # J

    .prologue
    .line 244
    invoke-static {p0, p1, p2, p3, p4}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getResolutionForDensity([Ljava/lang/String;FZJ)I

    move-result v0

    .line 245
    .local v0, "index":I
    aget-object v1, p0, v0

    .line 246
    .local v1, "url":Ljava/lang/String;
    return-object v1
.end method

.method private static getFirstValueFromAssetArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 354
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 355
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 356
    aget-object v1, p0, v0

    .line 360
    :goto_1
    return-object v1

    .line 354
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 360
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getLogicalDensityForResolution(I)F
    .locals 1
    .param p0, "resolution"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 195
    packed-switch p0, :pswitch_data_0

    .line 209
    :goto_0
    :pswitch_0
    return v0

    .line 200
    :pswitch_1
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 202
    :pswitch_2
    const/high16 v0, 0x40100000    # 2.25f

    goto :goto_0

    .line 204
    :pswitch_3
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_0

    .line 206
    :pswitch_4
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getPrimaryIconSetColour(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconSet"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v2, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mBackgroundColourConfig:Lcom/genie_connect/android/db/config/misc/ColourConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->isWhiteText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$color;->icon_set_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 320
    :goto_0
    return v1

    .line 318
    :cond_0
    sget v2, Lcom/eventgenie/android/R$color;->icon_set_white:I

    invoke-static {p2, v2}, Lcom/genie_connect/android/db/config/IconManager;->getFontColourColourId(Ljava/lang/String;I)I

    move-result v0

    .line 319
    .local v0, "colourId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 320
    .local v1, "res":I
    goto :goto_0
.end method

.method private static getResolutionForDensity([Ljava/lang/String;FZJ)I
    .locals 7
    .param p0, "assetArray"    # [Ljava/lang/String;
    .param p1, "density"    # F
    .param p2, "lng"    # Z
    .param p3, "smallestDimension"    # J

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    .line 250
    float-to-double v2, p1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 251
    const/4 v0, 0x6

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    float-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 253
    const/4 v0, 0x5

    goto :goto_0

    .line 254
    :cond_2
    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_3

    const-wide/16 v2, 0x2d0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_5

    .line 255
    :cond_3
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_4
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 260
    :cond_5
    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private populateAssetArray([Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 344
    const/4 v0, 0x6

    const-string v1, "androidXXXHDPIUrl"

    invoke-static {p2, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 345
    const/4 v0, 0x5

    const-string v1, "androidXXHDPIUrl"

    invoke-static {p2, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 346
    const/4 v0, 0x4

    const-string v1, "androidXHDPIUrl"

    invoke-static {p2, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 347
    const/4 v0, 0x2

    const-string v1, "androidHDPIUrl"

    invoke-static {p2, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 348
    const/4 v0, 0x3

    const-string v1, "androidLHDPIUrl"

    invoke-static {p2, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 349
    const/4 v0, 0x1

    const-string v1, "androidMDPIUrl"

    invoke-static {p2, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 350
    invoke-direct {p0, p1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->addAssetUrlArrayToSet([Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method private populateAssetArray(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "parentObject"    # Lorg/json/JSONObject;
    .param p2, "array"    # [Ljava/lang/String;
    .param p3, "childObjectname"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 155
    .local v0, "childObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 156
    const-string v7, "androidMDPI"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 157
    .local v3, "mdpi":Lorg/json/JSONObject;
    const-string v7, "androidHDPI"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 158
    .local v1, "hdpi":Lorg/json/JSONObject;
    const-string v7, "androidLHDPI"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 159
    .local v2, "lhdpi":Lorg/json/JSONObject;
    const-string v7, "androidXHDPI"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 160
    .local v4, "xhdpi":Lorg/json/JSONObject;
    const-string v7, "androidXXHDPI"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 161
    .local v5, "xxhdpi":Lorg/json/JSONObject;
    const-string v7, "androidXXXHDPI"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 163
    .local v6, "xxxhdpi":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v6, :cond_1

    .line 164
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->populateAssetArray([Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 165
    const/4 v7, 0x1

    .line 169
    .end local v1    # "hdpi":Lorg/json/JSONObject;
    .end local v2    # "lhdpi":Lorg/json/JSONObject;
    .end local v3    # "mdpi":Lorg/json/JSONObject;
    .end local v4    # "xhdpi":Lorg/json/JSONObject;
    .end local v5    # "xxhdpi":Lorg/json/JSONObject;
    .end local v6    # "xxxhdpi":Lorg/json/JSONObject;
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAppIcon(FZ)Ljava/lang/String;
    .locals 1
    .param p1, "mScale"    # F
    .param p2, "mIsLongScreen"    # Z

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasAppIconArtwork:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mAppIconUrlArray:[Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getFirstValueFromAssetArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getArtworkUrlSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mAllAssetUrls:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mBackgroundColourConfig:Lcom/genie_connect/android/db/config/misc/ColourConfig;

    return-object v0
.end method

.method public getDashboardBackgroundUrl(FZJ)Ljava/lang/String;
    .locals 1
    .param p1, "density"    # F
    .param p2, "lng"    # Z
    .param p3, "smallestDimension"    # J

    .prologue
    .line 229
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDashBackgroundUrlArray:[Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getAssetUrl([Ljava/lang/String;FZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDashboardLowerBackgroundUrl(FZJ)Ljava/lang/String;
    .locals 1
    .param p1, "density"    # F
    .param p2, "lng"    # Z
    .param p3, "smallestDimension"    # J

    .prologue
    .line 233
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDashBackgroundLowerUrlArray:[Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getAssetUrl([Ljava/lang/String;FZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDashboardUpperBackgroundUrl(FZJ)Ljava/lang/String;
    .locals 1
    .param p1, "density"    # F
    .param p2, "lng"    # Z
    .param p3, "smallestDimension"    # J

    .prologue
    .line 237
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDashBackgroundUpperUrlArray:[Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getAssetUrl([Ljava/lang/String;FZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDashboardWidgetFontColour(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconSet"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getPrimaryIconSetColour(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultNewsThumbnailUrl(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isHighDensity"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mDefaultNewsThumbnailUrlArray:[Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getFirstValueFromAssetArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconOverrideResolution(Ljava/lang/String;FZJ)I
    .locals 2
    .param p1, "iconName"    # Ljava/lang/String;
    .param p2, "density"    # F
    .param p3, "lng"    # Z
    .param p4, "smallestDimension"    # J

    .prologue
    .line 213
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mIconOverrides:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mIconOverrides:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getResolutionForDensity([Ljava/lang/String;FZJ)I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIconOverrideUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "iconName"    # Ljava/lang/String;
    .param p2, "resolution"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mIconOverrides:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mIconOverrides:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p2

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoadingScreenUrl(FZ)Ljava/lang/String;
    .locals 8
    .param p1, "density"    # F
    .param p2, "lng"    # Z

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 280
    float-to-double v4, p1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 281
    const/4 v0, 0x6

    .line 296
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mLoadingScreenUrlArray:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 297
    .local v1, "url":Ljava/lang/String;
    return-object v1

    .line 282
    .end local v0    # "index":I
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    float-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 283
    const/4 v0, 0x5

    .restart local v0    # "index":I
    goto :goto_0

    .line 284
    .end local v0    # "index":I
    :cond_1
    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4

    .line 285
    iget-object v3, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mLoadingScreenUrlArray:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    const/4 v0, 0x4

    .restart local v0    # "index":I
    goto :goto_0

    .line 288
    .end local v0    # "index":I
    :cond_2
    if-eqz p2, :cond_3

    .restart local v0    # "index":I
    :goto_1
    goto :goto_0

    .end local v0    # "index":I
    :cond_3
    move v0, v2

    goto :goto_1

    .line 290
    :cond_4
    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_6

    .line 291
    if-eqz p2, :cond_5

    .restart local v0    # "index":I
    :goto_2
    goto :goto_0

    .end local v0    # "index":I
    :cond_5
    move v0, v2

    goto :goto_2

    .line 293
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public getNavBarColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mNavBarColourConfig:Lcom/genie_connect/android/db/config/misc/ColourConfig;

    return-object v0
.end method

.method public getNavBarLogoUrl(FZJ)Ljava/lang/String;
    .locals 1
    .param p1, "density"    # F
    .param p2, "lng"    # Z
    .param p3, "smallestDimension"    # J

    .prologue
    .line 305
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mNavBarLogoUrlArray:[Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getAssetUrl([Ljava/lang/String;FZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryIconSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mPrimaryIconSet:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppIconArtwork()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasAppIconArtwork:Z

    return v0
.end method

.method public hasDashboardBackgroundArtwork()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasDashboardBackgroundArtwork:Z

    return v0
.end method

.method public hasDashboardBackgroundLowerArtwork()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasDashboardBackgroundLowerArtwork:Z

    return v0
.end method

.method public hasDashboardBackgroundUpperArtwork()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasDashboardBackgroundUpperArtwork:Z

    return v0
.end method

.method public hasNavBarLogoArtwork()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/ArtworkConfig;->mHasNavBarLogoArtwork:Z

    return v0
.end method
