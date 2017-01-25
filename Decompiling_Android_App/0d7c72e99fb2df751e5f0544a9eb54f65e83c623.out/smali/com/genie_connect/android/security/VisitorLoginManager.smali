.class public Lcom/genie_connect/android/security/VisitorLoginManager;
.super Lcom/genie_connect/android/security/BaseLoginManager;
.source "VisitorLoginManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final GUEST_MODE_ENABLED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static cInstance:Lcom/genie_connect/android/security/VisitorLoginManager;


# instance fields
.field private _loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

.field private mContext:Landroid/content/Context;

.field private mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/genie_connect/android/security/VisitorLoginManager;->GUEST_MODE_ENABLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/datastore/Datastore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "datastore"    # Lcom/genie_connect/android/db/datastore/Datastore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/genie_connect/android/security/BaseLoginManager;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 60
    return-void
.end method

.method private getNamespace()J
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v1, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    return-wide v0
.end method

.method public static instance()Lcom/genie_connect/android/security/VisitorLoginManager;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/genie_connect/android/security/VisitorLoginManager;->cInstance:Lcom/genie_connect/android/security/VisitorLoginManager;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v1, Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/security/VisitorLoginManager;

    sput-object v0, Lcom/genie_connect/android/security/VisitorLoginManager;->cInstance:Lcom/genie_connect/android/security/VisitorLoginManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/genie_connect/android/security/VisitorLoginManager;->cInstance:Lcom/genie_connect/android/security/VisitorLoginManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized doCheckFavouriteSecurity(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->doCheckFavouriteSecurity(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doCheckFavouriteSecurity(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "showLoginDialog"    # Z

    .prologue
    const/4 v3, 0x0

    .line 76
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 77
    .local v0, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_STAR:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-virtual {v4, p2, v5}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v1

    .line 80
    .local v1, "isFavouritingEnabled":Z
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_SERVER_VALIDATED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-virtual {v4, p2, v5}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;->isActionAllowed(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;)Z

    move-result v2

    .line 83
    .local v2, "isServerSideValidationRequired":Z
    if-nez v1, :cond_1

    .line 85
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->favorites_title:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->FAVOURITES_DISABLED:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    new-instance v6, Lcom/genie_connect/android/security/VisitorLoginManager$1;

    invoke-direct {v6, p0}, Lcom/genie_connect/android/security/VisitorLoginManager$1;-><init>(Lcom/genie_connect/android/security/VisitorLoginManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 96
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->isSecureFavourites()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated(J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 99
    if-eqz p3, :cond_0

    .line 100
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->favorites_title:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->FAVOURITES_SECURED:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->favourite_login_title:I

    new-instance v6, Lcom/genie_connect/android/security/VisitorLoginManager$3;

    invoke-direct {v6, p0, p1}, Lcom/genie_connect/android/security/VisitorLoginManager$3;-><init>(Lcom/genie_connect/android/security/VisitorLoginManager;Landroid/app/Activity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->alert_dialog_cancel:I

    new-instance v6, Lcom/genie_connect/android/security/VisitorLoginManager$2;

    invoke-direct {v6, p0}, Lcom/genie_connect/android/security/VisitorLoginManager$2;-><init>(Lcom/genie_connect/android/security/VisitorLoginManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    .end local v1    # "isFavouritingEnabled":Z
    .end local v2    # "isServerSideValidationRequired":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 122
    .restart local v0    # "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    .restart local v1    # "isFavouritingEnabled":Z
    .restart local v2    # "isServerSideValidationRequired":Z
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized doGenericVisitorLogin(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x138a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getVisitorAuthString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getNamespace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorAuthString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisitorAuthString(J)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # J

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials(J)Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getAuthString(Lcom/genie_connect/android/net/container/LoginCredentials;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getNamespace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials(J)Lcom/genie_connect/android/net/container/LoginCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVisitorCredentials(J)Lcom/genie_connect/android/net/container/LoginCredentials;
    .locals 11
    .param p1, "namespace"    # J

    .prologue
    const/4 v8, 0x0

    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v3

    .line 158
    .local v3, "prefs":Lcom/genie_connect/android/prefs/NamespacedPreferences;
    invoke-virtual {v3}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->getVisitorUsername()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "prefs_username":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->getVisitorPassword()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "prefs_password":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->getVisitorRecord()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 163
    .local v6, "prefs_visitorObject":Ljava/lang/String;
    :try_start_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 165
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 166
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->localDecrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 172
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->localDecrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-lez v7, :cond_3

    .line 180
    :try_start_2
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-nez v7, :cond_0

    .line 181
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->localDecrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-class v9, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v1, v7, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    iput-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    .line 197
    .local v2, "isVisitorObjectOk":Z
    :goto_0
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v2, :cond_5

    .line 198
    new-instance v7, Lcom/genie_connect/android/net/container/LoginCredentials;

    iget-object v9, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-direct {v7, v5, v4, v9}, Lcom/genie_connect/android/net/container/LoginCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "isVisitorObjectOk":Z
    :goto_1
    monitor-exit p0

    return-object v7

    .restart local v1    # "gson":Lcom/google/gson/Gson;
    :cond_1
    move-object v7, v8

    .line 168
    goto :goto_1

    :cond_2
    move-object v7, v8

    .line 174
    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ LOGINMANAGER: Error reading visitor: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    move-object v7, v8

    .line 188
    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v7, v8

    .line 191
    goto :goto_1

    .line 195
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 203
    .restart local v2    # "isVisitorObjectOk":Z
    :cond_5
    const-string v7, "^ LOGINMANAGER: Final check error."

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v8

    .line 204
    goto :goto_1

    .line 207
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "isVisitorObjectOk":Z
    :catch_1
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ LOGINMANAGER: Exception while reading credentials: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 209
    const/4 v7, 0x0

    invoke-virtual {p0, p1, p2, v7}, Lcom/genie_connect/android/security/VisitorLoginManager;->setVisitorCredentials(JLcom/genie_connect/android/net/container/LoginCredentials;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v8

    .line 212
    goto :goto_1

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "prefs":Lcom/genie_connect/android/prefs/NamespacedPreferences;
    .end local v4    # "prefs_password":Ljava/lang/String;
    .end local v5    # "prefs_username":Ljava/lang/String;
    .end local v6    # "prefs_visitorObject":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .locals 4

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_0
    monitor-exit p0

    return-object v1

    .line 221
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getNamespace()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials(J)Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v0

    .line 222
    .local v0, "creds":Lcom/genie_connect/android/net/container/LoginCredentials;
    if-nez v0, :cond_1

    .line 223
    const/4 v1, 0x0

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 217
    .end local v0    # "creds":Lcom/genie_connect/android/net/container/LoginCredentials;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isGuestModeEnabled()Z
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/genie_connect/android/security/VisitorLoginManager;->GUEST_MODE_ENABLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isVisitorAuthenticated()Z
    .locals 2

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getNamespace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isVisitorAuthenticated(J)Z
    .locals 3
    .param p1, "namespace"    # J

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorAuthString(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 239
    .local v0, "auth_string":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 238
    .end local v0    # "auth_string":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setGuestModeEnabled(Z)V
    .locals 1
    .param p1, "guestModeEnabled"    # Z

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/genie_connect/android/security/VisitorLoginManager;->GUEST_MODE_ENABLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVisitorCredentials(JLcom/genie_connect/android/net/container/LoginCredentials;)V
    .locals 11
    .param p1, "namespace"    # J
    .param p3, "cred"    # Lcom/genie_connect/android/net/container/LoginCredentials;

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 253
    .local v6, "gson":Lcom/google/gson/Gson;
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 256
    .local v2, "editor":Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    const/4 v4, 0x0

    .line 257
    .local v4, "enc_uname":Ljava/lang/String;
    const/4 v3, 0x0

    .line 258
    .local v3, "enc_pass":Ljava/lang/String;
    const/4 v5, 0x0

    .line 260
    .local v5, "enc_visitor":Ljava/lang/String;
    if-nez p3, :cond_2

    const/4 v0, 0x1

    .line 262
    .local v0, "doBlank":Z
    :goto_0
    if-nez v0, :cond_0

    .line 264
    :try_start_1
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->localEncrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/genie_connect/android/net/container/LoginCredentials;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->localEncrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {p3}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 268
    iget-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->localEncrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-virtual {p3}, Lcom/genie_connect/android/net/container/LoginCredentials;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v7

    iput-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    const/4 v0, 0x0

    .line 284
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 285
    :try_start_2
    const-string v7, "^ LOGINMANAGER: Removing Visitor Credentials"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 286
    const-string v3, ""

    .line 287
    const-string v4, ""

    .line 288
    const-string v5, ""

    .line 289
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 293
    :cond_1
    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setVisitorGameScore(J)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    .line 294
    invoke-virtual {v2, v4}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setVisitorUsername(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    .line 295
    invoke-virtual {v2, v3}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setVisitorPassword(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    .line 296
    invoke-virtual {v2, v5}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setVisitorRecord(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    .line 298
    invoke-virtual {v2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 260
    .end local v0    # "doBlank":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    .restart local v0    # "doBlank":Z
    :cond_3
    :try_start_3
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Attempting to persist Visitor data by visitor is null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ LOGINMANAGER: Error encypting uname/pass for Visitor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    const/4 v0, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "doBlank":Z
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "editor":Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .end local v3    # "enc_pass":Ljava/lang/String;
    .end local v4    # "enc_uname":Ljava/lang/String;
    .end local v5    # "enc_visitor":Ljava/lang/String;
    .end local v6    # "gson":Lcom/google/gson/Gson;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized setVisitorCredentials(Lcom/genie_connect/android/net/container/LoginCredentials;)V
    .locals 2
    .param p1, "cred"    # Lcom/genie_connect/android/net/container/LoginCredentials;

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getNamespace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/genie_connect/android/security/VisitorLoginManager;->setVisitorCredentials(JLcom/genie_connect/android/net/container/LoginCredentials;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized signOut(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->setGuestModeEnabled(Z)V

    .line 304
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyLoginStateChange(Landroid/content/Context;Z)Z

    .line 307
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 308
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "user_session_uid"

    invoke-static {}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->createUID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 312
    invoke-static {p1}, Lcom/genie_connect/android/db/access/Udm;->clearLocalUserStore(Landroid/content/Context;)V

    .line 313
    new-instance v3, Lcom/genie_connect/android/net/container/LoginCredentials;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/android/net/container/LoginCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->setVisitorCredentials(Lcom/genie_connect/android/net/container/LoginCredentials;)V

    .line 314
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 316
    const-string v3, "Logout"

    invoke-static {p1, v3}, Lcom/eventgenie/android/push/UrbanAirshipControl;->updateUrbanAirshipAlias(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.eventgenie.android.USER_LOGOUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 302
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized updateVisitorProfile(JLorg/json/JSONObject;)V
    .locals 7
    .param p1, "namespace"    # J
    .param p3, "profile"    # Lorg/json/JSONObject;

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    const-string v5, "data"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    const-string v5, "data"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 338
    .local v4, "profileActual":Lorg/json/JSONObject;
    :goto_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 340
    .local v3, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    iput-object v5, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->_loggedInVisitor:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    if-eqz v4, :cond_1

    .line 344
    :try_start_1
    iget-object v5, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->localEncrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "enc_visitor":Ljava/lang/String;
    iget-object v5, p0, Lcom/genie_connect/android/security/VisitorLoginManager;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v1

    .line 347
    .local v1, "editor":Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    invoke-virtual {v1, v2}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setVisitorRecord(Ljava/lang/String;)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    .line 348
    invoke-virtual {v1}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    .end local v1    # "editor":Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;
    .end local v2    # "enc_visitor":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-void

    .line 335
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "profileActual":Lorg/json/JSONObject;
    :cond_0
    move-object v4, p3

    .restart local v4    # "profileActual":Lorg/json/JSONObject;
    goto :goto_0

    .line 350
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    :cond_1
    :try_start_2
    const-string v5, "^ LOGINMANAGER: Attempting to persist Visitor profile but visitor is null!"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ LOGINMANAGER: Error encypting profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "profileActual":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized updateVisitorProfile(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "profile"    # Lorg/json/JSONObject;

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getNamespace()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/genie_connect/android/security/VisitorLoginManager;->updateVisitorProfile(JLorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
