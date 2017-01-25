.class public Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;
.super Lcom/eventgenie/android/activities/base/GenieTabActivity;
.source "DashboardTabsActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final PERMISSION_REQUEST_COARSE_LOCATION:I = 0x7b


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAskForPermissionAgain:Z

.field private mGotMessages:Z

.field private mModuleWidgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieMobileModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSyncReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mGotMessages:Z

    .line 90
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$1;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$2;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$2;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->TAG:Ljava/lang/String;

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mAskForPermissionAgain:Z

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->updateBadgeCounts()V

    return-void
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mGotMessages:Z

    return p1
.end method

.method private addTab(Lcom/genie_connect/android/db/config/GenieMobileModule;Z)V
    .locals 9
    .param p1, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;
    .param p2, "isFirst"    # Z

    .prologue
    const/4 v8, 0x1

    .line 114
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->hasValidIntent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->uniquifyTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "tag":Ljava/lang/String;
    iget-object v6, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mModuleWidgets:Ljava/util/Map;

    invoke-interface {v6, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 124
    .local v4, "moduleExtras":Landroid/os/Bundle;
    const-string v6, "is_secure"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 125
    .local v2, "isSecure":Z
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v3

    .line 127
    .local v3, "isVistorAuthenticated":Z
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 128
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v6, "inside_tab"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string/jumbo v6, "target_intent"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_2
    if-eqz p2, :cond_3

    .line 134
    const-string v6, "is_home"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->buildBottomIndicator(Lcom/genie_connect/android/db/config/GenieMobileModule;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    .line 137
    :cond_3
    const-string v6, "is_home"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    const-string v6, "hide_home"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    const-string v6, "hide_advert"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string/jumbo v6, "window_title"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private jumpToMultiEventSelector()V
    .locals 6

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 154
    const-string v4, "open_multievent_selector"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 155
    .local v3, "showMultieventSelect":Z
    if-eqz v3, :cond_1

    .line 156
    iget-object v4, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mModules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 157
    .local v2, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 158
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    goto :goto_0

    .line 163
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    .end local v3    # "showMultieventSelect":Z
    :cond_1
    return-void
.end method

.method private populateTabHost()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 213
    iget-object v8, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mModuleWidgets:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 214
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v8

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getTabWidgets()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mModules:Ljava/util/List;

    .line 216
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    .line 220
    .local v7, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "currentTabTag":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 224
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->isShowFeatured()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 225
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "is_home"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v8, "tab_home"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_home:I

    sget v10, Lcom/eventgenie/android/R$string;->home_tab_title:I

    invoke-virtual {p0, v10}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->buildBottomIndicator(ILjava/lang/String;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 235
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x1

    .line 236
    .local v4, "isFirst":Z
    iget-object v8, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mModules:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 237
    .local v5, "m":Lcom/genie_connect/android/db/config/GenieMobileModule;
    invoke-direct {p0, v5, v4}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->addTab(Lcom/genie_connect/android/db/config/GenieMobileModule;Z)V

    .line 238
    const/4 v4, 0x0

    .line 239
    goto :goto_0

    .line 241
    .end local v5    # "m":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->requiresTabOverflow()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v8

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getTabOverflowWidgets()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$string;->more_tab_title:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNavIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v6

    .line 243
    .local v6, "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v8, "hide_home"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    const-string v8, "hide_advert"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    invoke-virtual {v6, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->putExtras(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {v6}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    const-string/jumbo v8, "tab_more"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_more:I

    sget v10, Lcom/eventgenie/android/R$string;->more_tab_title:I

    invoke-virtual {p0, v10}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->buildBottomIndicator(ILjava/lang/String;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 253
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v6    # "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_2
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 254
    invoke-virtual {v7, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 259
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->updateBadgeCounts()V

    .line 260
    return-void

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getDefaultTabTag()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getDefaultTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private requestPermission()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 329
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Request for the permissions ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_bluetooth_title:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 334
    sget v1, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_bluetooth_request_detail:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 335
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    new-instance v1, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$3;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$3;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 349
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 345
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Have ACCESS_COARSE_LOCATION permissions .. thus start the BLE service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateBadgeCounts()V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mViewHolders:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;-><init>(Lcom/eventgenie/android/activities/base/GenieTabActivity;Ljava/util/List;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 436
    return-void
.end method


# virtual methods
.method protected checkPermissionAndStartBluetooth()V
    .locals 2

    .prologue
    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": BLE permissions check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 302
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mAskForPermissionAgain:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->requestPermission()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Already got the permissions..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 314
    invoke-static {p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startServiceConditionally(Landroid/content/Context;)V

    goto :goto_0

    .line 318
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Below Android  M thus  start the BLE service normally."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 320
    invoke-static {p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startServiceConditionally(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    sput-boolean v5, Lcom/genie_connect/android/services/lss/LiveSyncService;->cleanAllNotifications:Z

    .line 175
    sget v4, Lcom/eventgenie/android/R$layout;->generic_tabs_bottom:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->setContentView(I)V

    .line 176
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    .line 178
    .local v3, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setVisibility(Z)V

    .line 179
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mModuleWidgets:Ljava/util/Map;

    .line 182
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->populateTabHost()V

    .line 184
    const-class v4, Lde/greenrobot/event/EventBus;

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/greenrobot/event/EventBus;

    invoke-virtual {v4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 189
    .local v2, "resoredData":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 190
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "resoredData":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mGotMessages:Z

    .line 193
    :cond_0
    invoke-virtual {v3, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 194
    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v0, "badgeFilter":Landroid/content/IntentFilter;
    const-string v4, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 204
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->updateBadgeCounts()V

    .line 206
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->jumpToMultiEventSelector()V

    .line 208
    new-instance v4, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;

    invoke-direct {v4}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;->downloadDataIfNecessary(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 209
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$menu;->home_dev:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 269
    :goto_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 267
    :cond_0
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$menu;->home:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 274
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 276
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    const-class v0, Lde/greenrobot/event/EventBus;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 278
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onDestroy()V

    .line 279
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": UpdateApplySuccessEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->finish()V

    .line 442
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->startActivity(Landroid/content/Intent;)V

    .line 443
    return-void
.end method

.method public onEventMainThread(Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->populateTabHost()V

    .line 168
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 385
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->onMenuItemClick(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;

    .line 392
    .local v0, "activity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;
    :try_start_0
    invoke-interface {v0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;->refresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "activity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;
    :goto_0
    return-void

    .line 393
    .restart local v0    # "activity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ NEWS: Error refreshing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    .end local v0    # "activity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 358
    packed-switch p1, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 360
    :pswitch_0
    aget v1, p3, v3

    if-nez v1, :cond_0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Permission Granted for BLE on Background"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 362
    invoke-static {p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startServiceConditionally(Landroid/content/Context;)V

    goto :goto_0

    .line 365
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Permission NOT Granted for BLE on Background"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 367
    iput-boolean v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mAskForPermissionAgain:Z

    .line 369
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_bluetooth_title:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 371
    sget v1, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_bluetooth_request_detail:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 372
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    new-instance v1, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$4;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$4;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onResume()V

    .line 284
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->checkPermissionAndStartBluetooth()V

    .line 285
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mGotMessages:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 8
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 408
    const-string/jumbo v4, "tab_home"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {p0, v4}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mModuleWidgets:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 412
    .local v3, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    if-eqz v3, :cond_0

    .line 413
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->hasValidIntent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 416
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 417
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 418
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "entity_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 419
    .local v0, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 420
    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0, v1}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    goto :goto_0

    .line 423
    .end local v0    # "id":J
    :cond_2
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    goto :goto_0
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_LEFT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 432
    return-void
.end method
