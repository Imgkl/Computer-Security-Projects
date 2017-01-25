.class public Lorg/apache/ignite/events/IgfsEvent;
.super Lorg/apache/ignite/events/EventAdapter;
.source "IgfsEvent.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private dataSize:J

.field private meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private newPath:Lorg/apache/ignite/igfs/IgfsPath;

.field private final path:Lorg/apache/ignite/igfs/IgfsPath;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "type"    # I

    .prologue
    .line 91
    const-string v0, "IGFS event."

    invoke-direct {p0, p2, v0, p3}, Lorg/apache/ignite/events/EventAdapter;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V

    .line 93
    iput-object p1, p0, Lorg/apache/ignite/events/IgfsEvent;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;IJ)V
    .locals 0
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "type"    # I
    .param p4, "dataSize"    # J

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    .line 125
    iput-wide p4, p0, Lorg/apache/ignite/events/IgfsEvent;->dataSize:J

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;ILjava/util/Map;)V
    .locals 0
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p4, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    .line 140
    iput-object p4, p0, Lorg/apache/ignite/events/IgfsEvent;->meta:Ljava/util/Map;

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V
    .locals 0
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "newPath"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "type"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/ignite/events/IgfsEvent;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/cluster/ClusterNode;I)V

    .line 109
    iput-object p2, p0, Lorg/apache/ignite/events/IgfsEvent;->newPath:Lorg/apache/ignite/igfs/IgfsPath;

    .line 110
    return-void
.end method


# virtual methods
.method public dataSize()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/apache/ignite/events/IgfsEvent;->dataSize:J

    return-wide v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/apache/ignite/events/IgfsEvent;->type()I

    move-result v0

    .line 190
    .local v0, "t":I
    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newPath()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/ignite/events/IgfsEvent;->newPath:Lorg/apache/ignite/igfs/IgfsPath;

    return-object v0
.end method

.method public path()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/events/IgfsEvent;->path:Lorg/apache/ignite/igfs/IgfsPath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    const-class v0, Lorg/apache/ignite/events/IgfsEvent;

    invoke-super {p0}, Lorg/apache/ignite/events/EventAdapter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedMeta()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/events/IgfsEvent;->meta:Ljava/util/Map;

    return-object v0
.end method
