.class Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$1;
.super Ljava/lang/Object;
.source "OptimizedClassDescriptor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;-><init>(Ljava/lang/Class;ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$1;->this$0:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 449
    check-cast p1, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$1;->compare(Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;)I
    .locals 2
    .param p1, "t1"    # Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    .param p2, "t2"    # Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    .prologue
    .line 451
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
