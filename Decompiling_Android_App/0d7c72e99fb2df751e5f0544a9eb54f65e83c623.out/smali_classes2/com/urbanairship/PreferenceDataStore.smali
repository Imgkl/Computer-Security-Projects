.class public final Lcom/urbanairship/PreferenceDataStore;
.super Ljava/lang/Object;
.source "PreferenceDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/PreferenceDataStore$Preference;,
        Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final MODE_MULTI_PROCESS:I = 0x4

.field private static final WHERE_CLAUSE_KEY:Ljava/lang/String; = "_id = ?"


# instance fields
.field executor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/PreferenceDataStore$Preference;",
            ">;"
        }
    .end annotation
.end field

.field private resolver:Lcom/urbanairship/UrbanAirshipResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Lcom/urbanairship/UrbanAirshipResolver;

    invoke-direct {v0, p1}, Lcom/urbanairship/UrbanAirshipResolver;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/urbanairship/PreferenceDataStore;-><init>(Lcom/urbanairship/UrbanAirshipResolver;)V

    .line 83
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/UrbanAirshipResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/urbanairship/UrbanAirshipResolver;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->executor:Ljava/util/concurrent/Executor;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/PreferenceDataStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->onPreferenceChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;

    return-object v0
.end method

.method private getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    monitor-enter v2

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/PreferenceDataStore$Preference;

    .line 294
    .local v0, "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    :goto_0
    monitor-exit v2

    .line 296
    return-object v0

    .line 291
    .end local v0    # "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    :cond_0
    new-instance v0, Lcom/urbanairship/PreferenceDataStore$Preference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;-><init>(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .restart local v0    # "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 294
    .end local v0    # "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private migratePreferencesFromFileToDb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shareName"    # Ljava/lang/String;

    .prologue
    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreferenceDataStore - Migrating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 315
    const/4 v5, 0x4

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 317
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 318
    .local v4, "prefsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreferenceDataStore - Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " preferences to migrate."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 320
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 321
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 322
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreferenceDataStore - Adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to the insert."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 324
    iget-object v6, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    monitor-enter v6

    .line 325
    :try_start_0
    new-instance v2, Lcom/urbanairship/PreferenceDataStore$Preference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, p0, v5, v7}, Lcom/urbanairship/PreferenceDataStore$Preference;-><init>(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v2, "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    iget-object v5, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    monitor-exit v6

    goto :goto_0

    .end local v2    # "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 330
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreferenceDataStore - Migration finished, deleting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 331
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private onPreferenceChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v3, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    .line 273
    .local v1, "listener":Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;
    invoke-interface {v1, p1}, Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;->onPreferenceChange(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    return-void
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v1

    .line 99
    :cond_0
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 173
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .line 171
    .restart local p2    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 215
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 213
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 194
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 192
    .restart local p2    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method loadAll()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/UrbanAirshipResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 130
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 121
    .local v8, "keyIndex":I
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 123
    .local v10, "valueIndex":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "value":Ljava/lang/String;
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    new-instance v1, Lcom/urbanairship/PreferenceDataStore$Preference;

    invoke-direct {v1, p0, v7, v9}, Lcom/urbanairship/PreferenceDataStore$Preference;-><init>(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method migrateSharedPreferences(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    const-string v0, "com.urbanairship.user"

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/PreferenceDataStore;->migratePreferencesFromFileToDb(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    const-string v0, "com.urbanairship.push"

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/PreferenceDataStore;->migratePreferencesFromFileToDb(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 247
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 248
    .local v0, "stringValue":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 249
    return-void

    .line 247
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public putSync(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 261
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 262
    .local v0, "stringValue":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->putSync(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 261
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public removeListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSync(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/PreferenceDataStore;->putSync(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
