.class Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;
.super Ljava/lang/Object;
.source "GridToStringClassDescriptor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final fqn:Ljava/lang/String;

.field private final sqn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->fields:Ljava/util/List;

    .line 40
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->fqn:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->sqn:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method addField(Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;)V
    .locals 1
    .param p1, "field"    # Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;

    .prologue
    .line 50
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->fields:Ljava/util/List;

    return-object v0
.end method

.method getFullyQualifiedClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->fqn:Ljava/lang/String;

    return-object v0
.end method

.method getSimpleClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->sqn:Ljava/lang/String;

    return-object v0
.end method

.method sortFields()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;->fields:Ljava/util/List;

    new-instance v1, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor$1;-><init>(Lorg/apache/ignite/internal/util/tostring/GridToStringClassDescriptor;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    return-void
.end method
