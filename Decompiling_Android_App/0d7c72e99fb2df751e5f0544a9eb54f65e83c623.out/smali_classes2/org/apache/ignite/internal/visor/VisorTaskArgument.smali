.class public Lorg/apache/ignite/internal/visor/VisorTaskArgument;
.super Ljava/lang/Object;
.source "VisorTaskArgument.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final arg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final debug:Z

.field private final nodes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Object;Z)V
    .locals 1
    .param p3, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;TA;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<TA;>;"
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->nodes:Ljava/util/Collection;

    .line 51
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->arg:Ljava/lang/Object;

    .line 52
    iput-boolean p3, p0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->debug:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 1
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<TA;>;"
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ignite/internal/visor/VisorTaskArgument;-><init>(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "node"    # Ljava/util/UUID;
    .param p3, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TA;Z)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/ignite/internal/visor/VisorTaskArgument;-><init>(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Z)V
    .locals 1
    .param p1, "node"    # Ljava/util/UUID;
    .param p2, "debug"    # Z

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<TA;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ignite/internal/visor/VisorTaskArgument;-><init>(Ljava/util/UUID;Ljava/lang/Object;Z)V

    .line 84
    return-void
.end method


# virtual methods
.method public argument()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<TA;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->arg:Ljava/lang/Object;

    return-object v0
.end method

.method public debug()Z
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<TA;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->debug:Z

    return v0
.end method

.method public nodes()Ljava/util/Collection;
    .locals 1
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
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorTaskArgument;, "Lorg/apache/ignite/internal/visor/VisorTaskArgument<TA;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/VisorTaskArgument;->nodes:Ljava/util/Collection;

    return-object v0
.end method
