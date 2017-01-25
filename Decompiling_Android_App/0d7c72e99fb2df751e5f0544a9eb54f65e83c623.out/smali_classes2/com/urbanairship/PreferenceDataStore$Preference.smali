.class Lcom/urbanairship/PreferenceDataStore$Preference;
.super Ljava/lang/Object;
.source "PreferenceDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/PreferenceDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Preference"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/urbanairship/PreferenceDataStore;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    .line 346
    iput-object p3, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->value:Ljava/lang/String;

    .line 347
    invoke-direct {p0}, Lcom/urbanairship/PreferenceDataStore$Preference;->registerObserver()V

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/PreferenceDataStore$Preference;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/PreferenceDataStore$Preference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference;->writeValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/urbanairship/PreferenceDataStore$Preference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/PreferenceDataStore$Preference;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    return-object v0
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    .line 466
    new-instance v0, Lcom/urbanairship/PreferenceDataStore$Preference$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/urbanairship/PreferenceDataStore$Preference$2;-><init>(Lcom/urbanairship/PreferenceDataStore$Preference;Landroid/os/Handler;)V

    .line 481
    .local v0, "observer":Landroid/database/ContentObserver;
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 482
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    # getter for: Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;
    invoke-static {v2}, Lcom/urbanairship/PreferenceDataStore;->access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/urbanairship/UrbanAirshipResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 483
    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    monitor-exit p0

    .line 411
    :goto_0
    return-void

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->value:Ljava/lang/String;

    .line 408
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    # invokes: Lcom/urbanairship/PreferenceDataStore;->onPreferenceChanged(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/urbanairship/PreferenceDataStore;->access$100(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private writeValue(Ljava/lang/String;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    monitor-enter p0

    .line 422
    if-nez p1, :cond_1

    .line 423
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreferenceDataStore - Removing preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    # getter for: Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;
    invoke-static {v3}, Lcom/urbanairship/PreferenceDataStore;->access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;

    move-result-object v3

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/urbanairship/UrbanAirshipResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    :goto_0
    monitor-exit p0

    .line 431
    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 424
    goto :goto_0

    .line 427
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreferenceDataStore - Saving preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 428
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .local v0, "values":Landroid/content/ContentValues;
    const-string v3, "_id"

    iget-object v4, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v3, "value"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v3, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    # getter for: Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;
    invoke-static {v3}, Lcom/urbanairship/PreferenceDataStore;->access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;

    move-result-object v3

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/urbanairship/UrbanAirshipResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 433
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "values":Landroid/content/ContentValues;
    :cond_2
    move v1, v2

    .line 431
    goto :goto_2
.end method


# virtual methods
.method get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->value:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method put(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference;->setValue(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    iget-object v0, v0, Lcom/urbanairship/PreferenceDataStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/PreferenceDataStore$Preference$1;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference$1;-><init>(Lcom/urbanairship/PreferenceDataStore$Preference;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method putSync(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference;->writeValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference;->setValue(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x1

    monitor-exit p0

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method syncValue()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 440
    const/4 v6, 0x0

    .line 442
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 443
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    # getter for: Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;
    invoke-static {v0}, Lcom/urbanairship/PreferenceDataStore;->access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/UrbanAirshipResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 446
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    if-eqz v6, :cond_3

    .line 449
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 455
    :goto_1
    if-eqz v6, :cond_0

    .line 456
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_0
    return-void

    .line 446
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 455
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_1

    .line 456
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    move-object v0, v7

    .line 449
    goto :goto_0

    .line 451
    :cond_3
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceDataStore - Unable to get preference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " database. Falling back to cached value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method
