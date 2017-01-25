.class Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;
.super Ljava/lang/Object;
.source "GridToStringThreadLocal.java"


# instance fields
.field private addNames:[Ljava/lang/Object;

.field private addVals:[Ljava/lang/Object;

.field private sb:Lorg/apache/ignite/internal/util/typedef/internal/SB;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->sb:Lorg/apache/ignite/internal/util/typedef/internal/SB;

    .line 30
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->addNames:[Ljava/lang/Object;

    .line 33
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->addVals:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getAdditionalNames()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->addNames:[Ljava/lang/Object;

    return-object v0
.end method

.method getAdditionalValues()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->addVals:[Ljava/lang/Object;

    return-object v0
.end method

.method getStringBuilder()Lorg/apache/ignite/internal/util/typedef/internal/SB;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;->sb:Lorg/apache/ignite/internal/util/typedef/internal/SB;

    return-object v0
.end method
