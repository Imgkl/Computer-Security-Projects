.class public Lcom/genie_connect/android/bl/favourites/FavouriteManager;
.super Ljava/lang/Object;
.source "FavouriteManager.java"


# instance fields
.field private mAgendaItemRepository:Lcom/genie_connect/android/repository/AgendaItemRepository;

.field private mConfig:Lcom/genie_connect/android/db/config/AppConfig;

.field private mSessionRepository:Lcom/genie_connect/android/repository/SessionRepository;

.field private mSubsessionRepository:Lcom/genie_connect/android/repository/SubsessionRepository;


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/repository/SessionRepository;Lcom/genie_connect/android/repository/SubsessionRepository;Lcom/genie_connect/android/repository/AgendaItemRepository;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 0
    .param p1, "sessionRepository"    # Lcom/genie_connect/android/repository/SessionRepository;
    .param p2, "subsessionRepository"    # Lcom/genie_connect/android/repository/SubsessionRepository;
    .param p3, "agendaItemRepository"    # Lcom/genie_connect/android/repository/AgendaItemRepository;
    .param p4, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p4, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 81
    iput-object p1, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mSessionRepository:Lcom/genie_connect/android/repository/SessionRepository;

    .line 82
    iput-object p2, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mSubsessionRepository:Lcom/genie_connect/android/repository/SubsessionRepository;

    .line 83
    iput-object p3, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mAgendaItemRepository:Lcom/genie_connect/android/repository/AgendaItemRepository;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    .param p1, "x1"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "x2"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    .param p3, "x3"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "x4"    # Ljava/lang/Long;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->favStep2Commit(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    .param p1, "x1"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "x2"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    .param p3, "x3"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "x4"    # Ljava/lang/Long;
    .param p5, "x5"    # Z

    .prologue
    .line 66
    invoke-direct/range {p0 .. p5}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->bookmarkSession(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V

    return-void
.end method

.method private bookmarkSession(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "listener"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    .param p3, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "entityId"    # Ljava/lang/Long;
    .param p5, "isBookmark"    # Z

    .prologue
    .line 205
    new-instance v2, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    invoke-direct {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;-><init>()V

    invoke-virtual {v2, p3}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setEntityId(J)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setNamespace(J)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v3

    if-eqz p5, :cond_0

    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->BOOKMARK:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    :goto_0
    invoke-virtual {v3, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setAction(Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->INTERNAL:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setOrigin(Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->build()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v0

    .line 213
    .local v0, "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    invoke-static {p1, v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->resolveIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v1

    .line 215
    .local v1, "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getStatus()Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    if-ne v2, v3, :cond_1

    .line 217
    invoke-interface {p2, p5}, Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;->favouritingFinished(Z)V

    .line 222
    :goto_1
    return-void

    .line 205
    .end local v0    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .end local v1    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :cond_0
    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->UN_BOOKMARK:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    goto :goto_0

    .line 219
    .restart local v0    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .restart local v1    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bookmark / unBookmark AS post failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 220
    invoke-interface {p2}, Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;->favouritingFailed()V

    goto :goto_1
.end method

.method private favStep2Commit(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;ZZ)V
    .locals 6
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "listener"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    .param p3, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "entityId"    # Ljava/lang/Long;
    .param p5, "fav"    # Z
    .param p6, "checkForClashes"    # Z

    .prologue
    .line 233
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 235
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, p3, v2, v3}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->removeClashingItemsIfNecessary(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Z

    .line 238
    :cond_0
    new-instance v2, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    invoke-direct {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;-><init>()V

    invoke-virtual {v2, p3}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setEntityId(J)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setNamespace(J)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v3

    if-eqz p5, :cond_1

    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->FAVS_ADD:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    :goto_0
    invoke-virtual {v3, v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setAction(Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;->INTERNAL:Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->setOrigin(Lcom/eventgenie/android/utils/genieintent/GenieIntentOrigin;)Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/genieintent/GenieIntent$Builder;->build()Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v0

    .line 246
    .local v0, "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    invoke-static {p1, v0}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->resolveIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v1

    .line 248
    .local v1, "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getStatus()Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;->ACCEPTED:Lcom/eventgenie/android/utils/genieintent/GenieIntentResult$GenieIntentResultStatus;

    if-ne v2, v3, :cond_2

    .line 250
    invoke-interface {p2, p5}, Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;->favouritingFinished(Z)V

    .line 255
    :goto_1
    return-void

    .line 238
    .end local v0    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .end local v1    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :cond_1
    sget-object v2, Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;->FAVS_REMOVE:Lcom/eventgenie/android/utils/genieintent/GenieIntentAction;

    goto :goto_0

    .line 252
    .restart local v0    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .restart local v1    # "res":Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Favourite / unfavourite AS post failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 253
    invoke-interface {p2}, Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;->favouritingFailed()V

    goto :goto_1
.end method

.method private setEntityFavourited(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;ZZ)V
    .locals 15
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "listener"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    .param p3, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "entityId"    # Ljava/lang/Long;
    .param p5, "shouldFavourite"    # Z
    .param p6, "checkForClashes"    # Z

    .prologue
    .line 108
    iget-object v2, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_SERVER_VALIDATED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 109
    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    new-instance v2, Lcom/genie_connect/android/bl/favourites/FavouriteManager$1;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    if-eqz p5, :cond_0

    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    :goto_0
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v2 .. v14}, Lcom/genie_connect/android/bl/favourites/FavouriteManager$1;-><init>(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;ZZ)V

    invoke-static {v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 138
    :goto_1
    return-void

    .line 110
    :cond_0
    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->REMOVE:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    goto :goto_0

    .line 133
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showDialogNetworkRequiredForValidation(Landroid/content/Context;)V

    goto :goto_1

    .line 136
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->favStep2Commit(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;ZZ)V

    goto :goto_1
.end method


# virtual methods
.method public removeClashingItemsIfNecessary(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Z
    .locals 17
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "entityId"    # J

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->isAllowClashingSessions()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const/4 v3, 0x1

    .line 325
    :goto_0
    return v3

    .line 271
    :cond_0
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mSessionRepository:Lcom/genie_connect/android/repository/SessionRepository;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Lcom/genie_connect/android/repository/SessionRepository;->getAgendaItemsClashingWith(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    .line 279
    .local v2, "clashingItems":Luk/co/alt236/easycursor/EasyCursor;
    :goto_1
    invoke-interface {v2}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 281
    const-string v3, "itemTypes"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 282
    .local v15, "type":Ljava/lang/String;
    const-string v3, "id"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 284
    .local v6, "id":J
    const-string v3, "isDeletable"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 285
    const-string v3, "An item of type %s with ID %s could not be deleted in order to favourite an item because iDeletable = false"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    const/4 v5, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const/4 v3, 0x0

    goto :goto_0

    .line 273
    .end local v2    # "clashingItems":Luk/co/alt236/easycursor/EasyCursor;
    .end local v6    # "id":J
    .end local v15    # "type":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mSubsessionRepository:Lcom/genie_connect/android/repository/SubsessionRepository;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Lcom/genie_connect/android/repository/SubsessionRepository;->getAgendaItemsClashingWith(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    .restart local v2    # "clashingItems":Luk/co/alt236/easycursor/EasyCursor;
    goto :goto_1

    .line 276
    .end local v2    # "clashingItems":Luk/co/alt236/easycursor/EasyCursor;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 289
    .restart local v2    # "clashingItems":Luk/co/alt236/easycursor/EasyCursor;
    .restart local v6    # "id":J
    .restart local v15    # "type":Ljava/lang/String;
    :cond_3
    new-instance v10, Lcom/genie_connect/android/bl/favourites/FavouriteManager$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/genie_connect/android/bl/favourites/FavouriteManager$3;-><init>(Lcom/genie_connect/android/bl/favourites/FavouriteManager;)V

    .line 302
    .local v10, "favListener":Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    const-string v3, "meeting"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 304
    new-instance v3, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;-><init>(Landroid/support/v4/app/FragmentActivity;IJLjava/lang/String;Ljava/lang/String;Z)V

    .end local v10    # "favListener":Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    invoke-static {v3}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 312
    .restart local v10    # "favListener":Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    :cond_4
    const-string v3, "adhoc"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mAgendaItemRepository:Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {v3, v6, v7}, Lcom/genie_connect/android/repository/AgendaItemRepository;->deleteAdhocAgendaItem(J)V

    goto :goto_1

    .line 315
    :cond_5
    const-string v3, "session"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v11, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v14}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->setEntityFavourited(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;ZZ)V

    goto/16 :goto_1

    :cond_6
    sget-object v11, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    goto :goto_2

    .line 325
    .end local v6    # "id":J
    .end local v10    # "favListener":Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    .end local v15    # "type":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public setEntityBookmarked(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V
    .locals 12
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "listener"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    .param p3, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "entityId"    # Ljava/lang/Long;
    .param p5, "isBookmark"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->SESSIONS_FAVOURITING_ENABLED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-virtual {v0, p3, v1}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->isGuestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    if-eqz p5, :cond_0

    sget-object v6, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->BOOKMARK:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v7, p2

    move-object v8, p1

    move-object v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;-><init>(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 188
    :goto_1
    return-void

    .line 158
    :cond_0
    sget-object v6, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->UN_BOOKMARK:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showDialogNetworkRequiredForValidation(Landroid/content/Context;)V

    goto :goto_1

    .line 185
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->bookmarkSession(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V

    goto :goto_1
.end method

.method public setEntityFavourited(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V
    .locals 7
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "listener"    # Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;
    .param p3, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "entityId"    # Ljava/lang/Long;
    .param p5, "shouldFavourite"    # Z

    .prologue
    .line 96
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->setEntityFavourited(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;ZZ)V

    .line 97
    return-void
.end method
