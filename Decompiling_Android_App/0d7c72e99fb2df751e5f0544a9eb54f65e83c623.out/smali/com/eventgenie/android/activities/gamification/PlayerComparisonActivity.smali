.class public Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "PlayerComparisonActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/activities/base/GenieBaseActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ENTITY_NAME_EXTRA:Ljava/lang/String; = "entity_type_extra"

.field public static final LOADER_ID:I = 0x1

.field public static final PLAYER_1_ID:Ljava/lang/String; = "player_1_id_extra"

.field public static final PLAYER_2_ID:Ljava/lang/String; = "player_2_id_extra"


# instance fields
.field private mAmIComparingWithMyself:Z

.field private mComparisonHelper:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEntityId:J

.field private mEntityName:Ljava/lang/String;

.field private mHeader:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoginCredentials:Lcom/genie_connect/android/net/container/LoginCredentials;

.field private mPlayer1:J

.field private mPlayer2:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;)Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mComparisonHelper:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

    return-object v0
.end method

.method private static calculateAppLevelScore(Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const-wide/16 v2, -0x1

    .line 224
    :cond_1
    return-wide v2

    .line 211
    :cond_2
    const-wide/16 v2, 0x0

    .line 212
    .local v2, "result":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    .line 216
    .local v4, "row":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    invoke-virtual {v4}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightPlayerGameObject()Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    move-result-object v1

    .line 217
    .local v1, "pg":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    if-nez v1, :cond_3

    .line 218
    const-wide/16 v6, 0x0

    add-long/2addr v2, v6

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getTotalGamePoints()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0
.end method

.method private populateUi()V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->populateHeader()V

    .line 181
    invoke-direct {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->refreshList()V

    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getGamification()Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 183
    return-void
.end method

.method private refreshList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 186
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mAmIComparingWithMyself:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEmptyView:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->gamification_you_cannot_compare_yourself_with_yourself:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget v0, Lcom/eventgenie/android/R$layout;->activity_gamification_compare_players:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->setContentView(I)V

    .line 83
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mLoginCredentials:Lcom/genie_connect/android/net/container/LoginCredentials;

    .line 84
    sget v0, Lcom/eventgenie/android/R$id;->header_player_compare:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mHeader:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mLoginCredentials:Lcom/genie_connect/android/net/container/LoginCredentials;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mLoginCredentials:Lcom/genie_connect/android/net/container/LoginCredentials;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    const-string v0, "^ PLAYERCOMPARE: User not logged in! - Exiting..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->finish()V

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_1
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mListView:Landroid/widget/ListView;

    .line 91
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEmptyView:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "entity_type_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityName:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "entity_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityId:J

    .line 96
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player_1_id_extra"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mPlayer1:J

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "player_2_id_extra"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mPlayer2:J

    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mLoginCredentials:Lcom/genie_connect/android/net/container/LoginCredentials;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUserId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mPlayer2:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mAmIComparingWithMyself:Z

    .line 100
    new-instance v0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityId:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;-><init>(Landroid/view/View;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mComparisonHelper:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

    .line 101
    invoke-direct {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->populateUi()V

    goto :goto_0

    .line 99
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 13
    .param p1, "loaderId"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v12, 0x0

    .line 107
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->showIndicator(Z)V

    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEmptyView:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->loading_format:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v12

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const-string v0, "apps"

    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v1, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v3

    iget-object v5, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityId:J

    iget-wide v8, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mPlayer1:J

    iget-wide v10, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mPlayer2:J

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;-><init>(Landroid/app/Activity;JLjava/lang/String;JJJZ)V

    .line 120
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v3

    iget-object v5, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityId:J

    iget-wide v8, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mPlayer1:J

    iget-wide v10, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mPlayer2:J

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;-><init>(Landroid/app/Activity;JLjava/lang/String;JJJZ)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;>;"
    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->showIndicator(Z)V

    .line 140
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEmptyView:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mEntityName:Ljava/lang/String;

    invoke-static {p0, v1, p2, v2}, Lcom/eventgenie/android/adapters/gamification/GamificationAdapterManager;->getPlayerComparisonAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mComparisonHelper:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->calculateAppLevelScore(Ljava/util/List;)J

    move-result-wide v4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->populateMyOpponentSide(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;JLcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;>;>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    return-void
.end method

.method public onMugshotClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mComparisonHelper:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->onMugshotClick(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method public populateHeader()V
    .locals 7

    .prologue
    .line 155
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mComparisonHelper:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->clearHeader()V

    .line 157
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mLoginCredentials:Lcom/genie_connect/android/net/container/LoginCredentials;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mLoginCredentials:Lcom/genie_connect/android/net/container/LoginCredentials;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mAmIComparingWithMyself:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mComparisonHelper:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mLoginCredentials:Lcom/genie_connect/android/net/container/LoginCredentials;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->populateMyVisitorSide(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mComparisonHelper:Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;

    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mLoginCredentials:Lcom/genie_connect/android/net/container/LoginCredentials;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivityHelper;->populateMyVisitorSide(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    .line 164
    new-instance v0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity$1;

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v4, p0, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->mPlayer2:J

    const-class v6, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity$1;-><init>(Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/Class;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected showIndicator(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 201
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/eventgenie/android/activities/gamification/PlayerComparisonActivity;->showIndicator(ZZ)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    instance-of v2, v0, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 203
    check-cast v1, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    .line 204
    .local v1, "parentActivity":Lcom/eventgenie/android/activities/base/GenieTabActivity;
    invoke-virtual {v1, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->showIndicator(Z)V

    goto :goto_0
.end method
