.class Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$IdentityHashSet;
.super Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
.source "IgfsFragmentizerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityHashSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridConcurrentHashSet",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(Ljava/util/Collection;)V

    .line 823
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$IdentityHashSet;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 828
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
