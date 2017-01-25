.class Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;
.super Ljava/lang/Object;
.source "GridRestProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handleRequest(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

.field final synthetic val$subjCtx0:Lorg/apache/ignite/internal/processors/security/SecurityContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    const-class v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->val$subjCtx0:Lorg/apache/ignite/internal/processors/security/SecurityContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .local v1, "res":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    :goto_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 212
    .end local v1    # "res":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$300(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$400(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$500(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle request [req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 218
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>(ILjava/lang/String;)V

    .restart local v1    # "res":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$600(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->val$subjCtx0:Lorg/apache/ignite/internal/processors/security/SecurityContext;

    # invokes: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->updateSession(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V
    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$700(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    .line 225
    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->ZERO_BYTES:[B

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sessionTokenBytes([B)V

    .line 228
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$3;->val$req:Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;

    # invokes: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->interceptResponse(Lorg/apache/ignite/internal/processors/rest/GridRestResponse;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)V
    invoke-static {v2, v1, v3}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$800(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/GridRestResponse;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)V

    .line 230
    return-object v1
.end method
