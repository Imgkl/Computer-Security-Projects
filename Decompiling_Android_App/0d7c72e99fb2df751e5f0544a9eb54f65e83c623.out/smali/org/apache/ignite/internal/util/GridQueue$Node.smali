.class public Lorg/apache/ignite/internal/util/GridQueue$Node;
.super Ljava/lang/Object;
.source "GridQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/ignite/internal/util/GridQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private prev:Lorg/apache/ignite/internal/util/GridQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private unlinked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    const-class v0, Lorg/apache/ignite/internal/util/GridQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridQueue$Node;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;",
            "Lorg/apache/ignite/internal/util/GridQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    .local p2, "next":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    .local p3, "prev":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->item:Ljava/lang/Object;

    .line 261
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->next:Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 262
    iput-object p3, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->prev:Lorg/apache/ignite/internal/util/GridQueue$Node;

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/GridQueue$Node;
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/GridQueue$Node;
    .param p4, "x3"    # Lorg/apache/ignite/internal/util/GridQueue$1;

    .prologue
    .line 239
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/GridQueue$Node;-><init>(Ljava/lang/Object;Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridQueue$Node;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->next:Lorg/apache/ignite/internal/util/GridQueue$Node;

    return-object v0
.end method

.method static synthetic access$102(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridQueue$Node;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/GridQueue$Node;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->next:Lorg/apache/ignite/internal/util/GridQueue$Node;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridQueue$Node;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->prev:Lorg/apache/ignite/internal/util/GridQueue$Node;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/ignite/internal/util/GridQueue$Node;Lorg/apache/ignite/internal/util/GridQueue$Node;)Lorg/apache/ignite/internal/util/GridQueue$Node;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridQueue$Node;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/GridQueue$Node;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->prev:Lorg/apache/ignite/internal/util/GridQueue$Node;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/GridQueue$Node;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridQueue$Node;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lorg/apache/ignite/internal/util/GridQueue$Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridQueue$Node;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->item:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public item()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    const-class v0, Lorg/apache/ignite/internal/util/GridQueue$Node;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlink()V
    .locals 1

    .prologue
    .line 278
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridQueue$Node;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->unlinked:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 280
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->unlinked:Z

    .line 281
    return-void
.end method

.method public unlinked()Z
    .locals 1

    .prologue
    .line 289
    .local p0, "this":Lorg/apache/ignite/internal/util/GridQueue$Node;, "Lorg/apache/ignite/internal/util/GridQueue$Node<TE;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridQueue$Node;->unlinked:Z

    return v0
.end method
