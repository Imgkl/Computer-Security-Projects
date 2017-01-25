.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;
.super Ljava/lang/Object;
.source "DataStructuresProcessor.java"

# interfaces
.implements Ljavax/cache/processor/EntryProcessor;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddAtomicProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/processor/EntryProcessor",
        "<",
        "Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;",
        ">;",
        "Lorg/apache/ignite/IgniteCheckedException;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1447
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .prologue
    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1462
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 1463
    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljavax/cache/processor/MutableEntry;
    .param p2, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .line 1447
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    return-object v0
.end method

.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 6
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/processor/MutableEntry",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;",
            ">;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/IgniteCheckedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .local p1, "entry":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;>;"
    const/4 v3, 0x0

    .line 1478
    invoke-interface {p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1480
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    if-nez v0, :cond_0

    .line 1481
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1483
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    invoke-interface {p1, v0}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 1502
    :goto_0
    return-object v3

    .line 1490
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 1492
    .local v2, "oldInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    if-nez v2, :cond_1

    .line 1493
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1495
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    invoke-interface {p1, v1}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    move-object v0, v1

    .line 1499
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    goto :goto_0

    .line 1502
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->validate(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1512
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 1514
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->readExternal(Ljava/io/ObjectInput;)V

    .line 1515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1519
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1507
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddAtomicProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1508
    return-void
.end method
