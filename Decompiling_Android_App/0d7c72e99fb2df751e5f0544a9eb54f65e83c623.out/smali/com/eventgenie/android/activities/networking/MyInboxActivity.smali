.class public Lcom/eventgenie/android/activities/networking/MyInboxActivity;
.super Lcom/eventgenie/android/activities/base/GenieTabActivity;
.source "MyInboxActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v6, Lcom/eventgenie/android/R$layout;->generic_tabs_top:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v6, v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 55
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    .line 56
    .local v5, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyInbox()Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;

    move-result-object v1

    .line 62
    .local v1, "cfg":Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v6

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/MyInboxConfig;->isInAppMessagingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/eventgenie/android/activities/networking/MessageListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "filter_type"

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v6, "tab_alerts"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->messages_tab_alerts:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->buildTopNarrowIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 74
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/eventgenie/android/activities/networking/MessageListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v6, "filter_type"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v6, "tab_inbox"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->messages_tab_inbox:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->buildTopNarrowIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 83
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/eventgenie/android/activities/networking/MessageListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v6, "filter_type"

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v6, "tab_sent"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->messages_tab_sent:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->buildTopNarrowIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    .line 94
    .local v2, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v6

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUserId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/genie_connect/android/db/access/Udm;->messagesGetForInbox(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 95
    .local v4, "myMessages":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 96
    invoke-virtual {v5, v10}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 98
    :cond_0
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->close(Landroid/database/Cursor;)V

    .line 107
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v4    # "myMessages":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 100
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/eventgenie/android/activities/networking/MessageListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "tab_inbox"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->messages_tab_inbox:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->buildTopNarrowIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 105
    const v6, 0x1020013

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/networking/MessageListActivity;

    .line 112
    .local v0, "activity":Lcom/eventgenie/android/activities/networking/MessageListActivity;
    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->refreshMessages()V

    .line 117
    .end local v0    # "activity":Lcom/eventgenie/android/activities/networking/MessageListActivity;
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/MyInboxActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 122
    return-void
.end method
