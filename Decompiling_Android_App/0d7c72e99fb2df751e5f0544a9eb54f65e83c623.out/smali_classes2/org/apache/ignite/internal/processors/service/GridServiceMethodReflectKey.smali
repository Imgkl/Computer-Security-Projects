.class Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;
.super Ljava/lang/Object;
.source "GridServiceMethodReflectKey.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final argTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private hash:I

.field private final mtdName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "mtdName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-boolean v0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->mtdName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->argTypes:[Ljava/lang/Class;

    .line 44
    return-void
.end method


# virtual methods
.method argTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->argTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 62
    if-ne p0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 65
    check-cast v0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;

    .line 67
    .local v0, "key":Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->mtdName:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->mtdName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->argTypes:[Ljava/lang/Class;

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->argTypes:[Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->hash:I

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->hash:I

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->mtdName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->argTypes:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->hash:I

    goto :goto_0
.end method

.method methodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->mtdName:Ljava/lang/String;

    return-object v0
.end method
