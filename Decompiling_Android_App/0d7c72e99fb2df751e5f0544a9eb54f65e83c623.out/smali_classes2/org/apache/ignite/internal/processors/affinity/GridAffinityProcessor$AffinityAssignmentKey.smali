.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;
.super Ljava/lang/Object;
.source "GridAffinityProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AffinityAssignmentKey"
.end annotation


# instance fields
.field private cacheName:Ljava/lang/String;

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->cacheName:Ljava/lang/String;

    .line 562
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 563
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$1;

    .prologue
    .line 549
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;

    .prologue
    .line 549
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;

    .prologue
    .line 549
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 567
    if-ne p0, p1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v1

    .line 570
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 571
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 573
    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;

    .line 575
    .local v0, "that":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->cacheName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->cacheName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 580
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->cacheName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->cacheName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 582
    .local v0, "res":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 584
    return v0

    .line 580
    .end local v0    # "res":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityAssignmentKey;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
