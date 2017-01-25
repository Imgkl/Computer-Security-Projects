.class public Lcom/eventgenie/android/activities/others/SplashActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;,
        Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;
    }
.end annotation


# instance fields
.field private final SPLASH_DURATION:I

.field private mAutoUpdate:Z

.field private mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

.field private mHasDB:Z

.field private mIsDevBuild:Z

.field private mIsFirstRun:Z

.field private mIsProofer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 72
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->SPLASH_DURATION:I

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/SplashActivity;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/SplashActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mHasDB:Z

    return v0
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/others/SplashActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mHasDB:Z

    return p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/others/SplashActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mIsDevBuild:Z

    return v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/others/SplashActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mIsProofer:Z

    return v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/others/SplashActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mIsFirstRun:Z

    return v0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/eventgenie/android/activities/others/SplashActivity;->initialiseData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/others/SplashActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mAutoUpdate:Z

    return v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/activities/others/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/SplashActivity;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashActivity;->checkForUpdates()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v9, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 92
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 93
    sget v6, Lcom/eventgenie/android/R$layout;->activity_splash:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/others/SplashActivity;->setContentView(I)V

    .line 94
    invoke-static {p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v3

    .line 96
    .local v3, "prefs":Lcom/genie_connect/android/prefs/GlobalPreferences;
    invoke-virtual {v3}, Lcom/genie_connect/android/prefs/GlobalPreferences;->isAutoUpdateEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mAutoUpdate:Z

    .line 97
    invoke-virtual {v3}, Lcom/genie_connect/android/prefs/GlobalPreferences;->isFirstRun()Z

    move-result v6

    iput-boolean v6, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mIsFirstRun:Z

    .line 99
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v6

    iput-boolean v6, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mIsProofer:Z

    .line 100
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/BuildInfo;->isDevModeEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mIsDevBuild:Z

    .line 101
    new-instance v2, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    const-string v6, ""

    invoke-direct {v2, p0, v6}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    .local v2, "mImageLoader":Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;
    sget v6, Lcom/eventgenie/android/R$id;->artwork:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/others/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "iv":Landroid/widget/ImageView;
    sget v6, Lcom/eventgenie/android/R$drawable;->custom_splash:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 108
    .local v4, "scale":F
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isScreenLong()Z

    move-result v1

    .line 109
    .local v1, "lng":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/SplashActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v6

    invoke-virtual {v6, p0, v9}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getLoadingScreenUrl(FZ)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/a_vcard/android/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 112
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v2, v5, v0}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 117
    :cond_0
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/SplashActivity;->mIsFirstRun:Z

    invoke-static {p0, v6}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyAppOpened(Landroid/content/Context;Z)Z

    .line 119
    new-instance v6, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;-><init>(Lcom/eventgenie/android/activities/others/SplashActivity;)V

    invoke-static {v6}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 121
    new-instance v6, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;-><init>(Lcom/eventgenie/android/activities/others/SplashActivity;)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method
