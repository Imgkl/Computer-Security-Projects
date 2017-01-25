.class final Lcom/genie_connect/android/db/datastore/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static final PRIMARY:I = 0x0

.field private static final SECONDARY:I = 0x1


# instance fields
.field private final mAppConfigArray:[Lcom/genie_connect/android/db/config/AppConfig;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/genie_connect/android/db/config/AppConfig;

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/ConfigManager;->mAppConfigArray:[Lcom/genie_connect/android/db/config/AppConfig;

    return-void
.end method


# virtual methods
.method protected declared-synchronized getConfigPrimary()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/ConfigManager;->mAppConfigArray:[Lcom/genie_connect/android/db/config/AppConfig;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getConfigSecondary()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/ConfigManager;->mAppConfigArray:[Lcom/genie_connect/android/db/config/AppConfig;

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setConfigPrimary(Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 4
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ CONFIG: Setting PRIMARY config to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/ConfigManager;->mAppConfigArray:[Lcom/genie_connect/android/db/config/AppConfig;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 53
    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigPrimary()Lcom/genie_connect/android/db/config/AppConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setConfigSecondary(Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 4
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigSecondary()Lcom/genie_connect/android/db/config/AppConfig;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ CONFIG: Setting SECONDARY config to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/ConfigManager;->mAppConfigArray:[Lcom/genie_connect/android/db/config/AppConfig;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 62
    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigSecondary()Lcom/genie_connect/android/db/config/AppConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
