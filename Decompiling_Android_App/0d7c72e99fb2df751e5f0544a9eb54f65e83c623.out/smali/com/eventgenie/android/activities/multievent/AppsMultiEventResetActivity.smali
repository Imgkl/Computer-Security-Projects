.class public Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "AppsMultiEventResetActivity.java"

# interfaces
.implements Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/activities/base/GenieBaseActivity;",
        "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final DATAVERSION_TO_SWITCH_TO_EXTRA:Ljava/lang/String; = "extra_dataversion"

.field public static final MODE_INIT:I = 0x1

.field public static final MODE_REVERT:I = 0x0

.field public static final RESET_MODE_EXTRA:Ljava/lang/String; = "extra_reset_mode"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mDataVersion:Ljava/lang/String;

.field private mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

.field private mIvSplash:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSwichMode:I

.field private mTask:Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

.field private mTvDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mSwichMode:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mDataVersion:Ljava/lang/String;

    .line 229
    return-void
.end method

.method private doWhatYouHaveToDo(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    .line 87
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->finish()V

    .line 104
    const/4 v0, 0x0

    return v0

    .line 90
    :pswitch_0
    const-string v0, "^ MULTIRESET: task succeeded - reverting"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 91
    const-string v0, "Multievent Revert"

    invoke-static {p0, v0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->updateUrbanAirshipAlias(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->goHome(Z)V

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MULTIRESET: task succeeded - initialising to dataversion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mDataVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mDataVersion:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->initialiseData(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget v4, Lcom/eventgenie/android/R$layout;->activity_data_update_progress:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->setContentView(I)V

    .line 115
    sget v4, Lcom/eventgenie/android/R$id;->description:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTvDescription:Landroid/widget/TextView;

    .line 116
    sget v4, Lcom/eventgenie/android/R$id;->sync_progress:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 117
    sget v4, Lcom/eventgenie/android/R$id;->cancel_button:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mCancelButton:Landroid/widget/Button;

    .line 118
    sget v4, Lcom/eventgenie/android/R$id;->bg_image:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mIvSplash:Landroid/widget/ImageView;

    .line 125
    new-instance v4, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    const-string v7, ""

    invoke-direct {v4, p0, v7}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    .line 127
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 129
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTvDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 139
    const-string v4, "extra_reset_mode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mSwichMode:I

    .line 140
    const-string v4, "extra_dataversion"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mDataVersion:Ljava/lang/String;

    .line 143
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ MULTIRESET: Bundle null? "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MULTIRESET: Mode       ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mSwichMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MULTIRESET: Version    ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mDataVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 151
    .local v2, "scale":F
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    .line 152
    const/4 v1, 0x1

    .line 157
    .local v1, "lng":Z
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4, p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getLoadingScreenUrl(FZ)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mIvSplash:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 160
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    iget-object v5, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mIvSplash:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v5}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 167
    .end local v1    # "lng":Z
    .end local v2    # "scale":F
    .end local v3    # "url":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    iput-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTask:Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    .line 170
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTask:Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    if-nez v4, :cond_1

    .line 171
    new-instance v4, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    iget v5, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mSwichMode:I

    iget-object v6, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mDataVersion:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;-><init>(ILjava/lang/String;)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTask:Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    .line 174
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->startPendingTask(Landroid/view/View;)V

    .line 175
    return-void

    :cond_2
    move v4, v6

    .line 143
    goto/16 :goto_0

    .line 154
    .restart local v2    # "scale":F
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "lng":Z
    goto :goto_1

    .line 162
    .end local v1    # "lng":Z
    .end local v2    # "scale":F
    :cond_4
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mIvSplash:Landroid/widget/ImageView;

    sget v5, Lcom/eventgenie/android/R$drawable;->custom_splash:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTask:Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->disconnect()V

    .line 181
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTask:Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    return-object v0
.end method

.method public onTaskCompleted(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->onTaskCompleted(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public onTaskFailed(Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Exception;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MULTIRESET: task failed - Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->doWhatYouHaveToDo(I)Z

    move-result v0

    return v0
.end method

.method public varargs onTaskProgress([Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Integer;

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onTaskProgress([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->onTaskProgress([Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public onTaskStarted()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskSuccess(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 214
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->doWhatYouHaveToDo(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTaskSuccess(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->onTaskSuccess(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public startPendingTask(Landroid/view/View;)V
    .locals 1
    .param p1, "startButton"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTask:Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->connect(Landroid/content/Context;)V

    .line 221
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTask:Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;->mTask:Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 227
    :cond_0
    return-void
.end method
