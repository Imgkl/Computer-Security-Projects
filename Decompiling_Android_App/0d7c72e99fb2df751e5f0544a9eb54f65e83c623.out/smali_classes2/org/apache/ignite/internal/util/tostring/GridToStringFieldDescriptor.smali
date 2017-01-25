.class Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;
.super Ljava/lang/Object;
.source "GridToStringFieldDescriptor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final name:Ljava/lang/String;

.field private order:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->order:I

    .line 34
    sget-boolean v0, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->name:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOrder()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->order:I

    return v0
.end method

.method setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/apache/ignite/internal/util/tostring/GridToStringFieldDescriptor;->order:I

    return-void
.end method
