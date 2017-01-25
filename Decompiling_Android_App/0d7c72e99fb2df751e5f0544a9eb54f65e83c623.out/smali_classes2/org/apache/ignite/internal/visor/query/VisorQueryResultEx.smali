.class public Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;
.super Lorg/apache/ignite/internal/visor/query/VisorQueryResult;
.source "VisorQueryResultEx.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final colNames:[Lorg/apache/ignite/internal/visor/query/VisorQueryField;

.field private final qryId:Ljava/lang/String;

.field private final resNodeId:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/visor/query/VisorQueryField;Ljava/util/List;Ljava/lang/Boolean;J)V
    .locals 0
    .param p1, "resNodeId"    # Ljava/util/UUID;
    .param p2, "qryId"    # Ljava/lang/String;
    .param p3, "colNames"    # [Lorg/apache/ignite/internal/visor/query/VisorQueryField;
    .param p5, "hasMore"    # Ljava/lang/Boolean;
    .param p6, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/ignite/internal/visor/query/VisorQueryField;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p4, "rows":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-direct {p0, p4, p5, p6, p7}, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;-><init>(Ljava/util/List;Ljava/lang/Boolean;J)V

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;->resNodeId:Ljava/util/UUID;

    .line 59
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;->qryId:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;->colNames:[Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    .line 61
    return-void
.end method


# virtual methods
.method public columnNames()[Lorg/apache/ignite/internal/visor/query/VisorQueryField;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;->colNames:[Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    return-object v0
.end method

.method public queryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;->qryId:Ljava/lang/String;

    return-object v0
.end method

.method public responseNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;->resNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
