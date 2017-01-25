.class public Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "DataUpdateWaitActivity.java"


# static fields
.field private static final ICICLE_PROGRESS_CURRENT:Ljava/lang/String; = "icicle_progress_current"

.field private static final ICICLE_PROGRESS_DESC:Ljava/lang/String; = "icicle_progress_description"

.field private static final ICICLE_PROGRESS_MAX:Ljava/lang/String; = "icicle_progress_max"

.field private static final ICICLE_SERVICE_STARTED:Ljava/lang/String; = "icicle_service_started"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsServiceStarted:Z

.field private mIvSplash:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTvDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIsServiceStarted:Z

    .line 152
    new-instance v0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$1;-><init>(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mTvDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)Lde/greenrobot/event/EventBus;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method private closeAll()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 248
    invoke-static {p0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;)V

    .line 249
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->finish()V

    .line 250
    return-void
.end method


# virtual methods
.method public displaySimpleErrorDialog()V
    .locals 4

    .prologue
    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "message_extra"

    sget v3, Lcom/eventgenie/android/R$string;->data_seeding_download_error:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "reportable_extra"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method protected doSecureCheck()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 202
    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->cancelDataSyncService(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 82
    sget v0, Lcom/eventgenie/android/R$layout;->activity_data_update_progress:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->setContentView(I)V

    .line 83
    sget v0, Lcom/eventgenie/android/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mTvDescription:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/eventgenie/android/R$id;->sync_progress:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 85
    sget v0, Lcom/eventgenie/android/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mCancelButton:Landroid/widget/Button;

    .line 86
    sget v0, Lcom/eventgenie/android/R$id;->bg_image:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIvSplash:Landroid/widget/ImageView;

    .line 87
    new-instance v0, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    const-string v12, ""

    invoke-direct {v0, p0, v12}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v12, "com.eventgenie.android.BROADCAST_SYNC_PROGRESS"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v12, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string v0, "icicle_service_started"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIsServiceStarted:Z

    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v12, "icicle_progress_max"

    const/16 v13, 0x64

    invoke-virtual {p1, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v12, "icicle_progress_current"

    invoke-virtual {p1, v12, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    const-string v0, "icicle_progress_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "desc":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mTvDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .end local v7    # "desc":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v10, "scale":F
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isScreenLong()Z

    move-result v8

    .line 108
    .local v8, "lng":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v0

    invoke-virtual {v0, v10, v8}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getLoadingScreenUrl(FZ)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIvSplash:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    iget-object v12, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIvSplash:Landroid/widget/ImageView;

    invoke-virtual {v0, v11, v12}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 116
    .end local v8    # "lng":Z
    .end local v10    # "scale":F
    .end local v11    # "url":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 117
    .local v6, "b":Landroid/os/Bundle;
    if-eqz v6, :cond_2

    .line 118
    const-string v0, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v12, 0x2

    invoke-virtual {v6, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, "action":I
    const-string v0, "com.eventgenie.android.EXTRA_VERSION"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "newVersion":Ljava/lang/String;
    const-string v0, "com.eventgenie.android.IS_MULTI_EVENT_SELECT"

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 122
    .local v3, "isMultiEventSelect":Z
    if-nez v3, :cond_1

    .line 123
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mCancelButton:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    :cond_1
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIsServiceStarted:Z

    if-nez v0, :cond_5

    .line 127
    const-string v0, "com.eventgenie.android.EXTRA_ENTITIES_TO_INITIALISE"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    .line 128
    .local v9, "objectArray":[Ljava/lang/Object;
    invoke-static {v9}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromArray([Ljava/lang/Object;)[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v4

    .line 130
    .local v4, "entitiesToInit":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ DATAUPDATEACTIVITY: Entities   :"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->toString([Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ DATAUPDATEACTIVITY: Action     :"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ DATAUPDATEACTIVITY: Version    :"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ DATAUPDATEACTIVITY: MultiEvent :"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    move-object v0, p0

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;ILjava/lang/String;Z[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIsServiceStarted:Z

    .line 141
    .end local v1    # "action":I
    .end local v2    # "newVersion":Ljava/lang/String;
    .end local v3    # "isMultiEventSelect":Z
    .end local v4    # "entitiesToInit":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v9    # "objectArray":[Ljava/lang/Object;
    :cond_2
    :goto_2
    return-void

    .line 101
    .end local v6    # "b":Landroid/os/Bundle;
    .restart local v7    # "desc":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mTvDescription:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 113
    .end local v7    # "desc":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIvSplash:Landroid/widget/ImageView;

    sget v12, Lcom/eventgenie/android/R$drawable;->custom_splash:I

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 138
    .restart local v1    # "action":I
    .restart local v2    # "newVersion":Ljava/lang/String;
    .restart local v3    # "isMultiEventSelect":Z
    .restart local v6    # "b":Landroid/os/Bundle;
    :cond_5
    const-string v0, "^ DATAUPDATEACTIVITY: Service is running..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 145
    const-string v0, "^ DATAUPDATEACTIVITY: onDestroy "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->stopThread()V

    .line 148
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 149
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 150
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->displaySimpleErrorDialog()V

    .line 240
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->closeAll()V

    .line 241
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->closeAll()V

    .line 236
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onPause()V

    .line 214
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 208
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 209
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    const-string v0, "icicle_service_started"

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mIsServiceStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "icicle_progress_current"

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v0, "icicle_progress_max"

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v0, "icicle_progress_description"

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->mTvDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method
