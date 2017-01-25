.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;
.super Ljava/lang/ClassLoader;
.source "GridDeploymentClassLoader.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final byteMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final depMode:Lorg/apache/ignite/configuration/DeploymentMode;

.field private final id:Lorg/apache/ignite/lang/IgniteUuid;

.field private final log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final mux:Ljava/lang/Object;

.field private nodeLdrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private nodeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final p2pExclude:[Ljava/lang/String;

.field private final p2pTimeout:J

.field private quiet:Z

.field private final singleNode:Z

.field private final usrVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;ZLorg/apache/ignite/internal/GridKernalContext;Ljava/lang/ClassLoader;Ljava/util/Map;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;JLorg/apache/ignite/IgniteLogger;[Ljava/lang/String;IZZ)V
    .locals 5
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "usrVer"    # Ljava/lang/String;
    .param p3, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p4, "singleNode"    # Z
    .param p5, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p8, "comm"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;
    .param p9, "p2pTimeout"    # J
    .param p11, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p12, "p2pExclude"    # [Ljava/lang/String;
    .param p13, "missedResourcesCacheSize"    # I
    .param p14, "clsBytesCacheEnabled"    # Z
    .param p15, "quiet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/DeploymentMode;",
            "Z",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;",
            "J",
            "Lorg/apache/ignite/IgniteLogger;",
            "[",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 217
    .local p7, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-direct {p0, p6}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 94
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    .line 219
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 220
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 221
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p5, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 222
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p8, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 223
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-gtz v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 224
    :cond_4
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez p11, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 225
    :cond_5
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    if-nez p7, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 227
    :cond_6
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 228
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->usrVer:Ljava/lang/String;

    .line 229
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 230
    iput-boolean p4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->singleNode:Z

    .line 231
    iput-object p5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 232
    iput-object p8, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    .line 233
    iput-wide p9, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->p2pTimeout:J

    .line 234
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    .line 235
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->p2pExclude:[Ljava/lang/String;

    .line 237
    new-instance v2, Ljava/util/LinkedList;

    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    .line 241
    if-lez p13, :cond_7

    new-instance v2, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    move/from16 v0, p13

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;-><init>(I)V

    :goto_0
    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    .line 244
    if-eqz p14, :cond_8

    new-instance v2, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v2}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    :goto_1
    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->byteMap:Ljava/util/concurrent/ConcurrentMap;

    .line 246
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->quiet:Z

    .line 247
    return-void

    .line 241
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 244
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;ZLorg/apache/ignite/internal/GridKernalContext;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;JLorg/apache/ignite/IgniteLogger;[Ljava/lang/String;IZZ)V
    .locals 6
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "usrVer"    # Ljava/lang/String;
    .param p3, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p4, "singleNode"    # Z
    .param p5, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p6, "parent"    # Ljava/lang/ClassLoader;
    .param p7, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p8, "nodeId"    # Ljava/util/UUID;
    .param p9, "comm"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;
    .param p10, "p2pTimeout"    # J
    .param p12, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p13, "p2pExclude"    # [Ljava/lang/String;
    .param p14, "missedResourcesCacheSize"    # I
    .param p15, "clsBytesCacheEnabled"    # Z
    .param p16, "quiet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p6}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 94
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    .line 140
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 141
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 142
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p5, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 143
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez p9, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 144
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v3, p10, v4

    if-gtz v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 145
    :cond_4
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    if-nez p12, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 146
    :cond_5
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez p7, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 147
    :cond_6
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    invoke-virtual {p7}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 149
    :cond_7
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 150
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->usrVer:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 152
    iput-boolean p4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->singleNode:Z

    .line 153
    iput-object p5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 154
    iput-object p9, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    .line 155
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->p2pTimeout:J

    .line 156
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    .line 157
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->p2pExclude:[Ljava/lang/String;

    .line 159
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    .line 161
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    invoke-virtual {v3, p8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    const/4 v3, 0x1

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v2

    .line 165
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface {v2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    if-eqz p4, :cond_8

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_8
    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    .line 169
    if-lez p14, :cond_9

    new-instance v3, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    move/from16 v0, p14

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;-><init>(I)V

    :goto_0
    iput-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    .line 172
    if-eqz p15, :cond_a

    new-instance v3, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v3}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    :goto_1
    iput-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->byteMap:Ljava/util/concurrent/ConcurrentMap;

    .line 174
    move/from16 v0, p16

    iput-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->quiet:Z

    .line 175
    return-void

    .line 169
    :cond_9
    const/4 v3, 0x0

    goto :goto_0

    .line 172
    :cond_a
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private computeEndTime(J)J
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 536
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 539
    .local v0, "endTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 540
    const-wide v0, 0x7fffffffffffffffL

    .line 542
    :cond_0
    return-wide v0
.end method

.method private isLocallyExcluded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 400
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->p2pExclude:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 401
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->p2pExclude:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 403
    .local v3, "path":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 406
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 407
    const/4 v4, 0x1

    .line 411
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    return v4

    .line 401
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private p2pLoadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 465
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 468
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 470
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 471
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 473
    :cond_1
    if-eqz p2, :cond_2

    .line 474
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 476
    :cond_2
    return-object v0
.end method

.method private sendClassRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridByteArrayList;
    .locals 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 554
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 556
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->p2pTimeout:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->computeEndTime(J)J

    move-result-wide v6

    .line 561
    .local v6, "endTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v3

    .line 563
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to peer load class [class="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", nodeClsLdrIds="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", parentClsLoader="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 569
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->singleNode:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    .line 570
    .local v15, "nodeListCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->singleNode:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    .line 571
    .local v14, "nodeLdrMapCp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    const/4 v9, 0x0

    .line 575
    .local v9, "err":Lorg/apache/ignite/IgniteCheckedException;
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/UUID;

    .line 576
    .local v13, "nodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 580
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/lang/IgniteUuid;

    .line 582
    .local v4, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    .line 584
    .local v5, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v5, :cond_5

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Found inactive node in class loader (will skip): "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 569
    .end local v4    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v5    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "nodeId":Ljava/util/UUID;
    .end local v14    # "nodeLdrMapCp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v15    # "nodeListCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_3
    :try_start_2
    new-instance v15, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    invoke-direct {v15, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 570
    .restart local v15    # "nodeListCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_4
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    invoke-direct {v14, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 592
    .restart local v4    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v5    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "nodeId":Ljava/util/UUID;
    .restart local v14    # "nodeLdrMapCp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->sendResourceRequest(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;J)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;

    move-result-object v16

    .line 594
    .local v16, "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    if-nez v16, :cond_8

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send class-loading request to node (is node alive?) [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clsPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clsLdrId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", parentClsLdr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 599
    .local v12, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->quiet:Z

    if-nez v2, :cond_7

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 604
    :cond_6
    :goto_3
    new-instance v10, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v10, v12}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .end local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .local v10, "err":Lorg/apache/ignite/IgniteCheckedException;
    move-object v9, v10

    .line 606
    .end local v10    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v9    # "err":Lorg/apache/ignite/IgniteCheckedException;
    goto/16 :goto_2

    .line 601
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 625
    .end local v12    # "msg":Ljava/lang/String;
    .end local v16    # "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    :catch_0
    move-exception v8

    .line 629
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 630
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->quiet:Z

    if-nez v2, :cond_c

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to find class probably due to task/job cancellation: "

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 609
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v16    # "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    :cond_8
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 610
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->byteSource()Lorg/apache/ignite/internal/util/GridByteArrayList;

    move-result-object v2

    return-object v2

    .line 613
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to find class on remote node [class="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", nodeId="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", clsLdrId="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", reason="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 617
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 618
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    if-eqz v2, :cond_b

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_b
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 622
    :try_start_6
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to peer load class [class="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", nodeClsLdrs="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", parentClsLoader="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", reason="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 620
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 632
    .end local v16    # "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    .restart local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to find class probably due to task/job cancellation [name="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", err="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 637
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->quiet:Z

    if-nez v2, :cond_f

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to send class-loading request to node (is node alive?) [node="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", clsName="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", clsPath="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", clsLdrId="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", parentClsLdr="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", err="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 646
    :cond_e
    :goto_4
    move-object v9, v8

    goto/16 :goto_2

    .line 641
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to send class-loading request to node (is node alive?) [node="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", clsName="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", clsPath="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", clsLdrId="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", parentClsLdr="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", err="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 651
    .end local v4    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v5    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v13    # "nodeId":Ljava/util/UUID;
    :cond_10
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to peer load class [class="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", nodeClsLdrs="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ", parentClsLoader="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private sendResourceRequest(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 697
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 699
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->p2pTimeout:J

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->computeEndTime(J)J

    move-result-wide v4

    .line 704
    .local v4, "endTime":J
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 706
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    const/4 v0, 0x0

    monitor-exit v1

    .line 792
    :goto_0
    return-object v0

    .line 711
    :cond_1
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->singleNode:Z

    if-eqz v0, :cond_3

    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    .line 712
    .local v10, "nodeListCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :goto_1
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->singleNode:Z

    if-eqz v0, :cond_4

    iget-object v9, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    .line 713
    .local v9, "nodeLdrMapCp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/UUID;

    .line 716
    .local v8, "nodeId":Ljava/util/UUID;
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 720
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/lang/IgniteUuid;

    .line 722
    .local v2, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 724
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v3, :cond_5

    .line 725
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 726
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found inactive node in class loader (will skip): "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 711
    .end local v2    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "nodeId":Ljava/util/UUID;
    .end local v9    # "nodeLdrMapCp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v10    # "nodeListCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_3
    :try_start_1
    new-instance v10, Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    invoke-direct {v10, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 712
    .restart local v10    # "nodeListCp":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_4
    :try_start_2
    new-instance v9, Ljava/util/HashMap;

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    invoke-direct {v9, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 733
    .restart local v2    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "nodeId":Ljava/util/UUID;
    .restart local v9    # "nodeLdrMapCp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_5
    :try_start_3
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->sendResourceRequest(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;J)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;

    move-result-object v11

    .line 735
    .local v11, "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    if-nez v11, :cond_6

    .line 736
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get resource from node (is node alive?) [nodeId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", clsLdrId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", resName="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", parentClsLdr="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v12, 0x5d

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 769
    .end local v11    # "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    :catch_0
    move-exception v6

    .line 773
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 774
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->quiet:Z

    if-nez v0, :cond_b

    .line 775
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get resource probably due to task/job cancellation: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 740
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v11    # "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    :cond_6
    :try_start_4
    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success()Z

    move-result v0

    if-nez v0, :cond_a

    .line 741
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 743
    :try_start_5
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    if-eqz v0, :cond_7

    .line 744
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_7
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 750
    :try_start_6
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->quiet:Z

    if-nez v0, :cond_9

    .line 751
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 752
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get resource from node [nodeId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", clsLdrId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", resName="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", parentClsLdr="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", msg="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v12, 0x5d

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 762
    :cond_8
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 745
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 756
    :cond_9
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 757
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get resource from node [nodeId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", clsLdrId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", resName="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", parentClsLdr="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", msg="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errorMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v12, 0x5d

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 765
    :cond_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->byteSource()Lorg/apache/ignite/internal/util/GridByteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridByteArrayList;->internalArray()[B

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->byteSource()Lorg/apache/ignite/internal/util/GridByteArrayList;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/internal/util/GridByteArrayList;->size()I

    move-result v13

    invoke-direct {v0, v1, v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 776
    .end local v11    # "res":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
    .restart local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_b
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get resource probably due to task/job cancellation: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 780
    :cond_c
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->quiet:Z

    if-nez v0, :cond_d

    .line 781
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get resource from node (is node alive?) [nodeId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", clsLdrId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", resName="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", parentClsLdr="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", err="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v12, 0x5d

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 784
    :cond_d
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to get resource from node (is node alive?) [nodeId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", clsLdrId="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", resName="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", parentClsLdr="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", err="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v12, 0x5d

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 792
    .end local v2    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v8    # "nodeId":Ljava/util/UUID;
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public deployMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v5, 0x5d

    const/4 v4, 0x0

    .line 481
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->isLocallyExcluded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 487
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getLocalDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v11

    .line 489
    .local v11, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v11, :cond_2

    .line 490
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found class in local deployment [cls="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 493
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {v11, p1, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 525
    .end local v11    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :goto_0
    return-object v10

    .line 497
    :cond_2
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->classNameToResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 499
    .local v13, "path":Ljava/lang/String;
    invoke-direct {p0, p1, v13}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->sendClassRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridByteArrayList;

    move-result-object v9

    .line 501
    .local v9, "byteSrc":Lorg/apache/ignite/internal/util/GridByteArrayList;
    monitor-enter p0

    .line 502
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 504
    .local v10, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v10, :cond_4

    .line 505
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->byteMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->byteMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/GridByteArrayList;->array()[B

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_3
    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/GridByteArrayList;->internalArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/GridByteArrayList;->size()I

    move-result v3

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v10

    .line 511
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 513
    .local v12, "i":I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_4

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_4

    .line 518
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    .line 522
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v12    # "i":I
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 523
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded class [cls="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ldr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 525
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 526
    .end local v10    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 657
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 659
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->byteMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_3

    const-string v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 660
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->byteMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 662
    .local v0, "bytes":[B
    if-eqz v0, :cond_3

    .line 663
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got class definition from byte code cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 666
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 687
    .end local v0    # "bytes":[B
    :cond_2
    :goto_0
    return-object v1

    .line 670
    :cond_3
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 672
    .local v1, "in":Ljava/io/InputStream;
    if-nez v1, :cond_4

    .line 673
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 677
    :cond_4
    const-string v2, "META-INF/services/org.apache.commons.logging.LogFactory"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 678
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 679
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Denied sending remote request for META-INF/services/org.apache.commons.logging.LogFactory."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 681
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 684
    :cond_6
    if-nez v1, :cond_2

    .line 685
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->sendResourceRequest(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method hasRegisteredNode(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 374
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 375
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 379
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    .line 381
    .local v0, "ldrId0":Lorg/apache/ignite/lang/IgniteUuid;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 381
    .end local v0    # "ldrId0":Lorg/apache/ignite/lang/IgniteUuid;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 383
    .restart local v0    # "ldrId0":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasRegisteredNodes()Z
    .locals 2

    .prologue
    .line 390
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 416
    sget-boolean v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 421
    :cond_0
    const/4 v0, 0x0

    .line 424
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "org.apache.ignite.compute.ComputeJob"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 425
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->isLocallyExcluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->p2pLoadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    .line 430
    :cond_1
    if-nez v0, :cond_2

    .line 431
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 442
    :cond_2
    return-object v0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    throw v1

    .line 438
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load class due to unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public localDeploymentOwner()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public participants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method register(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 290
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 293
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->singleNode:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 295
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->missedRsrcs:Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridBoundedLinkedHashSet;->clear()V

    .line 305
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    monitor-exit v1

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registeredClassLoaderId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 361
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    monitor-exit v1

    return-object v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registeredClassLoaderIds()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 348
    .local v2, "ldrIds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v4

    .line 349
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteUuid;

    .line 350
    .local v1, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    return-object v2
.end method

.method registeredNodeIds()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sequenceNumber()J
    .locals 2

    .prologue
    .line 271
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 797
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 798
    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregister(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 324
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 326
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->nodeLdrMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    monitor-exit v1

    return-object v0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;->usrVer:Ljava/lang/String;

    return-object v0
.end method
