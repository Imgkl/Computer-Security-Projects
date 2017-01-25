.class final Lorg/apache/ignite/internal/util/GridCollections$LockedMap;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "GridCollections.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lorg/apache/ignite/internal/util/GridCollections$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/GridCollections$1;

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 274
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    .line 279
    return-void

    .line 277
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 128
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 140
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 221
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridCollections$LockedSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridCollections$LockedSet;-><init>(Ljava/util/Set;Lorg/apache/ignite/internal/util/GridCollections$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 233
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 236
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 248
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 116
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 197
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridCollections$LockedSet;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridCollections$LockedSet;-><init>(Ljava/util/Set;Lorg/apache/ignite/internal/util/GridCollections$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 104
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 257
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCollections$LockedMap;, "Lorg/apache/ignite/internal/util/GridCollections$LockedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->lock()V

    .line 209
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridCollections$LockedCollection;-><init>(Ljava/util/Collection;Lorg/apache/ignite/internal/util/GridCollections$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridCollections$LockedMap;->unlock()V

    throw v0
.end method
