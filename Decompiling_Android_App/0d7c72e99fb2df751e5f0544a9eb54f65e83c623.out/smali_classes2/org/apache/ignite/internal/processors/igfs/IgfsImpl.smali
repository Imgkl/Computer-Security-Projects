.class public final Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$22;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareInputStream;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsEventAwareOutputStream;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_DIR_META:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERMISSION_DFLT_VAL:Ljava/lang/String; = "0777"


# instance fields
.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

.field private cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

.field private data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

.field private final delDiscoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final delFuts:Lorg/jsr166/ConcurrentHashMap8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final delMsgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field private evictPlc:Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

.field private evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

.field private igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

.field private locNode:Lorg/apache/ignite/cluster/ClusterNode;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private volatile logDir:Ljava/lang/String;

.field private meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field private final metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

.field private final modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

.field private secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

.field private final secondaryPaths:Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

.field private topic:Ljava/lang/Object;

.field private final workerMap:Lorg/jsr166/ConcurrentHashMap8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    .line 64
    const-string v0, "permission"

    const-string v1, "0777"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->DFLT_DIR_META:Ljava/util/Map;

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;)V
    .locals 23
    .param p1, "igfsCtx"    # Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v17, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct/range {v17 .. v17}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 100
    new-instance v17, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct/range {v17 .. v17}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;

    .line 103
    new-instance v17, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct/range {v17 .. v17}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delFuts:Lorg/jsr166/ConcurrentHashMap8;

    .line 106
    new-instance v17, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatMessageListener;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delMsgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 109
    new-instance v17, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delDiscoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 112
    new-instance v17, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    invoke-direct/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    .line 131
    sget-boolean v17, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 133
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v17

    const-class v18, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-interface/range {v17 .. v18}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 137
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    .line 138
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .line 139
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getSecondaryFileSystem()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDefaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v17

    sget-object v18, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 147
    new-instance v17, Lorg/apache/ignite/IgniteCheckedException;

    const-string v18, "Mode cannot be PROXY if secondary file system hasn\'t been defined."

    invoke-direct/range {v17 .. v18}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 149
    :cond_1
    sget-object v7, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    .line 154
    .local v7, "dfltMode":Lorg/apache/ignite/igfs/IgfsMode;
    :goto_0
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 155
    .local v5, "cfgModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    new-instance v8, Ljava/util/LinkedHashMap;

    const/16 v17, 0x4

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 157
    .local v8, "dfltModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    const-string v17, "/ignite/primary"

    sget-object v18, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 160
    const-string v17, "/ignite/proxy"

    sget-object v18, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v17, "/ignite/sync"

    sget-object v18, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v17, "/ignite/async"

    sget-object v18, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_2
    invoke-interface {v5, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPathModes()Ljava/util/Map;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 168
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPathModes()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 169
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 170
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 152
    .end local v5    # "cfgModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .end local v7    # "dfltMode":Lorg/apache/ignite/igfs/IgfsMode;
    .end local v8    # "dfltModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDefaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v7

    .restart local v7    # "dfltMode":Lorg/apache/ignite/igfs/IgfsMode;
    goto/16 :goto_0

    .line 172
    .restart local v5    # "cfgModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .restart local v8    # "dfltModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .restart local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring path mode because it conflicts with Ignite reserved path (use another path) [mode="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ", path="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v19, 0x5d

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 177
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_5
    const/16 v16, 0x0

    .line 179
    .local v16, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;>;"
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_8

    .line 180
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;>;"
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .restart local v16    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 183
    .local v14, "mode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    sget-object v15, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    .line 186
    .local v15, "mode0":Lorg/apache/ignite/igfs/IgfsMode;
    :goto_3
    :try_start_0
    new-instance v18, Lorg/apache/ignite/internal/util/typedef/T2;

    new-instance v19, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 188
    :catch_0
    move-exception v9

    .line 189
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    new-instance v18, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid path found in mode pattern: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 183
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "mode0":Lorg/apache/ignite/igfs/IgfsMode;
    :cond_6
    sget-object v15, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    goto :goto_3

    :cond_7
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v15, v17

    goto :goto_3

    .line 194
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "mode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    :cond_8
    new-instance v17, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;-><init>(Lorg/apache/ignite/igfs/IgfsMode;Ljava/util/List;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    .line 196
    new-instance v18, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->modesOrdered()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;-><init>(Ljava/util/Map;Lorg/apache/ignite/igfs/IgfsMode;Ljava/util/List;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryPaths:Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    .line 200
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "dataCacheName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    .local v3, "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_5
    if-ge v12, v13, :cond_9

    aget-object v4, v3, v12

    .line 203
    .local v4, "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 204
    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v11

    .line 206
    .local v11, "evictPlc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    if-eqz v11, :cond_b

    const/16 v17, 0x1

    :goto_6
    instance-of v0, v11, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

    move/from16 v18, v0

    and-int v17, v17, v18

    if-eqz v17, :cond_9

    .line 207
    check-cast v11, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

    .end local v11    # "evictPlc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evictPlc:Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

    .line 213
    .end local v4    # "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->name()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    sget-object v17, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    :goto_7
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->topic:Ljava/lang/Object;

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->topic:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delMsgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delDiscoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0xc

    aput v22, v20, v21

    invoke-virtual/range {v17 .. v20}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 217
    return-void

    .line 196
    .end local v3    # "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v6    # "dataCacheName":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->properties()Ljava/util/Map;

    move-result-object v17

    goto/16 :goto_4

    .line 206
    .restart local v3    # "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    .restart local v4    # "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .restart local v6    # "dataCacheName":Ljava/lang/String;
    .restart local v11    # "evictPlc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    .line 202
    .end local v11    # "evictPlc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 213
    .end local v4    # "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_d
    sget-object v17, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/ignite/internal/GridTopic;->topic(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    goto :goto_7
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPathSummary;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x2"    # Lorg/apache/ignite/igfs/IgfsPathSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->summary0(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPathSummary;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evts:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p1, "x1"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->getFileDescriptor(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p1, "x1"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->checkConflictWithPrimary(Lorg/apache/ignite/igfs/IgfsPath;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/jsr166/ConcurrentHashMap8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    .param p2, "x2"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delete0(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->DFLT_DIR_META:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p1, "x1"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "x2"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->newBatch(Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p1, "x1"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->deleteFile(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Z)V

    return-void
.end method

.method static synthetic access$2900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p1, "x1"    # [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->sameIgfs([Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/jsr166/ConcurrentHashMap8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delFuts:Lorg/jsr166/ConcurrentHashMap8;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p1, "x1"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p1, "x1"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "x2"    # Lorg/apache/ignite/igfs/IgfsMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resolveFileInfo(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    return-object v0
.end method

.method private checkConflictWithPrimary(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 3
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1281
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    invoke-interface {v0, p1}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    new-instance v0, Lorg/apache/ignite/igfs/IgfsInvalidPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path mapped to a PRIMARY mode found in secondary file system. Remove path from secondary file system or change path mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsInvalidPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_0
    return-void
.end method

.method private create0(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;ILjava/util/Map;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 9
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "overwrite"    # Z
    .param p4, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "replication"    # I
    .param p6    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "simpleCreate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZ",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .prologue
    .line 1073
    .local p6, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1074
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "bufSize >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1076
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p6

    move/from16 v6, p7

    move v7, p5

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$15;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;ZILorg/apache/ignite/lang/IgniteUuid;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsOutputStream;

    return-object v0

    .line 1074
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private delete0(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    .locals 7
    .param p1, "desc"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    .param p2, "parentPath"    # Lorg/apache/ignite/igfs/IgfsPath;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "recursive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 748
    if-nez p2, :cond_0

    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v0}, Lorg/apache/ignite/igfs/IgfsPath;-><init>()V

    .line 750
    .local v0, "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    :goto_0
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->isFile:Z
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    invoke-direct {p0, v0, p1, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->deleteFile(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Z)V

    .line 767
    :goto_1
    return v6

    .line 748
    .end local v0    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_0
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileName:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/lang/String;)V

    goto :goto_0

    .line 756
    .restart local v0    # "curPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_1
    if-eqz p3, :cond_2

    .line 757
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileName:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->softDelete(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;

    goto :goto_1

    .line 762
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->directoryListing(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Map;

    move-result-object v1

    .line 764
    .local v1, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;>;"
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 765
    invoke-direct {p0, v0, p1, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->deleteFile(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Z)V

    goto :goto_1

    .line 771
    :cond_3
    new-instance v2, Lorg/apache/ignite/igfs/IgfsDirectoryNotEmptyException;

    const-string v3, "Failed to remove directory (directory is not empty and recursive flag is not set)"

    invoke-direct {v2, v3}, Lorg/apache/ignite/igfs/IgfsDirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private deleteFile(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;Z)V
    .locals 6
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "desc"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    .param p3, "rmvLocked"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1535
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->parentId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 1536
    .local v1, "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileId:Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    .line 1538
    .local v3, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    if-eqz v1, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1539
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez v1, :cond_1

    sget-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file descriptor: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1544
    :cond_2
    sget-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->TRASH_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1548
    :cond_3
    :goto_0
    return-void

    .line 1547
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->fileName:Ljava/lang/String;
    invoke-static {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;)Ljava/lang/String;

    move-result-object v2

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->removeIfEmpty(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    goto :goto_0
.end method

.method private enterBusy()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->awaitInit()V

    .line 323
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->awaitInit()V

    .line 325
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    return v0
.end method

.method private getFileDescriptor(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;
    .locals 8
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1514
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileIds(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/List;

    move-result-object v7

    .line 1515
    .local v7, "ids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v6

    .line 1517
    .local v6, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v6, :cond_0

    .line 1523
    :goto_0
    return-object v5

    .line 1521
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    move-object v1, v0

    .line 1523
    .local v1, "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_1
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;

    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FileDescriptor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;ZLorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;)V

    move-object v5, v0

    goto :goto_0

    .end local v1    # "parentId":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_1
    move-object v1, v5

    .line 1521
    goto :goto_1
.end method

.method private localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method private newBatch(Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .locals 6
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 271
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 272
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 274
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->enterBusy()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 276
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-direct {v1, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/io/OutputStream;)V

    .line 279
    .local v1, "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v3, p1}, Lorg/jsr166/ConcurrentHashMap8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;

    .line 281
    .local v2, "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    if-eqz v2, :cond_4

    .line 282
    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->addBatch(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v1

    .line 285
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v3, p1, v2}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    .end local v1    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .end local v2    # "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v3

    .line 288
    .restart local v1    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .restart local v2    # "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    :cond_4
    :try_start_2
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;

    .end local v2    # "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "igfs-file-worker-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 294
    .restart local v2    # "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->addBatch(Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)Z

    move-result v0

    .line 296
    .local v0, "b":Z
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    if-nez v0, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 298
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v3, p1, v2}, Lorg/jsr166/ConcurrentHashMap8;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 299
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 313
    .end local v0    # "b":Z
    .end local v1    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .end local v2    # "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create new output stream to the secondary file system because IGFS is stopping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private resolveFileInfo(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 10
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1706
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1707
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1709
    :cond_1
    const/4 v8, 0x0

    .line 1711
    .local v8, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    sget-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$22;->$SwitchMap$org$apache$ignite$igfs$IgfsMode:[I

    invoke-virtual {p2}, Lorg/apache/ignite/igfs/IgfsMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1733
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1713
    :pswitch_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v8

    .line 1736
    :cond_2
    :goto_0
    return-object v8

    .line 1719
    :pswitch_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->fileId(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v8

    .line 1721
    if-nez v8, :cond_2

    .line 1722
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    invoke-interface {v0, p1}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v9

    .line 1724
    .local v9, "status":Lorg/apache/ignite/igfs/IgfsFile;
    if-eqz v9, :cond_2

    .line 1725
    invoke-interface {v9}, Lorg/apache/ignite/igfs/IgfsFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .end local v8    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    const/4 v0, 0x1

    invoke-interface {v9}, Lorg/apache/ignite/igfs/IgfsFile;->properties()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(ZLjava/util/Map;)V

    .restart local v8    # "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :goto_1
    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-interface {v9}, Lorg/apache/ignite/igfs/IgfsFile;->blockSize()I

    move-result v1

    invoke-interface {v9}, Lorg/apache/ignite/igfs/IgfsFile;->length()J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-interface {v9}, Lorg/apache/ignite/igfs/IgfsFile;->properties()Ljava/util/Map;

    move-result-object v7

    move-object v5, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(IJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZLjava/util/Map;)V

    move-object v8, v0

    goto :goto_1

    .line 1711
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;
    .locals 4
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 2070
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v0

    .line 2072
    .local v0, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne v0, v1, :cond_0

    .line 2073
    new-instance v1, Lorg/apache/ignite/igfs/IgfsInvalidPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROXY mode cannot be used in IGFS directly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/igfs/IgfsInvalidPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2075
    :cond_0
    return-object v0
.end method

.method private safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2085
    .local p1, "action":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->enterBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2087
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2093
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    return-object v1

    .line 2089
    :catch_0
    move-exception v0

    .line 2090
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsUtils;->toIgfsException(Ljava/lang/Exception;)Lorg/apache/ignite/igfs/IgfsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2093
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v1

    .line 2097
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to perform IGFS action because grid is stopping."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sameIgfs([Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;)Z
    .locals 6
    .param p1, "attrs"    # [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    .prologue
    .line 1557
    if-eqz p1, :cond_1

    .line 1558
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->name()Ljava/lang/String;

    move-result-object v3

    .line 1560
    .local v3, "igfsName":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 1561
    .local v1, "attr":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1562
    const/4 v5, 0x1

    .line 1565
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .end local v1    # "attr":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .end local v2    # "i$":I
    .end local v3    # "igfsName":Ljava/lang/String;
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 1560
    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .restart local v1    # "attr":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .restart local v2    # "i$":I
    .restart local v3    # "igfsName":Ljava/lang/String;
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1565
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .end local v1    # "attr":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .end local v2    # "i$":I
    .end local v3    # "igfsName":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private summary0(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPathSummary;)V
    .locals 8
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "sum"    # Lorg/apache/ignite/igfs/IgfsPathSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1406
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1408
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v2

    .line 1410
    .local v2, "info":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-eqz v2, :cond_3

    .line 1411
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1412
    sget-object v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1413
    invoke-virtual {p2}, Lorg/apache/ignite/igfs/IgfsPathSummary;->directoriesCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/ignite/igfs/IgfsPathSummary;->directoriesCount(I)V

    .line 1415
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->listing()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;

    .line 1416
    .local v0, "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->summary0(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/igfs/IgfsPathSummary;)V

    goto :goto_0

    .line 1419
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/igfs/IgfsListingEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/igfs/IgfsPathSummary;->filesCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/ignite/igfs/IgfsPathSummary;->filesCount(I)V

    .line 1420
    invoke-virtual {p2}, Lorg/apache/ignite/igfs/IgfsPathSummary;->totalLength()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {p2, v4, v5}, Lorg/apache/ignite/igfs/IgfsPathSummary;->totalLength(J)V

    .line 1423
    :cond_3
    return-void
.end method


# virtual methods
.method public affinity(Lorg/apache/ignite/igfs/IgfsPath;JJ)Ljava/util/Collection;
    .locals 8
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "JJ)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1291
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->affinity(Lorg/apache/ignite/igfs/IgfsPath;JJJ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public affinity(Lorg/apache/ignite/igfs/IgfsPath;JJJ)Ljava/util/Collection;
    .locals 10
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "maxLen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "JJJ)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1297
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "start >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1299
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "len >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1301
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$18;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;JJJ)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 1298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1299
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 6
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "create"    # Z
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .prologue
    .line 1176
    .local p4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "bufSize >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 1179
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$16;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsOutputStream;

    return-object v0

    .line 1177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public append(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 2
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "create"    # Z

    .prologue
    .line 1170
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public asSecondary()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .locals 1

    .prologue
    .line 2060
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsSecondaryFileSystemImpl;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V

    return-object v0
.end method

.method varargs await([Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 10
    .param p1, "paths"    # [Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 334
    sget-boolean v9, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 336
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v9}, Lorg/jsr166/ConcurrentHashMap8;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 337
    .local v7, "workerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/igfs/IgfsPath;

    .line 339
    .local v8, "workerPath":Lorg/apache/ignite/igfs/IgfsPath;
    const/4 v1, 0x0

    .line 341
    .local v1, "await":Z
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/igfs/IgfsPath;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    .line 342
    .local v6, "path":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-virtual {v8, v6}, Lorg/apache/ignite/igfs/IgfsPath;->isSubDirectoryOf(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8, v6}, Lorg/apache/ignite/igfs/IgfsPath;->isSame(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 343
    :cond_2
    const/4 v1, 0x1

    .line 349
    .end local v6    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_3
    if-eqz v1, :cond_1

    .line 350
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->currentBatch()Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    move-result-object v2

    .line 352
    .local v2, "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    if-eqz v2, :cond_1

    .line 354
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->awaitIfFinished()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v9

    goto :goto_0

    .line 341
    .end local v2    # "batch":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
    .restart local v6    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 362
    .end local v0    # "arr$":[Lorg/apache/ignite/igfs/IgfsPath;
    .end local v1    # "await":Z
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v7    # "workerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;>;"
    .end local v8    # "workerPath":Lorg/apache/ignite/igfs/IgfsPath;
    :cond_5
    return-void
.end method

.method public awaitDeletesAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1472
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->pendingDeletes()Ljava/util/Collection;

    move-result-object v3

    .line 1474
    .local v3, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1475
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1476
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Constructing delete future for trash entries: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1478
    :cond_0
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 1480
    .local v5, "resFut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/lang/IgniteUuid;

    .line 1481
    .local v2, "id":Lorg/apache/ignite/lang/IgniteUuid;
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1483
    .local v0, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delFuts:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v6, v2, v0}, Lorg/jsr166/ConcurrentHashMap8;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1485
    .local v4, "oldFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    if-eqz v4, :cond_1

    .line 1486
    invoke-virtual {v5, v4}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 1488
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v6, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->exists(Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1489
    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 1491
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 1493
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delFuts:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v6, v2, v0}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1498
    .end local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    .end local v2    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v4    # "oldFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 1503
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "resFut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    return-object v5

    :cond_4
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    goto :goto_1
.end method

.method public clientLogDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->logDir:Ljava/lang/String;

    return-object v0
.end method

.method public clientLogDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "logDir"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->logDir:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    return-object v0
.end method

.method public context()Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    return-object v0
.end method

.method public create(Lorg/apache/ignite/igfs/IgfsPath;IZIJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 8
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "overwrite"    # Z
    .param p4, "replication"    # I
    .param p5, "blockSize"    # J
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZIJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .prologue
    .line 1043
    .local p7, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->create0(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;ILjava/util/Map;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;IJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 8
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "overwrite"    # Z
    .param p4, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "replication"    # I
    .param p6, "blockSize"    # J
    .param p8    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZ",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .prologue
    .line 1049
    .local p8, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->create0(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;ILjava/util/Map;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 8
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "overwrite"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1037
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v2

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->create0(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;ILjava/util/Map;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "recursive"    # Z

    .prologue
    .line 690
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$10;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Z)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    .locals 5
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "primary"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1684
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1688
    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evictPlc:Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evictPlc:Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;->exclude(Lorg/apache/ignite/igfs/IgfsPath;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1693
    :cond_2
    :goto_0
    return v1

    .line 1690
    :catch_0
    move-exception v0

    .line 1691
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check whether the path must be excluded from evictions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 1594
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p4, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsUtils;->toIgfsException(Ljava/lang/Exception;)Lorg/apache/ignite/igfs/IgfsException;

    move-result-object v1

    throw v1
.end method

.method public execute(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "skipNonExistentFiles"    # Z
    .param p5, "maxRangeSize"    # J
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;ZJTT;)TR;"
        }
    .end annotation

    .prologue
    .line 1606
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p7, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsUtils;->toIgfsException(Ljava/lang/Exception;)Lorg/apache/ignite/igfs/IgfsException;

    move-result-object v1

    throw v1
.end method

.method public execute(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 1572
    .local p1, "task":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p4, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsUtils;->toIgfsException(Ljava/lang/Exception;)Lorg/apache/ignite/igfs/IgfsException;

    move-result-object v1

    throw v1
.end method

.method public execute(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "skipNonExistentFiles"    # Z
    .param p5, "maxRangeLen"    # J
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;ZJTT;)TR;"
        }
    .end annotation

    .prologue
    .line 1583
    .local p1, "task":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p7, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsUtils;->toIgfsException(Ljava/lang/Exception;)Lorg/apache/ignite/igfs/IgfsException;

    move-result-object v1

    throw v1
.end method

.method executeAsync(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;TT;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1658
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p4, "arg":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMaximumTaskRangeLength()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method executeAsync(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "skipNonExistentFiles"    # Z
    .param p5, "maxRangeLen"    # J
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;ZJTT;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1678
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p7, "arg":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;ZJLjava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Ljava/lang/Class;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method executeAsync(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;TT;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1624
    .local p1, "task":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p4, "arg":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMaximumTaskRangeLength()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method executeAsync(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "skipNonExistentFiles"    # Z
    .param p5, "maxRangeLen"    # J
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;ZJTT;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1643
    .local p1, "task":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p7, "arg":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsTaskArgsImpl;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;ZJLjava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public exists(Lorg/apache/ignite/igfs/IgfsPath;)Z
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 456
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$5;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public format()V
    .locals 2

    .prologue
    .line 1428
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->formatAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    return-void

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsUtils;->toIgfsException(Ljava/lang/Exception;)Lorg/apache/ignite/igfs/IgfsException;

    move-result-object v1

    throw v1
.end method

.method formatAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1442
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->ROOT_ID:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->softDelete(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    .line 1444
    .local v2, "id":Lorg/apache/ignite/lang/IgniteUuid;
    if-nez v2, :cond_1

    .line 1445
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 1466
    .end local v2    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_0
    :goto_0
    return-object v3

    .line 1447
    .restart local v2    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1449
    .local v1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delFuts:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v4, v2, v1}, Lorg/jsr166/ConcurrentHashMap8;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1451
    .local v3, "oldFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    if-nez v3, :cond_0

    .line 1454
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->exists(Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1456
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 1458
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delFuts:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v4, v2, v1}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v3, v1

    .line 1461
    goto :goto_0

    .line 1465
    .end local v1    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    .end local v2    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v3    # "oldFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 1466
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public future()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1751
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asynchronous mode is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public globalSampling()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$4;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$4;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public globalSampling(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public globalSpace()Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$2;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;

    return-object v0
.end method

.method public groupBlockSize()J
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->groupBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 493
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$6;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsFile;

    return-object v0
.end method

.method public isAsync()Z
    .locals 1

    .prologue
    .line 1746
    const/4 v0, 0x0

    return v0
.end method

.method public isProxy(Ljava/net/URI;)Z
    .locals 3
    .param p1, "path"    # Ljava/net/URI;

    .prologue
    .line 2052
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPathModes()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDefaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v0

    .line 2055
    .local v0, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    :goto_0
    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 2052
    .end local v0    # "mode":Lorg/apache/ignite/igfs/IgfsMode;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    new-instance v2, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v2, p1}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;->resolveMode(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v0

    goto :goto_0

    .line 2055
    .restart local v0    # "mode":Lorg/apache/ignite/igfs/IgfsMode;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public listFiles(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 910
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$13;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public listPaths(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 866
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public localMetrics()Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    return-object v0
.end method

.method public metrics()Lorg/apache/ignite/igfs/IgfsMetrics;
    .locals 1

    .prologue
    .line 1334
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$19;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsMetrics;

    return-object v0
.end method

.method public mkdirs(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V

    .line 780
    return-void
.end method

.method public mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$11;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 861
    return-void
.end method

.method modeResolver()Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->modeRslvr:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextAffinityKey()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 2043
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$21;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$21;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public bridge synthetic open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsInputStream;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/igfs/IgfsInputStream;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/igfs/IgfsInputStream;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .locals 2
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 974
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getSequentialReadsBeforePrefetch()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I

    .prologue
    .line 979
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getSequentialReadsBeforePrefetch()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .locals 4
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "seqReadsBeforePrefetch"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 985
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "bufSize >= 0"

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 987
    if-ltz p3, :cond_1

    :goto_1
    const-string v0, "seqReadsBeforePrefetch >= 0"

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 989
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$14;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;II)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    return-object v0

    :cond_0
    move v0, v2

    .line 986
    goto :goto_0

    :cond_1
    move v1, v2

    .line 987
    goto :goto_1
.end method

.method public proxyPaths()Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryPaths:Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    return-object v0
.end method

.method public rename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 1
    .param p1, "src"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "dest"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 586
    const-string v0, "src"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    const-string v0, "dest"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$9;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 686
    return-void
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->reset()V

    .line 1376
    return-void
.end method

.method public setTimes(Lorg/apache/ignite/igfs/IgfsPath;JJ)V
    .locals 8
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "accessTime"    # J
    .param p4, "modificationTime"    # J

    .prologue
    .line 1248
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1250
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$17;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;JJLorg/apache/ignite/igfs/IgfsPath;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1272
    return-void
.end method

.method public size(Lorg/apache/ignite/igfs/IgfsPath;)J
    .locals 2
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 1380
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1382
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$20;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public stop()V
    .locals 7

    .prologue
    .line 231
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    .line 234
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    .line 237
    .local v2, "interrupted":Z
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentHashMap8;->values()Lorg/jsr166/ConcurrentHashMap8$ValuesView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentHashMap8$ValuesView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;

    .line 238
    .local v3, "w":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->cancel()V

    goto :goto_0

    .line 241
    .end local v3    # "w":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentHashMap8;->values()Lorg/jsr166/ConcurrentHashMap8$ValuesView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentHashMap8$ValuesView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;

    .line 243
    .restart local v3    # "w":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 250
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "w":Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorker;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->workerMap:Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentHashMap8;->clear()V

    .line 252
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    instance-of v4, v4, Ljava/lang/AutoCloseable;

    if-eqz v4, :cond_2

    .line 253
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    check-cast v4, Ljava/lang/AutoCloseable;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 255
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->topic:Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delMsgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 256
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delDiscoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 258
    if-eqz v2, :cond_3

    .line 259
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 260
    :cond_3
    return-void
.end method

.method public summary(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsPathSummary;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 514
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$7;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$7;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsPathSummary;

    return-object v0
.end method

.method public update(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/igfs/IgfsFile;
    .locals 2
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsFile;"
        }
    .end annotation

    .prologue
    .line 537
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "path"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    const-string v0, "props"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "!props.isEmpty()"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 541
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$8;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->safeOp(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsFile;

    return-object v0

    .line 539
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usedSpaceSize()J
    .locals 2

    .prologue
    .line 969
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics()Lorg/apache/ignite/igfs/IgfsMetrics;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/igfs/IgfsMetrics;->localSpaceSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public withAsync()Lorg/apache/ignite/IgniteFileSystem;
    .locals 1

    .prologue
    .line 1741
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V

    return-object v0
.end method

.method public bridge synthetic withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->withAsync()Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v0

    return-object v0
.end method
