.class public Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;
.super Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;
.source "AdvertisingCampaign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;,
        Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;
    }
.end annotation


# static fields
.field private static final ADVERTISMENT_CHANGE_INTERVAL:I = 0x1388


# instance fields
.field private mAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;",
            ">;"
        }
    .end annotation
.end field

.field private mAdvertisementCount:I

.field private mAdvertisementIdx:I

.field private mAdvertismentSwapTimer:Ljava/util/Timer;

.field private final mAllowOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCampaignId:J

.field private mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

.field private mIsValid:Z

.field private mShouldAdViewBeVisible:Z

.field private final mSlideUp:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JJ)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "campaignId"    # J
    .param p4, "namespace"    # J

    .prologue
    .line 94
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;-><init>(Landroid/app/Activity;Landroid/view/View;JJ)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;JJ)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "campaignId"    # J
    .param p5, "namespace"    # J

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 76
    iput-boolean v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mIsValid:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAllowOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    iput v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementCount:I

    .line 81
    iput v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementIdx:I

    .line 88
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$anim;->slidein:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mSlideUp:Landroid/view/animation/Animation;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdList:Ljava/util/List;

    .line 90
    iput-wide p3, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCampaignId:J

    .line 91
    return-void
.end method

.method static synthetic access$1000(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->initAdvertisementIndex()V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->showAdvertisement()V

    return-void
.end method

.method static synthetic access$300(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAllowOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCampaignId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;J)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;
    .param p1, "x1"    # J

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->loadAdvertisements(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    .prologue
    .line 70
    iget v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mIsValid:Z

    return v0
.end method

.method static synthetic access$902(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mIsValid:Z

    return p1
.end method

.method private getNextAdvertisement()Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementIdx:I

    .line 116
    iget v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementIdx:I

    iget v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementCount:I

    if-lt v0, v1, :cond_0

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementIdx:I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdList:Ljava/util/List;

    iget v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    return-object v0
.end method

.method private initAdvertisementIndex()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 128
    .local v0, "positionPicker":Ljava/util/Random;
    iget v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementIdx:I

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementCount:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementIdx:I

    goto :goto_0
.end method

.method private loadAdvertisements(J)Ljava/util/List;
    .locals 5
    .param p1, "sponsorCampaignId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSponsorCampaignsDb()Lcom/genie_connect/android/db/access/DbSponsorCampaign;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/genie_connect/android/db/access/DbSponsorCampaign;->getSponsorCampaignBanners(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 139
    .local v1, "c":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;>;"
    if-eqz v1, :cond_2

    .line 145
    :goto_0
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    const-string v3, "bannerUrl"

    invoke-interface {v1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "bannerUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    new-instance v3, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    invoke-direct {v3, v1}, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 155
    .end local v0    # "bannerUrl":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 161
    :cond_2
    return-object v2
.end method

.method private showAdvertisement()V
    .locals 3

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getNextAdvertisement()Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    .line 197
    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mShouldAdViewBeVisible:Z

    .line 202
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->ensureVisible()V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCurrentAd:Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/advertisement/CampaignAdvertisement;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->normaliseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$1;

    invoke-direct {v2, p0, v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$1;-><init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    invoke-direct {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->startTimer()V

    .line 218
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertismentSwapTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertismentSwapTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 225
    :cond_0
    iget v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertisementCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertismentSwapTimer:Ljava/util/Timer;

    .line 230
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertismentSwapTimer:Ljava/util/Timer;

    new-instance v1, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$2;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$2;-><init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertismentSwapTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertismentSwapTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public adClick()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAllowOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerClickTask;-><init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$1;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 102
    :cond_0
    return-void
.end method

.method public ensureVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getOrientation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "advert_top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getAdView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mSlideUp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 402
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertismentSwapTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mAdvertismentSwapTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 110
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 111
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mIsValid:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->stopTimer()V

    .line 169
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mIsValid:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->startTimer()V

    .line 176
    :cond_0
    return-void
.end method

.method public setup()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getAdView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 182
    .local v0, "hasAdLayout":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mCampaignId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getOrientation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "advert_top"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->getAdView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_0
    new-instance v1, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$AdBannerSetupTask;-><init>(Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign$1;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 192
    :cond_1
    return-void

    .end local v0    # "hasAdLayout":Z
    :cond_2
    move v0, v1

    .line 180
    goto :goto_0
.end method

.method public shouldAdViewBeVisible()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/advertisement/AdvertisingCampaign;->mShouldAdViewBeVisible:Z

    return v0
.end method
