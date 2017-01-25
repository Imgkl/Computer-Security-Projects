.class public Lcom/eventgenie/android/activities/others/LoginActivity;
.super Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static final COOKIE_NAME:Ljava/lang/String; = "com.lanyon.mobile.lm_sso_data="

.field public static final INSIDE_TAB_EXTRA:Ljava/lang/String; = "inside_tab"

.field private static final LOGIN_ACTIVITY_DATA_UPDATE:I = 0x1

.field public static final LOGIN_REQUEST_ACTIVITY:I = 0x1389

.field public static final LOGIN_REQUEST_FUNCTION:I = 0x138a

.field public static final LOGIN_RESULT_AUTHENTICATED:I = 0x1771

.field public static final LOGIN_RESULT_AUTHENTICATED_MSG:Ljava/lang/String; = "LOGIN_RESULT_AUTHENTICATED_MSG"

.field public static final LOGIN_RESULT_CANCELLED:I = 0x1772

.field public static final LOGIN_RESULT_CANCELLED_MSG:Ljava/lang/String; = "LOGIN_RESULT_CANCELLED_MSG"

.field public static final LOGIN_TYPE_CMS_USER:I = 0x1b59

.field public static final LOGIN_TYPE_EXTRA:Ljava/lang/String; = "login_type"

.field public static final LOGIN_TYPE_VISITOR:I = 0x1b5a

.field public static final LOGTAG:Ljava/lang/String; = "^ LOGIN: "

.field public static final TARGET_TAB_EXTRA:Ljava/lang/String; = "target_intent"


# instance fields
.field private mBtnLogin:Landroid/widget/Button;

.field private mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

.field private mEditPassword:Landroid/widget/EditText;

.field private mEditUsername:Landroid/widget/EditText;

.field private mEventBus:Lde/greenrobot/event/EventBus;

.field private mInsideTab:Z

.field private mIsForHomeActivity:Z

.field private mLoginType:I

.field protected final mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

.field private mServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/TextItemPair",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mServerSpinner:Landroid/widget/Spinner;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mTargetTab:Ljava/lang/String;

.field private mTvForgotPassword:Landroid/widget/TextView;

.field public mUserNotificationManager:Lcom/eventgenie/android/utils/managers/UserNotificationManager;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;-><init>()V

    .line 137
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mInsideTab:Z

    .line 138
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mIsForHomeActivity:Z

    .line 140
    const/16 v0, 0x1b5a

    iput v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    .line 715
    new-instance v0, Lcom/eventgenie/android/activities/others/LoginActivity$5;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/LoginActivity$5;-><init>(Lcom/eventgenie/android/activities/others/LoginActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/LoginActivity;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/LoginActivity;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/LoginActivity;Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/others/LoginActivity;->doSuccessfulAuthentication(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/others/LoginActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/LoginActivity;

    .prologue
    .line 112
    iget v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I

    return v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/others/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/LoginActivity;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->doRedirect()V

    return-void
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/others/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/LoginActivity;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/others/LoginActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/LoginActivity;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mBtnLogin:Landroid/widget/Button;

    return-object v0
.end method

.method private doRedirect()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v4, v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 158
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v4, v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 160
    iget-boolean v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mInsideTab:Z

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    .line 162
    .local v3, "parentActivity":Lcom/eventgenie/android/activities/base/GenieTabActivity;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "default_tab_tag"

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mTargetTab:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/LoginActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 175
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "parentActivity":Lcom/eventgenie/android/activities/base/GenieTabActivity;
    :goto_0
    return-void

    .line 169
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 170
    .restart local v2    # "intent":Landroid/content/Intent;
    const/16 v4, 0x1771

    invoke-virtual {p0, v4, v2}, Lcom/eventgenie/android/activities/others/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v4, "LOGIN_RESULT_AUTHENTICATED_MSG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 173
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->finish()V

    goto :goto_0
.end method

.method private doSuccessfulAuthentication(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "visitor"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .prologue
    const/4 v4, 0x1

    .line 430
    new-instance v1, Lcom/genie_connect/android/net/container/LoginCredentials;

    invoke-direct {v1, p1, p2, p3}, Lcom/genie_connect/android/net/container/LoginCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    .line 435
    .local v1, "loginCredentials":Lcom/genie_connect/android/net/container/LoginCredentials;
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->setVisitorCredentials(Lcom/genie_connect/android/net/container/LoginCredentials;)V

    .line 437
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->buildAclManager()V

    .line 438
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->clearCaches()V

    .line 439
    invoke-static {p0, v4}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyLoginStateChange(Landroid/content/Context;Z)Z

    .line 440
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveDataFull(Landroid/content/Context;Landroid/os/Handler;)V

    .line 441
    const-string v2, "Login"

    invoke-static {p0, v2}, Lcom/eventgenie/android/push/UrbanAirshipControl;->updateUrbanAirshipAlias(Landroid/content/Context;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v2

    const-class v3, Lde/greenrobot/event/EventBus;

    invoke-virtual {v2, v3}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    .line 444
    .local v0, "eventBus":Lde/greenrobot/event/EventBus;
    new-instance v2, Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;

    invoke-direct {v2}, Lcom/eventgenie/android/eventbus/events/LoginLogoutEvent;-><init>()V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 446
    sput-boolean v4, Lcom/genie_connect/android/services/lss/LiveSyncService;->cleanAllNotifications:Z

    .line 448
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->doRedirect()V

    .line 450
    return-void
.end method

.method private getServerIndex(I)I
    .locals 2
    .param p1, "serverValue"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/container/TextItemPair;

    invoke-virtual {v1}, Lcom/eventgenie/android/container/TextItemPair;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 183
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 178
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isToDisplaySsoLogin()Z
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getSsoConfig()Lcom/genie_connect/android/db/config/SsoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SsoConfig;->getSsoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getSsoConfig()Lcom/genie_connect/android/db/config/SsoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SsoConfig;->getSsoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I

    const/16 v1, 0x1b5a

    if-ne v0, v1, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateServerList()V
    .locals 7

    .prologue
    .line 534
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerList:Ljava/util/List;

    .line 539
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getServerListOrder()[I

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 540
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getServerListOrder()[I

    move-result-object v4

    aget v2, v4, v1

    .line 541
    .local v2, "id":I
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/genie_connect/android/net/ReachabilityManager;->getServerName(I)Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerList:Ljava/util/List;

    new-instance v5, Lcom/eventgenie/android/container/TextItemPair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/eventgenie/android/container/TextItemPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    .end local v2    # "id":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerList:Ljava/util/List;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 548
    .local v0, "adapter":Landroid/widget/ArrayAdapter;
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 550
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 551
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerSpinner:Landroid/widget/Spinner;

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/net/ReachabilityManager;->getSelectedServerSet()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->getServerIndex(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 553
    return-void
.end method

.method private setOptionalPartsVisibility()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 627
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mIsForHomeActivity:Z

    if-eqz v5, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->MULTIEVENT_RETURN:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 631
    :cond_0
    sget v5, Lcom/eventgenie/android/R$id;->headerLogin:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 632
    .local v2, "headerLogin":Landroid/view/View;
    sget v5, Lcom/eventgenie/android/R$id;->headerGuestLogin:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 634
    .local v1, "headerGuestLogin":Landroid/view/View;
    invoke-static {v2, v9, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 635
    invoke-static {v1, v9, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 637
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_LOGIN_TITLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;Ljava/lang/String;Landroid/app/Activity;)V

    .line 639
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_REGISTER_TITLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;Ljava/lang/String;Landroid/app/Activity;)V

    .line 642
    iget v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I

    packed-switch v5, :pswitch_data_0

    .line 677
    :cond_1
    :goto_0
    return-void

    .line 644
    :pswitch_0
    sget v5, Lcom/eventgenie/android/R$id;->server_selection_container:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 645
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->populateServerList()V

    goto :goto_0

    .line 648
    :pswitch_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->isContinueAsGuestEnabled()Z

    move-result v0

    .line 649
    .local v0, "guestEnabled":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->isPleaseRegisterEnabled()Z

    move-result v3

    .line 651
    .local v3, "pleaseRegisterEnabled":Z
    iget-boolean v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mIsForHomeActivity:Z

    if-eqz v5, :cond_5

    .line 652
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    .line 653
    :cond_2
    invoke-static {v2, v8, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 654
    invoke-static {v1, v8, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 657
    :cond_3
    if-eqz v0, :cond_4

    .line 658
    sget v5, Lcom/eventgenie/android/R$id;->section_continoueAsGuest:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 659
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 662
    .end local v4    # "v":Landroid/view/View;
    :cond_4
    if-eqz v3, :cond_1

    .line 663
    sget v5, Lcom/eventgenie/android/R$id;->section_pleaseRegister:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 664
    .restart local v4    # "v":Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 667
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    if-eqz v3, :cond_1

    .line 668
    invoke-static {v2, v8, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 669
    invoke-static {v1, v8, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 671
    sget v5, Lcom/eventgenie/android/R$id;->section_pleaseRegister:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 672
    .restart local v4    # "v":Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x1b59
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTextViewHint(ILjava/lang/String;)V
    .locals 2
    .param p1, "tvId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 682
    .local v0, "t":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 684
    .end local v0    # "t":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setTextViewLabel(ILjava/lang/String;)V
    .locals 2
    .param p1, "tvId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 687
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 689
    .local v0, "t":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    .end local v0    # "t":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private validateInput()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 694
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "uname":Ljava/lang/String;
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "pass":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 698
    sget v3, Lcom/eventgenie/android/R$string;->login_invalid_username:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 701
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 712
    :goto_0
    return v2

    .line 705
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 706
    sget v3, Lcom/eventgenie/android/R$string;->login_invalid_password:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 709
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 712
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 188
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x1772

    invoke-virtual {p0, v2, v1}, Lcom/eventgenie/android/activities/others/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v2, "LOGIN_RESULT_CANCELLED_MSG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 192
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->finish()V

    .line 193
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 213
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const-string v5, "^ LoginActivity: onCreate"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v5

    const-class v6, Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    invoke-virtual {v5, v6}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    iput-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mUserNotificationManager:Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    .line 218
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mUserNotificationManager:Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    invoke-virtual {v5, p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->updateActivityContext(Landroid/app/Activity;)V

    .line 220
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v5

    const-class v6, Lde/greenrobot/event/EventBus;

    invoke-virtual {v5, v6}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/greenrobot/event/EventBus;

    iput-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 222
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v5, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 224
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/eventgenie/android/activities/others/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v3

    .line 229
    .local v3, "proofer":Z
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 231
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 232
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v5, "target_intent"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mTargetTab:Ljava/lang/String;

    .line 234
    const-string v5, "inside_tab"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mInsideTab:Z

    .line 235
    const-string v5, "login_type"

    const/16 v6, 0x1b5a

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I

    .line 236
    const-string v5, "is_home"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mIsForHomeActivity:Z

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->isToDisplaySsoLogin()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    sget v5, Lcom/eventgenie/android/R$layout;->activity_login_sso:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->setContentView(I)V

    .line 242
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/SetupConfig;->getSsoConfig()Lcom/genie_connect/android/db/config/SsoConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/SsoConfig;->getSsoUrl()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "ssoUrl":Ljava/lang/String;
    sget v5, Lcom/eventgenie/android/R$id;->login_webview:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    .line 246
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 247
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 249
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 250
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 251
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 252
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 254
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/eventgenie/android/activities/others/LoginActivity$1;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/activities/others/LoginActivity$1;-><init>(Lcom/eventgenie/android/activities/others/LoginActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 351
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-static {p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getChromeBrowserUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 354
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 363
    .end local v4    # "ssoUrl":Ljava/lang/String;
    :goto_0
    iget v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I

    const/16 v6, 0x1b59

    if-ne v5, v6, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$color;->lanyon_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setBackgroundColor(I)V

    .line 365
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$drawable;->proofer_screen_navbar_logo:I

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setLogo(I)V

    .line 366
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showRightLogo()V

    .line 379
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ Login: is from home? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mIsForHomeActivity:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 381
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->advertBarProcess(Landroid/app/Activity;)V

    .line 383
    return-void

    .line 358
    :cond_1
    sget v5, Lcom/eventgenie/android/R$layout;->activity_login:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->setContentView(I)V

    .line 360
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->populateUI()V

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasNavBarLogoArtwork()Z

    move-result v2

    .line 370
    .local v2, "hasNavBarLogo":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 372
    :cond_3
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$drawable;->custom_logo:I

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setLogo(I)V

    goto :goto_1

    .line 375
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 725
    const-string v0, "^ LoginActivity: onDestroy()"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 728
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->onDestroy()V

    .line 729
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpToDateEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpToDateEvent;

    .prologue
    .line 746
    const-string v0, "^ LoginActivity: DataUpToDateEvent "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;

    .prologue
    const/4 v5, 0x1

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ LoginActivity: DataUpdateAvailableEvent triggered with the newVersion =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mUserNotificationManager:Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showBlockingProgressBar(Landroid/app/Activity;)V

    .line 735
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    move v3, v5

    .line 736
    .local v3, "isMultiEvent":Z
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;ILjava/lang/String;Z[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)V

    .line 738
    return-void

    .line 735
    .end local v3    # "isMultiEvent":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ LoginActivity: DataUpdateWaitActivityCloseEvent Action= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateWaitActivityCloseEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;

    .prologue
    const/4 v5, 0x1

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ LoginActivity: UpdateApplyErrorEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMultiEventSelector()Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    move v3, v5

    .line 772
    .local v3, "isMultiEvent":Z
    :goto_0
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;

    invoke-direct {v0}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    invoke-virtual {v0, p0, v8, v9}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;->getFullEvent(Landroid/app/Activity;J)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    move-result-object v6

    .line 773
    .local v6, "fullEvent":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getLiveVersion()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "liveDataVersion":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;ILjava/lang/String;Z[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)V

    .line 778
    return-void

    .line 770
    .end local v2    # "liveDataVersion":Ljava/lang/String;
    .end local v3    # "isMultiEvent":Z
    .end local v6    # "fullEvent":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;

    .prologue
    .line 751
    const-string v0, "^ LoginActivity: got  UpdateApplySuccessEvent "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 756
    new-instance v0, Lcom/eventgenie/android/activities/others/LoginActivity$6;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/LoginActivity$6;-><init>(Lcom/eventgenie/android/activities/others/LoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 765
    return-void
.end method

.method public onForgotPasswordClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->isForgottenPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 399
    :goto_0
    return-void

    .line 394
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/multievent/HolderPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "extra_html"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Label;->FORGOTTEN_PASSWORD_DISABLED_MESSAGE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->startActivityCarefully(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onGuestLoginClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 402
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->setGuestModeEnabled(Z)V

    .line 403
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/acl/Acl;->buildAclManager()V

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eventgenie.android.USER_LOGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 406
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->doRedirect()V

    .line 407
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
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
    .line 412
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/container/TextItemPair;

    invoke-virtual {v1}, Lcom/eventgenie/android/container/TextItemPair;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 414
    .local v0, "i":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ LOGIN: Switching server to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 417
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/genie_connect/android/net/ReachabilityManager;->useServerSet(Landroid/content/Context;I)V

    .line 419
    :cond_0
    return-void
.end method

.method public onLoginClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    .line 455
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->validateInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "uname":Ljava/lang/String;
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, "pass":Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/genie_connect/android/net/NetworkHelper;->generateBasicAuthString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "auth_string":Ljava/lang/String;
    const/4 v4, 0x0

    .line 469
    .local v4, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v0, p0, v12}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    .line 470
    .local v9, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    iget v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I

    const/16 v1, 0x1b5a

    if-ne v0, v1, :cond_2

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v10

    .line 472
    .local v10, "namespace":J
    :goto_1
    iget v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I

    packed-switch v0, :pswitch_data_0

    .line 481
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    move-object v8, p1

    .line 482
    check-cast v8, Landroid/widget/Button;

    .line 483
    .local v8, "b":Landroid/widget/Button;
    invoke-virtual {v8, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 485
    new-instance v0, Lcom/eventgenie/android/activities/others/LoginActivity$2;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/eventgenie/android/activities/others/LoginActivity$2;-><init>(Lcom/eventgenie/android/activities/others/LoginActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V

    new-array v1, v12, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 470
    .end local v8    # "b":Landroid/widget/Button;
    .end local v10    # "namespace":J
    :cond_2
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 474
    .restart local v10    # "namespace":J
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getRestServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/secure/rest/users/rpc/whoami"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    goto :goto_2

    .line 477
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getRestServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/secure/rest/visitors/rpc/whoami"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 472
    :pswitch_data_0
    .packed-switch 0x1b59
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiEventReturnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->onMultiEventReturnClick(Landroid/app/Activity;)V

    .line 528
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public populateUI()V
    .locals 9

    .prologue
    .line 556
    sget v3, Lcom/eventgenie/android/R$id;->show_password:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    .line 557
    sget v3, Lcom/eventgenie/android/R$id;->password:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;

    .line 558
    sget v3, Lcom/eventgenie/android/R$id;->username:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditUsername:Landroid/widget/EditText;

    .line 561
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditUsername:Landroid/widget/EditText;

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 563
    sget v3, Lcom/eventgenie/android/R$id;->login_button:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mBtnLogin:Landroid/widget/Button;

    .line 564
    sget v3, Lcom/eventgenie/android/R$id;->forgot_password:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mTvForgotPassword:Landroid/widget/TextView;

    .line 565
    sget v3, Lcom/eventgenie/android/R$id;->server_spinner:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerSpinner:Landroid/widget/Spinner;

    .line 566
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mServerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 569
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    new-instance v4, Lcom/eventgenie/android/activities/others/LoginActivity$3;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/activities/others/LoginActivity$3;-><init>(Lcom/eventgenie/android/activities/others/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 583
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;

    new-instance v4, Lcom/eventgenie/android/activities/others/LoginActivity$4;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/activities/others/LoginActivity$4;-><init>(Lcom/eventgenie/android/activities/others/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 591
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->setOptionalPartsVisibility()V

    .line 593
    const/4 v1, 0x0

    .line 595
    .local v1, "cred":Lcom/genie_connect/android/net/container/LoginCredentials;
    iget v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I

    packed-switch v3, :pswitch_data_0

    .line 620
    :goto_0
    if-eqz v1, :cond_0

    .line 621
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/LoginCredentials;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 624
    :cond_0
    return-void

    .line 598
    :pswitch_0
    sget v3, Lcom/eventgenie/android/R$id;->label_signin:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 599
    .local v2, "signin":Landroid/widget/TextView;
    sget v3, Lcom/eventgenie/android/R$string;->login_signin_cms_user:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 601
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mTvForgotPassword:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 603
    invoke-static {p0}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v0

    .line 604
    .local v0, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    invoke-virtual {v0}, Lcom/genie_connect/android/security/CmsLoginManager;->getCMSUserCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v1

    .line 605
    goto :goto_0

    .line 607
    .end local v0    # "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    .end local v2    # "signin":Landroid/widget/TextView;
    :pswitch_1
    sget v3, Lcom/eventgenie/android/R$id;->label_signin:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_LOGIN:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->setTextViewLabel(ILjava/lang/String;)V

    .line 608
    sget v3, Lcom/eventgenie/android/R$id;->label_continueAsGuest:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->CONTINUE_AS_GUEST:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->setTextViewLabel(ILjava/lang/String;)V

    .line 609
    sget v3, Lcom/eventgenie/android/R$id;->label_pleaseRegister:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->PLEASE_REGISTER:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->setTextViewLabel(ILjava/lang/String;)V

    .line 610
    sget v3, Lcom/eventgenie/android/R$id;->label_registrationUrl:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getRegistrationUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->setTextViewLabel(ILjava/lang/String;)V

    .line 611
    sget v3, Lcom/eventgenie/android/R$id;->username:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->USERNAME:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->setTextViewHint(ILjava/lang/String;)V

    .line 612
    sget v3, Lcom/eventgenie/android/R$id;->password:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->PASSWORD:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->setTextViewHint(ILjava/lang/String;)V

    .line 614
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity;->mTvForgotPassword:Landroid/widget/TextView;

    sget v4, Lcom/eventgenie/android/R$string;->login_forgot_password:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/LoginActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/android/db/config/misc/Label;->PASSWORD:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v7, v8}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/others/LoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v1

    goto/16 :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x1b59
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
