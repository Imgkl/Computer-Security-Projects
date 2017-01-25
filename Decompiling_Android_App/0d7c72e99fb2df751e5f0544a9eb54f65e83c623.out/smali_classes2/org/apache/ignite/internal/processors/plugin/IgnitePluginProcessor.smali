.class public Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "IgnitePluginProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$1;,
        Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;
    }
.end annotation


# instance fields
.field private volatile extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginCtxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/plugin/PluginProvider;",
            "Lorg/apache/ignite/internal/GridPluginContext;",
            ">;"
        }
    .end annotation
.end field

.field private final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/plugin/PluginProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/configuration/IgniteConfiguration;)V
    .locals 17
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 37
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    .line 40
    new-instance v13, Ljava/util/IdentityHashMap;

    invoke-direct {v13}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->pluginCtxMap:Ljava/util/Map;

    .line 54
    new-instance v12, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;-><init>(Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$1;)V

    .line 56
    .local v12, "registry":Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPluginConfigurations()[Lorg/apache/ignite/plugin/PluginConfiguration;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 57
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPluginConfigurations()[Lorg/apache/ignite/plugin/PluginConfiguration;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/ignite/plugin/PluginConfiguration;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_4

    aget-object v9, v2, v5

    .line 58
    .local v9, "pluginCfg":Lorg/apache/ignite/plugin/PluginConfiguration;
    new-instance v10, Lorg/apache/ignite/internal/GridPluginContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v9, v1}, Lorg/apache/ignite/internal/GridPluginContext;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/plugin/PluginConfiguration;Lorg/apache/ignite/configuration/IgniteConfiguration;)V

    .line 63
    .local v10, "pluginCtx":Lorg/apache/ignite/internal/GridPluginContext;
    :try_start_0
    invoke-interface {v9}, Lorg/apache/ignite/plugin/PluginConfiguration;->providerClass()Ljava/lang/Class;

    move-result-object v13

    if-nez v13, :cond_0

    .line 64
    new-instance v13, Lorg/apache/ignite/IgniteException;

    const-string v14, "Provider class is null."

    invoke-direct {v13, v14}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 84
    :catch_0
    move-exception v4

    .line 85
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v13, Lorg/apache/ignite/IgniteException;

    const-string v14, "Failed to create plugin provider instance."

    invoke-direct {v13, v14, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 67
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :try_start_1
    invoke-interface {v9}, Lorg/apache/ignite/plugin/PluginConfiguration;->providerClass()Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Lorg/apache/ignite/plugin/PluginContext;

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 70
    .local v3, "ctr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/ignite/plugin/PluginProvider;>;"
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/plugin/PluginProvider;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 88
    .end local v3    # "ctr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/ignite/plugin/PluginProvider;>;"
    .local v11, "provider":Lorg/apache/ignite/plugin/PluginProvider;
    :goto_2
    invoke-interface {v11}, Lorg/apache/ignite/plugin/PluginProvider;->name()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 89
    new-instance v13, Lorg/apache/ignite/IgniteException;

    const-string v14, "Plugin name can not be empty."

    invoke-direct {v13, v14}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 72
    .end local v11    # "provider":Lorg/apache/ignite/plugin/PluginProvider;
    :catch_1
    move-exception v6

    .line 74
    .local v6, "ignore":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-interface {v9}, Lorg/apache/ignite/plugin/PluginConfiguration;->providerClass()Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 77
    .restart local v3    # "ctr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/ignite/plugin/PluginProvider;>;"
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/plugin/PluginProvider;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    .restart local v11    # "provider":Lorg/apache/ignite/plugin/PluginProvider;
    goto :goto_2

    .line 79
    .end local v3    # "ctr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/ignite/plugin/PluginProvider;>;"
    .end local v11    # "provider":Lorg/apache/ignite/plugin/PluginProvider;
    :catch_2
    move-exception v7

    .line 80
    .local v7, "ignored":Ljava/lang/NoSuchMethodException;
    :try_start_3
    invoke-interface {v9}, Lorg/apache/ignite/plugin/PluginConfiguration;->providerClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/plugin/PluginProvider;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    .restart local v11    # "provider":Lorg/apache/ignite/plugin/PluginProvider;
    goto :goto_2

    .line 91
    .end local v6    # "ignore":Ljava/lang/NoSuchMethodException;
    .end local v7    # "ignored":Ljava/lang/NoSuchMethodException;
    :cond_1
    invoke-interface {v11}, Lorg/apache/ignite/plugin/PluginProvider;->plugin()Lorg/apache/ignite/plugin/IgnitePlugin;

    move-result-object v13

    if-nez v13, :cond_2

    .line 92
    new-instance v13, Lorg/apache/ignite/IgniteException;

    const-string v14, "Plugin is null."

    invoke-direct {v13, v14}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 94
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    invoke-interface {v11}, Lorg/apache/ignite/plugin/PluginProvider;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 95
    new-instance v13, Lorg/apache/ignite/IgniteException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicated plugin name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Lorg/apache/ignite/plugin/PluginProvider;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 97
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    invoke-interface {v11}, Lorg/apache/ignite/plugin/PluginProvider;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->pluginCtxMap:Ljava/util/Map;

    invoke-interface {v13, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {v11, v10, v12}, Lorg/apache/ignite/plugin/PluginProvider;->initExtensions(Lorg/apache/ignite/plugin/PluginContext;Lorg/apache/ignite/plugin/ExtensionRegistry;)V

    .line 57
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 105
    .end local v2    # "arr$":[Lorg/apache/ignite/plugin/PluginConfiguration;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "pluginCfg":Lorg/apache/ignite/plugin/PluginConfiguration;
    .end local v10    # "pluginCtx":Lorg/apache/ignite/internal/GridPluginContext;
    .end local v11    # "provider":Lorg/apache/ignite/plugin/PluginProvider;
    :cond_4
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor$ExtensionRegistryImpl;->createExtensionMap()Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->extensions:Ljava/util/Map;

    .line 106
    return-void

    .line 84
    .restart local v2    # "arr$":[Lorg/apache/ignite/plugin/PluginConfiguration;
    .restart local v5    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "pluginCfg":Lorg/apache/ignite/plugin/PluginConfiguration;
    .restart local v10    # "pluginCtx":Lorg/apache/ignite/internal/GridPluginContext;
    :catch_3
    move-exception v4

    goto/16 :goto_1

    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method private ackPluginsInfo()V
    .locals 5

    .prologue
    .line 209
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Configured plugins:"

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 211
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "  ^-- None"

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, ""

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/plugin/PluginProvider;

    .line 217
    .local v1, "plugin":Lorg/apache/ignite/plugin/PluginProvider;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ^-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/plugin/PluginProvider;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/plugin/PluginProvider;->version()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ^-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/plugin/PluginProvider;->copyright()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, ""

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public allProviders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/plugin/PluginProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public collectDiscoveryData(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "discData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 176
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/plugin/PluginProvider;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/plugin/PluginProvider;

    invoke-interface {v4, p1}, Lorg/apache/ignite/plugin/PluginProvider;->provideDiscoveryData(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 179
    if-nez v1, :cond_1

    .line 180
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "discData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 182
    .restart local v1    # "discData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    .end local v0    # "data":Ljava/lang/Object;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/plugin/PluginProvider;>;"
    :cond_2
    return-object v1
.end method

.method public createComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/plugin/PluginProvider;

    .line 150
    .local v3, "plugin":Lorg/apache/ignite/plugin/PluginProvider;
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->pluginContextForProvider(Lorg/apache/ignite/plugin/PluginProvider;)Lorg/apache/ignite/plugin/PluginContext;

    move-result-object v1

    .line 152
    .local v1, "ctx":Lorg/apache/ignite/plugin/PluginContext;
    invoke-interface {v3, v1, p1}, Lorg/apache/ignite/plugin/PluginProvider;->createComponent(Lorg/apache/ignite/plugin/PluginContext;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "comp":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 158
    .end local v0    # "comp":Ljava/lang/Object;, "TT;"
    .end local v1    # "ctx":Lorg/apache/ignite/plugin/PluginContext;
    .end local v3    # "plugin":Lorg/apache/ignite/plugin/PluginProvider;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->PLUGIN:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    return-object v0
.end method

.method public extensions(Ljava/lang/Class;)[Lorg/apache/ignite/plugin/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/Extension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 113
    .local p1, "extensionItf":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->extensions:Ljava/util/Map;

    .line 115
    .local v0, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/ignite/plugin/Extension;

    check-cast v1, [Lorg/apache/ignite/plugin/Extension;

    return-object v1
.end method

.method public onDiscoveryDataReceived(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "rmtNodeId"    # Ljava/util/UUID;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 191
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    .line 193
    .local v0, "discData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/plugin/PluginProvider;

    .line 197
    .local v3, "provider":Lorg/apache/ignite/plugin/PluginProvider;
    if-eqz v3, :cond_0

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lorg/apache/ignite/plugin/PluginProvider;->receiveDiscoveryData(Ljava/util/UUID;Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received discovery data for unknown plugin: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "provider":Lorg/apache/ignite/plugin/PluginProvider;
    :cond_1
    return-void
.end method

.method public pluginContextForProvider(Lorg/apache/ignite/plugin/PluginProvider;)Lorg/apache/ignite/plugin/PluginContext;
    .locals 1
    .param p1, "provider"    # Lorg/apache/ignite/plugin/PluginProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/PluginContext;",
            ">(",
            "Lorg/apache/ignite/plugin/PluginProvider;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->pluginCtxMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/plugin/PluginContext;

    return-object v0
.end method

.method public pluginProvider(Ljava/lang/String;)Lorg/apache/ignite/plugin/PluginProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/PluginProvider;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->plugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/plugin/PluginProvider;

    return-object v0
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->ackPluginsInfo()V

    .line 164
    return-void
.end method
