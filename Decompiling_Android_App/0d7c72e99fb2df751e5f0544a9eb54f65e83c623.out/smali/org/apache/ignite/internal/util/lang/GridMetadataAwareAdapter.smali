.class public Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;
.super Ljava/lang/Object;
.source "GridMetadataAwareAdapter.java"


# instance fields
.field private data:Lorg/apache/ignite/internal/util/GridLeanMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private mux:Lorg/apache/ignite/internal/util/GridMutex;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/ignite/internal/util/GridMutex;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridMutex;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/ignite/internal/util/GridMutex;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridMutex;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    .line 60
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 62
    :cond_0
    return-void
.end method

.method private ensureData(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 74
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 123
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "name"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v1

    .line 126
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->ensureData(I)Z

    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/GridLeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addMetaIfAbsent(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 278
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v1, "name"

    const-string/jumbo v2, "val"

    invoke-static {p1, v1, p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v2

    .line 281
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 284
    move-object v0, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    monitor-exit v2

    return-object v0

    .line 287
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addMetaIfAbsent(Ljava/util/UUID;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/util/UUID;
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 304
    .local p2, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    const-string v2, "name"

    const-string v3, "c"

    invoke-static {p1, v2, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v3

    .line 307
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->meta(Ljava/util/UUID;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 309
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 311
    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :cond_0
    :try_start_2
    monitor-exit v3

    return-object v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v2

    throw v2

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public allMeta()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    .line 217
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;->size()I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    monitor-exit v1

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 217
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 390
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;

    .line 392
    .local v0, "clone":Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridMutex;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/GridMutex;

    iput-object v2, v0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    .line 394
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 396
    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->copyMeta(Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    return-object v0

    .line 400
    .end local v0    # "clone":Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;
    :catch_0
    move-exception v1

    .line 401
    .local v1, "ignore":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public copyMeta(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;*>;"
    const-string v0, "data"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->ensureData(I)Z

    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->putAll(Ljava/util/Map;)V

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyMeta(Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;)V
    .locals 4
    .param p1, "from"    # Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;

    .prologue
    .line 86
    const-string v1, "from"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v2

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->allMeta()Ljava/util/Map;

    move-result-object v0

    .line 91
    .local v0, "m":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->ensureData(I)Z

    .line 93
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->allMeta()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/util/GridLeanMap;->putAll(Ljava/util/Map;)V

    .line 94
    monitor-exit v2

    .line 95
    return-void

    .line 94
    .end local v0    # "m":Ljava/util/Map;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasMeta(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "name"    # Ljava/util/UUID;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMeta(Ljava/util/UUID;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v1, "name"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public meta(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 141
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putMetaIfAbsent(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 255
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v1, "name"

    const-string/jumbo v2, "val"

    invoke-static {p1, v1, p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v2

    .line 258
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    monitor-exit v2

    .line 263
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    monitor-exit v2

    goto :goto_0

    .line 264
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected readExternalMeta(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 381
    .local v0, "cp":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v2

    .line 382
    :try_start_0
    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 383
    monitor-exit v2

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMeta(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    const-string v1, "name"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    if-nez v1, :cond_0

    .line 161
    monitor-exit v2

    .line 168
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridLeanMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 168
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 169
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMeta(Ljava/util/UUID;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 182
    const-string v2, "name"

    const-string/jumbo v3, "val"

    invoke-static {p1, v2, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v2

    .line 185
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    if-nez v3, :cond_0

    .line 186
    monitor-exit v2

    .line 196
    :goto_0
    return v1

    .line 188
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "old":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/GridLeanMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 197
    .end local v0    # "old":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 196
    .restart local v0    # "old":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public replaceMeta(Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "name"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 332
    .local p2, "curVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const-string v1, "name"

    const-string v3, "newVal"

    const-string v5, "curVal"

    move-object v0, p1

    move-object v2, p3

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v1

    .line 335
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->hasMeta(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v6

    .line 338
    .local v6, "val":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_0

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0, p1, p3}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const/4 v0, 0x1

    monitor-exit v1

    .line 345
    .end local v6    # "val":Ljava/lang/Object;, "TV;"
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected writeExternalMeta(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->mux:Lorg/apache/ignite/internal/util/GridMutex;

    monitor-enter v2

    .line 362
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;->data:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(Ljava/util/Map;)V

    .line 363
    .local v0, "cp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Object;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 366
    return-void

    .line 363
    .end local v0    # "cp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
