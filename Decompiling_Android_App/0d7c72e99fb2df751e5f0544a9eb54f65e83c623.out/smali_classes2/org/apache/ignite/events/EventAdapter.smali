.class public Lorg/apache/ignite/events/EventAdapter;
.super Ljava/lang/Object;
.source "EventAdapter.java"

# interfaces
.implements Lorg/apache/ignite/events/Event;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final id:Lorg/apache/ignite/lang/IgniteUuid;

.field private locId:J

.field private msg:Ljava/lang/String;

.field private node:Lorg/apache/ignite/cluster/ClusterNode;

.field private final tstamp:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/events/EventAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/events/EventAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 37
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/events/EventAdapter;->tstamp:J

    .line 49
    invoke-static {}, Lorg/apache/ignite/events/EventLocalOrder;->nextOrder()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/events/EventAdapter;->locId:J

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;I)V
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 37
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/events/EventAdapter;->tstamp:J

    .line 49
    invoke-static {}, Lorg/apache/ignite/events/EventLocalOrder;->nextOrder()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/events/EventAdapter;->locId:J

    .line 65
    sget-boolean v0, Lorg/apache/ignite/events/EventAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/events/EventAdapter;->tstamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    if-lez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Event type ID must be greater than zero."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 69
    iput-object p1, p0, Lorg/apache/ignite/events/EventAdapter;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 70
    iput-object p2, p0, Lorg/apache/ignite/events/EventAdapter;->msg:Ljava/lang/String;

    .line 71
    iput p3, p0, Lorg/apache/ignite/events/EventAdapter;->type:I

    .line 72
    return-void

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lorg/apache/ignite/events/Event;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/events/EventAdapter;->compareTo(Lorg/apache/ignite/events/Event;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/events/Event;)I
    .locals 2
    .param p1, "o"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 76
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->compareTo(Lorg/apache/ignite/lang/IgniteUuid;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 91
    sget-boolean v0, Lorg/apache/ignite/events/EventAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :cond_0
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/apache/ignite/events/EventAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    check-cast p1, Lorg/apache/ignite/events/Event;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lorg/apache/ignite/events/EventAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public localOrder()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/apache/ignite/events/EventAdapter;->locId:J

    return-wide v0
.end method

.method public message()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public message(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 118
    iput-object p1, p0, Lorg/apache/ignite/events/EventAdapter;->msg:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/apache/ignite/events/EventAdapter;->type()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/events/EventAdapter;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public node(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/apache/ignite/events/EventAdapter;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 110
    return-void
.end method

.method public shortDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/apache/ignite/events/EventAdapter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public timestamp()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/apache/ignite/events/EventAdapter;->tstamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    const-class v0, Lorg/apache/ignite/events/EventAdapter;

    const-string v1, "name"

    invoke-virtual {p0}, Lorg/apache/ignite/events/EventAdapter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/apache/ignite/events/EventAdapter;->type:I

    return v0
.end method

.method public type(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/apache/ignite/events/EventAdapter;->type:I

    .line 128
    return-void
.end method
