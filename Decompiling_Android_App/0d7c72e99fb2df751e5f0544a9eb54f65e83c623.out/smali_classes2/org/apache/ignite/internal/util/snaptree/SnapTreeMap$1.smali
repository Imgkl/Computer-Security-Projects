.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;
.super Ljava/lang/Object;
.source "SnapTreeMap.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final _cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 535
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;->this$0:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->comparator:Ljava/util/Comparator;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;->_cmp:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap.1;"
    .local p1, "rhs":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;->_cmp:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
