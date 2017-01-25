.class public Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;
.super Lcom/eventgenie/android/activities/base/GenieAbcActivity;
.source "ActivitystreamActivity.java"

# interfaces
.implements Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;
.implements Landroid/support/v7/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;
    }
.end annotation


# static fields
.field public static final ACTIVITYSTREAM_POST_CREATED:Ljava/lang/String; = "ACTIVITYSTREAM_POST_CREATED"

.field public static final ACTIVITYSTREAM_POST_DELETED:Ljava/lang/String; = "ACTIVITYSTREAM_POST_DELETED"

.field public static final ACTIVITYSTREAM_POST_FAVOURITED:Ljava/lang/String; = "ACTIVITYSTREAM_POST_FAVOURITED"

.field public static final ACTIVITYSTREAM_POST_ID:Ljava/lang/String; = "ACTIVITYSTREAM_POST_ID"

.field public static final LOGIN_TO_POST:I = 0x159

.field public static final LOGIN_TO_VIEW_MY_POSTS:I = 0x15a

.field public static final LSS_FAILED_MSG:Ljava/lang/String; = "LSS_FAILED_MSG"

.field public static final OPEN_DETAIL:I = 0x157

.field public static final POST_REQUEST_CODE:I = 0x158


# instance fields
.field private fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

.field private fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;-><init>(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;)Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x15a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ onActivityResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". ResultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 90
    const/16 v0, 0x158

    if-ne p1, v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startPullToRefreshLiveSync(Z)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->switchToOnline()V

    goto :goto_0

    .line 98
    :cond_2
    const/16 v0, 0x157

    if-ne p1, v0, :cond_0

    .line 99
    const/16 v0, 0x234a

    if-eq p2, v0, :cond_3

    if-eqz p3, :cond_0

    const-string v0, "ACTIVITYSTREAM_POST_CREATED"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ACTIVITYSTREAM_POST_FAVOURITED"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ACTIVITYSTREAM_POST_DELETED"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startPullToRefreshLiveSync(Z)V

    .line 115
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->reloadData()V

    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->switchToOnline()V

    goto :goto_1

    .line 120
    :cond_5
    const/16 v0, 0x1771

    if-ne p2, v0, :cond_7

    .line 121
    if-ne p1, v4, :cond_6

    .line 122
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->refreshVisitorId()V

    .line 123
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startPullToRefreshLiveSync(Z)V

    .line 124
    const/4 v0, 0x2

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onNavigationItemSelected(IJ)Z

    goto :goto_0

    .line 126
    :cond_6
    const/16 v0, 0x159

    if-ne p1, v0, :cond_0

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onTweetClick(Landroid/view/View;)V

    goto :goto_0

    .line 130
    :cond_7
    const/16 v0, 0x1772

    if-ne p2, v0, :cond_0

    if-ne p1, v4, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 138
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    new-instance v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 141
    .local v1, "defaultOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    new-instance v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v3, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 144
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 146
    sget v3, Lcom/eventgenie/android/R$array;->activitystream_filter_list:I

    const v4, 0x1090009

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 151
    sget v3, Lcom/eventgenie/android/R$layout;->frame_layout_container:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->setContentView(I)V

    .line 152
    iget-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v3, :cond_0

    .line 153
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getActionbarCompat()Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 158
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v3, v4, p0}, Landroid/support/v7/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V

    .line 160
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "LOGIN_RESULT_AUTHENTICATED_MSG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "LOGIN_RESULT_CANCELLED_MSG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v3, "ACTIVITY_STREAM_REPORTED_NEEDS_REFRESH"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 164
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$menu;->activity_stream_main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onDestroy()V

    .line 176
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 4
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ActivitystreamActivity onNavigationItemSelected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->values()[Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    move-result-object v1

    .line 253
    .local v1, "values":[Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v1, p1

    sget-object v3, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->MINE:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v2, v3, :cond_1

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "is_home"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    const/16 v2, 0x15a

    invoke-virtual {p0, v0, v2}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 260
    :cond_1
    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setDisplayMode(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->setDisplayMode(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 185
    .local v0, "id":I
    sget v1, Lcom/eventgenie/android/R$id;->action_tweet:I

    if-ne v0, v1, :cond_1

    .line 186
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onTweetClick(Landroid/view/View;)V

    .line 191
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 188
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 196
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onResume()V

    .line 197
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-direct {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .line 199
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->container:I

    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 201
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    :cond_0
    return-void
.end method

.method public onTweetClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_home"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const/16 v1, 0x159

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x158

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public openActivityStreamDetailsActivity(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "DETAIL_ID_EXTRA"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 244
    const/16 v1, 0x157

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    return-void
.end method

.method public switchToOffline()V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 224
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lcom/eventgenie/android/R$id;->container:I

    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 225
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 226
    return-void
.end method

.method public switchToOnline()V
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 235
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lcom/eventgenie/android/R$id;->container:I

    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 236
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 237
    return-void
.end method
