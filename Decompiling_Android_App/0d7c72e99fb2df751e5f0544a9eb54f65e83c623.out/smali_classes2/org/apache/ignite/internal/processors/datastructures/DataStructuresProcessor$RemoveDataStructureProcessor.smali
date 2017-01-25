.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;
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
    name = "RemoveDataStructureProcessor"
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
        "Ljava/lang/Boolean;",
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
    .line 1607
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .prologue
    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1620
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1622
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 1623
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
    .line 1607
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Lorg/apache/ignite/internal/util/typedef/T2;

    move-result-object v0

    return-object v0
.end method

.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Lorg/apache/ignite/internal/util/typedef/T2;
    .locals 7
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
            "Ljava/lang/Boolean;",
            "Lorg/apache/ignite/IgniteCheckedException;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "entry":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<Lorg/apache/ignite/internal/processors/datastructures/CacheDataStructuresConfigurationKey;Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1637
    invoke-interface {p1}, Ljavax/cache/processor/MutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1639
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    if-nez v1, :cond_0

    .line 1640
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1657
    :goto_0
    return-object v4

    .line 1642
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 1644
    .local v3, "oldInfo":Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;
    if-nez v3, :cond_1

    .line 1645
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1647
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->validate(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;Z)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    .line 1649
    .local v0, "err":Lorg/apache/ignite/IgniteCheckedException;
    if-nez v0, :cond_2

    .line 1650
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1652
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->access$1000(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    invoke-interface {p1, v2}, Ljavax/cache/processor/MutableEntry;->setValue(Ljava/lang/Object;)V

    move-object v1, v2

    .line 1657
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;>;"
    :cond_2
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/T2;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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
    .line 1667
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    .line 1669
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->readExternal(Ljava/io/ObjectInput;)V

    .line 1670
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1674
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;

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
    .line 1662
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$RemoveDataStructureProcessor;->info:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1663
    return-void
.end method
