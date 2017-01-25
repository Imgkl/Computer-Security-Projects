.class public Lcom/eventgenie/android/activities/others/ProoferAppSelection;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "ProoferAppSelection.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;,
        Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;,
        Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

.field private authenticated:Z

.field private currentNamespace:J

.field private editFilter:Landroid/widget/EditText;

.field private final filterTextWatcher:Landroid/text/TextWatcher;

.field private liveMode:Z

.field private mAppsListFilterMode:I

.field private mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

.field private mCurrentDataVersion:Ljava/lang/String;

.field private mCurrentlyBusy:Z

.field private mList:Landroid/widget/ListView;

.field private mNamespace:J

.field private mPopupMenuEventFilter:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

.field private mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

.field private mPopupMenuServerSelection:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

.field private mProoferEventArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTvAppCount:Landroid/widget/TextView;

.field private mTvApplicationBuild:Landroid/widget/TextView;

.field private mTvListMode:Landroid/widget/TextView;

.field private multiEvent:Z

.field private tvEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->currentNamespace:J

    .line 99
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->authenticated:Z

    .line 100
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->liveMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentlyBusy:Z

    .line 113
    iput v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I

    .line 115
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$1;-><init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .line 675
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Lcom/eventgenie/android/adapters/other/ProoferAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->adapter:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Lcom/eventgenie/android/adapters/other/ProoferAdapter;)Lcom/eventgenie/android/adapters/other/ProoferAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;
    .param p1, "x1"    # Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->adapter:Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->initialiseData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentDataVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentDataVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->initialiseData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mNamespace:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/eventgenie/android/activities/others/ProoferAppSelection;J)J
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;
    .param p1, "x1"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mNamespace:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->tvEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->currentNamespace:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/others/ProoferAppSelection;J)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;
    .param p1, "x1"    # J

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getPostionById(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mTvAppCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->multiEvent:Z

    return v0
.end method

.method static synthetic access$900(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->liveMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferAppSelection;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->liveMode:Z

    return p1
.end method

.method private getListModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I

    packed-switch v0, :pswitch_data_0

    .line 191
    const-string v0, "Filter: ???"

    :goto_0
    return-object v0

    .line 184
    :pswitch_0
    const-string v0, "Filter: ALL Apps"

    goto :goto_0

    .line 186
    :pswitch_1
    const-string v0, "Filter: ARCHIVED Apps"

    goto :goto_0

    .line 188
    :pswitch_2
    const-string v0, "Filter: LIVE Apps"

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getPostionById(J)I
    .locals 5
    .param p1, "namespace"    # J

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 200
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 195
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static populateProoferEvent(Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .locals 7
    .param p0, "app"    # Lcom/genie_connect/common/platform/json/IJsonObject;

    .prologue
    const/4 v6, 0x0

    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, "event":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .end local v0    # "event":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    const-string v2, "id"

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    const-string/jumbo v4, "title"

    invoke-interface {p0, v4}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;-><init>(JLjava/lang/String;)V

    .line 493
    .restart local v0    # "event":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    const-string v2, "name"

    invoke-interface {p0, v2}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->setAppName(Ljava/lang/String;)V

    .line 494
    const-string v2, "iconUrl"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->setIconURL(Ljava/lang/String;)V

    .line 496
    const-string v2, "liveVersion"

    invoke-interface {p0, v2}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v1

    .line 498
    .local v1, "jObject":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v1, :cond_0

    .line 499
    const-string v2, "name"

    invoke-interface {v1, v2}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->setLiveVersion(Ljava/lang/String;)V

    .line 504
    :goto_0
    const-string v2, "stagingVersion"

    invoke-interface {p0, v2}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v1

    .line 505
    if-eqz v1, :cond_1

    .line 506
    const-string v2, "name"

    invoke-interface {v1, v2}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->setStagingVersion(Ljava/lang/String;)V

    .line 511
    :goto_1
    const-string v2, "^ PROOFER: Populating the App Entity Features... "

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/eventgenie/android/EventGenieApplication;->setAppEntityFeatures(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 515
    return-object v0

    .line 501
    :cond_0
    invoke-virtual {v0, v6}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->setLiveVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {v0, v6}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->setStagingVersion(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private selectServerSet(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 466
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/genie_connect/android/net/ReachabilityManager;->useServerSet(Landroid/content/Context;I)V

    .line 467
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->startActivityCarefully(Landroid/content/Intent;)V

    .line 468
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->finish()V

    .line 469
    return-void
.end method

.method private showAssetsScreen(Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;)V
    .locals 6
    .param p1, "event"    # Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;-><init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected doSecureCheck()V
    .locals 4

    .prologue
    .line 129
    invoke-static {p0}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/CmsLoginManager;->isCMSUserAuthenticated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "login_type"

    const/16 v3, 0x1b59

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    const/16 v2, 0x1389

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->authenticated:Z

    goto :goto_0
.end method

.method public getAppBuildString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x20

    .line 141
    sget v5, Lcom/eventgenie/android/R$string;->library_build:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "rawBuildString":Ljava/lang/String;
    const-string v5, "com_eventgenie_android_core"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 144
    .local v2, "isSvn":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Build: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const/16 v5, 0x76

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/help/BuildInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    if-eqz v2, :cond_1

    .line 152
    const-string v5, "com_eventgenie_android_core"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "build":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "buildArr":[Ljava/lang/String;
    array-length v5, v1

    if-ne v5, v10, :cond_0

    .line 156
    aget-object v5, v1, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    aget-object v5, v1, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .end local v0    # "build":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 161
    .restart local v0    # "build":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    .end local v0    # "build":Ljava/lang/String;
    .end local v1    # "buildArr":[Ljava/lang/String;
    :cond_1
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1    # "buildArr":[Ljava/lang/String;
    const-string v5, "Release: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    array-length v5, v1

    if-ne v5, v10, :cond_2

    .line 169
    aget-object v5, v1, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :cond_2
    const-string/jumbo v5, "unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onClearSearchClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->editFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 209
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    sget v1, Lcom/eventgenie/android/R$layout;->activity_proofer_app_select:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->setContentView(I)V

    .line 211
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->currentNamespace:J

    .line 213
    sget v1, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mList:Landroid/widget/ListView;

    .line 215
    sget v1, Lcom/eventgenie/android/R$id;->tvCount:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mTvAppCount:Landroid/widget/TextView;

    .line 216
    sget v1, Lcom/eventgenie/android/R$id;->tvMode:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mTvListMode:Landroid/widget/TextView;

    .line 218
    sget v1, Lcom/eventgenie/android/R$id;->tvAppBuild:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mTvApplicationBuild:Landroid/widget/TextView;

    .line 219
    sget v1, Lcom/eventgenie/android/R$id;->edit_search:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->editFilter:Landroid/widget/EditText;

    .line 220
    sget v1, Lcom/eventgenie/android/R$id;->empty:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->tvEmpty:Landroid/widget/TextView;

    .line 222
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mTvAppCount:Landroid/widget/TextView;

    const-string v2, "0 applications"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mTvApplicationBuild:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getAppBuildString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;

    .line 227
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 228
    iput-boolean v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->multiEvent:Z

    .line 229
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0, v5, v5}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 233
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SERVER_LIST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 236
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 237
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v4, v5, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showActionFilter(ZZI)V

    .line 239
    invoke-static {p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v0

    .line 240
    .local v0, "prefs":Lcom/genie_connect/android/prefs/GlobalPreferences;
    invoke-virtual {v0, v4}, Lcom/genie_connect/android/prefs/GlobalPreferences;->getProoferListMode(I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I

    .line 242
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mTvListMode:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getListModeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->authenticated:Z

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->onLoginSuccess()V

    .line 247
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 252
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->editFilter:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    return-void
.end method

.method public onFilterClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentlyBusy:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    sget v0, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 289
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuEventFilter:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    if-nez v0, :cond_2

    .line 262
    new-instance v0, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuEventFilter:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .line 263
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuEventFilter:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->setOnMenuItemClickListener(Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuEventFilter:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    const v1, 0x9c40

    const-string v2, "All Apps"

    invoke-static {p0, v0, v1, v2}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addCustomAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;ILjava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuEventFilter:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    const v1, 0x9c41

    const-string v2, "Live Apps"

    invoke-static {p0, v0, v1, v2}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addCustomAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;ILjava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuEventFilter:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    const v1, 0x9c42

    const-string v2, "Archived Apps"

    invoke-static {p0, v0, v1, v2}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addCustomAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;ILjava/lang/CharSequence;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuEventFilter:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->show()V

    goto :goto_0

    .line 287
    :cond_3
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 293
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentlyBusy:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    sget v1, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 321
    :goto_0
    return-void

    .line 298
    :cond_1
    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 301
    .local v0, "iv":Landroid/widget/ImageView;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .line 303
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 304
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    .line 309
    :cond_2
    new-instance v1, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .line 310
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v1, p0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->setOnMenuItemClickListener(Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;)V

    .line 312
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {p0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionLoadLiveData(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 313
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {p0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionLoadPublishedData(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 314
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {p0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionLoadSpecificPublish(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 315
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {p0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionLoadSpecificPublishDeltasTil(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 316
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {p0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionPreviewSpash(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 317
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-static {p0, v1}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addProoferActionOpenMarketPage(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V

    .line 320
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuOpenEvent:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->show()V

    goto :goto_0
.end method

.method protected onLoginSuccess()V
    .locals 4

    .prologue
    .line 325
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;-><init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 330
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 333
    .local v6, "actionId":I
    const/16 v0, 0x7530

    if-lt v6, v0, :cond_0

    const/16 v0, 0x7918

    if-ge v6, v0, :cond_0

    .line 335
    add-int/lit16 v0, v6, -0x7530

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->selectServerSet(I)V

    move v0, v9

    .line 389
    .end local v6    # "actionId":I
    :goto_0
    return v0

    .line 337
    .restart local v6    # "actionId":I
    :cond_0
    const v0, 0x9c40

    if-lt v6, v0, :cond_1

    const v0, 0x9c42

    if-gt v6, v0, :cond_1

    .line 339
    packed-switch v6, :pswitch_data_0

    .line 351
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mTvListMode:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getListModeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-static {p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/prefs/GlobalPreferences;->edit()Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    move-result-object v7

    .line 354
    .local v7, "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    iget v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I

    invoke-virtual {v7, v0}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setProoferListMode(I)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 355
    invoke-virtual {v7}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->apply()V

    .line 356
    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->onRefreshClick(Landroid/view/View;)V

    move v0, v9

    .line 357
    goto :goto_0

    .line 341
    .end local v7    # "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    :pswitch_0
    iput v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I

    goto :goto_1

    .line 344
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I

    goto :goto_1

    .line 347
    :pswitch_2
    iput v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I

    goto :goto_1

    .line 359
    :cond_1
    packed-switch v6, :pswitch_data_1

    .end local v6    # "actionId":I
    :goto_2
    :pswitch_3
    move v0, v1

    .line 389
    goto :goto_0

    .line 361
    .restart local v6    # "actionId":I
    :pswitch_4
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;-><init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Landroid/content/Context;Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    move v0, v9

    .line 362
    goto :goto_0

    .line 364
    :pswitch_5
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSwitchAppTask;-><init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Landroid/content/Context;Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    move v0, v9

    .line 365
    goto :goto_0

    .line 367
    :pswitch_6
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "namespace_id"

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v2

    invoke-virtual {v8, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->startActivityCarefully(Landroid/content/Intent;)V

    move v0, v9

    .line 370
    goto :goto_0

    .line 372
    .end local v8    # "intent":Landroid/content/Intent;
    :pswitch_7
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "applyDeltasTil"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string v0, "namespace_id"

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v2

    invoke-virtual {v8, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->startActivityCarefully(Landroid/content/Intent;)V

    move v0, v9

    .line 376
    goto/16 :goto_0

    .line 378
    .end local v8    # "intent":Landroid/content/Intent;
    :pswitch_8
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->showAssetsScreen(Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;)V

    move v0, v9

    .line 379
    goto/16 :goto_0

    .line 381
    :pswitch_9
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    if-nez v0, :cond_2

    move v0, v9

    goto/16 :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mClickedEvent:Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getNamespace()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/help/ProoferUtils;->launchAppMarketIntent(Landroid/content/Context;J)V

    move v0, v9

    .line 383
    goto/16 :goto_0

    .line 387
    .end local v6    # "actionId":I
    :cond_3
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_2

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x9c40
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 359
    :pswitch_data_1
    .packed-switch 0x4e21
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onPause()V

    .line 395
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->editFilter:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 396
    return-void
.end method

.method public onPlaceMarkerClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mList:Landroid/widget/ListView;

    iget-wide v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->currentNamespace:J

    invoke-direct {p0, v2, v3}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getPostionById(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 400
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentlyBusy:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    sget v0, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 414
    :goto_0
    return-void

    .line 409
    :cond_1
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;-><init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 412
    :cond_2
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 419
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->editFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->editFilter:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 422
    :cond_0
    return-void
.end method

.method public onServersClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 426
    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    sget v4, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-static {p0, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 463
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuServerSelection:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    if-nez v4, :cond_2

    .line 432
    new-instance v4, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v5}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuServerSelection:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .line 433
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuServerSelection:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v4, p0}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->setOnMenuItemClickListener(Lcom/eventgenie/android/ui/IconFriendlyPopupMenu$OnMenuItemClickListener;)V

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getServerListOrder()[I

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 440
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getServerListOrder()[I

    move-result-object v4

    aget v2, v4, v1

    .line 441
    .local v2, "id":I
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/genie_connect/android/net/ReachabilityManager;->getServerName(I)Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 444
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_server_production:I

    .line 449
    .local v0, "drawableId":I
    :goto_2
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuServerSelection:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    add-int/lit16 v5, v2, 0x7530

    invoke-static {p0, v4, v5, v3, v0}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addCustomAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;ILjava/lang/CharSequence;I)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 446
    .end local v0    # "drawableId":I
    :cond_1
    sget v0, Lcom/eventgenie/android/R$drawable;->ic_server_live:I

    .restart local v0    # "drawableId":I
    goto :goto_2

    .line 459
    .end local v0    # "drawableId":I
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mPopupMenuServerSelection:Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->show()V

    goto :goto_0

    .line 461
    :cond_3
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public showIndicator(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "hasRefresh"    # Z

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mCurrentlyBusy:Z

    .line 485
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->showIndicator(ZZ)V

    .line 486
    return-void
.end method
