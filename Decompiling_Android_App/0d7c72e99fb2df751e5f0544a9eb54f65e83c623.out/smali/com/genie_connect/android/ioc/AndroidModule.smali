.class public Lcom/genie_connect/android/ioc/AndroidModule;
.super Ljava/lang/Object;
.source "AndroidModule.java"


# annotations
.annotation runtime Ldagger/Module;
    injects = {
        Lcom/genie_connect/android/repository/TagsV2Repository;,
        Lcom/genie_connect/common/services/dss/DataInitialisationOperation;,
        Lcom/genie_connect/android/services/dss/DataInitialisationProvider;,
        Lcom/genie_connect/android/services/dss/DeltaV2Provider;,
        Lcom/genie_connect/android/security/VisitorLoginManager;,
        Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;,
        Lcom/genie_connect/android/db/config/AppConfig;,
        Lcom/eventgenie/android/utils/social/youtube/YouTube;,
        Lcom/genie_connect/android/repository/NoteRepository;,
        Lcom/genie_connect/android/repository/FavouriteExhibitorRepository;,
        Lcom/genie_connect/android/repository/ExhibitorRepository;,
        Lcom/genie_connect/android/repository/FavouriteSpeakerRepository;,
        Lcom/genie_connect/android/repository/FavouriteActivityStreamPostRepository;,
        Lcom/genie_connect/android/repository/FavouriteDownloadableRepository;,
        Lcom/genie_connect/android/repository/SpeakerRepository;,
        Lcom/genie_connect/android/repository/FavouriteProductRepository;,
        Lcom/genie_connect/android/repository/ProductRepository;,
        Lcom/genie_connect/android/repository/FavouritePoiRepository;,
        Lcom/genie_connect/android/repository/FavouriteSessionRepository;,
        Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;,
        Lcom/genie_connect/android/repository/PoiRepository;,
        Lcom/genie_connect/android/repository/DownloadableRepository;,
        Lcom/genie_connect/android/repository/SessionRepository;,
        Lcom/genie_connect/android/repository/SubsessionRepository;,
        Lcom/genie_connect/android/repository/VisitorRepository;,
        Lcom/genie_connect/android/repository/VisitorGroupRepository;,
        Lcom/genie_connect/android/repository/AgendaItemRepository;,
        Lcom/genie_connect/android/repository/InfoPageRepository;,
        Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;,
        Lcom/genie_connect/android/repository/TrackRepository;,
        Lcom/genie_connect/android/repository/MeetingRepository;,
        Lcom/genie_connect/android/bl/favourites/FavouriteManager;,
        Lcom/genie_connect/android/db/access/DaoProvider;,
        Lcom/genie_connect/android/services/UpdatesManager;,
        Lcom/eventgenie/android/utils/managers/UserNotificationManager;,
        Lcom/genie_connect/android/db/datastore/Datastore;,
        Lde/greenrobot/event/EventBus;,
        Lcom/genie_connect/android/services/dss/DataSyncService;,
        Lcom/genie_connect/android/services/lss/LiveSyncService;,
        Lcom/genie_connect/android/net/providers/NetworkPersister;,
        Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;,
        Lcom/eventgenie/android/activities/others/PreferencesActivity;,
        Lcom/genie_connect/android/db/datastore/acl/Acl;,
        Lcom/genie_connect/android/repository/SurveyRepository;,
        Lcom/genie_connect/android/repository/VisitorSurveysRepository;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideActivityStreamCommentDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamComment;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    const-class v0, Lcom/genie_connect/common/db/model/ActivityStreamComment;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideAgendaItemDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/AgendaItem;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    const-class v0, Lcom/genie_connect/common/db/model/AgendaItem;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideAppConfig(Landroid/content/Context;Lcom/genie_connect/android/db/datastore/Datastore;)Lcom/genie_connect/android/db/config/AppConfig;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "datastore"    # Lcom/genie_connect/android/db/datastore/Datastore;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method provideAppContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "appContext"
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v0

    return-object v0
.end method

.method provideDaoProvider(Landroid/content/Context;)Lcom/genie_connect/android/db/access/DaoProvider;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/genie_connect/android/db/access/AndroidDaoProvider;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/db/access/AndroidDaoProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideDataStore(Landroid/content/Context;Landroid/content/SharedPreferences;Lde/greenrobot/event/EventBus;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "preferences"    # Landroid/content/SharedPreferences;
        .annotation runtime Ljavax/inject/Named;
            value = "defaultPrefs"
        .end annotation
    .end param
    .param p3, "eventBus"    # Lde/greenrobot/event/EventBus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-direct {v0, p1, p2, p3}, Lcom/genie_connect/android/db/datastore/Datastore;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method provideDatabase(Landroid/content/Context;Lcom/genie_connect/android/db/datastore/Datastore;)Lcom/genie_connect/common/platform/db/IDatabase;
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "datastore"    # Lcom/genie_connect/android/db/datastore/Datastore;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-virtual {p2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method provideDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "defaultPrefs"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method provideDownloadableDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Downloadable;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    const-class v0, Lcom/genie_connect/common/db/model/Downloadable;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideEventBus()Lde/greenrobot/event/EventBus;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    return-object v0
.end method

.method provideExhibitorDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Exhibitor;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    const-class v0, Lcom/genie_connect/common/db/model/Exhibitor;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideFavouriteActivityStreamPostDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    const-class v0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideFavouriteDownloadableDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouriteDownloadable;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    const-class v0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideFavouriteExhibitorDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouriteExhibitor;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    const-class v0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideFavouritePoiDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouritePoi;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    const-class v0, Lcom/genie_connect/common/db/model/FavouritePoi;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideFavouriteProductDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouriteProduct;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    const-class v0, Lcom/genie_connect/common/db/model/FavouriteProduct;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideFavouriteSessionDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouriteSession;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    const-class v0, Lcom/genie_connect/common/db/model/FavouriteSession;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideFavouriteSpeakerDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouriteSpeaker;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    const-class v0, Lcom/genie_connect/common/db/model/FavouriteSpeaker;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideFavouriteSubSessionDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouriteSubSession;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    const-class v0, Lcom/genie_connect/common/db/model/FavouriteSubSession;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideIgnitedHttp(Landroid/content/Context;)Lcom/github/ignition/support/http/IgnitedHttp;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getHttpClient(Landroid/content/Context;Z)Lcom/github/ignition/support/http/IgnitedHttp;

    move-result-object v0

    return-object v0
.end method

.method provideInfoPageeDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/InfoPage;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    const-class v0, Lcom/genie_connect/common/db/model/InfoPage;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideJsonManager()Lcom/genie_connect/common/platform/json/IJsonManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcom/genie_connect/android/platform/json/AndroidJsonManager;

    invoke-direct {v0}, Lcom/genie_connect/android/platform/json/AndroidJsonManager;-><init>()V

    return-object v0
.end method

.method provideMeetingDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Meeting;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    const-class v0, Lcom/genie_connect/common/db/model/Meeting;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideNetworkSettings(Landroid/content/Context;)Lcom/genie_connect/common/platform/INetworkSettings;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lcom/genie_connect/android/platform/AndroidNetworkSettings;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/platform/AndroidNetworkSettings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideNoteDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Note;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    const-class v0, Lcom/genie_connect/common/db/model/Note;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideNotificationHandler(Lcom/eventgenie/android/utils/managers/UserNotificationManager;Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Lde/greenrobot/event/EventBus;)Lcom/genie_connect/common/platform/INotificationHandler;
    .locals 1
    .param p1, "manager"    # Lcom/eventgenie/android/utils/managers/UserNotificationManager;
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "appConfig"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "eventBus"    # Lde/greenrobot/event/EventBus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/genie_connect/android/services/dss/NotificationHandler;

    invoke-direct {v0, p2, p4}, Lcom/genie_connect/android/services/dss/NotificationHandler;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method provideNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 205
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method provideOkUrlFactoryWrapper()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 263
    new-instance v0, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    new-instance v1, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-static {}, Lcom/genie_connect/android/net/OkHttpClientSingleton;->getOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-direct {v0, v1}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;-><init>(Lcom/squareup/okhttp/OkUrlFactory;)V

    return-object v0
.end method

.method providePoiDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Poi;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    const-class v0, Lcom/genie_connect/common/db/model/Poi;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideProductDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Product;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    const-class v0, Lcom/genie_connect/common/db/model/Product;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideReachabilityManager()Lcom/genie_connect/android/net/ReachabilityManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 234
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    return-object v0
.end method

.method provideSessionDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Session;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    const-class v0, Lcom/genie_connect/common/db/model/Session;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideSessionRepository()Lcom/genie_connect/android/repository/FavouriteSessionRepository;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "sessionRepository"
    .end annotation

    .prologue
    .line 375
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v1, Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    return-object v0
.end method

.method provideSpeakerDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Speaker;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    const-class v0, Lcom/genie_connect/common/db/model/Speaker;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideSubSessionRepository()Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "subsessionRepository"
    .end annotation

    .prologue
    .line 370
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v1, Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;

    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;

    return-object v0
.end method

.method provideSubsessionDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Subsession;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    const-class v0, Lcom/genie_connect/common/db/model/Subsession;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideSurveysDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Survey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    const-class v0, Lcom/genie_connect/common/db/model/Survey;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideTagsV2Dao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/TagsV2;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    const-class v0, Lcom/genie_connect/common/db/model/TagsV2;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideTrackDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Track;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    const-class v0, Lcom/genie_connect/common/db/model/Track;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideUserNotificationManager(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/genie_connect/android/db/config/AppConfig;Lde/greenrobot/event/EventBus;)Lcom/eventgenie/android/utils/managers/UserNotificationManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;
    .param p3, "appConfig"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "eventBus"    # Lde/greenrobot/event/EventBus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/genie_connect/android/db/config/AppConfig;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method provideVisitorDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Visitor;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    const-class v0, Lcom/genie_connect/common/db/model/Visitor;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideVisitorGroupDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/VisitorGroup;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    const-class v0, Lcom/genie_connect/common/db/model/VisitorGroup;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method

.method provideVisitorSurveysDao(Lcom/genie_connect/android/db/access/DaoProvider;)Lde/greenrobot/dao/Dao;
    .locals 1
    .param p1, "provider"    # Lcom/genie_connect/android/db/access/DaoProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/DaoProvider;",
            ")",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Visitorsurvey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    const-class v0, Lcom/genie_connect/common/db/model/Visitorsurvey;

    invoke-interface {p1, v0}, Lcom/genie_connect/android/db/access/DaoProvider;->getDao(Ljava/lang/Class;)Lde/greenrobot/dao/Dao;

    move-result-object v0

    return-object v0
.end method
