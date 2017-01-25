.class public Lorg/apache/ignite/internal/visor/query/VisorQueryResult;
.super Ljava/lang/Object;
.source "VisorQueryResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final duration:J

.field private final hasMore:Ljava/lang/Boolean;

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Boolean;J)V
    .locals 1
    .param p2, "hasMore"    # Ljava/lang/Boolean;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;->rows:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;->hasMore:Ljava/lang/Boolean;

    .line 51
    iput-wide p3, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;->duration:J

    .line 52
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;->duration:J

    return-wide v0
.end method

.method public hasMore()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;->hasMore:Ljava/lang/Boolean;

    return-object v0
.end method

.method public rows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;->rows:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
