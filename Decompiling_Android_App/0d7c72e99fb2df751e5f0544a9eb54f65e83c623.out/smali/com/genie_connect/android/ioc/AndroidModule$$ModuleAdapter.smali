.class public final Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "AndroidModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTagsV2DaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideVisitorSurveysDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSurveysDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionRepositoryProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSubSessionRepositoryProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideVisitorGroupDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideVisitorDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideInfoPageeDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteDownloadableDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideMeetingDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideAgendaItemDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideActivityStreamCommentDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideProductDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteActivityStreamPostDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteProductDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSubsessionDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDownloadableDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvidePoiDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteSubSessionDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteSessionDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouritePoiDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSpeakerDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteSpeakerDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideExhibitorDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteExhibitorDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNoteDaoProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDaoProviderProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideIgnitedHttpProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideOkUrlFactoryWrapperProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDatabaseProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNetworkSettingsProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideJsonManagerProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNotificationHandlerProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideReachabilityManagerProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideAppConfigProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDefaultSharedPreferencesProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideUserNotificationManagerProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;,
        Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideAppContextProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter",
        "<",
        "Lcom/genie_connect/android/ioc/AndroidModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final INCLUDES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final INJECTS:[Ljava/lang/String;

.field private static final STATIC_INJECTIONS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    const/16 v0, 0x2d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "members/com.genie_connect.android.repository.TagsV2Repository"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "members/com.genie_connect.common.services.dss.DataInitialisationOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "members/com.genie_connect.android.services.dss.DataInitialisationProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "members/com.genie_connect.android.services.dss.DeltaV2Provider"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "members/com.genie_connect.android.security.VisitorLoginManager"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "members/com.eventgenie.android.viewconfig.ViewConfigurationFactory"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "members/com.genie_connect.android.db.config.AppConfig"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "members/com.eventgenie.android.utils.social.youtube.YouTube"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "members/com.genie_connect.android.repository.NoteRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "members/com.genie_connect.android.repository.FavouriteExhibitorRepository"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "members/com.genie_connect.android.repository.ExhibitorRepository"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "members/com.genie_connect.android.repository.FavouriteSpeakerRepository"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "members/com.genie_connect.android.repository.FavouriteActivityStreamPostRepository"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "members/com.genie_connect.android.repository.FavouriteDownloadableRepository"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "members/com.genie_connect.android.repository.SpeakerRepository"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "members/com.genie_connect.android.repository.FavouriteProductRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "members/com.genie_connect.android.repository.ProductRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "members/com.genie_connect.android.repository.FavouritePoiRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "members/com.genie_connect.android.repository.FavouriteSessionRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "members/com.genie_connect.android.repository.FavouriteSubSessionRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "members/com.genie_connect.android.repository.PoiRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "members/com.genie_connect.android.repository.DownloadableRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "members/com.genie_connect.android.repository.SessionRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "members/com.genie_connect.android.repository.SubsessionRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "members/com.genie_connect.android.repository.VisitorRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "members/com.genie_connect.android.repository.VisitorGroupRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "members/com.genie_connect.android.repository.AgendaItemRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "members/com.genie_connect.android.repository.InfoPageRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "members/com.genie_connect.android.repository.ActivityStreamCommentRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "members/com.genie_connect.android.repository.TrackRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "members/com.genie_connect.android.repository.MeetingRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "members/com.genie_connect.android.bl.favourites.FavouriteManager"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.genie_connect.android.db.access.DaoProvider"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "members/com.genie_connect.android.services.UpdatesManager"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "members/com.eventgenie.android.utils.managers.UserNotificationManager"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "members/com.genie_connect.android.db.datastore.Datastore"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "members/de.greenrobot.event.EventBus"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "members/com.genie_connect.android.services.dss.DataSyncService"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "members/com.genie_connect.android.services.lss.LiveSyncService"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "members/com.genie_connect.android.net.providers.NetworkPersister"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "members/com.eventgenie.android.activities.others.ProoferSelectDataversionActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "members/com.eventgenie.android.activities.others.PreferencesActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "members/com.genie_connect.android.db.datastore.acl.Acl"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "members/com.genie_connect.android.repository.SurveyRepository"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "members/com.genie_connect.android.repository.VisitorSurveysRepository"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    .line 18
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 19
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 22
    const-class v1, Lcom/genie_connect/android/ioc/AndroidModule;

    sget-object v2, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v6, 0x1

    move-object v0, p0

    move v7, v4

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 23
    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lcom/genie_connect/android/ioc/AndroidModule;)V
    .locals 2
    .param p1, "bindings"    # Ldagger/internal/BindingsGroup;
    .param p2, "module"    # Lcom/genie_connect/android/ioc/AndroidModule;

    .prologue
    .line 36
    const-string v0, "@javax.inject.Named(value=appContext)/android.content.Context"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideAppContextProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideAppContextProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 37
    const-string v0, "de.greenrobot.event.EventBus"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 38
    const-string v0, "android.app.NotificationManager"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 39
    const-string v0, "com.eventgenie.android.utils.managers.UserNotificationManager"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideUserNotificationManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideUserNotificationManagerProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 40
    const-string v0, "@javax.inject.Named(value=defaultPrefs)/android.content.SharedPreferences"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDefaultSharedPreferencesProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDefaultSharedPreferencesProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.genie_connect.android.db.config.AppConfig"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideAppConfigProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideAppConfigProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.genie_connect.android.net.ReachabilityManager"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideReachabilityManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideReachabilityManagerProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.genie_connect.android.db.datastore.Datastore"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDataStoreProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 44
    const-string v0, "com.genie_connect.common.platform.INotificationHandler"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNotificationHandlerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNotificationHandlerProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 45
    const-string v0, "com.genie_connect.common.platform.json.IJsonManager"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideJsonManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideJsonManagerProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 46
    const-string v0, "com.genie_connect.common.platform.INetworkSettings"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNetworkSettingsProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNetworkSettingsProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.genie_connect.common.platform.db.IDatabase"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDatabaseProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDatabaseProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.genie_connect.common.net.OkUrlFactoryWrapper"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideOkUrlFactoryWrapperProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideOkUrlFactoryWrapperProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.github.ignition.support.http.IgnitedHttp"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideIgnitedHttpProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideIgnitedHttpProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.genie_connect.android.db.access.DaoProvider"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDaoProviderProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDaoProviderProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 51
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Note, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNoteDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideNoteDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 52
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.FavouriteExhibitor, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteExhibitorDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteExhibitorDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 53
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Exhibitor, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideExhibitorDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideExhibitorDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 54
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.FavouriteSpeaker, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteSpeakerDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteSpeakerDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 55
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Speaker, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSpeakerDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSpeakerDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 56
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.FavouritePoi, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouritePoiDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouritePoiDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 57
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.FavouriteSession, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteSessionDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteSessionDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 58
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.FavouriteSubSession, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteSubSessionDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteSubSessionDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 59
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Poi, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvidePoiDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvidePoiDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 60
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Downloadable, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDownloadableDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideDownloadableDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 61
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Session, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 62
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Subsession, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSubsessionDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSubsessionDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 63
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.FavouriteProduct, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteProductDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteProductDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 64
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.FavouriteActivityStreamPost, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteActivityStreamPostDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteActivityStreamPostDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 65
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Product, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideProductDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideProductDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 66
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.ActivityStreamComment, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideActivityStreamCommentDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideActivityStreamCommentDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 67
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.AgendaItem, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideAgendaItemDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideAgendaItemDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 68
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Meeting, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideMeetingDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideMeetingDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 69
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Track, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTrackDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 70
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.FavouriteDownloadable, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteDownloadableDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideFavouriteDownloadableDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 71
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.InfoPage, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideInfoPageeDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideInfoPageeDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 72
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Visitor, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideVisitorDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideVisitorDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 73
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.VisitorGroup, java.lang.String>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideVisitorGroupDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideVisitorGroupDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 74
    const-string v0, "@javax.inject.Named(value=subsessionRepository)/com.genie_connect.android.repository.FavouriteSubSessionRepository"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSubSessionRepositoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSubSessionRepositoryProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 75
    const-string v0, "@javax.inject.Named(value=sessionRepository)/com.genie_connect.android.repository.FavouriteSessionRepository"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionRepositoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSessionRepositoryProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 76
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Survey, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSurveysDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideSurveysDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 77
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.Visitorsurvey, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideVisitorSurveysDaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideVisitorSurveysDaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 78
    const-string v0, "de.greenrobot.dao.Dao<com.genie_connect.common.db.model.TagsV2, java.lang.Long>"

    new-instance v1, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTagsV2DaoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter$ProvideTagsV2DaoProvidesAdapter;-><init>(Lcom/genie_connect/android/ioc/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 79
    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ldagger/internal/BindingsGroup;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p2, Lcom/genie_connect/android/ioc/AndroidModule;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lcom/genie_connect/android/ioc/AndroidModule;)V

    return-void
.end method

.method public newModule()Lcom/genie_connect/android/ioc/AndroidModule;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-direct {v0}, Lcom/genie_connect/android/ioc/AndroidModule;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newModule()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/genie_connect/android/ioc/AndroidModule$$ModuleAdapter;->newModule()Lcom/genie_connect/android/ioc/AndroidModule;

    move-result-object v0

    return-object v0
.end method
