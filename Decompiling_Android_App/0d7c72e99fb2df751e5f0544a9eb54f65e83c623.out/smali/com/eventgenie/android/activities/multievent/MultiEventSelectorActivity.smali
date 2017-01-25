.class public Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "MultiEventSelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mHelper:Lcom/eventgenie/android/utils/help/MultiEventHelper;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private final mLssReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewHlper:Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$1;-><init>(Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$2;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$2;-><init>(Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;)Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    return-object v0
.end method

.method private loadContent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-interface {v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->isMarkedAsHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->showIndicator(Z)V

    .line 104
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const-string v3, "apprefs"

    aput-object v3, v2, v5

    invoke-static {p0, v2}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 108
    :cond_0
    new-instance v2, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 112
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->setupTabs()V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, "ifilter":Landroid/content/IntentFilter;
    const-string v2, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 118
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v1, "syncFilter":Landroid/content/IntentFilter;
    const-string v2, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected isBackgroundUpdateApplicable()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 129
    sget v0, Lcom/eventgenie/android/R$layout;->generic_viewpagerindicator:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->setContentView(I)V

    .line 130
    new-instance v0, Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mHelper:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    .line 132
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mHelper:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getParentMultiEventSelectorConfig()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 134
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->isMarkedAsHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SETTINGS:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MULTI: ishome= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->isMarkedAsHomeActivity()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->loadContent()V

    .line 149
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->showAdvert()V

    .line 150
    return-void

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->loadContent()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 154
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewHlper:Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewHlper:Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->clear()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 160
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mUpdatesManager:Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {v0}, Lcom/genie_connect/android/services/UpdatesManager;->isBackgroundUpdateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mUpdatesManager:Lcom/genie_connect/android/services/UpdatesManager;

    invoke-virtual {v0, p0}, Lcom/genie_connect/android/services/UpdatesManager;->applyBackgroundUpdate(Landroid/app/Activity;)V

    .line 297
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/eventgenie/android/R$id;->tagv2_row:I

    if-ne v2, v3, :cond_0

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/others/categories/TagListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "associated_entity_name"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 169
    const-string v2, "entity_id"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v2, "tagsv2"

    invoke-static {p0, v2, p4, p5}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 172
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 176
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onLoginSuccess()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->loadContent()V

    .line 181
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->showIndicator(Z)V

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "apprefs"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 198
    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->showIndicator(Z)V

    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "apprefs"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onResume()V

    .line 204
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v1, "search_target"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 211
    const/4 v1, 0x1

    return v1
.end method

.method public onSettingsClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    const-class v0, Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    return-void
.end method

.method protected setupTabs()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 219
    const-string v4, "^ MULTI: Setting up the Tabs..."

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    .line 222
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewHlper:Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

    if-nez v4, :cond_3

    .line 223
    new-instance v4, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-direct {v4, p0, v6, v7}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;J)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewHlper:Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

    .line 230
    :goto_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v4}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->clear()V

    .line 233
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mHelper:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getParentMultiEventSelectorConfig()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->getAll()Lcom/genie_connect/android/db/config/misc/CategoryFilter;

    move-result-object v1

    .line 234
    .local v1, "filter":Lcom/genie_connect/android/db/config/misc/CategoryFilter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MULTI: Show All: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewHlper:Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

    invoke-virtual {v4, v8}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->addAppsListView(I)Landroid/view/View;

    move-result-object v3

    .line 237
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 241
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mHelper:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getParentMultiEventSelectorConfig()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->getUpcoming()Lcom/genie_connect/android/db/config/misc/CategoryFilter;

    move-result-object v1

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MULTI: Show Upcomming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewHlper:Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->addAppsListView(I)Landroid/view/View;

    move-result-object v3

    .line 245
    .restart local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 249
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mHelper:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getParentMultiEventSelectorConfig()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->getTagFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 250
    .local v0, "exFilter":Lcom/genie_connect/android/db/config/misc/TagFilter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MULTI: Show \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getTag()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewHlper:Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getTag()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->addAppsListView(Ljava/lang/Long;)Landroid/view/View;

    move-result-object v3

    .line 253
    .restart local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MULTI: addAppsListView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/TagFilter;->getTag()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    .end local v0    # "exFilter":Lcom/genie_connect/android/db/config/misc/TagFilter;
    .end local v1    # "filter":Lcom/genie_connect/android/db/config/misc/CategoryFilter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewHlper:Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;

    invoke-virtual {v4}, Lcom/eventgenie/android/fragments/utils/MultiEventViewHelper;->clear()V

    goto/16 :goto_0

    .line 258
    .restart local v1    # "filter":Lcom/genie_connect/android/db/config/misc/CategoryFilter;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 260
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    new-instance v5, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$3;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$3;-><init>(Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;)V

    invoke-virtual {v4, v5}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 279
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 280
    iget-object v4, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v4}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 281
    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->showIndicator(Z)V

    .line 282
    return-void
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 286
    return-void
.end method
