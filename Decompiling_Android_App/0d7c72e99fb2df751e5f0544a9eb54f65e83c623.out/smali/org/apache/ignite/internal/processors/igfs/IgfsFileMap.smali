.class public Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
.super Ljava/lang/Object;
.source "IgfsFileMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;)V
    .locals 2
    .param p1, "old"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_0
    return-void
.end method

.method private updateRangeStatus0(ILorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V
    .locals 8
    .param p1, "origIdx"    # I
    .param p2, "orig"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p3, "update"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p4, "status"    # I

    .prologue
    .line 266
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 267
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 269
    :cond_1
    invoke-virtual {p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->regionEqual(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    invoke-direct {v1, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 279
    :goto_0
    return-void

    .line 273
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOffset()J

    move-result-wide v0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOffset()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 275
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    invoke-direct {v1, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOffset()J

    move-result-wide v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;-><init>(JJLorg/apache/ignite/lang/IgniteUuid;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)V
    .locals 5
    .param p1, "range"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .prologue
    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    if-nez v2, :cond_2

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    .line 308
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 315
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 318
    .local v1, "last":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->greater(J)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add range to middle of map [last="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", range="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 322
    :cond_4
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->concat(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    move-result-object v0

    .line 325
    .local v0, "concat":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    if-nez v0, :cond_5

    .line 326
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public affinityKey(JZ)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 11
    .param p1, "blockOff"    # J
    .param p3, "includeMoved"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    .line 72
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    if-nez v7, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-object v6

    .line 75
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 78
    :cond_2
    const/4 v0, 0x0

    .local v0, "leftIdx":I
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 80
    .local v4, "rightIdx":I
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 81
    .local v1, "leftRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 84
    .local v5, "rightRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->less(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 87
    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->belongs(J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 88
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status()I

    move-result v7

    if-eq v7, v9, :cond_3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {v5, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->greater(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 94
    invoke-virtual {v5, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->belongs(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 95
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status()I

    move-result v7

    if-eq v7, v9, :cond_5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    goto :goto_0

    .line 108
    .local v2, "midIdx":I
    .local v3, "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_6
    invoke-virtual {v3, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->less(J)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 109
    move v4, v2

    .line 98
    .end local v2    # "midIdx":I
    .end local v3    # "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_7
    :goto_1
    sub-int v7, v4, v0

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 99
    add-int v7, v0, v4

    div-int/lit8 v2, v7, 0x2

    .line 101
    .restart local v2    # "midIdx":I
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 103
    .restart local v3    # "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    invoke-virtual {v3, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->belongs(J)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 104
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status()I

    move-result v7

    if-eq v7, v9, :cond_8

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    goto/16 :goto_0

    :cond_8
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    goto/16 :goto_0

    .line 111
    :cond_9
    sget-boolean v7, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v7, :cond_a

    invoke-virtual {v3, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->greater(J)Z

    move-result v7

    if-nez v7, :cond_a

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 113
    :cond_a
    move v0, v2

    goto :goto_1
.end method

.method public deleteRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)V
    .locals 11
    .param p1, "range"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x5d

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 190
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    if-nez v6, :cond_0

    .line 191
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove range (file map is empty) [range="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ranges="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 194
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 198
    :cond_1
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 200
    .local v3, "lastIdx":I
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 202
    .local v2, "last":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->regionEqual(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 203
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status()I

    move-result v6

    if-eq v6, v9, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v2    # "last":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .end local v3    # "lastIdx":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 249
    iput-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    :cond_2
    throw v6

    .line 205
    .restart local v2    # "last":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .restart local v3    # "lastIdx":I
    :cond_3
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    iput-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    :cond_4
    :goto_0
    return-void

    .line 211
    :cond_5
    const/4 v1, 0x0

    .line 213
    .local v1, "firstIdx":I
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 215
    .local v0, "first":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->regionEqual(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 216
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v6, :cond_6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status()I

    move-result v6

    if-eq v6, v9, :cond_6

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 218
    :cond_6
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    iput-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    goto :goto_0

    .line 238
    .local v4, "midIdx":I
    .local v5, "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->less(J)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 239
    move v3, v4

    .line 224
    .end local v4    # "midIdx":I
    .end local v5    # "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_8
    :goto_1
    sub-int v6, v3, v1

    const/4 v7, 0x1

    if-le v6, v7, :cond_c

    .line 225
    add-int v6, v1, v3

    div-int/lit8 v4, v6, 0x2

    .line 227
    .restart local v4    # "midIdx":I
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 229
    .restart local v5    # "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->regionEqual(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 230
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->status()I

    move-result v6

    if-eq v6, v9, :cond_9

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 232
    :cond_9
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    iput-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    goto :goto_0

    .line 241
    :cond_a
    :try_start_4
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v6, :cond_b

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->greater(J)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    :cond_b
    move v1, v4

    goto :goto_1

    .line 248
    .end local v4    # "midIdx":I
    .end local v5    # "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_c
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 249
    iput-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    .line 252
    :cond_d
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove range from file map (corresponding map range was not found) [range="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ranges="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public ranges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 349
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 353
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRangeStatus(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V
    .locals 11
    .param p1, "range"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x5d

    .line 130
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    if-nez v6, :cond_0

    .line 131
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update range status (file map is empty) [range="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ranges="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 137
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 139
    .local v3, "lastIdx":I
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 141
    .local v2, "last":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 142
    invoke-direct {p0, v3, v2, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->updateRangeStatus0(ILorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V

    .line 167
    :goto_0
    return-void

    .line 148
    :cond_2
    const/4 v1, 0x0

    .line 150
    .local v1, "firstIdx":I
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 152
    .local v0, "first":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 153
    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->updateRangeStatus0(ILorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V

    goto :goto_0

    .line 171
    .local v4, "midIdx":I
    .local v5, "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->less(J)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    move v3, v4

    .line 159
    .end local v4    # "midIdx":I
    .end local v5    # "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_4
    :goto_1
    sub-int v6, v3, v1

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    .line 160
    add-int v6, v1, v3

    div-int/lit8 v4, v6, 0x2

    .line 162
    .restart local v4    # "midIdx":I
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 164
    .restart local v5    # "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 165
    invoke-direct {p0, v4, v5, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->updateRangeStatus0(ILorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;I)V

    goto :goto_0

    .line 174
    :cond_5
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v6, :cond_6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->greater(J)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 176
    :cond_6
    move v1, v4

    goto :goto_1

    .line 180
    .end local v4    # "midIdx":I
    .end local v5    # "midRange":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_7
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update map for range (corresponding map range was not found) [range="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ranges="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    if-nez v2, :cond_1

    .line 334
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 343
    :cond_0
    return-void

    .line 336
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 338
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 340
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 341
    .local v1, "range":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
