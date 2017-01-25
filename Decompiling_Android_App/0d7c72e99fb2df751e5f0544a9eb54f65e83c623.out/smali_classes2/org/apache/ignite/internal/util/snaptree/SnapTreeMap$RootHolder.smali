.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;
.super Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
.source "SnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 10

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    const/4 v2, 0x0

    .line 366
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v4, v2

    move-object v5, v2

    move-object v8, v2

    move-object v9, v2

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;JLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 367
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    .local p1, "snapshot":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder<TK;TV;>;"
    const/4 v2, 0x0

    .line 370
    iget v0, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->height:I

    add-int/lit8 v3, v0, 0x1

    const-wide/16 v6, 0x0

    iget-object v9, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-object v1, p0

    move-object v4, v2

    move-object v5, v2

    move-object v8, v2

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;JLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 371
    return-void
.end method
