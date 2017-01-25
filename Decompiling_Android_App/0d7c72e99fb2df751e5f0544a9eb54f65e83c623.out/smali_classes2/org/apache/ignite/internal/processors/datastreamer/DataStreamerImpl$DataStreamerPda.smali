.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStreamerPda"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private ldr:Ljava/lang/ClassLoader;

.field private objs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1299
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 1317
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.DataStreamerPda;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->objs:Ljava/util/Collection;

    .line 1319
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .param p2, "x1"    # [Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;

    .prologue
    .line 1299
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.DataStreamerPda;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public classLoader()Ljava/lang/ClassLoader;
    .locals 4

    .prologue
    .line 1350
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.DataStreamerPda;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->ldr:Ljava/lang/ClassLoader;

    if-nez v1, :cond_2

    .line 1351
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->deployClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1354
    .local v0, "ldr0":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 1355
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1357
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to detect classloader [objs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->objs:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1359
    :cond_1
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->ldr:Ljava/lang/ClassLoader;

    .line 1362
    .end local v0    # "ldr0":Ljava/lang/ClassLoader;
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->ldr:Ljava/lang/ClassLoader;

    return-object v1
.end method

.method public deployClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1323
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.DataStreamerPda;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->cls:Ljava/lang/Class;

    if-nez v3, :cond_7

    .line 1324
    const/4 v0, 0x0

    .line 1326
    .local v0, "cls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$2200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1327
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$2200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/lang/Class;

    move-result-object v0

    .line 1340
    :cond_0
    :goto_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez v0, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to detect deploy class [objs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->objs:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1329
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->objs:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isJdk(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1332
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 1333
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 1336
    .end local v2    # "o":Ljava/lang/Object;
    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isJdk(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1337
    :cond_5
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    goto :goto_0

    .line 1342
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_6
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->cls:Ljava/lang/Class;

    .line 1345
    .end local v0    # "cls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$DataStreamerPda;->cls:Ljava/lang/Class;

    return-object v3
.end method
