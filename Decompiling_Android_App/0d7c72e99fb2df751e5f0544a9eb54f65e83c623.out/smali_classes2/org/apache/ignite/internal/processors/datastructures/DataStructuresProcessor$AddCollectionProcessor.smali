.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;
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
    name = "AddCollectionProcessor"
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
        "Lorg/apache/ignite/internal/util/typedef/T2",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/IgniteCheckedException;",
        ">;>;",
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
    .line 1526
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1550
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .prologue
    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1540
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1600(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1542
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 1543
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
    .line 1526
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Lorg/apache/ignite/internal/util/typedef/T2;

    move-result-object v0

    return-object v0
.end method

.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Lorg/apache/ignite/internal/util/typedef/T2;
    .locals 8
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
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/IgniteCheckedException;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "entry":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;>;"
    const/4 v6, 0x0

    .line 1557
    invoke-interface {p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1559
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->info:Ljava/lang/Object;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1600(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;

    .line 1561
    .local v0, "colInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;
    if-nez v1, :cond_0

    .line 1562
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1564
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    invoke-interface {p1, v1}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 1568
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/T2;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->cacheName:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->access$1700(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1583
    :goto_0
    return-object v4

    .line 1571
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 1573
    .local v3, "oldInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    if-nez v3, :cond_1

    .line 1574
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1576
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    invoke-interface {p1, v2}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    .line 1580
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/T2;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->cacheName:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->access$1700(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    goto :goto_0

    .line 1583
    :cond_1
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/T2;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->cacheName:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;->access$1700(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$CollectionInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->validate(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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
    .line 1593
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 1595
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->readExternal(Ljava/io/ObjectInput;)V

    .line 1596
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1600
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;

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
    .line 1588
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$AddCollectionProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1589
    return-void
.end method
