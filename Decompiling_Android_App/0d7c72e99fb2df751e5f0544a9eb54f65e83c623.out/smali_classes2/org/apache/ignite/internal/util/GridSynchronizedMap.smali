.class public Lorg/apache/ignite/internal/util/GridSynchronizedMap;
.super Lorg/jsr166/ConcurrentHashMap8;
.source "GridSynchronizedMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jsr166/ConcurrentHashMap8",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/util/GridSynchronizedMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridSynchronizedMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/jsr166/ConcurrentHashMap8;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/jsr166/ConcurrentHashMap8;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 93
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 94
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/internal/util/GridSynchronizedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSynchronizedMap;->size()I

    move-result v1

    .line 98
    .local v1, "mapSize":I
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridSynchronizedMap;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eq v1, v2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid map size after reading [size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mapSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v0    # "i":I
    .end local v1    # "mapSize":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 99
    .restart local v0    # "i":I
    .restart local v1    # "mapSize":I
    .restart local v2    # "size":I
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 60
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public declared-synchronized remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
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

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/jsr166/ConcurrentHashMap8;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/jsr166/ConcurrentHashMap8;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
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

.method public declared-synchronized writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSynchronizedMap;, "Lorg/apache/ignite/internal/util/GridSynchronizedMap<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSynchronizedMap;->size()I

    move-result v2

    .line 77
    .local v2, "size":I
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 79
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSynchronizedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 83
    add-int/lit8 v2, v2, -0x1

    .line 84
    goto :goto_0

    .line 86
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridSynchronizedMap;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number of entries written: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 87
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "size":I
    :cond_1
    monitor-exit p0

    return-void
.end method
