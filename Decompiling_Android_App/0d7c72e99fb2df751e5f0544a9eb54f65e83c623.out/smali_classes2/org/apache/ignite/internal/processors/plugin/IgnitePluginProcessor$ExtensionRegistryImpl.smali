.class Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;
.super Ljava/lang/Object;
.source "IgnitePluginProcessor.java"

# interfaces
.implements Lorg/apache/ignite/plugin/ExtensionRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtensionRegistryImpl"
.end annotation


# instance fields
.field private final extensionsCollector:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;->extensionsCollector:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$1;

    .prologue
    .line 227
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtensionMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v2, Ljava/util/HashMap;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;->extensionsCollector:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v2, v6, v7}, Ljava/util/HashMap;-><init>(IF)V

    .line 250
    .local v2, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/Object;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;->extensionsCollector:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 253
    .local v1, "extensionItf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 255
    .local v5, "implementations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, [Ljava/lang/Object;

    .line 257
    .local v4, "implArr":[Ljava/lang/Object;
    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 259
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v1    # "extensionItf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "implArr":[Ljava/lang/Object;
    .end local v5    # "implementations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    return-object v2
.end method

.method public registerExtension(Ljava/lang/Class;Lorg/apache/ignite/plugin/Extension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/Extension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "extensionItf":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "extensionImpl":Lorg/apache/ignite/plugin/Extension;, "TT;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;->extensionsCollector:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 235
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;->extensionsCollector:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method
