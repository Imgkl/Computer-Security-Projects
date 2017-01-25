.class Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor$1;
.super Ljava/lang/Object;
.source "GridToStringClassDescriptor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->sortFields()V
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
        "Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor$1;->this$0:Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor$1;->compare(Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;)I
    .locals 2
    .param p1, "arg0"    # Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;
    .param p2, "arg1"    # Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;

    .prologue
    .line 60
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->getOrder()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->getOrder()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
