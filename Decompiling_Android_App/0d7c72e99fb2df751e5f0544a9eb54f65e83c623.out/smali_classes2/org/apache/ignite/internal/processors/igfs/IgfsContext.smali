.class public Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
.super Ljava/lang/Object;
.source "IgfsContext.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private final dataMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

.field private final fragmentizerMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

.field private final igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

.field private final metaMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field private mgrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final srvMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/configuration/FileSystemConfiguration;Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "cfg"    # Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .param p3, "metaMgr"    # Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    .param p4, "dataMgr"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p5, "srvMgr"    # Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;
    .param p6, "fragmentizerMgr"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->mgrs:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 78
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    .line 80
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->add(Lorg/apache/ignite/internal/processors/igfs/IgfsManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->metaMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .line 81
    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->add(Lorg/apache/ignite/internal/processors/igfs/IgfsManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->dataMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .line 82
    invoke-direct {p0, p5}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->add(Lorg/apache/ignite/internal/processors/igfs/IgfsManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->srvMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    .line 83
    invoke-direct {p0, p6}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->add(Lorg/apache/ignite/internal/processors/igfs/IgfsManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->fragmentizerMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    .line 85
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    .line 86
    return-void
.end method

.method private add(Lorg/apache/ignite/internal/processors/igfs/IgfsManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
    .locals 1
    .param p1    # Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsManager;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "mgr":Lorg/apache/ignite/internal/processors/igfs/IgfsManager;, "TT;"
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->mgrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    return-object p1
.end method


# virtual methods
.method public configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    return-object v0
.end method

.method public data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->dataMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    return-object v0
.end method

.method public fragmentizer()Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->fragmentizerMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    return-object v0
.end method

.method public igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    return-object v0
.end method

.method public igfsNode(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 7
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 181
    sget-boolean v5, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 183
    :cond_0
    const-string v5, "org.apache.ignite.igfs"

    invoke-interface {p1, v5}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    .line 185
    .local v3, "igfs":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    if-eqz v3, :cond_2

    .line 186
    move-object v0, v3

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 187
    .local v1, "attrs":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->cfg:Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    const/4 v5, 0x1

    .line 190
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .end local v1    # "attrs":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 186
    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .restart local v1    # "attrs":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .end local v1    # "attrs":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public kernalContext()Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method public managers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->mgrs:Ljava/util/List;

    return-object v0
.end method

.method public meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->metaMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    return-object v0
.end method

.method public send(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "msg"    # Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->prepareMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/UUID;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 157
    return-void
.end method

.method public send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "msg"    # Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
    .param p4, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->prepareMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 172
    return-void
.end method

.method public server()Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->srvMgr:Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    return-object v0
.end method
