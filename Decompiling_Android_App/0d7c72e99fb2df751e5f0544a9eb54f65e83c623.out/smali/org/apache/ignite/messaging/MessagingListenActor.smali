.class public abstract Lorg/apache/ignite/messaging/MessagingListenActor;
.super Ljava/lang/Object;
.source "MessagingListenActor.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiPredicate",
        "<",
        "Ljava/util/UUID;",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private transient ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private keepGoing:Z

.field private transient log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private nodeId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/messaging/MessagingListenActor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/messaging/MessagingListenActor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->keepGoing:Z

    return-void
.end method

.method private checkReversing()V
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->keepGoing:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Suspect logic - reversing listener return status (was \'true\', then \'false\', now \'true\' again)."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 201
    :cond_0
    return-void
.end method

.method private send(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "respMsg"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    sget-boolean v1, Lorg/apache/ignite/messaging/MessagingListenActor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 213
    :cond_0
    if-eqz p2, :cond_1

    .line 214
    iget-object v1, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/ignite/IgniteCluster;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 216
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v0, :cond_2

    .line 217
    iget-object v1, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->ignite:Lorg/apache/ignite/Ignite;

    iget-object v2, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v2, v0, v3}, Lorg/apache/ignite/IgniteCluster;->forNode(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/Ignite;->message(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteMessaging;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Lorg/apache/ignite/IgniteMessaging;->send(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    .end local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    return-void

    .line 219
    .restart local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message since destination node has left topology (ignoring) [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", respMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/messaging/MessagingListenActor;->apply(Ljava/util/UUID;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final apply(Ljava/util/UUID;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    .local p2, "rcvMsg":Ljava/lang/Object;, "TT;"
    sget-boolean v1, Lorg/apache/ignite/messaging/MessagingListenActor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 65
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/messaging/MessagingListenActor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 67
    :cond_1
    iget-boolean v1, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->keepGoing:Z

    if-nez v1, :cond_2

    .line 68
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    .line 70
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->nodeId:Ljava/util/UUID;

    .line 73
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/messaging/MessagingListenActor;->receive(Ljava/util/UUID;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    iget-boolean v1, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->keepGoing:Z

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/messaging/MessagingListenActor;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected final ignite()Lorg/apache/ignite/Ignite;
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    sget-boolean v0, Lorg/apache/ignite/messaging/MessagingListenActor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->ignite:Lorg/apache/ignite/Ignite;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->ignite:Lorg/apache/ignite/Ignite;

    return-object v0
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Listener operation failed."

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0}, Lorg/apache/ignite/messaging/MessagingListenActor;->stop()V

    .line 96
    return-void
.end method

.method protected abstract receive(Ljava/util/UUID;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected final respond(Ljava/lang/Object;)V
    .locals 1
    .param p1, "respMsg"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/messaging/MessagingListenActor;->checkReversing()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->keepGoing:Z

    .line 171
    iget-object v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->nodeId:Ljava/util/UUID;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/messaging/MessagingListenActor;->send(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method protected final respond(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "respMsg"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/messaging/MessagingListenActor;->checkReversing()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->keepGoing:Z

    .line 191
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/messaging/MessagingListenActor;->send(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method protected final skip()V
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/messaging/MessagingListenActor;->checkReversing()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->keepGoing:Z

    .line 153
    return-void
.end method

.method protected final stop()V
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->keepGoing:Z

    .line 121
    return-void
.end method

.method protected final stop(Ljava/lang/Object;)V
    .locals 1
    .param p1, "respMsg"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->keepGoing:Z

    .line 138
    iget-object v0, p0, Lorg/apache/ignite/messaging/MessagingListenActor;->nodeId:Ljava/util/UUID;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/messaging/MessagingListenActor;->send(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    .local p0, "this":Lorg/apache/ignite/messaging/MessagingListenActor;, "Lorg/apache/ignite/messaging/MessagingListenActor<TT;>;"
    const-class v0, Lorg/apache/ignite/messaging/MessagingListenActor;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
