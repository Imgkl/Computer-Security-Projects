.class Lcom/eventgenie/android/StaticClassKeeper;
.super Ljava/lang/Object;
.source "StaticClassKeeper.java"


# instance fields
.field private final LOCALE_MANAGER:Lcom/eventgenie/android/utils/managers/LocaleManager;

.field private final sAssetManager:Lcom/eventgenie/android/utils/managers/GenieAssetManager;

.field private final sBuildInfo:Lcom/eventgenie/android/utils/help/BuildInfo;

.field private final sDeviceInfo:Lcom/eventgenie/android/utils/help/DeviceInfoUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/eventgenie/android/utils/managers/LocaleManager;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/managers/LocaleManager;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/StaticClassKeeper;->LOCALE_MANAGER:Lcom/eventgenie/android/utils/managers/LocaleManager;

    .line 17
    new-instance v0, Lcom/eventgenie/android/utils/help/BuildInfo;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/utils/help/BuildInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/StaticClassKeeper;->sBuildInfo:Lcom/eventgenie/android/utils/help/BuildInfo;

    .line 18
    new-instance v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/StaticClassKeeper;->sDeviceInfo:Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    .line 19
    new-instance v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/utils/managers/GenieAssetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/StaticClassKeeper;->sAssetManager:Lcom/eventgenie/android/utils/managers/GenieAssetManager;

    .line 20
    return-void
.end method


# virtual methods
.method public getAssetManager()Lcom/eventgenie/android/utils/managers/GenieAssetManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/eventgenie/android/StaticClassKeeper;->sAssetManager:Lcom/eventgenie/android/utils/managers/GenieAssetManager;

    return-object v0
.end method

.method public getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/eventgenie/android/StaticClassKeeper;->sBuildInfo:Lcom/eventgenie/android/utils/help/BuildInfo;

    return-object v0
.end method

.method public getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/eventgenie/android/StaticClassKeeper;->sDeviceInfo:Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    return-object v0
.end method

.method public getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/eventgenie/android/StaticClassKeeper;->LOCALE_MANAGER:Lcom/eventgenie/android/utils/managers/LocaleManager;

    return-object v0
.end method
