.class Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;
.super Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
.source "GridCheckpointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckpointSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridConcurrentHashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final ses:Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/GridTaskSessionInternal;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionInternal;

    .prologue
    .line 378
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    .line 379
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;->ses:Lorg/apache/ignite/internal/GridTaskSessionInternal;

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/GridTaskSessionInternal;Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .param p2, "x1"    # Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$1;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;-><init>(Lorg/apache/ignite/internal/GridTaskSessionInternal;)V

    return-void
.end method


# virtual methods
.method session()Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;->ses:Lorg/apache/ignite/internal/GridTaskSessionInternal;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const-class v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager$CheckpointSet;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
