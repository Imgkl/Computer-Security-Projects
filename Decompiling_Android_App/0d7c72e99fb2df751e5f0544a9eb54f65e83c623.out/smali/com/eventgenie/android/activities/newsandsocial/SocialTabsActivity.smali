.class public Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;
.super Lcom/eventgenie/android/activities/base/GenieTabActivity;
.source "SocialTabsActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;-><init>()V

    return-void
.end method

.method private addTab(Lcom/genie_connect/android/db/config/GenieMobileModule;)V
    .locals 12
    .param p1, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 61
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->hasValidIntent()Z

    move-result v7

    if-nez v7, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->uniquifyTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "tag":Ljava/lang/String;
    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->mModuleWidgets:Ljava/util/Map;

    invoke-interface {v7, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ SocialTabsActivity add to mModuleWidgets:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 73
    .local v4, "moduleExtras":Landroid/os/Bundle;
    const-string v7, "is_secure"

    invoke-virtual {v4, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 74
    .local v2, "isSecure":Z
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v3

    .line 76
    .local v3, "isVistorAuthenticated":Z
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 77
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v7, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v7, "inside_tab"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    const-string/jumbo v7, "target_intent"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_2
    const-string v7, "hide_home"

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string v7, "hide_advert"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    const-string/jumbo v7, "window_title"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    .line 89
    .local v5, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getNamespaceToUseForIcons()J

    move-result-wide v10

    sget-object v9, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->TABS:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {p1, p0, v10, v11, v9}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getIcon(Landroid/content/Context;JLcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v9

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->buildBottomIndicator(ILjava/lang/String;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget v7, Lcom/eventgenie/android/R$layout;->generic_tabs_bottom:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v7

    invoke-interface {v7, v10}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setVisibility(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    .line 104
    .local v6, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {v6, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 107
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->mModuleWidgets:Ljava/util/Map;

    .line 112
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v7

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNewsAndSocial()Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->getTabWidgets()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, p0, v8}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    .line 116
    .local v4, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/db/config/GenieMobileModule;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNewsAndSocial()Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->showFeatured()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 117
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "is_home"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    const-string/jumbo v7, "window_title"

    sget v8, Lcom/eventgenie/android/R$string;->news_title:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v7, "tab_home"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_featured:I

    sget v9, Lcom/eventgenie/android/R$string;->tab_featured:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->buildBottomIndicator(ILjava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 127
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 128
    .local v3, "m":Lcom/genie_connect/android/db/config/GenieMobileModule;
    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->addTab(Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    goto :goto_0

    .line 131
    .end local v3    # "m":Lcom/genie_connect/android/db/config/GenieMobileModule;
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNewsAndSocial()Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->requiresTabOverflow()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v7

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNewsAndSocial()Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->getTabOverflowWidgets()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, p0, v8}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModules(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->more_tab_title:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNavIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    .line 137
    .local v5, "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v7, "hide_home"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    const-string v7, "hide_advert"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    invoke-virtual {v5, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->putExtras(Landroid/os/Bundle;)V

    .line 141
    const-string/jumbo v7, "tab_more"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_more:I

    sget v9, Lcom/eventgenie/android/R$string;->more_tab_title:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->buildBottomIndicator(ILjava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 146
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v5    # "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getDefaultTabTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getDefaultTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 150
    :cond_3
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 8
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string/jumbo v4, "tab_home"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {p0, v4}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->mModuleWidgets:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 158
    .local v3, "module":Lcom/genie_connect/android/db/config/GenieMobileModule;
    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->hasValidIntent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getNavigationIntent()Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 163
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 165
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "entity_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 166
    .local v0, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 167
    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0, v1}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    goto :goto_0

    .line 170
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
    .line 178
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/SocialTabsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_LEFT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 179
    return-void
.end method
