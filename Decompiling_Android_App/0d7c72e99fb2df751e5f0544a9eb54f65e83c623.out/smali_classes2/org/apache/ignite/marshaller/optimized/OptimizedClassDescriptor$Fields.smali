.class Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;
.super Ljava/lang/Object;
.source "OptimizedClassDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fields"
.end annotation


# instance fields
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;",
            ">;"
        }
    .end annotation
.end field

.field private final ownFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->fields:Ljava/util/List;

    .line 934
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->ownFields:Ljava/util/List;

    .line 944
    :cond_0
    return-void

    .line 937
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->ownFields:Ljava/util/List;

    .line 939
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->fields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    .line 940
    .local v0, "f":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 941
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->ownFields:Ljava/util/List;

    # getter for: Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field:Ljava/lang/reflect/Field;
    invoke-static {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->access$000(Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method fields(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 962
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    return-object v0
.end method

.method ownFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 952
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->ownFields:Ljava/util/List;

    return-object v0
.end method
