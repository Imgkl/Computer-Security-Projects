.class public Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "ProoferSelectDataversionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;
    }
.end annotation


# static fields
.field public static final KEY_NAMESPACE:Ljava/lang/String; = "namespace_id"


# instance fields
.field private final filterTextWatcher:Landroid/text/TextWatcher;

.field private mAdapter:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

.field private mAuthenticated:Z

.field public mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDataversion:Ljava/lang/String;

.field private mDataversionArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEditFilter:Landroid/widget/EditText;

.field private mIsApplyDeltasTil:Z

.field private mList:Landroid/widget/ListView;

.field private mNamespace:J

.field mPrefs:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "defaultPrefs"
    .end annotation
.end field

.field private mTvAppCount:Landroid/widget/TextView;

.field private mTvApplicationBuild:Landroid/widget/TextView;

.field private mTvEmpty:Landroid/widget/TextView;

.field public mUpdatesManager:Lcom/genie_connect/android/services/UpdatesManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mAuthenticated:Z

    .line 98
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$1;-><init>(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mAdapter:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mAdapter:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mIsApplyDeltasTil:Z

    return v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mNamespace:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getPositionById(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvAppCount:Landroid/widget/TextView;

    return-object v0
.end method

.method private formatBottomBar()V
    .locals 4

    .prologue
    const v3, 0x106000c

    const v2, 0x106000b

    .line 128
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getNavBarColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->isWhiteText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvAppCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvApplicationBuild:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :goto_0
    sget v0, Lcom/eventgenie/android/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActionbarCurrentColour()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvAppCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvApplicationBuild:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private getCurrentDataversion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mNamespace:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "NONE"

    .line 144
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->event_packaged_data_version:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    const-string v0, "LIVE"

    goto :goto_0
.end method

.method private getPositionById(Ljava/lang/String;)I
    .locals 8
    .param p1, "dataversion"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 149
    if-nez p1, :cond_1

    move v0, v2

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-wide v4, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mNamespace:J

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    move v0, v2

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 162
    goto :goto_0
.end method


# virtual methods
.method protected doSecureCheck()V
    .locals 4

    .prologue
    .line 116
    invoke-static {p0}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/CmsLoginManager;->isCMSUserAuthenticated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "login_type"

    const/16 v3, 0x1b59

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    const/16 v2, 0x1389

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mAuthenticated:Z

    goto :goto_0
.end method

.method public onClearSearchClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mEditFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    invoke-virtual {v1, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget v1, Lcom/eventgenie/android/R$layout;->activity_proofer_app_select:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->setContentView(I)V

    .line 176
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 178
    iput-boolean v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mIsApplyDeltasTil:Z

    .line 179
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mNamespace:J

    .line 185
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getCurrentDataversion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversion:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    const-string v2, "Dataversion Selection"

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    sget v1, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mList:Landroid/widget/ListView;

    .line 189
    sget v1, Lcom/eventgenie/android/R$id;->tvCount:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvAppCount:Landroid/widget/TextView;

    .line 190
    sget v1, Lcom/eventgenie/android/R$id;->tvAppBuild:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvApplicationBuild:Landroid/widget/TextView;

    .line 191
    sget v1, Lcom/eventgenie/android/R$id;->edit_search:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mEditFilter:Landroid/widget/EditText;

    .line 192
    sget v1, Lcom/eventgenie/android/R$id;->empty:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvEmpty:Landroid/widget/TextView;

    .line 194
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvAppCount:Landroid/widget/TextView;

    const-string v2, "0 dataversions"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvApplicationBuild:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Dataversion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;

    .line 199
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 200
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 203
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->formatBottomBar()V

    .line 205
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mAuthenticated:Z

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->onLoginSuccess()V

    .line 208
    :cond_0
    return-void

    .line 181
    :cond_1
    const-string v1, "applyDeltasTil"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mIsApplyDeltasTil:Z

    .line 182
    const-string v1, "namespace_id"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mNamespace:J

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 213
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mEditFilter:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 218
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    .line 219
    .local v0, "ver":Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;
    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Load specific dataversion"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You are about to load dataversion \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;-><init>(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$2;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$2;-><init>(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 239
    :cond_0
    return-void
.end method

.method protected onLoginSuccess()V
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;-><init>(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onPause()V

    .line 253
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mEditFilter:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    return-void
.end method

.method public onPlaceMarkerClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversion:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getPositionById(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 258
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;-><init>(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 272
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mEditFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mEditFilter:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    :cond_0
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public showIndicator(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "hasRefresh"    # Z

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->showIndicator(ZZ)V

    .line 285
    return-void
.end method
