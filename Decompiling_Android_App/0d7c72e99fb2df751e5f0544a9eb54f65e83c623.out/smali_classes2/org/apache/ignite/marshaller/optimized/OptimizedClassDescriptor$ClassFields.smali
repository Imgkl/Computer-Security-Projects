.class Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;
.super Ljava/lang/Object;
.source "OptimizedClassDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassFields"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final nameToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 864
    const-class v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->fields:Ljava/util/List;

    .line 876
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->nameToIndex:Ljava/util/Map;

    .line 878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 879
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->nameToIndex:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    :cond_0
    return-void
.end method


# virtual methods
.method fields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->fields:Ljava/util/List;

    return-object v0
.end method

.method get(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 901
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    return-object v0
.end method

.method getIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 909
    sget-boolean v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->nameToIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 911
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->nameToIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
