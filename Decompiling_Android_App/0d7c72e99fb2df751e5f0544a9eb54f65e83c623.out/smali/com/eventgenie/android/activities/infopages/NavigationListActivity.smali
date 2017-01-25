.class public Lcom/eventgenie/android/activities/infopages/NavigationListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "NavigationListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final CONFIG_EXTRA:Ljava/lang/String; = "config"

.field public static final HEADER_TEXT_EXTRA:Ljava/lang/String; = "header_text"

.field public static final WIDGET_TYPE:Ljava/lang/String; = "widget_type"


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mHeaderText:Ljava/lang/String;

.field private mHideAdvert:Z

.field private mInfoPageName:Ljava/lang/String;

.field private final mLssReceiver:Landroid/content/BroadcastReceiver;

.field private mModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetType:Lcom/genie_connect/android/db/config/GenieWidget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mHideAdvert:Z

    .line 73
    new-instance v0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity$1;-><init>(Lcom/eventgenie/android/activities/infopages/NavigationListActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/infopages/NavigationListActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/infopages/NavigationListActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method public isMyEvent()Z
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    iget-object v1, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mWidgetType:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget-object v4, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->GENERIC_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v4, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "config"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mModules:Ljava/util/ArrayList;

    .line 97
    const-string v4, "header_text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mHeaderText:Ljava/lang/String;

    .line 98
    const-string/jumbo v4, "widget_type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/db/config/GenieWidget;

    iput-object v4, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mWidgetType:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 100
    const-string/jumbo v4, "window_title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mInfoPageName:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->isMyEvent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyEvent()Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v4, v5, v7}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 109
    :goto_0
    new-instance v4, Lcom/eventgenie/android/adapters/other/MyEventAdapter;

    iget-object v5, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mModules:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/eventgenie/android/adapters/other/MyEventAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 110
    iget-object v4, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v4, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mHeaderText:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 114
    sget v4, Lcom/eventgenie/android/R$id;->list_header:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 115
    .local v2, "h":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mHeaderText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    .end local v2    # "h":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getEmailMyEventMode()Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->isShareMyEventEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 124
    .local v3, "isShareMyEventEnabled":Z
    const-string v4, "hide_advert"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mHideAdvert:Z

    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->isMyEvent()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v4, v5, v7}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->isMyEvent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyEvent()Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 136
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v1, "badgeFilter":Landroid/content/IntentFilter;
    const-string v4, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v4, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 140
    return-void

    .line 106
    .end local v1    # "badgeFilter":Landroid/content/IntentFilter;
    .end local v3    # "isShareMyEventEnabled":Z
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mInfoPageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 132
    .restart local v3    # "isShareMyEventEnabled":Z
    :cond_3
    invoke-virtual {p0, v8, v8}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 156
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onDestroy()V

    .line 158
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 151
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mModules:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/GenieMobileModule;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 152
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->checkForUpdates()V

    .line 163
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 164
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveDataFull(Landroid/content/Context;Landroid/os/Handler;)V

    .line 165
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method protected showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/genie_connect/android/db/config/BaseConfig;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mHideAdvert:Z

    if-nez v0, :cond_0

    .line 145
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 147
    :cond_0
    return-void
.end method
